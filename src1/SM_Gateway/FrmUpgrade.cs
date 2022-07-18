using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using SM_Comm.SM_Comm_USB;
using SM_Define;
using SM_Enum;
using SP_OldSystem;
using System.Runtime.InteropServices;
using SP_File;
using System.IO;
using SMLib;

namespace SM_Gateway
{
    public partial class FrmUpgrade : Form
    {
        public bool bErr;
        public int iAction;
        public string sSerial;
        public int nDevice;
        public string sOldSysFile;
        public string sFWFile;
        public SM_BurnUSB burnUsb;
        public SM_BurnFPGA burnFpga;
        public SM_BurnDSP burnDsp;

        public BurnEventArgs mWorkArg;

        public stDefSystem_0[] mOldSystem;
        public FrmUpgrade(int nDev, string serial)
        {
            int i;

            InitializeComponent();

            bErr = false;
            iAction = 0;
            nDevice = nDev;
            sSerial = serial;
            sOldSysFile = string.Format("{0}_Bak.wss",sSerial);
            mOldSystem = new stDefSystem_0[SM_Define.SM_Main_Define.DEF_MAX_DEV_CH];
            mWorkArg = new BurnEventArgs(100,0,"",0);
            this.burnUsb = new SM_BurnUSB(nDev, serial, this.backgroundWorker1, 0);
            this.burnFpga = new SM_BurnFPGA(nDev, serial, this.backgroundWorker1, 0);
            this.burnDsp = new SM_BurnDSP(nDev, serial, this.backgroundWorker1, 0);

            sFWFile = "";

            for (i = 0; i < SM_Define.SM_Main_Define.DEF_MAX_DEV_CH; i++)
            {
                mOldSystem[i] = new stDefSystem_0((byte)enDeviceModel.SP2);
            }
            
        }

        private void FrmUpgrade_Load(object sender, EventArgs e)
        {
            BtCmdSkip.Enabled = false;
            BtCmdPrev.Enabled = false;
            descAction.ReadOnly = true;
            descAction.Text = "Upgrade 를 중간에 그만둘 경우 문제가 발생합니다. 신중하게 생각하세요. 만약, 중간에 문제가 발생하시면 연락하시고, 4번 부터 생기는 문제에 대하여는 반드시 재시도하여 성공시키셔야 합니다.";

            listBox1.Items.Clear();

            listBox1.Items.Add("0.Ready upgrade device.");
            listBox1.Items.Add("1.Backup device full information.");
            listBox1.Items.Add("2.Change DSP firmware.");
            listBox1.Items.Add("3.Update to backup information of old version.");
            listBox1.Items.Add("4.Change FPGA firmware.");
            listBox1.Items.Add("5.Change USB firmware.");
            listBox1.Items.Add("6.Finished.");
            listBox1.SelectedIndex = iAction;

            FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[sSerial].bLocal = true;
        }

        private void BackupOldSystemInfo()
        {
            string str;
            iAction = 1;
            listBox1.SelectedIndex = iAction;
            str = string.Format("{0}_Bak.wss",sSerial);
            saveFileDialog1.Filter = "SM System file(*.wss)|*.wss";
            saveFileDialog1.InitialDirectory = SM_Define.SM_Directory_define.SMGATEWAY_FOLDER_TEMP;
            saveFileDialog1.FileName = sOldSysFile;
            saveFileDialog1.OverwritePrompt = false;
            saveFileDialog1.DefaultExt = "wss";
            DialogResult res = saveFileDialog1.ShowDialog();
            if (res == DialogResult.OK)
            {
                sOldSysFile = saveFileDialog1.FileName;
                if (SM_FileUtility.FileExist(sOldSysFile) == true)
                {
                    if (MessageBox.Show("Same file already exists. \n\n Do you want to load it?",
                                "SM File", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        mWorkArg.SetSatus(24, 0, "1.Backup device full information./ Loading data to file.");
                        backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                        SP_OldSystemFile mFile = new SP_OldSystemFile(ref mOldSystem, this.sOldSysFile, System.IO.FileMode.Open, System.IO.FileAccess.Read);

                        mWorkArg.SetSatus(24, 24, "1.Backup device full information./ Loading data to file... succeed.");
                        backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);

                        BtCmdPrev.Enabled = true;
                        btCmdNext.Enabled = true;
                        BtCmdSkip.Enabled = true;
                        return;
                    }
                }
                this.backgroundWorker1.RunWorkerAsync();

            }
            else
            {
                iAction = 0;
                listBox1.SelectedIndex = iAction;
                BtCmdPrev.Enabled = false;
                btCmdNext.Enabled = true;
                BtCmdSkip.Enabled = false;
            }
        }

        private void ChangeFiremware_DSP()
        {
            iAction = 2;
            listBox1.SelectedIndex = iAction;

            openFileDialog1.Filter = "DSP Firmware(*.bin)|*.bin";
            openFileDialog1.DefaultExt = "bin";
            if (sFWFile == "")
                openFileDialog1.InitialDirectory = SM_Define.SM_Directory_define.SMGATEWAY_FOLDER_RES;
            else
                openFileDialog1.InitialDirectory = Path.GetDirectoryName(sFWFile);

            openFileDialog1.FileName = "";


            openFileDialog1.CheckFileExists = true;
            openFileDialog1.CheckPathExists = true;
            openFileDialog1.Multiselect = false;
            DialogResult res = openFileDialog1.ShowDialog();
            if (res == DialogResult.OK)
            {
                sFWFile = openFileDialog1.FileName;
                this.backgroundWorker1.RunWorkerAsync();

            }
            else
            {
                iAction = 1;
                listBox1.SelectedIndex = iAction;
                BtCmdPrev.Enabled = true;
                btCmdNext.Enabled = true;
                BtCmdSkip.Enabled = true;
            }
        }


        private void ChangeFiremware_FPGA()
        {
            iAction = 4;
            listBox1.SelectedIndex = iAction;

            openFileDialog1.Filter = "FPGA Firmware(*.rbf)|*.rbf";
            openFileDialog1.DefaultExt = "rbf";
            if (sFWFile == "")
                openFileDialog1.InitialDirectory = SM_Define.SM_Directory_define.SMGATEWAY_FOLDER_RES;
            else
                openFileDialog1.InitialDirectory = Path.GetDirectoryName(sFWFile);

            openFileDialog1.FileName = "";


            openFileDialog1.CheckFileExists = true;
            openFileDialog1.CheckPathExists = true;
            openFileDialog1.Multiselect = false;
            DialogResult res = openFileDialog1.ShowDialog();
            if (res == DialogResult.OK)
            {
                sFWFile = openFileDialog1.FileName;
                this.backgroundWorker1.RunWorkerAsync();

            }
            else
            {
                iAction = 3;
                listBox1.SelectedIndex = iAction;
                BtCmdPrev.Enabled = true;
                btCmdNext.Enabled = true;
                BtCmdSkip.Enabled = true;
            }
        }

        private void ChangeFiremware_USB()
        {
            iAction = 5;
            listBox1.SelectedIndex = iAction;

            openFileDialog1.Filter = "USB Firmware(*.iic)|*.iic";
            openFileDialog1.DefaultExt = "iic";
            if (sFWFile == "")
                openFileDialog1.InitialDirectory = SM_Define.SM_Directory_define.SMGATEWAY_FOLDER_RES;
            else
                openFileDialog1.InitialDirectory = Path.GetDirectoryName(sFWFile);

            openFileDialog1.FileName = "";


            openFileDialog1.CheckFileExists = true;
            openFileDialog1.CheckPathExists = true;
            openFileDialog1.Multiselect = false;
            DialogResult res = openFileDialog1.ShowDialog();
            if (res == DialogResult.OK)
            {
                sFWFile = openFileDialog1.FileName;
                this.backgroundWorker1.RunWorkerAsync();

            }
            else
            {
                iAction = 4;
                listBox1.SelectedIndex = iAction;
                BtCmdPrev.Enabled = true;
                btCmdNext.Enabled = true;
                BtCmdSkip.Enabled = true;
            }
        }


        private void UpdateSystemInformation()
        {
            iAction = 3;
            this.backgroundWorker1.RunWorkerAsync();
        }

        private void btCmdNext_Click(object sender, EventArgs e)
        {
            BtCmdPrev.Enabled = false;
            btCmdNext.Enabled = false;
            BtCmdSkip.Enabled = false;
            if (iAction == 0)
            {
                BackupOldSystemInfo();
            }
            else if (iAction == 1)
            {
                ChangeFiremware_DSP();
            }
            else if (iAction == 2)
            {
                UpdateSystemInformation();
            }
            else if (iAction == 3)
            {
                ChangeFiremware_FPGA();
            }
            else if (iAction == 4)
            {
                ChangeFiremware_USB();
            }
            else if (iAction == 5)
            {
                MessageBox.Show("Finished upgrade process. Then Restarting power of device.", "Upgrade process");
                iAction++;
                listBox1.SelectedIndex = iAction;
                btCmdNext.Text = "Close";
                
                btCmdNext.Enabled = true;
                BtCmdPrev.Enabled = true;
                BtCmdSkip.Enabled = false;
                this.Close();
            }

            
        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            var p = FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[sSerial];
            int i;
            string str;

            
            bErr = false;
            if (iAction == 1)
            {
                mWorkArg.SetSatus(24, 0, "1.Backup device full information.");
                backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);

                for(i=0; i<SM_Main_Define.DEF_MAX_DEV_CH; i++)
                {
                    str = string.Format("1.Backup device full information \r\n Ch-{0}", i + 1);
                    mWorkArg.SetSatus(i * 3, str);
                    backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);

                    if (p.mDeviceInfo.mChannelInfo[i].bExist == true)
                    {
                        if (p.mDeviceInfo.mChannelInfo[i].bExist == true)
                        {
                            str = string.Format("1.Backup device full information \r\n Ch-{0} : Information.", i + 1);
                            mWorkArg.SetSatus(i * 3 + 1, str);
                            backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);

                            if (p.ReadOldSysInfo_0(i, ref mOldSystem[i].mInfo) != (ushort)enResult.FLAG_OK)
                            {
                                bErr = true;
                                break;
                            }
                            str = string.Format("1.Backup device full information \r\n Ch-{0} : Configuration.", i + 1);
                            mWorkArg.SetSatus(i * 3 + 1, str);
                            backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                            if (p.ReadOldSysConfig_0(i, ref mOldSystem[i].mConfig) != (ushort)enResult.FLAG_OK)
                            {
                                bErr = true;
                                break;
                            }
                            str = string.Format("1.Backup device full information \r\n Ch-{0} : Range.", i + 1);
                            mWorkArg.SetSatus(i * 3 + 2, str);
                            backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                            if (p.ReadOldSysRange_0(i, ref mOldSystem[i].mRange) != (ushort)enResult.FLAG_OK)
                            {
                                bErr = true;
                                break;
                            }
                            str = string.Format("1.Backup device full information \r\n Ch-{0} : Succeed.", i + 1);
                            mWorkArg.SetSatus(i * 3 + 3, str);
                            backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                        }
                    }
                    else
                    {
                        str = string.Format("1.Backup device full information \r\n Ch-{0} : Skip!", i + 1);
                        mWorkArg.SetSatus(i * 3 + 3, str);
                        backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                    }
                }
                if (bErr == false)
                {
                    SP_OldSystemFile mFile = new SP_OldSystemFile(ref mOldSystem, this.sOldSysFile, System.IO.FileMode.Create, System.IO.FileAccess.Write);
                }
                else
                {
                    str = string.Format("1.Backup device full information \r\n Ch-{0} : Error.", i + 1);
                    mWorkArg.SetSatus(str);
                    backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                }
            }
            else if (iAction == 2)
            {
                mWorkArg.SetSatus(8, 0, "");
                backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);

                for (i = 0; i < SM_Main_Define.DEF_MAX_DEV_CH; i++)
                {
                    if (p.mDeviceInfo.mChannelInfo[i].bExist == true)
                    {

                        burnDsp.Lstindex = i;
                        burnDsp.sSerial = this.sSerial;
                        burnDsp.Devindex = this.nDevice;

                        if (p.mDeviceInfo.mChannelInfo[i].bExist == true)
                        {
                            if (burnDsp.BurningROM(i, this.sFWFile) == false)
                            {
                                bErr = true;
                                break;
                            }                          
                        }                      
                    }
                }
                if (bErr == true)
                {
                    str = string.Format("Ch-{0} : Error.", i + 1);
                }
                else
                {
                    str = string.Format("Ch-{0} : succeed.", i + 1);
                }
                mWorkArg.SetSatus(i + 1, str);
                backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                
            }
            else if (iAction == 3)
            {
                byte[] pData;
                pData = new byte[1];

                mWorkArg.SetSatus(8, 0, "3.Update to backup information of old version.");
                backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                for (i = 0; i < SM_Main_Define.DEF_MAX_DEV_CH; i++)
                {
                    if (p.mDeviceInfo.mChannelInfo[i].bExist == true)
                    {
                        str = string.Format("3.Update to backup information of old version. \r\n Ch-{0} : Converting.", i + 1);
                        mWorkArg.SetSatus(i + 1, str);
                        backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                        mOldSystem[i].ConvInformation(ref p.mDeviceInfo.mChannelInfo[i].mSystem);
                        str = string.Format("3.Update to backup information of old version. \r\n Ch-{0} : Send config. information.", i + 1);
                        mWorkArg.SetSatus(str);
                        backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                        if (p.WriteSysConfig(i) != (ushort)enResult.FLAG_OK)
                        {
                            bErr = true;
                            break;
                        }
                        str = string.Format("3.Update to backup information of old version. \r\n Ch-{0} : Send Range information.", i + 1);
                        mWorkArg.SetSatus(str);
                        backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                        if (p.WriteSysRange(i) != (ushort)enResult.FLAG_OK)
                        {
                            bErr = true;
                            break;
                        }
                        str = string.Format("3.Update to backup information of old version. \r\n Ch-{0} : WriteROM.", i + 1);
                        mWorkArg.SetSatus(str);
                        backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                        if (p.MyDSP_CommProcess(i,(ushort)enFlag.FLAG_WRITE,(ushort)enCommCmdMain.System,
                            (ushort)enCommCmdSystem.WriteRomAll, 0, 0, 0, ref pData) != (ushort)enResult.FLAG_OK)
                        {
                            bErr = true;
                            break;
                        }
                    }
                    str = string.Format("3.Update to backup information of old version. \r\n Ch-{0} : succeed.", i + 1);
                    mWorkArg.SetSatus(i+1, str);
                    backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                }
                if (bErr == true)
                {
                    str = string.Format("3.Update to backup information of old version. \r\n Ch-{0} : Error.", i + 1);
                    mWorkArg.SetSatus(str);
                    backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                }
            }
            else if (iAction == 4)
            {
                mWorkArg.SetSatus(100, 0, "");
                backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);

                for (i = 0; i < SM_Main_Define.DEF_MAX_DEV_CH; i++)
                {
                    if (p.mDeviceInfo.mChannelInfo[i].bExist == true)
                    {

                        burnFpga.Lstindex = i;
                        burnFpga.sSerial = this.sSerial;
                        burnFpga.Devindex = this.nDevice;

                        if (p.mDeviceInfo.mChannelInfo[i].bExist == true)
                        {
                            if (burnFpga.BurningROM(i, this.sFWFile) == false)
                            {
                                bErr = true;
                                break;
                            }
                        }
                    }
                }

                if (bErr == true)
                {
                    str = string.Format("Ch-{0} : Error.", i + 1);
                }
                else
                {
                    str = string.Format("Ch-{0} : succeed.", i + 1);
                }
                mWorkArg.SetSatus(str);
                backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
                
            }
            else if (iAction == 5)
            {
                if (burnUsb.BurningROM(this.sFWFile) == false)
                {
                    bErr = true;
                    str = "Ch-{0} : Error.";
                }
                else 
                {
                    str = "Ch-{0} : succeed.";
                }
                mWorkArg.SetSatus(str);
                backgroundWorker1.ReportProgress(mWorkArg.PosPercentValue, mWorkArg);
            }
            
            
        }

        private void FrmUpgrade_FormClosing(object sender, FormClosingEventArgs e)
        {
            FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[sSerial].bLocal = false;
        }

        private void backgroundWorker1_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            string str;

            BurnEventArgs burnArgs = (BurnEventArgs)e.UserState;

            if(iAction == 2)
            {
                str = string.Format("2.Change temp. DSP firmware.\r\n{0}", burnArgs.Description);
            }
            else if (iAction == 4)
            {
                str = string.Format("4.Change FPGA firmware.\r\n{0}", burnArgs.Description);
            }
            else if (iAction == 5)
            {
                str = string.Format("5.Change USB firmware.\r\n{0}", burnArgs.Description);
            }
            else
            {
                str = string.Format("{0}", burnArgs.Description);
            }

            descAction.Text = str;
            this.progressBar1.Maximum = burnArgs.MaxPercentValue;
            if (burnArgs.PosPercentValue > burnArgs.MaxPercentValue) this.progressBar1.Value = burnArgs.MaxPercentValue;
            else this.progressBar1.Value = burnArgs.PosPercentValue;
            this.progressBar1.Style = burnArgs.Style;
        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            
            if (iAction == 1 || iAction == 4 || iAction == 5)
            {
                if (bErr == true)
                {
                    iAction--;
                }

                if (iAction == 0)
                {
                    BtCmdPrev.Enabled = false;
                    BtCmdSkip.Enabled = false;
                }
                else
                {
                    BtCmdPrev.Enabled = true;
                    BtCmdSkip.Enabled = true;
                }
                btCmdNext.Text = ">>";
                btCmdNext.Enabled = true;
            }
            else if (iAction == 2)
            {
                btCmdNext.Text = ">>";
                btCmdNext.Enabled = true;
                BtCmdSkip.Enabled = true;
                BtCmdPrev.Enabled = true;
                if (bErr == true)
                {
                    iAction--;
                }
            }
            else if (iAction == 3)
            {
                btCmdNext.Text = ">>";
                btCmdNext.Enabled = true;
                BtCmdSkip.Enabled = true;
                BtCmdPrev.Enabled = true;
                if (bErr == true)
                {
                    iAction--;
                }
            }
            else if (iAction == 6)
            {
                btCmdNext.Enabled = true;
                BtCmdSkip.Enabled = false;
                BtCmdPrev.Enabled = true;
                if (bErr == true)
                {
                    iAction--;
                    btCmdNext.Text = ">>";
                }
                else
                {
                    btCmdNext.Text = "Close";
                }
            }
            else
            {
                btCmdNext.Text = ">>";
                btCmdNext.Enabled = true;
                if (iAction == 0)
                {
                    BtCmdSkip.Enabled = false;
                    BtCmdPrev.Enabled = false;
                }
                else
                {
                    BtCmdSkip.Enabled = true;
                    BtCmdPrev.Enabled = true;
                }
            }
            if (iAction == 7)
            {
                BtCmdPrev.Enabled = false;
                BtCmdSkip.Enabled = false;
            }
            else if (iAction > 0)
            {
                BtCmdPrev.Enabled = true;
                BtCmdSkip.Enabled = true;
            }
            else
            {
                BtCmdPrev.Enabled = false;
                BtCmdSkip.Enabled = false;
            }

            listBox1.SelectedIndex = iAction;
        }

        private void BtCmdPrev_Click(object sender, EventArgs e)
        {
            
            iAction--;
            if (iAction <= 0)
            {
                iAction = 0;
                this.BtCmdPrev.Enabled = false;
                this.BtCmdSkip.Enabled = false;
            }
            listBox1.SelectedIndex = iAction;
        }

        private void BtCmdSkip_Click(object sender, EventArgs e)
        {
            iAction++;

            if (iAction > 0)
            {
                this.BtCmdPrev.Enabled = true;
                this.BtCmdSkip.Enabled = true;
            }
            else
            {
                this.BtCmdPrev.Enabled = false;
                this.BtCmdSkip.Enabled = false;
            }

            if (iAction == 6)
            {
                MessageBox.Show("Finished upgrade process. Then Restarting power of device.", "Upgrade process");
                iAction++;
                listBox1.SelectedIndex = iAction;
                btCmdNext.Text = "Close";
                
                btCmdNext.Enabled = true;
                BtCmdPrev.Enabled = true;
                this.BtCmdSkip.Enabled = false;
                this.Close();
            }
            else listBox1.SelectedIndex = iAction;

            descAction.Text = listBox1.SelectedItem.ToString();
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (iAction != listBox1.SelectedIndex)
            {
                listBox1.SelectedIndex = iAction;
            }
           
        }



    }
}
