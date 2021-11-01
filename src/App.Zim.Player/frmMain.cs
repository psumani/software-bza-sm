using System;
using System.IO;
using System.Reflection;
using System.Text;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Packets;

namespace App.Zim.Player
{
    public partial class frmMain : Form
    {
        public CommObj mCommZim;
        public bool ManaMode;
        public stSystemConfig mSysCfg;
        public st_zim_rnginf mRanges;
        public stConnCfg mConnCfg;
        public int iver;
        public string sExeVer;
        public string smsgtitle;

        public frmMain()
        {
            InitializeComponent();

            
            mConnCfg = new stConnCfg(0);
            mCommZim = new CommObj(Properties.Settings.Default.CommTimeOut);
            mSysCfg = new stSystemConfig(0);
            mRanges = new st_zim_rnginf(0);
            iver = 0;
            this.Icon = Properties.Resources.bm;

            mCommZim.mConnTargetCfg.IpAddress[0] = Properties.Settings.Default.IP0;
            mCommZim.mConnTargetCfg.IpAddress[1] = Properties.Settings.Default.IP1;
            mCommZim.mConnTargetCfg.IpAddress[2] = Properties.Settings.Default.IP2;
            mCommZim.mConnTargetCfg.IpAddress[3] = Properties.Settings.Default.IP3;
            mCommZim.mConnTargetCfg.Port = Properties.Settings.Default.Port;

            
            if (Properties.Settings.Default.PathZIMFW.Length < 5) Properties.Settings.Default.PathZIMFW = Path.Combine("C:\\ZIVE DATA\\BM\\", "Firmware");
            if (!System.IO.Directory.Exists(Properties.Settings.Default.PathZIMFW))
            {
                System.IO.Directory.CreateDirectory(Properties.Settings.Default.PathZIMFW);
            }
            

            if (Properties.Settings.Default.FileNameZIMFW.Length < 5) Properties.Settings.Default.FileNameZIMFW = "default.zim";

            if (Properties.Settings.Default.PathSIFFW.Length < 5) Properties.Settings.Default.PathSIFFW = Path.Combine("C:\\ZIVE DATA\\BM\\", "Firmware");
            if (!System.IO.Directory.Exists(Properties.Settings.Default.PathSIFFW))
            {
                System.IO.Directory.CreateDirectory(Properties.Settings.Default.PathSIFFW);
            }
            
            if (Properties.Settings.Default.FileNameSIFFW.Length < 5) Properties.Settings.Default.FileNameSIFFW = "default.sif";

            if (Properties.Settings.Default.PathData.Length < 5) Properties.Settings.Default.PathData = Path.Combine("C:\\ZIVE DATA\\BM\\", "Data");
            if (!System.IO.Directory.Exists(Properties.Settings.Default.PathData))
            {
                System.IO.Directory.CreateDirectory(Properties.Settings.Default.PathData);
            }
            
            if (Properties.Settings.Default.PathRangeInfo.Length < 5) Properties.Settings.Default.PathRangeInfo = Path.Combine("C:\\ZIVE DATA\\BM\\", "infor");

            if (!System.IO.Directory.Exists(Path.GetDirectoryName(Properties.Settings.Default.PathRangeInfo)))
            {
                System.IO.Directory.CreateDirectory(Properties.Settings.Default.PathRangeInfo);
            }

            if (Properties.Settings.Default.PathWebService.Length < 5) Properties.Settings.Default.PathWebService = Path.Combine("C:\\ZIVE DATA\\BM\\", "infor\\webservice");
            if (!System.IO.Directory.Exists(Properties.Settings.Default.PathWebService))
            {
                System.IO.Directory.CreateDirectory(Properties.Settings.Default.PathWebService);
            }

            Properties.Settings.Default.Save();
            //-------------------------------------
            
            MenuConfig.Visible = false;
            deviceInformationToolStripMenuItem.Enabled = false;
            deviceCheckingToolStripMenuItem.Enabled = false;
            ManaMode = false;
            btnConnsif.Enabled = true;
            btnUploadSIF.Enabled = false;
            btnUploadZIM.Enabled = false;
            btnEisTest.Enabled = false;

            string str = Assembly.GetExecutingAssembly().GetName().ToString();
            int i1 = str.IndexOf(',', 0) + 10;
            int i2 = str.IndexOf(',', i1);
            sExeVer = str.Substring(i1, i2 - i1).Trim();

            this.Text = string.Format("BM, {0}, Disconnected.", sExeVer);

            smsgtitle = "BM, " + sExeVer;
        }
        
        private void btnRunIceFpga_Click(object sender, EventArgs e)
        {
            frmUploadICEFW mfrmUploadICEFW = new frmUploadICEFW() { mCommZim = mCommZim };
            mfrmUploadICEFW.ShowDialog();
        }

        private void btnConnsif_Click(object sender, EventArgs e)
        {
            frmConnDlg form = new frmConnDlg() { mCommZim = mCommZim, mConnCfg = mConnCfg };
            if(form.ShowDialog() == DialogResult.OK)
            {
                if (mCommZim.isConnected == true)
                {
                    mCommZim.CmdEnableCommTimeOut(0);
                    mCommZim.ReadData(ref mConnCfg);
                    mCommZim.ReadData(ref mSysCfg);
                    mCommZim.ReadData(ref mRanges);

                    iver = mSysCfg.mSIFCfg.FirmwareVersion.Major * 1000 + mSysCfg.mSIFCfg.FirmwareVersion.Minor * 100 + mSysCfg.mSIFCfg.FirmwareVersion.Revision * 10 + mSysCfg.mSIFCfg.FirmwareVersion.Build;


                    if (ApplyChangeVars() == false)
                    {
                        this.Text = string.Format("BM, {0}, Disconnected.", sExeVer);
                        btnConnsif.Enabled = true;
                        btnUploadSIF.Enabled = false;
                        btnUploadZIM.Enabled = false;
                        btnEisTest.Enabled = false;
                        deviceInformationToolStripMenuItem.Enabled = false;
                        deviceCheckingToolStripMenuItem.Enabled = false;
                        return;
                    }
                    this.Text = string.Format("BM, {0}, Connected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                    btnConnsif.Enabled = true;
                    btnUploadSIF.Enabled = true;
                    btnUploadZIM.Enabled = true;
                    btnEisTest.Enabled = true;
                    deviceInformationToolStripMenuItem.Enabled = true;
                    deviceCheckingToolStripMenuItem.Enabled = true;

                    MessageBox.Show("Connected to SIF board.", smsgtitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                
                 }
                else
                {
                    MessageBox.Show("Not connected.", smsgtitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
        }

        private bool ApplyChangeVars()
        {
            if (iver < 4000)
            {
                MessageBox.Show("The SIF Firmware version is older than version(4.0.0.0). \n\n Use it after updating the firmware.", smsgtitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                OpenFileDialog dlg = new OpenFileDialog();
                dlg.Multiselect = false;
                dlg.DefaultExt = "sif";
                dlg.Filter = "bin files (*.sif)|*.sif|All files (*.*)|*.*";
                dlg.FileName = Properties.Settings.Default.FileNameSIFFW;
                dlg.InitialDirectory = Properties.Settings.Default.PathSIFFW;

                if (dlg.ShowDialog() == DialogResult.OK)
                {
                    if (mCommZim.mComm.UploadFirmware(dlg.FileName) == false)
                    {
                        MessageBox.Show("Firmware change Failed.", "Firmware change of SIF", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return false;
                    }
                    else
                    {
                        
                        Properties.Settings.Default.PathSIFFW = Path.GetDirectoryName(dlg.FileName);
                        Properties.Settings.Default.FileNameSIFFW = Path.GetFileName(dlg.FileName);
                        Properties.Settings.Default.Save();
                        
                      
                        MessageBox.Show("Firmware change succeed.", "Firmware change of SIF", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return true;
                    }
                }
                else
                {
                    MessageBox.Show("The SIF Firmware version is older than version(4.0.0.0). \n\nUse it after updating the firmware.");
                    return false;
                }
            }
            return true;
        }

        private void btnUploadSIF_Click(object sender, EventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                if (mCommZim.Connect() == false)
                {
                    MessageBox.Show("The connection failed.", smsgtitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                    else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                    return;
                }
            }

            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            dlg.DefaultExt = "sif";
            dlg.Filter = "sif files (*.sif)|*.sif|All files (*.*)|*.*";
            dlg.FileName = Properties.Settings.Default.FileNameSIFFW;
            dlg.InitialDirectory = Properties.Settings.Default.PathSIFFW;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                if (mCommZim.mComm.UploadFirmware(dlg.FileName) == false)
                {
                    MessageBox.Show("Firmware change Failed.", "Firmware change of SIF", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    Properties.Settings.Default.PathSIFFW = Path.GetDirectoryName(dlg.FileName);
                    Properties.Settings.Default.FileNameSIFFW = Path.GetFileName(dlg.FileName);
                    Properties.Settings.Default.Save();

                    MessageBox.Show("Firmware change was successful.\n\n To apply the changed firmware, you need to restart the device. ", "Firmware change of SIF",MessageBoxButtons.OK,MessageBoxIcon.Information);
                }
            }

            if (mCommZim.isConnected == true) this.Text = string.Format("BM, {0}, Connected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            else
            {
                if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            }

        }

        private void btnEisTest_Click(object sender, EventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("The connection failed.", smsgtitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                return;
            }

            FormChannel mfrm_realgrp = new FormChannel() { ChObj = mCommZim, ManaMode = ManaMode, mConnCfg = mConnCfg, sMsgTitle = smsgtitle };
            mfrm_realgrp.ShowDialog();

            if (mCommZim.isConnected == true) this.Text = string.Format("BM, {0}, Connected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            else
            {
                if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            }
        }

        private void btnAbout_Click(object sender, EventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("The connection failed.", smsgtitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                return;
            }

            frmConfig frm = new frmConfig() { mCommZim = mCommZim };
            frm.ShowDialog();

            if (mCommZim.isConnected == true) this.Text = string.Format("BM, {0}, Connected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            else
            {
                if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            }

            st_zim_do ctrl_do = new st_zim_do(0);
       
            ctrl_do.data = 0;
            ctrl_do.data |= DeviceConstants.DEVDO_VDC_RNG0;

            mCommZim.WriteData(ctrl_do);

            mCommZim.CmdSetVdcAutoRange(1);

        }

        private void btnUploadZIM_Click(object sender, EventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("The connection failed.", smsgtitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                return;
            }

            frmBurnZIM frm;
            frm = new frmBurnZIM(ref mCommZim);
            frm.ShowDialog();
            if (mCommZim.isConnected == true) this.Text = string.Format("BM, {0}, Connected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            else
            {
                if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            }
        }

        private void frmMain_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.Modifiers == (Keys.Control | Keys.Alt))
            {
                if (e.KeyCode == Keys.M)
                {
                    if(ManaMode == true)
                    {
                        ManaMode = false;
                        if (mCommZim.isConnected == true) this.Text = string.Format("BM, {0}, Connected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                        else
                        {
                            if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                            else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                        }
                        MenuConfig.Visible = false;
                    }
                    else
                    {
                        ManaMode = true;
                        if (mCommZim.isConnected == true) this.Text = string.Format("BM, {0}, Connected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                        else
                        {
                            if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                            else this.Text = string.Format("BM[Manager], {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                        }
                        MenuConfig.Visible = true;
                    }
                    
                    
                }
            }

        }

        private void btnConnsif_KeyDown(object sender, KeyEventArgs e)
        {
            frmMain_KeyDown(sender, e);
        }

        private void deviceInformationToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("The connection failed.", smsgtitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                return;
            }

            frmConfig frm = new frmConfig() { mCommZim = mCommZim };
            frm.ShowDialog();

            if (mCommZim.isConnected == true) this.Text = string.Format("BM, {0}, Connected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));

            st_zim_do ctrl_do = new st_zim_do(0);

            ctrl_do.data = 0;
            ctrl_do.data |= DeviceConstants.DEVDO_VDC_RNG0;

            mCommZim.WriteData(ctrl_do);

            mCommZim.CmdSetVdcAutoRange(1);
        }

        private void deviceCheckingToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("The connection failed.", smsgtitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                return;
            }
            frmUploadICEFW mfrmUploadICEFW = new frmUploadICEFW() { mCommZim = mCommZim };
            mfrmUploadICEFW.ShowDialog();
            if (mCommZim.isConnected == true) this.Text = string.Format("BM, {0}, Connected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
        }

        private void btnUploadSIF_KeyDown(object sender, KeyEventArgs e)
        {
            frmMain_KeyDown(sender, e);
        }

        private void btnUploadZIM_KeyDown(object sender, KeyEventArgs e)
        {
            frmMain_KeyDown(sender, e);
        }

        private void btnEisTest_KeyDown(object sender, KeyEventArgs e)
        {
            frmMain_KeyDown(sender, e);
        }

        private void communicationToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmAppSetting frm = new frmAppSetting();
            frm.ShowDialog();

            if(Properties.Settings.Default.CommTimeOut != mCommZim.LimitTimerOut)
            {
                mCommZim.LimitTimerOut = Properties.Settings.Default.CommTimeOut;

                if (mCommZim.Connect())
                {
                    mCommZim.CmdEnableCommTimeOut(0);
                }
            }


            if (mCommZim.isConnected == true) this.Text = string.Format("BM, {0}, Connected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            else
            {
                if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            }
        }

        private void batteryParametersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("The connection failed.", smsgtitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                if (mCommZim.mComm == null) this.Text = string.Format("BM, {0}, Not connected.", sExeVer);
                else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                return;
            }
            frmBatPara frm = new frmBatPara() { mCommZim = mCommZim };
            frm.ShowDialog();
            if(mCommZim.isConnected == true) this.Text = string.Format("BM, {0}, Connected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            else this.Text = string.Format("BM, {0}, Disconnected {1}[{2}].", sExeVer, mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
        }
    }
}
