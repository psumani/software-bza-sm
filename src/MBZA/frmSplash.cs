using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM
{
    public partial class frmSplash : Form
    {
        public bool bFirst;
        public bool changeBZA;
        public frmSplash(bool First)
        {
            InitializeComponent();
            DoubleBuffered = true;
            this.Icon =ZM.Properties.Resources.MBZA1;
            bFirst = First;
            this.Text = gBZA.sMsgTitle;
            LblVer.Text = gBZA.sMsgTitle;

            SearchDevice();

        }

        public void SearchDevice()
        {
            

            lnkRegister.Enabled = false;
            lnkSearch.Enabled = false;
            LnkContinue.Enabled = false;
            lnkExit.Enabled = false;
            lnkExit.Visible = bFirst;
            CircProgress.Visible = true;
            CircProgress.Start();

            LblAction.Text = "* Searching for devices !";
            txtResult.Text = "";

            changeBZA = false;

            gBZA.pingHost = new PingHost(true);



            backgroundWorker1.RunWorkerAsync();
        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            var success = Task.Run(async () => { await gBZA.pingHost.ScanAsync(); }).Wait(300000);
        }

        private bool CheckChangeStatusBZA()
        {
            string sLogFileBZA = Path.Combine(gBZA.appcfg.PathLog, "BZA_Device.inf");
            try
            {
                if (!File.Exists(sLogFileBZA))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathLog);
                    File.WriteAllText(sLogFileBZA, txtResult.Text, Encoding.UTF8);
                    return true;
                }

                string sOldResult = File.ReadAllText(@sLogFileBZA);

                if (string.Compare(sOldResult, txtResult.Text, true) == 0)
                {
                    return false;
                }

                File.Delete(sLogFileBZA);

                File.WriteAllText(sLogFileBZA, txtResult.Text, Encoding.UTF8);
            }
            catch(Exception e)
            {
                Debug.WriteLine(e.Message);
            }
            
            return true;
        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
           
            CircProgress.Stop();
            txtResult.Text = "";

            int ChannelCount = 0;
            int j = 0;
            var dic = gBZA.pingHost.SearchedDevice;
            string tSerial;
            string ip;
            string str;
            int ScanChCount = 0;
            int ScanSifCount = 0;
            eDeviceType mtype;
            if(bFirst)
            {
                gBZA.SifLnkLst.Clear();
            }
            

            txtResult.Text = "* Scan device list\r\n" ;

            foreach (var pair in dic)
            {
                if (pair.Value.bConnected == 0) continue;
                if (pair.Value.bError == 1) continue;
                if (pair.Value.bBza == 0) continue;

                tSerial = pair.Value.mFindSifCfg.GetSerialNumber();
                ip = pair.Key;

                stLinkSIF mLinkSIF = new stLinkSIF(0);

                if (pair.Value.bBusy == 1)
                {
                    if(gBZA.SifLnkLst.ContainsKey(tSerial))
                    {
                        mLinkSIF = gBZA.SifLnkLst[tSerial];
                        mtype = (eDeviceType)mLinkSIF.mDevInf.mSysCfg.mSIFCfg.Type;
                        ChannelCount = mLinkSIF.ChCnt;
                        gBZA.ScanChCount += mLinkSIF.ChCnt;

                        mLinkSIF.mDevInf.ToWritePtr(mLinkSIF.MBZAIF.mDevInf.ToByteArray());
                        str = string.Format("   -> {0}({1}):{2}[Firmware:{3},Model:{4},{5} channels.]-Connected.\r\n", ScanSifCount + 1, mLinkSIF.sip, mLinkSIF.mDevInf.mConnCfg.GetSerialNumber(), mLinkSIF.mDevInf.mSysCfg.mSIFCfg.GetFirmwareVer(), Extensions.GetEnumDescription((eDeviceType)mLinkSIF.mDevInf.mSysCfg.mSIFCfg.Type), ChannelCount);
                    }
                    else
                    {
                        mLinkSIF.sip = ip;
                        mLinkSIF.sMac = pair.Value.sMac;
                        mLinkSIF.mFindSifCfg.ToWritePtr(pair.Value.mFindSifCfg.ToByteArray());
                        gBZA.SifLnkLst.Add(tSerial, mLinkSIF);
                        ChannelCount = 0;
                        str = string.Format("   -> {0}({1}):{2}[Firmware:{3},Model:{4}]-Detected busy.\r\n", ScanSifCount + 1, mLinkSIF.sip, mLinkSIF.mFindSifCfg.GetSerialNumber(), mLinkSIF.mFindSifCfg.GetFirmwareVer(), Extensions.GetEnumDescription((eDeviceType)mLinkSIF.mFindSifCfg.Type));
                    }
                }
                else
                {

                    if (gBZA.SifLnkLst.ContainsKey(tSerial))
                    {
                        gBZA.SifLnkLst.Remove(tSerial);
                    }

                    mLinkSIF.sip = ip;
                    mLinkSIF.sMac = pair.Value.sMac;
                    mLinkSIF.mDevInf.ToWritePtr(pair.Value.mDevInf.ToByteArray());
                    mLinkSIF.mFindSifCfg.ToWritePtr(pair.Value.mFindSifCfg.ToByteArray());
                    mtype = (eDeviceType)pair.Value.mDevInf.mSysCfg.mSIFCfg.Type;

                    ChannelCount = 0;

                    if (mtype == eDeviceType.MBZA)
                    {

                        for (j = 0; j < MBZA_Constant.MAX_DEV_CHANNEL; j++)
                        {
                            if (pair.Value.mDevInf.mSysCfg.EnaZIM[j] == 1)
                            {
                                ChannelCount++;
                                ScanChCount++;
                            }
                        }
                    }
                    else
                    {
                        if (pair.Value.mDevInf.mSysCfg.EnaZIM[0] == 1)
                        {
                            ChannelCount++;
                            ScanChCount++;
                        }
                    }

                    mLinkSIF.ChCnt = ChannelCount;

                    gBZA.SifLnkLst.Add(mLinkSIF.mFindSifCfg.GetSerialNumber(), mLinkSIF);

                    str = string.Format("   -> {0}({1}):{2}[Firmware:{3},Model:{4},{5} channels.]-Searched.\r\n", ScanSifCount + 1, mLinkSIF.sip, mLinkSIF.mDevInf.mConnCfg.GetSerialNumber(), mLinkSIF.mDevInf.mSysCfg.mSIFCfg.GetFirmwareVer(), Extensions.GetEnumDescription((eDeviceType)mLinkSIF.mDevInf.mSysCfg.mSIFCfg.Type), ChannelCount);
                }


                txtResult.Text += str;

                if (ChannelCount > 0)
                {
                    for (j = 0; j < MBZA_Constant.MAX_DEV_CHANNEL; j++)
                    {
                        if (gBZA.SifLnkLst[tSerial].mDevInf.mSysCfg.EnaZIM[j] == 1)
                        {
                            str = string.Format("      -> CH{0} = {1}[{2}({3} {4}),Firmware:{5}] \r\n", j + 1, gBZA.SifLnkLst[tSerial].mDevInf.mSysCfg.mZimCfg[j].GetSerialNumber(),
                                gBZA.SifLnkLst[tSerial].mDevInf.mSysCfg.mZimCfg[j].GetZimTypeString(), gBZA.SifLnkLst[tSerial].mDevInf.mSysCfg.mZimCfg[j].GetBoardTypeString(),
                               gBZA.SifLnkLst[tSerial].mDevInf.mSysCfg.mZimCfg[j].GetBoardVer(), gBZA.SifLnkLst[tSerial].mDevInf.mSysCfg.mZimCfg[j].GetFirmwareVer());
                            txtResult.Text += str;
                        }
                    }
                }
                ScanSifCount++;
            }

            str = string.Format("   => SIF Board : {0} EA, Total channels : {1} Found! \r\n\r\n", ScanSifCount, ScanChCount);
            txtResult.Text += str;


            txtResult.Text += "* Checking registration information.\r\n";
            LblAction.Text = "Checking registration information !";

            bool bchk = false;
            bool bconn = false;
            int iError = 0;
            int RegChCount = 0;
            int RegOkChCount = 0;

            var list = gBZA.ChLnkLst.Keys.ToList();
            list.Sort();

            foreach (var key in list)
            {
                var Value = gBZA.ChLnkLst[key];

                Value.bChkSIF = false;
                Value.bChkCh = false;
                bchk = false;
                bconn = false;

                RegChCount++;

                if (gBZA.SifLnkLst.ContainsKey(Value.sSerial))
                {
                    Value.bChkSIF = true;

                    if (gBZA.SifLnkLst[Value.sSerial].mDevInf.mSysCfg.EnaZIM[Value.SifCh] == 1)
                    {
                        try
                        {
                            gBZA.SifLnkLst[Value.sSerial].iLinkCh[0] = 1;
                            gBZA.SifLnkLst[Value.sSerial].iLinkCh[Value.SifCh] = Int32.Parse(key);
                            gBZA.SifLnkLst[Value.sSerial].bLinked = true;
                            if (gBZA.SifLnkLst[Value.sSerial].mDevInf.mSysCfg.ChkZIM[Value.SifCh] == 1)
                            {
                                Value.mDevInf = gBZA.SifLnkLst[Value.sSerial].mDevInf;
                                Value.bChkCh = true;
                                bchk = true;
                                if(gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == true)
                                {
                                    bconn = true;
                                }
                            }
                            else
                            {
                                Value.bChkCh = false;
                                bchk = false;
                            }
                        }
                        catch (FormatException)
                        {
                            Debug.WriteLine($"Unable to parse '{key}'");
                        }
                    }
                }

                gBZA.ChLnkLst[key] = Value;

                str = (Convert.ToInt32(key) + 1).ToString();
                if(bchk == true)
                {
                    if (bconn)
                    {
                        str = string.Format("   -> CH-{0}({1}): [{2}-{3},{4}]...Connected. \r\n", str, Value.sip, Value.sSerial, Value.SifCh + 1, gBZA.SifLnkLst[Value.sSerial].mDevInf.mSysCfg.mZimCfg[Value.SifCh].GetZimTypeString());
                    }
                    else
                    {
                        str = string.Format("   -> CH-{0}({1}): [{2}-{3},{4}]...Detected. \r\n", str, Value.sip, Value.sSerial, Value.SifCh + 1, gBZA.SifLnkLst[Value.sSerial].mDevInf.mSysCfg.mZimCfg[Value.SifCh].GetZimTypeString());
                    }
                    RegOkChCount++;
                }
                else
                {
                    str = string.Format("   -> CH-{0}({1}): [{2}-{3}]...Error detected. \r\n", str, Value.sip, Value.sSerial, Value.SifCh+1);
                    iError++;
                }
                txtResult.Text += str;
            }

            gBZA.ScanChCount = ScanChCount;
            gBZA.ScanSifCount = ScanSifCount;
            gBZA.RegOkChCount = RegOkChCount;
            gBZA.RegChCount = RegChCount;


            if (iError == 0)
            {
                if(RegChCount == 0)
                {
                    str = "   => No registered channels. \r\n";
                }
                else
                {
                    str = string.Format("   => Succeed registered information (Channels = {0}). \r\n", gBZA.RegOkChCount);
                }
            }
            else
            {
                str = string.Format("   => Succeed linked Channels is {0}. {1} Error detected! \r\n", gBZA.RegOkChCount, iError);
            }
            txtResult.Text += str;
                
            changeBZA = CheckChangeStatusBZA();

            if (lnkRegister.Enabled == true)
            {
                if(changeBZA == true) AddToolTip(lnkRegister, "A change in the device has been detected.", "Detect BZA");
                else AddToolTip(lnkRegister, "There are no changes to the device.", "Detect BZA");
            }

           

            LblAction.Text = string.Format("* {0} BZA, {1} channels found. linked channels is {2}.", gBZA.ScanSifCount, gBZA.ScanChCount, gBZA.RegOkChCount);
            CircProgress.Visible = false;

            gBZA.SaveLinkChToXml(gBZA.FileLnkCh);

            txtResult.DeselectAll();
            txtResult.Select(txtResult.Text.Length, 0);

            lnkSearch.Enabled = true;
            if (gBZA.RegOkChCount == 0) LnkContinue.Text = "Continue to demo mode.";
            else LnkContinue.Text = "Continue to proceed.";
            lnkExit.Enabled = true;
            lnkExit.Visible = bFirst;
            lnkRegister.Enabled = true;
            LnkContinue.Enabled = true;
        }

        private void AddToolTip(Control obj,string sNote, string sTitle)
        {
            ToolTip myToolTip = new ToolTip();
            myToolTip.ToolTipTitle = sTitle;
            myToolTip.IsBalloon = true;
            myToolTip.ShowAlways = true;
            myToolTip.UseFading = true;
            myToolTip.SetToolTip(obj, sNote);
        }

        private void lnkSearch_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            SearchDevice();
        }

        private void lnkRegister_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmRegBZA frm = new frmRegBZA();
            frm.ShowDialog();

            SearchDevice();
        }

        private void LnkContinue_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void lnkExit_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
    }
}
