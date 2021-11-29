using System;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Packets;
using ZiveLab.Device.ZIM.Win;
using ZiveLab.Device.ZIM.Win.Analysis;
using System.Collections.Generic;
using System.Numerics;
using MathNet.Numerics;

namespace App.Zim.Player
{

    public partial class FormChannel : Form
    {
        public CommObj ChObj;
        public int Refreshtime = 250;
        public int AutoConnDelay = 8;
        
        public bool ManaMode;
        public stConnCfg mConnCfg;
        private ChannelStatus ChStatus = new ChannelStatus();
        private static st_zim_eis_status meis_status;
        private st_zim_eis_item[] meis_item;
        private st_zim_eis_item[] meis_Fit_item;
        private st_zim_eis_raw[] meis_raw; // Samples at each frequency
        private st_zim_eis_cond meis_cond;
        private st_zim_adc_vdc maux_vdc;
        private st_zim_rtd_data maux_temp;
        private stSystemConfig mSysCfg;
        private stEthernetCfg mConnStat;
        private st_zim_rnginf mRanges;
        private bool StartFlag;
 //       private bool RepMode;
        private bool RepeatMode;
 //       private bool Stat_Errzim;
 //       private bool Vdc_Errzim;
 //       private int cnt_errzim;
 //       private int cnt_vdcerrzim;
//        private int cnt_zdataerrzim;
        private string sTitle;
        public string sMsgTitle;
        private frmCountdown mfrmCountdown;
        private bool btrycountdown;

        public FormChannel()
        {
            InitializeComponent();

            this.Icon = Properties.Resources.bm;
            mfrmCountdown = null;
            sTitle = "";
            DoubleBuffered = true;
 //           RepMode = false;
            RepeatMode = false;
 //           Stat_Errzim = false;
 //           Vdc_Errzim = false;
            StartFlag = false;
 //           cnt_errzim = 0;
 //           cnt_vdcerrzim = 0;
  //          cnt_zdataerrzim = 0;

            this.Text = "Control and Measure" + sTitle;
            // Bindings
            ChStatus.PropertyChanged += delegate
            {
                statusPanel.Status = ChStatus;
            };            
            panelNyquist.DataBindings.Add(new Binding("ZData", ChStatus, "ZData"));
            panelBode.DataBindings.Add(new Binding("ZData", ChStatus, "ZData"));
            panelBode.ShowToolbar = true;
            panelNyquist.ShowToolbar = true;
        }

        private void FormChannel_Load(object sender, EventArgs e)
        {
            Cursor.Current = Cursors.WaitCursor;
            statusPanel.EnableReportMenu = ManaMode;
            btrycountdown = false;
            if (ChObj == null) throw new NullReferenceException("mCommZim");
            mSysCfg = new stSystemConfig(0);
            mConnStat = new stEthernetCfg(0);
            mRanges = new st_zim_rnginf(0);
            ReadAbout(ref mConnStat, ref mSysCfg, ref mRanges);
            ChStatus.mType = (eDeviceType)mSysCfg.mSIFCfg.Type;
            ChStatus.SetProperty(mConnStat, mSysCfg, mRanges);
            sTitle = string.Format(" - {0}[{1}].", ChObj.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            this.Text = "Control and Measure" + sTitle;
            
            Refreshtime = Properties.Settings.Default.RefreshTime;
            AutoConnDelay = Properties.Settings.Default.AutoConnDelay;
            
            // Use Timer to keep UI thread responsive when reading packets
            Timer delayedTimer = new Timer() { Interval = 100 };
            delayedTimer.Tick += delegate
            {
                int i;
                delayedTimer.Stop();
                delayedTimer.Dispose();

 //               Stopwatch stopwatch = new Stopwatch();
 //               stopwatch.Start();

                meis_status = new st_zim_eis_status(0);
                maux_vdc = new st_zim_adc_vdc(0);
                maux_temp = new st_zim_rtd_data(0);

                meis_cond = new st_zim_eis_cond(0);

                

                meis_item = new st_zim_eis_item[DeviceConstants.MAX_EIS_FREQ_CNT];
                meis_Fit_item = new st_zim_eis_item[DeviceConstants.MAX_EIS_FREQ_CNT];
                meis_raw = new st_zim_eis_raw[DeviceConstants.MAX_EIS_FREQ_CNT];

                for (i = 0; i < DeviceConstants.MAX_EIS_FREQ_CNT; i++)
                {
                    meis_item[i] = new st_zim_eis_item(0);
                    meis_Fit_item[i] = new st_zim_eis_item(0);
                    meis_raw[i] = new st_zim_eis_raw(0);
                    
                }

                ChStatus.SetProperty(meis_item, meis_raw);

                ReadAbout(ref mConnStat, ref mSysCfg, ref mRanges);
                ChStatus.SetProperty(mConnStat, mSysCfg, mRanges);

                // Read ZParameters
                ReadExpParameters();
                ChStatus.SetProperty(meis_cond);

                
                // Read all
                ReadInitSamples();

                // Set TimeOut
                ChObj.CmdEnableCommTimeOut(1);

//                stopwatch.Stop();
 //               Debug.WriteLine("Time elapsed for initialing UI: {0}", stopwatch.Elapsed); // ~ 0.3 sec

                timer1.Enabled = true;
                timer1.Interval = Refreshtime;
            };
            CalibCheckAppliedMenu();
            delayedTimer.Start();
            Cursor.Current = Cursors.Default;
        }

        private bool ChkEisCalVar(st_zim_Eis_Cal_info inf)
        {
          

            if (inf.n1 == double.NaN || inf.n2 == double.NaN || inf.n3 == double.NaN
                || inf.d1 == double.NaN || inf.d2 == double.NaN || inf.d3 == double.NaN)
            {
                return false;
            }

            if (inf.n1 == 0.0 && inf.n2 == 0.0 && inf.n3 == 0.0
                && inf.d1 == 0.0 && inf.d2 == 0.0 && inf.d3 == 0.0)
            {
                return false;
            }

            return true;
        }

        private bool ChkEisCalGainVar(int nRange)
        {
            int nrng = nRange * 2;
            
            if(mRanges.iac_rng[nRange].gain == 1.0 || mRanges.iac_rng[nRange].gain == 0.0
                || mRanges.iac_rng[nRange].offset == 1.0 || mRanges.iac_rng[nRange].offset == 0.0)
            {
                return false;
            }
            return true;
        }

        private void CalibCheckAppliedMenu()
        {
            this.statusPanel.menuCalWith1ohm.Checked = ChkEisCalVar(mRanges.mEisIRngCalInfo[4]);

            this.statusPanel.menuCalGainWith2A.Checked = ChkEisCalGainVar(0);
            this.statusPanel.menuCalGainWith200mA.Checked = ChkEisCalGainVar(1);
            this.statusPanel.menuCalGainWith20mA.Checked = ChkEisCalGainVar(2);
            this.statusPanel.menuCalGainWith2mA.Checked = ChkEisCalGainVar(3);
        }
        private void FormChannel_FormClosing(object sender, FormClosingEventArgs e)
        {
            ChObj.CmdEnableCommTimeOut(0);
            this.timer1.Stop();
            this.timer1.Dispose();
        }
        /*       private double GetTimeDelay(st_zim_eis_item[] packet, int count) //Get 10mohm base time delay with average
               {
                   int i;
                   double totalT = 0.0;
                   double resT = 0.0;
                   for (i= 1;i< count; i++)
                   {
                       totalT += meis_item[i].zdata.img / (meis_item[i].info.freq * meis_item[i].zdata.real);
                   }
                   resT = totalT / (count - 1);
                   return resT;
               }
               private void CompImpedanceTimeDelay(ref st_zim_eis_item pItem, double F, double T) //10mohm base time delay apply
               {
                   double Zre = pItem.zdata.real;
                   double Zimg = pItem.zdata.img;
                   double M = (F * F * T * T) + 1;
                   pItem.zdata.real = (Zre + (Zimg * F * T)) / M;
                   pItem.zdata.img = (Zimg - (Zre * F * T)) / M;

                   pItem.zdata.mag = Math.Sqrt((pItem.zdata.real * pItem.zdata.real) + (pItem.zdata.img * pItem.zdata.img));
                   pItem.zdata.phase = Math.Atan2(pItem.zdata.img, pItem.zdata.real) * 180.0 / Constants.Pi;//angle in degree;
               }

               private void ProcGetTDelay(int CRange) //10mohm base time delay apply Main
               {
                   double T;
                   //T = meis_item[0].zdata.img / (meis_item[0].info.freq * meis_item[0].zdata.real);
                   T = GetTimeDelay(meis_item,11);
                   Array.Copy(meis_item, meis_Fit_item, meis_item.Length);
                  for(int i=0; i< meis_cond.count; i++)
                   {
                       CompImpedanceTimeDelay(ref meis_Fit_item[i], meis_Fit_item[i].info.freq,T);
                   }


                   RefreshChangeTestData(meis_Fit_item);

                   mRanges.mEisIRngCalInfo[CRange].T = T;

                   ApplyRangesInfo();
                   SaveRangesInfo();

                   MessageBox.Show("   Calibration operation is complete.\r\n \r\n New calibration key has been applied to the device.", sMsgTitle + ", Calibration", MessageBoxButtons.OK, MessageBoxIcon.Information);
                   this.Text = "Control and Measure" + sTitle;
               }
       */
        private void ApplyGain(ref st_zim_eis_item[] fitpacket, int Count, double dgain)
        {

            for (int i = 0; i < Count; i++)
            {
                fitpacket[i].zdata.mag /= dgain;
                fitpacket[i].zdata.real = fitpacket[i].zdata.mag * Math.Cos(fitpacket[i].zdata.phase * ((double)DeviceConstants.PI / 180.0));
                fitpacket[i].zdata.img = fitpacket[i].zdata.mag * Math.Sin(fitpacket[i].zdata.phase * ((double)DeviceConstants.PI / 180.0));
            }
        }

        private void ProcGetGain(int CRange)
        {
            ZCalibration zCal = new ZCalibration(meis_item, ref meis_Fit_item, meis_item.Length, mRanges.mEisIRngCalInfo[4], mRanges.mEirIrngCompLs.Ls[4]);

            if (zCal.Rtrue <= 0.0)
            {
                MessageBox.Show("There was a problem with the calibration. ", sMsgTitle,MessageBoxButtons.OK,MessageBoxIcon.Warning);
                return;
            }
            double dGain = 1.0;
            if (CRange == 0)
            {
                dGain = zCal.Rtrue / Properties.Settings.Default.RDummy0;
                mRanges.iac_rng[0].gain = dGain;
                mRanges.iac_rng[0].offset = dGain;
            }
            else if (CRange == 1)
            {
                dGain = zCal.Rtrue / Properties.Settings.Default.RDummy1;
                mRanges.iac_rng[1].gain = dGain;
                mRanges.iac_rng[1].offset = dGain;
            }
            else if (CRange == 2)
            {
                dGain = zCal.Rtrue / Properties.Settings.Default.RDummy2;
                mRanges.iac_rng[2].gain = dGain;
                mRanges.iac_rng[2].offset = dGain;
            }
            else 
            {
                dGain = zCal.Rtrue / Properties.Settings.Default.RDummy3;
                mRanges.iac_rng[3].gain = dGain;
                mRanges.iac_rng[3].offset = dGain;
            }

            ApplyGain(ref meis_Fit_item, meis_Fit_item.Length, dGain);

            RefreshChangeTestData(meis_Fit_item);

            bool bapply = ApplyRangesInfo();
            if (bapply == false)
            {
                while (bapply == false)
                {
                    if (MessageBox.Show("Initialization of the calibration key has failed. \n\n do you want retry it?", sMsgTitle + "' Calibration",
                        MessageBoxButtons.OKCancel, MessageBoxIcon.Asterisk, MessageBoxDefaultButton.Button1) == DialogResult.OK)
                    {
                        bapply = ApplyRangesInfo();
                    }
                    else break;
                }

            }

            if (bapply == true)
            {
                CalibCheckAppliedMenu();
                MessageBox.Show("   Calibration operation is complete.\r\n \r\n New calibration key has been applied to the device.", sMsgTitle + "' Calibration", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

            this.Text = "Control and Measure" + sTitle;
        }

        private void ProcFitting(int CRange)
        {
            /*          if (CRange > 0)        // 10mohm 기준 시간지연 값을 구해서 다른 랜지들을 교정하려고 할 경우 사용했던 시험 코드. 
                        {
                            ProcGetTDelay(CRange);
                            return;
                        }
                        */

            
            ZCalibration zCal = new ZCalibration(meis_item, ref meis_Fit_item, meis_item.Length,0.0, mRanges.mEirIrngCompLs.Ls[CRange]); // meis_item { N1, N2, D1, D2 }

            if (meis_Fit_item == null)
            {
                MessageBox.Show("There was a problem with the calibration. ", sMsgTitle + "' Calibration",MessageBoxButtons.OK,MessageBoxIcon.Warning);
                return;
            }

            


            double dGain = 1.0;

            if (CRange == 0)
            {
                dGain = zCal.Rtrue / Properties.Settings.Default.RDummy0;
                mRanges.iac_rng[0].gain = dGain;
            }
            else if (CRange == 1)
            {
                dGain = zCal.Rtrue / Properties.Settings.Default.RDummy0;
                mRanges.iac_rng[0].offset = dGain;
            }
            else if (CRange == 2)
            {
                dGain = zCal.Rtrue / Properties.Settings.Default.RDummy1;
                mRanges.iac_rng[1].gain = dGain;
            }
            else if (CRange == 3)
            {
                dGain = zCal.Rtrue / Properties.Settings.Default.RDummy1;
                mRanges.iac_rng[1].offset = dGain;
            }
            else if (CRange == 4)
            {
                dGain = zCal.Rtrue / Properties.Settings.Default.RDummy2;
                mRanges.iac_rng[2].gain = dGain;
            }
            else if (CRange == 5)
            {
                dGain = zCal.Rtrue / Properties.Settings.Default.RDummy2;
                mRanges.iac_rng[2].offset = dGain;
            }
            else if (CRange == 6)
            {
                dGain = zCal.Rtrue / Properties.Settings.Default.RDummy3;
                mRanges.iac_rng[3].gain = dGain;
            }
            else
            {
                dGain = zCal.Rtrue / Properties.Settings.Default.RDummy3;
                mRanges.iac_rng[3].offset = dGain;
            }

            ApplyGain(ref meis_Fit_item, meis_Fit_item.Length, dGain);

            RefreshChangeTestData(meis_Fit_item);

            if (CRange == 4)  // 만약을 위해 공통 교정정보를 갱신해 준다. 예전 사용 변수 현재는 사용하지 않는다.
            {
                mRanges.mEisCalInfo.n1 = zCal.Coefficients[0];
                mRanges.mEisCalInfo.n2 = zCal.Coefficients[1];
                mRanges.mEisCalInfo.n3 = zCal.Coefficients[2];
                mRanges.mEisCalInfo.d1 = zCal.Coefficients[3];
                mRanges.mEisCalInfo.d2 = zCal.Coefficients[4];
                mRanges.mEisCalInfo.d3 = zCal.Coefficients[5];

                for (int i = 0; i < 8; i++)
                {
                    if (i == 4)
                    {
                        mRanges.mEisIRngCalInfo[i].n1 = zCal.Coefficients[0];
                        mRanges.mEisIRngCalInfo[i].n2 = zCal.Coefficients[1];
                        mRanges.mEisIRngCalInfo[i].n3 = zCal.Coefficients[2];
                        mRanges.mEisIRngCalInfo[i].d1 = zCal.Coefficients[3];
                        mRanges.mEisIRngCalInfo[i].d2 = zCal.Coefficients[4];
                        mRanges.mEisIRngCalInfo[i].d3 = zCal.Coefficients[5];
                    }
                    else
                    {
                        if(mRanges.mEisIRngCalInfo[i].n1 == 0.0 || mRanges.mEisIRngCalInfo[i].n2 == 0.0 || mRanges.mEisIRngCalInfo[i].n3 == 0.0
                            || mRanges.mEisIRngCalInfo[i].d1 == 0.0 || mRanges.mEisIRngCalInfo[i].d2 == 0.0 || mRanges.mEisIRngCalInfo[i].d3 == 0.0)
                        {
                            mRanges.mEisIRngCalInfo[i].n1 = zCal.Coefficients[0];
                            mRanges.mEisIRngCalInfo[i].n2 = zCal.Coefficients[1];
                            mRanges.mEisIRngCalInfo[i].n3 = zCal.Coefficients[2];
                            mRanges.mEisIRngCalInfo[i].d1 = zCal.Coefficients[3];
                            mRanges.mEisIRngCalInfo[i].d2 = zCal.Coefficients[4];
                            mRanges.mEisIRngCalInfo[i].d3 = zCal.Coefficients[5];
                        }
                    }
                }

            }
            else
            {
                mRanges.mEisIRngCalInfo[CRange].n1 = zCal.Coefficients[0];
                mRanges.mEisIRngCalInfo[CRange].n2 = zCal.Coefficients[1];
                mRanges.mEisIRngCalInfo[CRange].n3 = zCal.Coefficients[2];
                mRanges.mEisIRngCalInfo[CRange].d1 = zCal.Coefficients[3];
                mRanges.mEisIRngCalInfo[CRange].d2 = zCal.Coefficients[4];
                mRanges.mEisIRngCalInfo[CRange].d3 = zCal.Coefficients[5];
            }

            bool bapply = ApplyRangesInfo();

            if (bapply == false)
            {
                while(bapply == false)
                {
                    if (MessageBox.Show("Initialization of the calibration key has failed. \n\n do you want retry it?", sMsgTitle + "' Calibration",
                        MessageBoxButtons.OKCancel, MessageBoxIcon.Asterisk, MessageBoxDefaultButton.Button1) == DialogResult.OK)
                    {
                        bapply = ApplyRangesInfo();
                    }
                    else break;
                }
                
            }
            
            if(bapply == true)
            {
                CalibCheckAppliedMenu();
                MessageBox.Show("   Calibration operation is complete.\r\n \r\n New calibration key has been applied to the device.", sMsgTitle + "' Calibration", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

            this.Text = "Control and Measure" + sTitle;
        }

        private int stepIndex = 0;
        private void timer_Tick(object sender, EventArgs e)
        {
            int i;
            int j;

            if (ChObj.isConnected == false && mfrmCountdown == null && btrycountdown == false)
            {
                timer1.Stop();
                btrycountdown = true;
                mfrmCountdown = new frmCountdown(AutoConnDelay);
                if(mfrmCountdown.ShowDialog() == DialogResult.OK)
                {
                    if (ChObj.Connect() == true)
                    {
                        //MessageBox.Show("Connected.", sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                        btrycountdown = false;
                    }
                    else
                    {
                        if (MessageBox.Show("Failed to connect. \r\n Would you like to try again?", sMsgTitle, MessageBoxButtons.RetryCancel, MessageBoxIcon.Asterisk) == DialogResult.Retry) btrycountdown = false;
                    }
                }

                mfrmCountdown = null;

                timer1.Start();
            }
            


            


 //           Stopwatch stopwatch = new Stopwatch();
 //           stopwatch.Start();

            // Read status
            ReadStatus();
            ChStatus.SetProperty(meis_status);



            j = this.Text.IndexOf("mode");
            if (ChObj.isConnected == false)
            {
                this.statusPanel.menuConnecting.Enabled = true;
                sTitle = string.Format(" - Disconnected {0}[{1}.", ChObj.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            }
            else
            {
                sTitle = string.Format(" - {0}[{1}].", ChObj.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                this.statusPanel.menuConnecting.Enabled = false;
            }

            if (j < 0) this.Text = "Control and Measure" + sTitle;
            else
            {
                this.Text = this.Text.Substring(0,j-1) + " mode" + sTitle;
            }
            
            /*
           this.Text = "Control and Measure" + sTitle;
            if (meis_status.teststatus == DeviceConstants.EIS_TESTSTATUS_ERRCOMMZIM)
            {
                if (Stat_Errzim == false)
                {
                    Stat_Errzim = true;
                    cnt_errzim++;
                }
            }
            else
            {
                Stat_Errzim = false;
            }
            if (Stat_Errzim == false)
            {
                if (maux_vdc.value < 50.0)
                {
                    if (Vdc_Errzim == false)
                    {
                        Vdc_Errzim = true;
                        cnt_vdcerrzim++;
                    }
                }
                else
                {
                    Vdc_Errzim = false;
                }
            }

                this.Text = string.Format("ZIM - Control and Measure.[err-{0} // vdcerr-{1}] // zdataerr-{2}", cnt_errzim, cnt_vdcerrzim, cnt_zdataerrzim);
                */

            // Read aux values
            ReadAuxVoltage();
            ChStatus.SetProperty(maux_vdc);
            ReadAuxTemperature();
            ChStatus.SetProperty(maux_temp);

            int lastitem = meis_status.freqindex;
            if (meis_status.status > DeviceConstants.EIS_STATUS_FIN || meis_status.status == DeviceConstants.EIS_STATUS_NONE)
            {
                if (meis_status.status == DeviceConstants.EIS_STATUS_LAST_AUTOSTOP)
                {
                    lastitem++;
                    if (lastitem > meis_cond.count) lastitem = meis_cond.count;
                }
            }
            
            // the channel is running
            if (ChStatus.Eisstate < EisState.lastauto && ChStatus.Eisstate > EisState.none)   // if (ChStatus.State != State.Idle && ChStatus.State != State.RunningNoiseLevel && ChStatus.State != State.RefreshVac)
            {
                if (StartFlag == false)
                {
                    ReadExpParameters();

                    meis_item = new st_zim_eis_item[meis_cond.count];
                    for (i = 0; i < meis_cond.count; i++)
                    {
                        meis_item[i] = new st_zim_eis_item(0);
                        meis_item[i].info.freq = meis_cond.item[i].freq;
                    }

                    ChStatus.SetProperty(meis_item);

                    StartFlag = true;
                    InitializeListview();
                    PrepareListViewForNewMeasurement();

                    statusPanel.Index = 0;
                    stepIndex = 0;
                }

         
                if (stepIndex != lastitem)
                {
                    for (i = stepIndex; i < lastitem; i++)
                    {
                        if (i < 0) continue;

                        ReadZData(i);

                        ChStatus.SetProperty(meis_item[i], i); // Simple EIS Result
                        FillRowOfListView(i);
                    }
                    stepIndex = lastitem;
                }

                listView.Enabled = true;
            }
            else
            {
                if (StartFlag == true && lastitem > 0)
                {
                    if (stepIndex != lastitem)
                    {
                        for (i = stepIndex; i < lastitem; i++)
                        {
                            if (i < 0) continue;

                            ReadZData(i);

                            ChStatus.SetProperty(meis_item[i], i); // Simple EIS Result
                            FillRowOfListView(i);

                            //                          if(listView.Items[i].SubItems[2].Text == "NaN")
                            //                          {
                            //                              cnt_zdataerrzim++;
                            //                          }
                        }
                        stepIndex = lastitem;
                    }

                    StartFlag = false;
                }
                else
                {

                    if (RepeatMode == true)
                    {
                        //                       if (stepIndex < 30)
                        //                       {
                        //                           cnt_zdataerrzim++;
                        //                       }
                        // Initialize mesi_item
                        meis_item = new st_zim_eis_item[meis_cond.count];
                        for (i = 0; i < meis_cond.count; i++)
                        {
                            meis_item[i] = new st_zim_eis_item(0);
                            meis_item[i].info.freq = meis_cond.item[i].freq;
                        }

                        ChObj.CmdStartToMeasureImpedance();

                        StartFlag = true;
                        InitializeListview();
                        PrepareListViewForNewMeasurement();



                        ChStatus.SetProperty(meis_item);
                        statusPanel.Index = 0;
                        stepIndex = 0;
                    }
                }
                
                //listView.Enabled = false;
            }

            if ((ChStatus.State == State.Idle || ChStatus.State == State.DetecteNotYetCalibrated) && ChStatus.CalibMode > 0 && meis_cond.count == stepIndex)
            {
                int iCalMode = ChStatus.CalibMode;
                ChStatus.CalibMode = 0;
                if (iCalMode == 1) ProcFitting(4);
                else
                {
                    ProcGetGain(iCalMode - 2);
                }
            }


            //         stopwatch.Stop();
            //        Debug.WriteLine("Time elapsed for reading packets: {0}", stopwatch.Elapsed);
        }

        private void RefreshChangeTestData(st_zim_eis_item[] items)
        {
            ChStatus.SetProperty(items);
            InitializeListview();
            PrepareListViewForNewMeasurement();
            for (int i = 0; i < items.Length; i++)
            {
                FillRowOfListView(i);
                ChStatus.SetProperty(items[i], i);
            }
        }
        private void ReadSamples()
        {
            int i;
            bool bCondNone = false;


            // Set cursor as hourglass
            Cursor.Current = Cursors.WaitCursor;


            // Read Status
            ReadStatus();
            ChStatus.SetProperty(meis_status);

            // Read aux values
            ReadAuxVoltage();
            ChStatus.SetProperty(maux_vdc);
            ReadAuxTemperature();
            ChStatus.SetProperty(maux_temp);

            // Read ZParameters
            ReadExpParameters();

            if (meis_cond.count < 1)
            {
                bCondNone = true;
                meis_cond = this.statusPanel.Cooker_ZParameters.ToPacket();
            }
            ChStatus.SetProperty(meis_cond);

            for (i = 0; i < meis_cond.count; i++)
            {
                ReadStepSamples(i);
                ReadZData(i);
            }
            ChStatus.SetProperty(meis_item, meis_raw);

            RepeatMode = false;
            ChStatus.CalibMode = 0;

            InitializeListview();
            PrepareListViewForNewMeasurement();

            if (bCondNone == true)
            {
                listView.Enabled = true;
                return;
            }

            
            for (i = 0; i < meis_cond.count; i++)
            {
                FillRowOfListView(i);
            }

            stepIndex = 0;
    

            listView.Enabled = true;

            // Set cursor as default arrow
            Cursor.Current = Cursors.Default;
        }

        private void ReadInitSamples()
        {
            int i;
            bool bCondNone = false;


            // Set cursor as hourglass
            Cursor.Current = Cursors.WaitCursor;


            // Read Status
            ReadStatus();
            ChStatus.SetProperty(meis_status);

            // Read aux values
            ReadAuxVoltage();
            ChStatus.SetProperty(maux_vdc);
            ReadAuxTemperature();
            ChStatus.SetProperty(maux_temp);

            // Read ZParameters
            ReadExpParameters();

            if (meis_cond.count < 1)
            {
                bCondNone = true;
                meis_cond = this.statusPanel.Cooker_ZParameters.ToPacket();
            }
            ChStatus.SetProperty(meis_cond);

            meis_item = new st_zim_eis_item[meis_cond.count];
            
            for (i = 0; i < meis_cond.count; i++)
            {
                meis_item[i] = new st_zim_eis_item(0);
                meis_item[i].info.freq = meis_cond.item[i].freq;
            }
            ChStatus.SetProperty(meis_item);

            RepeatMode = false;
            ChStatus.CalibMode = 0;

            InitializeListview();
            PrepareListViewForNewMeasurement();
            stepIndex = 0;
            statusPanel.Index = 0;

            if (bCondNone == true)
            {
                listView.Enabled = true;
                return;
            }



            int lastitem = meis_status.freqindex;
            if (meis_status.status > DeviceConstants.EIS_STATUS_FIN || meis_status.status == DeviceConstants.EIS_STATUS_NONE)
            {
                if (meis_status.status == DeviceConstants.EIS_STATUS_LAST_AUTOSTOP || meis_status.status == DeviceConstants.EIS_STATUS_NONE)
                {
                    lastitem++;
                    if (lastitem > meis_cond.count) lastitem = meis_cond.count;
                }
            }
            else
            {
                StartFlag = true;
            }

            for (i = 0; i < lastitem; i++)
            {
                ReadZData(i);
                ChStatus.SetProperty(meis_item[i], i);
                FillRowOfListView(i);
            }
           
            
            stepIndex = lastitem;
            
            listView.Enabled = true;

            // Set cursor as default arrow
            Cursor.Current = Cursors.Default;
        }

        #region Communicate with the channel

        private void ReadAbout(ref stEthernetCfg mConnStat, ref stSystemConfig mSysCfg, ref st_zim_rnginf mRanges)
        {
            ChObj.ReadConnectStatus(ref mConnStat);
            ChObj.ReadData(ref mSysCfg);
            ChObj.ReadData(ref mRanges);
        }

        private void ReadAuxVoltage()
        {
            ChObj.ReadData(ref maux_vdc);
        }

        private void ReadAuxTemperature()
        {
            ChObj.ReadData(ref maux_temp);
        }

        private bool ApplyRangesInfo()
        {
            if (ChObj.WriteData(mRanges) == false)
            {
                return false;
            }
            if (ChObj.CmdStoreRangesInfo() == false)
            {
                return false;
            }
            return true;
        }
       
        private void SaveRangesInfo()
        {
            ChObj.CmdStoreRangesInfo();
        }

        private void ReadStatus()
        {
            ChObj.ReadData(ref meis_status);
        }

        private void ReadStepSamples(int index)
        { 
            ChObj.ReadData(ref meis_raw[index].raw_val, index);
        }

        private void ReadZData(int index)
        {
            ChObj.ReadData(ref meis_item[index], index);
        }

        private double ReadFreq(int index)
        {
            st_zim_eis_item teis_item = new st_zim_eis_item(0);

            ChObj.ReadData(ref teis_item, index);
            return teis_item.info.freq;
        }

        private void ReadExpParameters()
        {
            ChObj.ReadData(ref meis_cond);
        }

        private bool WriteExpParameters(st_zim_eis_cond cond)
        {
            ChObj.WriteData(cond);
            return true;
        }

        #endregion Communicate with the channel

        #region listView

        private void InitializeListview()
        {
            listView.Columns.Clear();
            listView.Items.Clear();
            listView.Clear();

            listView.View = View.Details;
            listView.GridLines = true;
            listView.FullRowSelect = true;
            listView.CheckBoxes = false;
            listView.MultiSelect = false;
            listView.LabelEdit = false;
            listView.LabelWrap = false;
            listView.HideSelection = false;

            listView.Columns.Add("Pt", 50, HorizontalAlignment.Right);
            listView.Columns.Add("Time (s)", 90, HorizontalAlignment.Right);
            listView.Columns.Add("Freq (Hz)", 90, HorizontalAlignment.Right);
            listView.Columns.Add("Zreal (Ω)", 90, HorizontalAlignment.Right);
            listView.Columns.Add("Zimag (Ω)", 90, HorizontalAlignment.Right);
            listView.Columns.Add("Zmod (Ω)", 90, HorizontalAlignment.Right);
            listView.Columns.Add("Zphase (°)", 90, HorizontalAlignment.Right);
            listView.Columns.Add("Idc (A)", 70, HorizontalAlignment.Right);
            listView.Columns.Add("Vdc (V)", 70, HorizontalAlignment.Right);
            listView.Columns.Add("Temp (°C)", 70, HorizontalAlignment.Right);
            listView.Columns.Add("IRange (A)", 70, HorizontalAlignment.Right);
        }

         private void PrepareListViewForNewMeasurement()
        {
            int i;
            ListViewItem imtem;

            string[] str = new string[8];

            for (i = 0; i < meis_cond.count; i++)
            {
                imtem = new ListViewItem(
                            new string[] {
                                    string.Format("{0}",i+1),
                                    "-",
                                    string.Format("{0:G6}", meis_cond.item[i].freq),
                                    "-",
                                    "-",
                                    "-",
                                    "-",
                                    "-",
                                    "-",
                                    "-",
                                    "-" }); 
                listView.Items.Add(imtem);
            }
            
        }

        private void FillRowOfListView(int index)
        {
            if (ChStatus == null || ChStatus.BindingZData == null || ChStatus.BindingZData.Count < 1) return;
            if (index >= ChStatus.BindingZData.Count) return;

            if (listView.Items.Count < 1) return;
            if (index >= listView.Items.Count) return;

            if (index < 0) return;

            listView.Items[index].SubItems[0].Text = string.Format("{0}", index + 1);
            listView.Items[index].SubItems[1].Text = string.Format("{0:#0.000}", ChStatus.BindingZData[index].Time);
            listView.Items[index].SubItems[2].Text = string.Format("{0:G6}", ChStatus.BindingZData[index].Freq);
            listView.Items[index].SubItems[3].Text = string.Format("{0:G6}", ChStatus.BindingZData[index].Zreal);
            listView.Items[index].SubItems[4].Text = string.Format("{0:G6}", ChStatus.BindingZData[index].Zimag);
            listView.Items[index].SubItems[5].Text = string.Format("{0:G6}", ChStatus.BindingZData[index].Zmod);
            listView.Items[index].SubItems[6].Text = string.Format("{0:#0.000}", ChStatus.BindingZData[index].Zphase);
            listView.Items[index].SubItems[7].Text = string.Format("{0:G1}", ChStatus.BindingZData[index].Idc);
            listView.Items[index].SubItems[8].Text = string.Format("{0:#0.000}", ChStatus.BindingZData[index].Vdc);
            listView.Items[index].SubItems[9].Text = string.Format("{0:#0.0}", ChStatus.BindingZData[index].Temp);
            listView.Items[index].SubItems[10].Text = string.Format("{0:G1}", ChStatus.BindingZData[index].IRange);
        }

        private void listView_Click(object sender, EventArgs e)
        {
            if (listView.SelectedIndices != null && listView.SelectedIndices.Count > 0 && listView.SelectedIndices[0] != statusPanel.Index)
                statusPanel.Index = listView.SelectedIndices[0];
        }

        private void listView_KeyDown(object sender, KeyEventArgs e)
        {
            if (listView.Focused && listView.SelectedIndices != null
                && listView.SelectedIndices.Count > 0)
            {
                var idx = listView.SelectedIndices[0];
                if (e.KeyCode == Keys.Up)
                {
                    idx--;
                    if (idx < 0)
                        idx = 0;
                }
                else if (e.KeyCode == Keys.Down)
                {
                    idx++;
                    if (idx >= listView.Items.Count)
                        idx = listView.Items.Count - 1;
                }
                statusPanel.Index = idx;
            }
        }

        #endregion listView

        #region statusPanel
        


        private void StartReportProcess(int type)
        {
            string str;
            MessageBoxIcon ico = new MessageBoxIcon();
            ico = MessageBoxIcon.Information;

            if (ChkEisCalVar(mRanges.mEisIRngCalInfo[4]) == false)
            {
                MessageBox.Show("Calibration Parameter is not ready.", sMsgTitle + ", Reporting", MessageBoxButtons.OK, ico);
                return;
            }

            str = "";

            if (type == 1) // 100m
            {
                str += "The DC voltage cannot be measured in reporting mode.\n";
                str += "if the actual DC voltage is high, a device may be troubled if the current range is high.\n\n";

                str += "The current range used for 100mΩ resistance is 200mA.\n\n";
                str += "To continue reporting, connect the 10mΩresistor and press the OK button.\n\n";
                ico = MessageBoxIcon.Warning;
            }
            else if (type == 2) // 1000m
            {
                str += "The current range used for 1Ω resistance is 20mA.\n\n";
                str += "To continue reporting, connect the 1Ωresistor and press the OK button.\n\n";
            }
            else if (type == 3) // 10000m
            {
                str += "The current range used for 10Ω resistance is 2mA.\n\n";
                str += "To continue reporting, connect the 10Ωresistor and press the OK button.\n\n";
            }
            else //10m
            {
                str += "The DC voltage cannot be measured in reporting mode.\n";
                str += "if the actual DC voltage is high, a device may be troubled if the current range is high.\n\n";

                str += "The current range used for 10mΩ resistance is 2A.\n\n";
                str += "To continue reporting, connect the 10mΩresistor and press the OK button.\n\n";
                ico = MessageBoxIcon.Warning;
            }

            if (MessageBox.Show(str, sMsgTitle + ", Reporting",
                    MessageBoxButtons.OKCancel, ico, MessageBoxDefaultButton.Button2) != DialogResult.OK) return;



            this.Text = "Reporting mode" + sTitle;

            meis_cond = ChStatus.ZParameters.ToReportingPacket(type);

            if (!WriteExpParameters(meis_cond)) return;

            // Initialize mesi_item
            meis_item = new st_zim_eis_item[ChStatus.ZParameters.Frequencies.Count];
            meis_Fit_item = new st_zim_eis_item[ChStatus.ZParameters.Frequencies.Count];
            for (int i = 0; i < ChStatus.ZParameters.Frequencies.Count; i++)
            {
                meis_item[i] = new st_zim_eis_item(0);
                meis_Fit_item[i] = new st_zim_eis_item(0);
                meis_item[i].info.freq = ChStatus.ZParameters.Frequencies[i];
            }
            ChStatus.CalibMode = 0;
            // Start Experiment
            ChObj.CmdStartToMeasureImpedance(false);

            statusPanel.Index = 0;
            InitializeListview();
            PrepareListViewForNewMeasurement();
            ChStatus.SetProperty(meis_item);

            stepIndex = 0;
        }

        private void StartCalibGainProcess(int type)
        {
            string str;
            MessageBoxIcon ico = new MessageBoxIcon();
            ico = MessageBoxIcon.Information;

            if(ChkEisCalVar(mRanges.mEisIRngCalInfo[4]) == false)
            {
                MessageBox.Show("Calibration Parameter is not ready. Please do Calib parameter with 1Ohm at first.", sMsgTitle + ", Calibration", MessageBoxButtons.OK, ico);
                return;
            }

            str = "";

            if (type == 1) // 100m
            {
                str += "The DC voltage cannot be measured in calibration mode.\n";
                str += "if the actual DC voltage is high, a device may be troubled if the current range is high.\n\n";

                str += "The current range used for 100mΩ resistance is 200mA.\n\n";
                str += "To continue calibration, connect the 10mΩresistor and press the OK button.\n\n";
                ico = MessageBoxIcon.Warning;
            }
            else if (type == 2) // 1000m
            {
                str += "The current range used for 1Ω resistance is 20mA.\n\n";
                str += "To continue calibration, connect the 1Ωresistor and press the OK button.\n\n";
            }
            else if (type == 3) // 10000m
            {
                str += "The current range used for 10Ω resistance is 2mA.\n\n";
                str += "To continue calibration, connect the 10Ωresistor and press the OK button.\n\n";
            }
            else //10m
            {
                str += "The DC voltage cannot be measured in calibration mode.\n";
                str += "if the actual DC voltage is high, a device may be troubled if the current range is high.\n\n";

                str += "The current range used for 10mΩ resistance is 2A.\n\n";
                str += "To continue calibration, connect the 10mΩresistor and press the OK button.\n\n";
                ico = MessageBoxIcon.Warning;
            }

            if (MessageBox.Show(str, sMsgTitle + ", Calibration",
                    MessageBoxButtons.OKCancel, ico, MessageBoxDefaultButton.Button2) != DialogResult.OK) return;

            this.Text = "Calibration mode" + sTitle;

            meis_cond = ChStatus.ZParameters.ToCalibGainPacket(type);

            if (!WriteExpParameters(meis_cond)) return;

            // Initialize mesi_item
            meis_item = new st_zim_eis_item[ChStatus.ZParameters.Frequencies.Count];
            meis_Fit_item = new st_zim_eis_item[ChStatus.ZParameters.Frequencies.Count];
            for (int i = 0; i < ChStatus.ZParameters.Frequencies.Count; i++)
            {
                meis_item[i] = new st_zim_eis_item(0);
                meis_Fit_item[i] = new st_zim_eis_item(0);
                meis_item[i].info.freq = ChStatus.ZParameters.Frequencies[i];
            }
            ChStatus.CalibMode = type + 2;
            // Start Experiment
            ChObj.CmdStartToMeasureImpedance(true);

            statusPanel.Index = 0;
            InitializeListview();
            PrepareListViewForNewMeasurement();
            ChStatus.SetProperty(meis_item);

            stepIndex = 0;
        }

        private void StartCalibrationProcess()
        {
            string str;
            MessageBoxIcon ico = new MessageBoxIcon();
            ico = MessageBoxIcon.Information;

            str = "The current range used for 1Ω resistance is 20mA.\n\n";
            str += "To continue calibration, connect the 1Ωresistor and press the OK button.\n\n";
           

            if (MessageBox.Show(str, sMsgTitle + ", Calibration",
                    MessageBoxButtons.OKCancel, ico, MessageBoxDefaultButton.Button2) != DialogResult.OK) return;

            this.Text = "Calibration mode" + sTitle;

            ChStatus.ZParameters.Finalcalibfreq = Properties.Settings.Default.FinalCalibFreq;
            meis_cond = ChStatus.ZParameters.ToCalibPacket(4);

            if (!WriteExpParameters(meis_cond)) return;

            // Initialize mesi_item
            meis_item = new st_zim_eis_item[ChStatus.ZParameters.Frequencies.Count];
            meis_Fit_item = new st_zim_eis_item[ChStatus.ZParameters.Frequencies.Count];
            for (int i = 0; i < ChStatus.ZParameters.Frequencies.Count; i++)
            {
                meis_item[i] = new st_zim_eis_item(0);
                meis_Fit_item[i] = new st_zim_eis_item(0);
                meis_item[i].info.freq = ChStatus.ZParameters.Frequencies[i];
            }
            ChStatus.CalibMode = 1;
            // Start Experiment
            ChObj.CmdStartToMeasureImpedance(true);

            statusPanel.Index = 0;
            InitializeListview();
            PrepareListViewForNewMeasurement();
            ChStatus.SetProperty(meis_item);

            stepIndex = 0;
        }
        

        private string GetCurrentRangeDescription(CurrentRange iRange)
        {

            switch (iRange)
            {
                default:
                    return "Auto";
                case CurrentRange.I2A:
                    return "2A";
                case CurrentRange.I400mA:
                    return "400mA";
                case CurrentRange.I200mA:
                    return "200mA";
                case CurrentRange.I40mA:
                    return "40mA";
                case CurrentRange.I20mA:
                    return "20mA";
                case CurrentRange.I4mA:
                    return "4mA";
                case CurrentRange.I2mA:
                    return "2mA";
                case CurrentRange.I400uA:
                    return "400uA";
            }
        }

        private void statusPanel_StartExperimentClicked(object sender, EventArgs e)
        {
            string str;
            MessageBoxIcon ico = new MessageBoxIcon();
            

            var cond = e as ParametersEventArgs;
            if (cond == null) return;

            /*           if(RepMode == true)
                       {
                           meis_cond = cond.Parameters.ToReportPacket();
                       }
                       else
                       {
                           meis_cond = cond.Parameters.ToPacket();
                       }*/
            meis_cond = cond.Parameters.ToPacket();
            ico = MessageBoxIcon.Warning;

            if (maux_vdc.value < 1.0)
            {
                str = "Measurement of DC voltage is not normal.\n";
                str += "if the actual DC voltage is high, a device may be troubled if the current range is high.\n\n";
                str += string.Format("The current range set in the test is {0}.\n\n", GetCurrentRangeDescription((CurrentRange)(meis_cond.iacrng-1)));
                if ((meis_cond.iacrng - 1) < 2) ico = MessageBoxIcon.Stop;

                if (MessageBox.Show(str, sMsgTitle, MessageBoxButtons.OKCancel, ico, MessageBoxDefaultButton.Button2) != DialogResult.OK)
                {
                    return;
                }
            }

            if (!WriteExpParameters(meis_cond)) return;

            // Initialize mesi_item
            meis_item = new st_zim_eis_item[cond.Parameters.Frequencies.Count];
            for (int i = 0; i < cond.Parameters.Frequencies.Count; i++)
            {
                meis_item[i] = new st_zim_eis_item(0);
                meis_item[i].info.freq = cond.Parameters.Frequencies[i];
            }
            ChStatus.CalibMode = 0;
            // Start Experiment

            RepeatMode = false;
            /*
            DialogResult msg = MessageBox.Show("Do you want to start the test in Repeat mode?", sMsgTitle, MessageBoxButtons.YesNoCancel, ico, MessageBoxDefaultButton.Button2);

            if (msg == DialogResult.Cancel)
            {
                return;
            }
            if (msg == DialogResult.Yes)
            {
                RepeatMode = true;
            }
            */



            ChObj.CmdStartToMeasureImpedance();
            StartFlag = true;
            InitializeListview();
            PrepareListViewForNewMeasurement();

            ChStatus.SetProperty(meis_item);
            statusPanel.Index = 0;
            stepIndex = 0;

        }

        private void statusPanel_RefreshVacClicked(object sender, EventArgs e)
        {
            System.Windows.Forms.Cursor.Current = Cursors.Default;
            ChStatus.CalibMode = 0;
            ChObj.CmdRefreshVac();
            this.Text = "Refresh Vac mode" + sTitle;
        }

        private void statusPanel_StopExperimentClicked(object sender, EventArgs e)
        {
            System.Windows.Forms.Cursor.Current = Cursors.Default;
            RepeatMode = false;
            ChStatus.CalibMode = 0;
            ChObj.CmdStopMeasurement();
            this.Text = "Control and Measure" + sTitle;
        }

        private void statusPanel_MeasureNoiseLevelClicked(object sender, EventArgs e)
        {
            st_zim_eis_rms_Inf RmsInfo;
            RmsInfo = new st_zim_eis_rms_Inf(0);
            RmsInfo.IRange = (int)(e as IRangeEventArgs).IRange;
            ChObj.CmdStartToMeasureNoise(RmsInfo);
        }

        private void statusPanel_MenuConnecting(object sender, EventArgs e)
        {
            if (ChObj.Connect() == true)
            {
                MessageBox.Show("Connected.", sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                btrycountdown = false;
            }
            else MessageBox.Show("Failed.", sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }

        private void statusPanel_CalWith1ohmMenuSelected(object sender, EventArgs e)
        {
           
            StartCalibrationProcess();
        }
        private void statusPanel_CalGainWith2AMenuSelected(object sender, EventArgs e)
        {
            StartCalibGainProcess(0);
        }
        private void statusPanel_CalGainWith200mAMenuSelected(object sender, EventArgs e)
        {
            StartCalibGainProcess(1);
        }
        private void statusPanel_CalGainWith20mAMenuSelected(object sender, EventArgs e)
        {
            StartCalibGainProcess(2);
        }
        private void statusPanel_CalGainWith2mAMenuSelected(object sender, EventArgs e)
        {
            StartCalibGainProcess(3);
        }

        private void statusPanel_ReportWith2AMenuSelected(object sender, EventArgs e)
        {
            StartReportProcess(0);
        }
        private void statusPanel_ReportWith200mAMenuSelected(object sender, EventArgs e)
        {
            StartReportProcess(1);
        }
        private void statusPanel_ReportWith20mAMenuSelected(object sender, EventArgs e)
        {
            StartReportProcess(2);
        }
        private void statusPanel_ReportWith2mAMenuSelected(object sender, EventArgs e)
        { 
            StartReportProcess(3);
        }

        private void ProcInitKey(ref st_zim_Eis_Cal_info inf)
        {
            inf.n1 = 0.0;
            inf.n2 = 0.0;
            inf.n3 = 0.0;
            inf.d1 = 0.0;
            inf.d2 = 0.0;
            inf.d3 = 0.0;
        }

        private void statusPanel_CalInitAtAllMenuSelected(object sender, EventArgs e)
        {
            if (MessageBox.Show("Initializes the calibration key. All previous calibration key values are erased. Would you like to continue?", sMsgTitle + ", Calibration",
                    MessageBoxButtons.OKCancel, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2) != DialogResult.OK) return;

            ProcInitKey(ref mRanges.mEisCalInfo);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[0]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[1]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[2]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[3]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[4]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[5]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[6]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[7]);


            mRanges.iac_rng[0].gain = 1.0;
            mRanges.iac_rng[0].offset = 1.0;
            mRanges.iac_rng[1].gain = 1.0;
            mRanges.iac_rng[1].offset = 1.0;
            mRanges.iac_rng[2].gain = 1.0;
            mRanges.iac_rng[2].offset = 1.0;
            mRanges.iac_rng[3].gain = 1.0;
            mRanges.iac_rng[3].offset = 1.0;

            if (ApplyRangesInfo() == false)
            {
                MessageBox.Show("Initialization of the calibration key has failed.", sMsgTitle + ", Calibration",
                    MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }
            else
            {
                CalibCheckAppliedMenu();
                MessageBox.Show("Initialization of the calibration key has completed.", sMsgTitle + ", Calibration",
                        MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }
        }
        
        private void statusPanel_CalInitAt1ohmMenuSelected(object sender, EventArgs e)
        {
            if (MessageBox.Show("Initializes the calibration key. All previous calibration key values are erased. Would you like to continue?", sMsgTitle + ", Calibration",
                    MessageBoxButtons.OKCancel, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2) != DialogResult.OK) return;
            ProcInitKey(ref mRanges.mEisCalInfo);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[0]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[1]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[2]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[3]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[4]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[5]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[6]);
            ProcInitKey(ref mRanges.mEisIRngCalInfo[7]);

            mRanges.iac_rng[0].gain = 1.0;
            mRanges.iac_rng[0].offset = 1.0;
            mRanges.iac_rng[1].gain = 1.0;
            mRanges.iac_rng[1].offset = 1.0;
            mRanges.iac_rng[2].gain = 1.0;
            mRanges.iac_rng[2].offset = 1.0;
            mRanges.iac_rng[3].gain = 1.0;
            mRanges.iac_rng[3].offset = 1.0;


            if (ApplyRangesInfo() == false)
            {
                MessageBox.Show("Initialization of the calibration key has failed.", sMsgTitle + ", Calibration",
                    MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }
            else
            {
                CalibCheckAppliedMenu();
                MessageBox.Show("Initialization of the calibration key has completed.", sMsgTitle + ", Calibration",
                        MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }
        }

        private void statusPanel_CalGainInitAt2AMenuSelected(object sender, EventArgs e)
        {
            if (MessageBox.Show("Initializes the calibration key. All previous calibration key values are erased. Would you like to continue?", sMsgTitle + ", Calibration",
                    MessageBoxButtons.OKCancel, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2) != DialogResult.OK) return;

            mRanges.iac_rng[0].gain = 1.0;
            mRanges.iac_rng[0].offset = 1.0;

            if (ApplyRangesInfo() == false)
            {
                MessageBox.Show("Initialization of the calibration key has failed.", sMsgTitle + ", Calibration",
                    MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }
            else
            {
                CalibCheckAppliedMenu();
                MessageBox.Show("Initialization of the calibration key has completed.", sMsgTitle + ", Calibration",
                        MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }

        }

        private void statusPanel_CalGainInitAt200mAMenuSelected(object sender, EventArgs e)
        {
            if (MessageBox.Show("Initializes the calibration key. All previous calibration key values are erased. Would you like to continue?", sMsgTitle + ", Calibration",
                    MessageBoxButtons.OKCancel, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2) != DialogResult.OK) return;

            mRanges.iac_rng[1].gain = 1.0;
            mRanges.iac_rng[1].offset = 1.0;

            if (ApplyRangesInfo() == false)
            {
                MessageBox.Show("Initialization of the calibration key has failed.", sMsgTitle + ", Calibration",
                    MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }
            else
            {
                CalibCheckAppliedMenu();
                MessageBox.Show("Initialization of the calibration key has completed.", sMsgTitle + ", Calibration",
                        MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }
        }
        private void statusPanel_CalGainInitAt20mAMenuSelected(object sender, EventArgs e)
        {
            if (MessageBox.Show("Initializes the calibration key. All previous calibration key values are erased. Would you like to continue?", sMsgTitle + ", Calibration",
                    MessageBoxButtons.OKCancel, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2) != DialogResult.OK) return;

            mRanges.iac_rng[2].gain = 1.0;
            mRanges.iac_rng[2].offset = 1.0;

            if (ApplyRangesInfo() == false)
            {
                MessageBox.Show("Initialization of the calibration key has failed.", sMsgTitle + ", Calibration",
                    MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }
            else
            {
                CalibCheckAppliedMenu();
                MessageBox.Show("Initialization of the calibration key has completed.", sMsgTitle + ", Calibration",
                        MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }
        }
        private void statusPanel_CalGainInitAt2mAMenuSelected(object sender, EventArgs e)
        {
            if (MessageBox.Show("Initializes the calibration key. All previous calibration key values are erased. Would you like to continue?", sMsgTitle + ", Calibration",
                    MessageBoxButtons.OKCancel, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2) != DialogResult.OK) return;

            mRanges.iac_rng[3].gain = 1.0;
            mRanges.iac_rng[3].offset = 1.0;

            if (ApplyRangesInfo() == false)
            {
                MessageBox.Show("Initialization of the calibration key has failed.", sMsgTitle + ", Calibration",
                    MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }
            else
            {
                CalibCheckAppliedMenu();
                MessageBox.Show("Initialization of the calibration key has completed.", sMsgTitle + ", Calibration",
                        MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }
        }

        
        private void statusPanel_IndexChanged(object sender, EventArgs e)
        {
            if (listView.SelectedIndices != null && listView.SelectedIndices.Count > 0)
            {
                var idx = listView.SelectedIndices[0];
                listView.Items[idx].Focused = false;
                listView.Items[idx].Selected = false;
            }

            var args = e as IntEventArgs;
            if (args == null) return;

            statusPanel.Index = args.Value;

            listView.Items[args.Value].Focused = true;
            listView.Items[args.Value].Selected = true;
        }

        private void statusPanel_ReadSamplesMenuSelected(object sender, EventArgs e)
        {
            ReadSamples();
        }

        private void statusPanel_SaveAllMenuSelected(object sender, EventArgs e)
        {
            string str;
            string str1;
            int i;
            int j;
            bool bZsharp = false;
            FileStream fs;
            SaveFileDialog saveDlg = new SaveFileDialog();
            saveDlg.InitialDirectory = Properties.Settings.Default.PathData;
            saveDlg.Filter = "ZMAN Data(*.Z#)|*.Z#|csv (*.csv)|*.csv|txt (*txt)|*.txt|All files (*.*)|*.*";
            if (saveDlg.ShowDialog() == DialogResult.Cancel)
            {
                return;
            }
            Properties.Settings.Default.PathData = Path.GetDirectoryName(saveDlg.FileName);
            Properties.Settings.Default.Save();
            if (File.Exists(saveDlg.FileName) == true)
            {
                try
                {
                    File.Delete(saveDlg.FileName);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, sMsgTitle,MessageBoxButtons.OK,MessageBoxIcon.Warning);
                    return;
                }
            }

            str = Path.GetExtension(saveDlg.FileName);
            if (str == ".Z#")
            {
                bZsharp = true;
            }

            try
            {
                fs = new FileStream(saveDlg.FileName, FileMode.CreateNew, FileAccess.Write);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            StreamWriter sw = new StreamWriter(fs, Encoding.UTF8);
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("[SIF Board]");

            str = string.Format("Serial number : {0}", mSysCfg.mSIFCfg.GetSerialNumber());
            sb.AppendLine(str);

            str = string.Format("Board version : {0}.{1}.{2}.{3}", mSysCfg.mSIFCfg.BoardVersion.Major
                                                    , mSysCfg.mSIFCfg.BoardVersion.Minor
                                                    , mSysCfg.mSIFCfg.BoardVersion.Revision
                                                    , mSysCfg.mSIFCfg.BoardVersion.Build);

            sb.AppendLine(str);

            str = string.Format("Firmware version : {0}.{1}.{2}.{3}", mSysCfg.mSIFCfg.FirmwareVersion.Major
                                                    , mSysCfg.mSIFCfg.FirmwareVersion.Minor
                                                    , mSysCfg.mSIFCfg.FirmwareVersion.Revision
                                                    , mSysCfg.mSIFCfg.FirmwareVersion.Build);

            sb.AppendLine(str);
            sb.AppendLine("");
            sb.AppendLine("[ZIM Board]");

            str = string.Format("Serial number : {0}", mSysCfg.mZimCfg.GetSerialNumber());
            sb.AppendLine(str);

            str1 = string.Format("{0:d04}", mSysCfg.mZimCfg.ZimBDVersion);
            str = string.Format("Board version : {0}.{1}.{2}.{3}", str1.Substring(0, str1.Length - 3)
                                                        , str1.Substring(str1.Length - 3, 1)
                                                        , str1.Substring(str1.Length - 2, 1)
                                                        , str1.Substring(str1.Length - 1, 1));
            sb.AppendLine(str);

            str1 = string.Format("{0:d04}", mSysCfg.mZimCfg.ZimFWVersion);
            str = string.Format("Firmware version : {0}.{1}.{2}.{3}", str1.Substring(0, str1.Length - 3)
                                                        , str1.Substring(str1.Length - 3, 1)
                                                        , str1.Substring(str1.Length - 2, 1)
                                                        , str1.Substring(str1.Length - 1, 1));
            sb.AppendLine(str);
            sb.AppendLine("");
            sb.AppendLine("[Parameters]");
            sb.AppendFormat("Current Range(A) : {0}", GetCurrentRangeDescription((CurrentRange)meis_cond.iacrng - 1)).AppendLine();
            sb.AppendFormat("Initial Frequency(Hz) : {0:#0.000}", meis_cond.initFreq).AppendLine();
            sb.AppendFormat("Final Frequency(Hz) : {0:#0.000}", meis_cond.finalFreq).AppendLine();
            sb.AppendFormat("Density(pts/decade) : {0}", meis_cond.density).AppendLine();
            sb.AppendFormat("Iteration : {0}", meis_cond.iteration).AppendLine();
            sb.AppendFormat("Initial Delay Time(s) : {0:#0.0}", meis_cond.ondelay).AppendLine();
            sb.AppendFormat("Skip Cycle : {0:#0.#}", meis_cond.skipcycle).AppendLine();
            DateTime dt = new DateTime(meis_status.rtc.tick * TimeSpan.TicksPerMillisecond);
            sb.AppendFormat("Started : {0:yyyy-MM-dd HH:mm:ss}", dt).AppendLine();

            sb.AppendLine("[OCV]");
            sb.AppendFormat("Value : {0:#0.000}V", meis_status.Veoc).AppendLine();
            sb.AppendLine("");
            sw.WriteLine(sb);

            sw.WriteLine("");
            sw.WriteLine("");
            sw.WriteLine("");
            sw.WriteLine("[Data]");

            String columnheader = "";
            if (bZsharp == true)
            {
                columnheader = "Frequency(Hz)\tZre(ohm)\tZimg(ohm)\t";
            }
            else
            {
                for (i = 0; i < listView.Columns.Count; i++)
                {
                    columnheader += listView.Columns[i].Text + ",";
                }
            }
            sw.WriteLine(columnheader);

            if (bZsharp == true)
            {
                for (i = 0; i < listView.Items.Count; i++)
                {
                    str = "";
                    for (j = 2; j < 5; j++)
                    {
                        str += listView.Items[i].SubItems[j].Text.Replace("\r", "").Replace("\n", "") + "\t";
                    }
                    sw.WriteLine(str);
                }
            }
            else
            {
                for (i = 0; i < listView.Items.Count; i++)
                {
                    str = "";

                    for (j = 0; j < listView.Columns.Count; j++)
                    {
                        str += listView.Items[i].SubItems[j].Text.Replace("\r", "").Replace("\n", "") + ",";
                    }
                    sw.WriteLine(str);
                }
            }

            sw.Close();
            fs.Close();
        }

        private void statusPanel_SaveRptMenuSelected(object sender, EventArgs e)
        {
            string str;
            int i;
            int j;

            FileStream fs;
            SaveFileDialog saveDlg = new SaveFileDialog();
            saveDlg.InitialDirectory = Properties.Settings.Default.PathData;
            saveDlg.Filter = "csv (*.csv)|*.csv|All files (*.*)|*.*";
            saveDlg.OverwritePrompt = false;
            saveDlg.FileName = mSysCfg.mZimCfg.GetSerialNumber() + "_Rpt.csv";
            if (saveDlg.ShowDialog() == DialogResult.Cancel)
            {
                return;
            }
            Properties.Settings.Default.PathData = Path.GetDirectoryName(saveDlg.FileName);
            Properties.Settings.Default.Save();
            /*
            int idx = 26;
            if (listView.Items.Count == 47) idx = 26;
            else if (listView.Items.Count == 44) idx = 23;
            else
            {
                MessageBox.Show("Not enough data. ", sMsgTitle,MessageBoxButtons.OK,MessageBoxIcon.Warning);
                return;
            }
            */

            if (File.Exists(saveDlg.FileName) == true)
            {
                try
                {
                    fs = new FileStream(saveDlg.FileName, FileMode.Append, FileAccess.Write);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
            }
            else
            {
                try
                {
                    fs = new FileStream(saveDlg.FileName, FileMode.CreateNew, FileAccess.Write);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
            }


            StreamWriter sw = new StreamWriter(fs, Encoding.UTF8);
            StringBuilder sb = new StringBuilder();
            sw.WriteLine("");
            str = string.Format("Serial number : {0}  Range : {1}", mSysCfg.mZimCfg.GetSerialNumber(), GetCurrentRangeDescription((CurrentRange)meis_cond.iacrng-1));
            sb.AppendLine(str);
          
            sw.WriteLine(sb);
           
            String columnheader = "";
           

            for (i = 0; i < listView.Columns.Count; i++)
            {
                columnheader += listView.Columns[i].Text + ",";
            }
            sw.WriteLine(columnheader);

            for (int row = 0; row < listView.Items.Count; row++)
            {
                str = "";
                for (j = 0; j < listView.Columns.Count; j++)
                {
                    str += listView.Items[row].SubItems[j].Text.Replace("\r", "").Replace("\n", "") + ",";
                }
                sw.WriteLine(str);
            }
            /*
            str = "";
            for (j = 0; j < listView.Columns.Count; j++)
            {
                str += listView.Items[idx].SubItems[j].Text.Replace("\r", "").Replace("\n", "") + ",";
            }
            sw.WriteLine(str);

            idx += 10;
            str = "";
            for (j = 0; j < listView.Columns.Count; j++)
            {
                str += listView.Items[idx].SubItems[j].Text.Replace("\r", "").Replace("\n", "") + ",";
            }
            sw.WriteLine(str);

            idx += 10;
            str = "";
                for (j = 0; j < listView.Columns.Count; j++)
            {
                str += listView.Items[idx].SubItems[j].Text.Replace("\r", "").Replace("\n", "") + ",";
            }
            sw.WriteLine(str);
            */
            sw.WriteLine("");
            sw.Close();
            fs.Close();
            MessageBox.Show("Succeed. ", sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void statusPanel_SaveSamplesMenuSelected(object sender, EventArgs e)
        {
            var args = e as IntEventArgs;
            if (args == null) return;

            int index = args.Value;

            if (index < 0 || index >= this.listView.Items.Count)
            {
                MessageBox.Show("No items were selected.", sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            SaveFileDialog saveDlg = new SaveFileDialog();
            saveDlg.InitialDirectory = Properties.Settings.Default.PathData;
            saveDlg.Filter = "csv (*.csv)|*.csv|txt (*txt)|*.txt|All files (*.*)|*.*";
            if (saveDlg.ShowDialog() == DialogResult.Cancel)
            {
                return;
            }
            Properties.Settings.Default.PathData = Path.GetDirectoryName(saveDlg.FileName);
            Properties.Settings.Default.Save();
            if (File.Exists(saveDlg.FileName) == true)
            {
                try
                {
                    File.Delete(saveDlg.FileName);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message,sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
            }

            FileStream fs = new FileStream(saveDlg.FileName, FileMode.Append, FileAccess.Write);
            StreamWriter sw = new StreamWriter(fs, Encoding.UTF8);

            string sCondition = "";
            sw.WriteLine("");
            sw.WriteLine("[ Test condition ]");
            sCondition = "Frequency : ";
            sCondition += string.Format("{0} Hz\r\n", meis_item[index].info.freq);
            sCondition += "Points in a cycle: ";
            sCondition += string.Format("{0} Points/Cycle\r\n", meis_item[index].info.cycpoint);
            sCondition += "Cycles: ";
            sCondition += string.Format("{0} Cycle", meis_item[index].info.cycle);

            sw.WriteLine(sCondition);
            sw.WriteLine("");
            sw.WriteLine("");
            String columnheader = "Index,Iac(A),Vac(V)";

            sw.WriteLine(columnheader);


            string strText = "";
            for (int i = 0; i < meis_item[index].info.cycle * meis_item[index].info.cycpoint; i++)
            {
                strText = string.Format("{0},{1},{2}", i + 1, meis_raw[index].raw_val.item[i].iac, meis_raw[index].raw_val.item[i].vac);
                sw.WriteLine(strText);
            }

            sw.Close();
            fs.Close();
        }

        #endregion statusPanel

        private void FormChannel_KeyPress(object sender, KeyPressEventArgs e)
        {
            
        }

        private void FormChannel_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Modifiers == (Keys.Control | Keys.Alt))
            {
                /*                if (e.KeyCode == Keys.R)
                                {
                                    RepMode = true;
                                    this.Text = "Reporting mode" + sTitle;
                                }
                                else if (e.KeyCode == Keys.N)
                                {
                                    RepMode = false;
                                    this.Text = "Control and Measure" + sTitle;
                                }*/
            }
        }
    }
}