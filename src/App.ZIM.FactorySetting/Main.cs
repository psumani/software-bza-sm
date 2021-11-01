using LanSetLib;
using System;
using System.Drawing;
using System.IO;
using System.Text;
using System.Threading;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Packets;
using ZiveLab.Device.ZIM.Utilities;
namespace App.ZIM.FactorySetting
{
    

    public partial class Main : Form
    {
        public stSystemConfig mSysCfg;
        public stWebSiteFATHeader mWebSiteFATheader;
        public stConnCfg mConnCfg;
        public CommObj mCommZim;
        
        public Main()
        {
            InitializeComponent();

            this.Icon = Properties.Resources.BatMag;

            mCommZim = new CommObj();
            mSysCfg = new stSystemConfig(0);
            mWebSiteFATheader = new stWebSiteFATHeader(defWebSiteInfomation.WEBSITE_ID, 0);
            mConnCfg = new stConnCfg(0);

            if (Properties.Settings.Default.Port == 2000)
            {
                mCommZim.mConnTargetCfg.Port = Properties.Settings.Default.Port;
                mCommZim.mConnTargetCfg.IpAddress[0] = Properties.Settings.Default.IP0;
                mCommZim.mConnTargetCfg.IpAddress[1] = Properties.Settings.Default.IP1;
                mCommZim.mConnTargetCfg.IpAddress[2] = Properties.Settings.Default.IP2;
                mCommZim.mConnTargetCfg.IpAddress[3] = Properties.Settings.Default.IP3;
            }
            else
            {
                UpdatePropLanInfo();
            }

            if(mCommZim.Connect() == true)
            {
                mCommZim.CmdEnableCommTimeOut(0);
            }
            CheckConnSifToLan();
            RefreshHostname();
            RefreshSifSysCfg(); 
            RefreshSifWebSiteInfo();
        }

        public void RefreshHostname()
        {
            if (mCommZim.isConnected == true)
            {
                if (mCommZim.ReadData(ref mConnCfg) == true)
                {
                    lnklblchghostname.Text = string.Format("> Hostname:{0}", Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                    return;
                }
            }
            lnklblchghostname.Text = "> Hostname:ZIM-0000";
        }

        public void UpdatePropLanInfo()
        {
            Properties.Settings.Default.Port = mCommZim.mConnTargetCfg.Port;
            Properties.Settings.Default.IP0 = mCommZim.mConnTargetCfg.IpAddress[0];
            Properties.Settings.Default.IP1 = mCommZim.mConnTargetCfg.IpAddress[1];
            Properties.Settings.Default.IP2 = mCommZim.mConnTargetCfg.IpAddress[2];
            Properties.Settings.Default.IP3 = mCommZim.mConnTargetCfg.IpAddress[3];
            Properties.Settings.Default.Save();
        }
        public void CheckConnSifToLan()
        {

            if (mCommZim.isConnected == true)
            {
                UpdatePropLanInfo();
            }
            lblTargetIp.Text = string.Format("{0:##0}.{1:##0}.{2:##0}.{3:##0}", Properties.Settings.Default.IP0,
                                                Properties.Settings.Default.IP1,
                                                Properties.Settings.Default.IP2,
                                                Properties.Settings.Default.IP3);
            if (mCommZim.isConnected == true)
            {
                lblTargetIp.Text += "--- Connected.";
                lblTargetIp.ForeColor = Color.Green;
                LnklblChgSifFW.Enabled = true;
            }
            else
            {
                lblTargetIp.Text += "--- Disconnected.";
                lblTargetIp.ForeColor = Color.Red;
                LnklblChgSifFW.Enabled = false;
            }
        }

        public bool ReadWebSiteInfo()
        {
            if (mCommZim.isConnected == false)
            {
                return false;
            }
            
            return mCommZim.ReadData(ref mWebSiteFATheader);
        }

        public void RefreshSifWebSiteInfo()
        {
            if (ReadWebSiteInfo()) 
            {
                lblSifWebInfo.Text = string.Format("1) ID : 0x{0:X2}( File count : {1} ea).", mWebSiteFATheader.ID, mWebSiteFATheader.FileCount);
            }
        }

        public bool ReadSystemCfg()
        {
            if (mCommZim.isConnected == false)
            {
                return false;
            }

            return mCommZim.ReadData(ref mSysCfg);
        }
        public void RefreshSifSysCfg()
        {
            if (mCommZim.isConnected == false)
            {
                return;
            }

            RefreshSifInfo();
            Thread.Sleep(2000);
            RefreshZimInfo();
        }

        public void RefreshSifInfo()
        {

            mSysCfg.mSIFCfg.Type = (byte)eDeviceType.WBCS;
            mSysCfg.mSIFCfg.BoardVersion.Major = 0;
            mSysCfg.mSIFCfg.BoardVersion.Minor = 0;
            mSysCfg.mSIFCfg.BoardVersion.Revision = 0;
            mSysCfg.mSIFCfg.BoardVersion.Build = 0;
            mSysCfg.mSIFCfg.FirmwareVersion.Major = 0;
            mSysCfg.mSIFCfg.FirmwareVersion.Minor = 0;
            mSysCfg.mSIFCfg.FirmwareVersion.Revision = 0;
            mSysCfg.mSIFCfg.FirmwareVersion.Build = 0;
            for(int i=0; i<12; i++) mSysCfg.mSIFCfg.Serial[i] = (byte)'0';

            if (mCommZim.isConnected == true)
            {
                if (ReadSystemCfg() == false)
                {
                    MessageBox.Show("Failed to read information from board.");
                }
            }
           
            string str;
            eDeviceType mtype = (eDeviceType)mSysCfg.mSIFCfg.Type;
            if (mtype == eDeviceType.ZIM
                || mtype == eDeviceType.BZA1000
                || mtype == eDeviceType.BZA100)
            {
                str = "(SIF II)";
                LnklblSetSIFWebToLan.Enabled = true;
                LnklblRefSifWebInf.Enabled = true;
                LnklblInitialize.Enabled = true;
            }
            else
            {
                str = "(SIF-13)";
                LnklblSetSIFWebToLan.Enabled = false;
                LnklblRefSifWebInf.Enabled = false;
                LnklblInitialize.Enabled = false;
            }
            lblSifBdType.Text = string.Format("1) Board type : {0} {1}", Extensions.GetEnumDescription(mtype), str);
            lblSifBdVer.Text = string.Format("2) Board version : {0}", mSysCfg.mSIFCfg.GetBoardVer());
            lblSifFwVer.Text = string.Format("3) Firmware version : {0}", mSysCfg.mSIFCfg.GetFirmwareVer());
            lblSifSerial.Text = string.Format("4) Serial number : {0}", mSysCfg.mSIFCfg.GetSerialNumber());

        }

        public void RefreshZimInfo()
        {
            eDeviceType mtype = (eDeviceType)mSysCfg.mSIFCfg.Type;
            if (mtype != eDeviceType.ZIM
                && mtype != eDeviceType.BZA1000
                && mtype != eDeviceType.BZA100
                && mtype != eDeviceType.ZBCS)
            {
                if (mCommZim.isConnected == true)
                {
                    if (mCommZim.CmdResetFPGA(true) == false)
                    {
                        MessageBox.Show("The command failed[DEFINE_COMMAND.RESET_FPGA_ICE].");
                        return;
                    }

                    if (mCommZim.CmdConnectPromOfZIM(0) == false)
                    {
                        MessageBox.Show("The command failed[DEFINE_COMMAND.CONN_FPGA_PROM].");
                        return;
                    }

                    if (mCommZim.refresh_SPI_ZFK_ROM() == false)
                    {
                        MessageBox.Show("Failed to read information from board.");
                        return;
                    }

                    if (mCommZim.CmdDisconnectPromOfZIM() == false)
                    {
                        MessageBox.Show("The command failed[DEFINE_COMMAND.CLOSE_FPGA_PROM].");
                        return;
                    }

                    if (mCommZim.CmdResetFPGA(false) == false)
                    {
                        MessageBox.Show("The command failed[DEFINE_COMMAND.RESET_CLR_FPGA_ICE].");
                        return;
                    }
                }
            }
            mSysCfg.mZimCfg.ZimBDVersion = 0;
            mSysCfg.mZimCfg.ZimFWVersion = 0;
            mSysCfg.mZimCfg.cModel[0] = 0x30;
            mSysCfg.mZimCfg.cModel[1] = 0x30;
            mSysCfg.mZimCfg.nSerial = 0;
            if (mCommZim.isConnected == true)
            {
                if (ReadSystemCfg() == false)
                {
                    MessageBox.Show("Failed to read information from board.");
                }
            }
            
            LblZimBdType.Text = string.Format("1) Board type : {0}", mSysCfg.mZimCfg.GetBoardType());
            lblZimBdVer.Text = string.Format("2) Board version : {0}", mSysCfg.mZimCfg.GetBoardVer());
            lblZimFwVer.Text = string.Format("3) Firmware version : {0}", mSysCfg.mZimCfg.GetFirmwareVer());
            lblZimSerial.Text = string.Format("4) Serial number : {0}", mSysCfg.mZimCfg.GetSerialNumber());
        }


        private void LnklblBurnSifToUsb_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (Properties.Settings.Default.FilePathSIF.Length < 3)
            {
                Properties.Settings.Default.FilePathSIF = Application.StartupPath + "\\SIF4ZIM.1.0.2.1.bin";
                Properties.Settings.Default.Save();
            }

            LanSetLib.LanSetForm mfrm;
            mfrm = new LanSetForm(Application.StartupPath + "\\boot\\SIFBoot.bin", Properties.Settings.Default.FilePathSIF);
            try
            {
                mfrm.ShowDialog();
                Properties.Settings.Default.FilePathSIF = mfrm.FirmwareFile;
                Properties.Settings.Default.Save();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void LnklblSetSIFCfgToLan_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmSetProductInfo mfrm;
            mfrm = new frmSetProductInfo(ref mCommZim, 0, ref mSysCfg);
            if(mfrm.ShowDialog() == DialogResult.OK)
            {
                RefreshSifInfo();
            }
        }

        private void LnklblConnSifToLan_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmConnDlg mfrm;

            mfrm = new frmConnDlg(ref mCommZim);

            if (mfrm.ShowDialog() == DialogResult.OK)
            {
                CheckConnSifToLan();
                RefreshHostname();
                RefreshSifSysCfg();
                RefreshSifWebSiteInfo();
            }
        }

        private void LnklblRefSifInf_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            RefreshSifInfo();
        }

        private void LnklblRefZimInf_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            RefreshZimInfo();
        }

        private void LnklblSetZIMCfgToLan_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmSetProductInfo mfrm;
            mfrm = new frmSetProductInfo(ref mCommZim, 1, ref mSysCfg);
            if (mfrm.ShowDialog() == DialogResult.OK)
            {
                RefreshZimInfo();
            }
        }

        private void LnklblBurnZIMToLan_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmBurnZIM frm;
            frm = new frmBurnZIM(ref mCommZim, (eDeviceType)mSysCfg.mSIFCfg.Type);
            frm.ShowDialog();
        }

        private void LnklblChgSifFW_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (Properties.Settings.Default.FilePathSIF.Length < 3)
            {
                Properties.Settings.Default.FilePathSIF = Application.StartupPath + "\\SIF4ZIM.1.0.2.1.bin";
                Properties.Settings.Default.Save();
            }

            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("No connection.");
                return;
            }

            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            dlg.DefaultExt = "bin";
            dlg.Filter = "bin files (*.bin)|*.bin|All files (*.*)|*.*";
            dlg.FileName = Properties.Settings.Default.FilePathSIF;
            dlg.InitialDirectory = Path.GetDirectoryName(Properties.Settings.Default.FilePathSIF);

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                if (mCommZim.mComm.UploadFirmware(dlg.FileName) == false)
                {
                    MessageBox.Show("Firmware change failed.");
                }
                else
                {
                    Properties.Settings.Default.FilePathSIF = dlg.FileName;
                    Properties.Settings.Default.Save();

                    MessageBox.Show("The firmware change has been successful. Please restart the device.");
                }
            }
        }

        private void LnklblSetSIFWebToLan_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmWebServceCfg frm = new frmWebServceCfg(ref mCommZim, ref mWebSiteFATheader);
            frm.ShowDialog();
            RefreshSifWebSiteInfo();
        }

        private void LnklblRefSifWebInf_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            RefreshSifWebSiteInfo();
        }

        private void lnklblchghostname_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmInputString frm;
            frm = new frmInputString(ref mCommZim);
            frm.ShowDialog();
            RefreshHostname();
        }

        private void LnklblInitialize_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (MessageBox.Show("All range information on the device is initialized.\n\\n Would you like to continue?", "Factory Setting",
                    MessageBoxButtons.OKCancel,MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) != DialogResult.OK) return;
            if (mCommZim.CmdInitRangesInfo() == false)
            {
                MessageBox.Show("Failure of initialization of lange information.");
            }
            else
            {
                MessageBox.Show("success of initialization of lange information.");
            }
           
        }

        private void Main_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Modifiers == (Keys.Control | Keys.Alt))
            {
                if (e.KeyCode == Keys.T)
                {
                    if (mCommZim.isConnected == false)
                    {
                        MessageBox.Show("No connection.");
                        return;
                    }

                    frmTestFpga frm = new frmTestFpga(ref mCommZim);
                    frm.ShowDialog();
                }
            }
        }
    }
    
}
