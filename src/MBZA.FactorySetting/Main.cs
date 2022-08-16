using LanSetLib;
using System;
using System.Drawing;
using System.IO;
using System.Text;
using System.Threading;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;


namespace ZiveLab.ZM.FactorySetting
{

    public partial class Main : Form
    {
        public stSystemConfig mSysCfg;
        public stWebSiteFATHeader mWebSiteFATheader;
        public stConnCfg mConnCfg;
        public CommObj mCommZim;




        public int idevch;
        public Main()
        {
            InitializeComponent();

            this.Icon = ZM.FactorySetting.Properties.Resources.ZMFactorySetting;

            mCommZim = new CommObj();
            mSysCfg = new stSystemConfig(0);
            mWebSiteFATheader = new stWebSiteFATHeader(defWebSiteInfomation.WEBSITE_ID, 0);
            mConnCfg = new stConnCfg(0);
            idevch = 0;

            if (ZM.FactorySetting.Properties.Settings.Default.Port == 2000)
            {
                mCommZim.mConnTargetCfg.Port = ZM.FactorySetting.Properties.Settings.Default.Port;
                mCommZim.mConnTargetCfg.IpAddress[0] = ZM.FactorySetting.Properties.Settings.Default.IP0;
                mCommZim.mConnTargetCfg.IpAddress[1] = ZM.FactorySetting.Properties.Settings.Default.IP1;
                mCommZim.mConnTargetCfg.IpAddress[2] = ZM.FactorySetting.Properties.Settings.Default.IP2;
                mCommZim.mConnTargetCfg.IpAddress[3] = ZM.FactorySetting.Properties.Settings.Default.IP3;
            }
            else
            {
                UpdatePropLanInfo();
            }

            if (mCommZim.Connect())
            {
                cboChannel.Enabled = true;

                if (mCommZim.CmdEnableCommTimeOut(0) == false)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.ENABLE_COMM_TIMEOUT].");
                    return;
                }

                if (mCommZim.CmdSetCmdMode(0) == false)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.CMD_SET_MODE].");
                    return;
                }

            }
            else
            {
                cboChannel.Enabled = false;
            }
            RefreshSifSysCfg();
            RefreshHostname();
            RefreshSifWebSiteInfo();
        }

        public void RefreshHostname()
        {
            if (mCommZim.isConnected == true)
            {
                if (mSysCfg.mSIFCfg.Type == (byte)eDeviceType.ZIM || mSysCfg.mSIFCfg.Type == (byte)eDeviceType.SBZA || mSysCfg.mSIFCfg.Type == (byte)eDeviceType.MBZA)
                {
                    
                    if (mCommZim.ReadData(ref mConnCfg) == false)
                    {
                        MessageBox.Show("Failed to read information from SIF.");
                    }
                    lnklblchghostname.Enabled = true;
                    lnklblchghostname.Text = string.Format("> Hostname:{0}", Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                    return;
                }
            }

            lnklblchghostname.Enabled = false;
            lnklblchghostname.Text = "> Hostname:ZIM-0000";
        }

        public void UpdatePropLanInfo()
        {
            ZM.FactorySetting.Properties.Settings.Default.Port = mCommZim.mConnTargetCfg.Port;
            ZM.FactorySetting.Properties.Settings.Default.IP0 = mCommZim.mConnTargetCfg.IpAddress[0];
            ZM.FactorySetting.Properties.Settings.Default.IP1 = mCommZim.mConnTargetCfg.IpAddress[1];
            ZM.FactorySetting.Properties.Settings.Default.IP2 = mCommZim.mConnTargetCfg.IpAddress[2];
            ZM.FactorySetting.Properties.Settings.Default.IP3 = mCommZim.mConnTargetCfg.IpAddress[3];
            ZM.FactorySetting.Properties.Settings.Default.Save();
        }
        public void CheckConnSifToLan()
        {
            lblTargetIp.Text = string.Format("{0:##0}.{1:##0}.{2:##0}.{3:##0}", ZM.FactorySetting.Properties.Settings.Default.IP0,
                                                ZM.FactorySetting.Properties.Settings.Default.IP1,
                                                ZM.FactorySetting.Properties.Settings.Default.IP2,
                                                ZM.FactorySetting.Properties.Settings.Default.IP3);
            
            if (mCommZim.isConnected == true)
            {
                UpdatePropLanInfo();

                if (mCommZim.ReadData(ref mSysCfg))
                {
                   
                }
                
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
            LnklblSetSIFWebToLan.Enabled = false;
            LnklblRefSifWebInf.Enabled = false;
            lblSifWebInfo.Text = "> No information or no support.";
            /*
            if (ReadWebSiteInfo()) 
            {
                lblSifWebInfo.Text = string.Format("1) ID : 0x{0:X2}( File count : {1} ea).", mWebSiteFATheader.ID, mWebSiteFATheader.FileCount);
            }*/
        }

        public bool ReadSystemCfg()
        {
            if (mCommZim.isConnected == false)
            {
                return false;
            }
            else
            {
                if (mCommZim.ReadData(ref mSysCfg))
                {
                    if (mCommZim.ReadData(ref mConnCfg))
                    {
                        return true;
                    }
                    else
                    {
                        MessageBox.Show("Failed to read information from SIF.");
                    }
                }
                else
                {
                    MessageBox.Show("Failed to read information from SIF.");
                }
            }

            return false;
        }
        public void RefreshSifSysCfg()
        {
            
            RefreshSifInfo();

            if (mCommZim.isConnected == false)
            {
                    cboChannel.Items.Clear();
                    for (int i = 0; i <4; i++)
                    {
                        cboChannel.Items.Add(i.ToString());
                    }
                    cboChannel.SelectedIndex = 0;
                    return;
            }

            eDeviceType mtype = (eDeviceType)mSysCfg.mSIFCfg.Type;
            mCommZim.mDevType = (eDeviceType)mSysCfg.mSIFCfg.Type;
            cboChannel.Items.Clear();

            if (mtype == eDeviceType.MBZA)
            {
                for (int i = 0; i < 4; i++) cboChannel.Items.Add(i.ToString());
            }
            else
            {
                cboChannel.Items.Add("0");
            }
            cboChannel.SelectedIndex = 0;
            idevch = 0;
            Thread.Sleep(2000);
        }

        public void RefreshSifInfo()
        {
            string str;
            
            CheckConnSifToLan();
            
            eDeviceType mtype = (eDeviceType)mSysCfg.mSIFCfg.Type;

            LnklblSetSIFCfgToLan.Enabled = mCommZim.isConnected;
            LnklblRefSifInf.Enabled = mCommZim.isConnected;


            if (mtype == eDeviceType.SBZA || mtype == eDeviceType.MBZA)
            {
                str = " (BZA Series.)";
//                LnklblSetSIFWebToLan.Enabled = true;
//                LnklblRefSifWebInf.Enabled = true;
                LnklblInitialize.Enabled = true;
                if (mtype == eDeviceType.SBZA)
                {
                    cboChannel.Enabled = false;
                }
                else
                {
                    cboChannel.Enabled = true;
                }
                if (mCommZim.isConnected == true)
                {
                    if (ReadSystemCfg() == false)
                    {
                        MessageBox.Show("Failed to read information from board.");
                    }
                }
            }
            else
            {
                str = " (Not supported.)";
//              LnklblSetSIFWebToLan.Enabled = false;
//              LnklblRefSifWebInf.Enabled = false;
                
                LnklblInitialize.Enabled = false;
                cboChannel.Enabled = false;
            }

            lblSifBdType.Text = string.Format("1) Board type : {0} {1}", Extensions.GetEnumDescription(mtype), str);
            lblSifBdVer.Text = string.Format("2) Board version : {0}", mSysCfg.mSIFCfg.GetBoardVer());
            lblSifFwVer.Text = string.Format("3) Firmware version : {0}", mSysCfg.mSIFCfg.GetFirmwareVer());
            lblSifSerial.Text = string.Format("4) Serial number : {0}", mSysCfg.mSIFCfg.GetSerialNumber());

        }

        public void ViewZimInfo(int ch)
        {
            if (ChkEnaCh.Checked == true)
            {
                if (mCommZim.isConnected == true)
                {
                    if (mCommZim.CmdSetChannel(ch) == false)
                    {
                        MessageBox.Show("The command failed[DEFINE_COMMAND.CMD_SET_CHANNEL].");
                        return;
                    }
                    if (ChkEnaChROM.Checked == true)
                    {
                        if (mCommZim.CheckROMofZIM(ch, true) == true) 
                        {
                            if (mCommZim.CheckFPGAofZIM(ch) == true)
                            {
                                mCommZim.ReadData(ch, ref mSysCfg.mZimCfg[ch]);
                                lblscanrom.Text = " ...... Checked EEPROM, Checked FPGA !";
                                lblscanrom.ForeColor = Color.DarkGreen;
                            }
                            else
                            {
                                lblscanrom.Text = " ...... Checked EEPROM, Not checked FPGA !";
                                lblscanrom.ForeColor = Color.DarkRed;
                            }
                        }
                        else
                        {
                            lblscanrom.Text = " ...... Not checked all !";
                            lblscanrom.ForeColor = Color.DarkRed;
                        }
                    }
                    else
                    {
                       
                        if (mCommZim.CheckFPGAofZIM(ch) == true)
                        {
                            mCommZim.ReadData(ch, ref mSysCfg.mZimCfg[ch]);
                            lblscanrom.Text = " ...... No EEPROM, Checked FPGA !";
                            lblscanrom.ForeColor = Color.DarkGreen;
                        }
                        else
                        {
                            lblscanrom.Text = " ...... Not checked all !";
                            lblscanrom.ForeColor = Color.DarkRed;
                        }
                    }
                }
                else
                {
                    lblscanrom.Text = " ...... Not Connected !";
                    lblscanrom.ForeColor = Color.DarkGray;
                }
            }
            else
            {
                lblscanrom.Text = " ...... Disable !";
                lblscanrom.ForeColor = Color.DarkGray;
            }

            LblZimBdType.Text = string.Format("1) Board type : {0}[{1}]", Extensions.GetEnumDescription(mSysCfg.mZimCfg[ch].GetZIMType())
                , Extensions.GetEnumDescription(mSysCfg.mZimCfg[ch].GetBoardType()));
            lblZimBdVer.Text = string.Format("2) Board version : {0}", mSysCfg.mZimCfg[ch].GetBoardVer());
            lblZimFwVer.Text = string.Format("3) Firmware version : {0}", mSysCfg.mZimCfg[ch].GetFirmwareVer());
            lblZimSerial.Text = string.Format("4) Serial number : {0}", mSysCfg.mZimCfg[ch].GetSerialNumber());
        }

        public void RefreshZimInfo(int ch)
        {
            eDeviceType mtype = (eDeviceType)mSysCfg.mSIFCfg.Type;

            mSysCfg.mZimCfg[ch].info.ZimBDVersion = 0;
            mSysCfg.mZimCfg[ch].info.ZimFWVersion = 0;
            mSysCfg.mZimCfg[ch].info.cModel[0] = 0x30;
            mSysCfg.mZimCfg[ch].info.cModel[1] = 0x30;
            mSysCfg.mZimCfg[ch].info.nSerial = 0;

            if (mtype == eDeviceType.SBZA || mtype == eDeviceType.MBZA)
            {
                if (mCommZim.isConnected == true)
                {
                    if (ReadSystemCfg() == false)
                    {
                        MessageBox.Show("Failed to read information from board.");
                        return;
                    }
                }

                ChkEnaCh.Checked = (mSysCfg.EnaZIM[ch] == 0) ? false : true;
                ChkEnaChROM.Checked = (mSysCfg.EnaROM[ch] == 0) ? false : true;

                ChkEnaCh.Enabled = true;
                ChkEnaChROM.Enabled = true;
                BtRefreshZIM.Enabled = true;
                BtInitZIM.Enabled = true;


            }
            else
            {
                ChkEnaCh.Checked = false;
                ChkEnaChROM.Checked = false;

                ChkEnaCh.Enabled = false;
                ChkEnaChROM.Enabled = false;
                BtRefreshZIM.Enabled = false;
                BtInitZIM.Enabled = false;
            }

            lnllblscanrom.Enabled = ChkEnaCh.Checked;
            lnklblinitrom.Enabled = (ChkEnaCh.Checked && ChkEnaChROM.Checked)? true: false ;
            lnkLoadROM.Enabled = (ChkEnaCh.Checked && ChkEnaChROM.Checked) ? true : false;
            lnkSaveROM.Enabled = (ChkEnaCh.Checked && ChkEnaChROM.Checked) ? true : false;
            LnklblBurnZIMToLan.Enabled = ChkEnaCh.Checked;
            LnklblSetZIMCfgToLan.Enabled = ChkEnaCh.Checked;
            LnklblInitialize.Enabled = ChkEnaCh.Checked;

            ViewZimInfo(ch);


        }


        private void LnklblBurnSifToUsb_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (ZM.FactorySetting.Properties.Settings.Default.FilePathSIF.Length < 3)
            {
                ZM.FactorySetting.Properties.Settings.Default.FilePathSIF = Application.StartupPath + "\\BZA4300.SIF";
                ZM.FactorySetting.Properties.Settings.Default.Save();
            }

            LanSetLib.LanSetForm mfrm;
            mfrm = new LanSetForm(Application.StartupPath + "\\boot\\SIFBoot.bin", ZM.FactorySetting.Properties.Settings.Default.FilePathSIF);
            try
            {
                mfrm.ShowDialog();
                ZM.FactorySetting.Properties.Settings.Default.FilePathSIF = mfrm.FirmwareFile;
                ZM.FactorySetting.Properties.Settings.Default.Save();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void LnklblSetSIFCfgToLan_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmSetProductInfo mfrm;
            mfrm = new frmSetProductInfo(ref mCommZim, 0, ref mSysCfg,ref mConnCfg, 0);
            if(mfrm.ShowDialog() == DialogResult.OK)
            {
                RefreshSifSysCfg();
            }
        }

        private void LnklblConnSifToLan_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmConnDlg mfrm;

            mfrm = new frmConnDlg(ref mCommZim);

            if (mfrm.ShowDialog() == DialogResult.OK)
            {
                if (mCommZim.isConnected == true)
                {
                    cboChannel.Enabled = true;
                    if (mCommZim.CmdEnableCommTimeOut(0) == false)
                    {
                        MessageBox.Show("The command failed[DEFINE_COMMAND.ENABLE_COMM_TIMEOUT].");
                        return;
                    }

                    if (mCommZim.CmdSetCmdMode(0) == false)
                    {
                        MessageBox.Show("The command failed[DEFINE_COMMAND.CMD_SET_MODE].");
                        return;
                    }
                }
                else
                {
                    cboChannel.Enabled = true;
                }
                RefreshSifSysCfg();
                RefreshHostname();
                RefreshSifWebSiteInfo();
            }
            else
            {
                RefreshSifSysCfg();
                RefreshHostname();
                RefreshSifWebSiteInfo();
            }
        }

        private void LnklblRefSifInf_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            RefreshSifSysCfg();
        }

        private void LnklblSetZIMCfgToLan_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmSetProductInfo mfrm;
            mfrm = new frmSetProductInfo(ref mCommZim, 1, ref mSysCfg,ref mConnCfg, idevch);
            if (mfrm.ShowDialog() == DialogResult.OK)
            {
                RefreshZimInfo(idevch);
            }
        }

        private void LnklblBurnZIMToLan_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmBurnZIM frm;
            eZimType mtype = (eZimType)(mSysCfg.mZimCfg[idevch].info.cModel[0] - 0x30);
            frm = new frmBurnZIM(ref mCommZim, mtype, idevch);
            frm.ShowDialog();

            ViewZimInfo(idevch);
        }

        private void LnklblChgSifFW_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (ZM.FactorySetting.Properties.Settings.Default.FilePathSIF.Length < 3)
            {
                ZM.FactorySetting.Properties.Settings.Default.FilePathSIF = Application.StartupPath + "\\BZA4300.SIF";
                ZM.FactorySetting.Properties.Settings.Default.Save();
            }

            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("No connection.");
                return;
            }

            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            dlg.DefaultExt = "sif";
            dlg.Filter = "sif files (*.sif)|*.sif|All files (*.*)|*.*";
            dlg.InitialDirectory = Path.GetDirectoryName(ZM.FactorySetting.Properties.Settings.Default.FilePathSIF);
            dlg.FileName = Path.GetFileName(ZM.FactorySetting.Properties.Settings.Default.FilePathSIF);
            dlg.Title = "Select the SIF firmware file to update.";

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                if (mCommZim.mComm.UploadFirmware(dlg.FileName) == false)
                {
                    MessageBox.Show("Firmware change failed.");
                }
                else
                {
                    ZM.FactorySetting.Properties.Settings.Default.FilePathSIF = dlg.FileName;
                    ZM.FactorySetting.Properties.Settings.Default.Save();

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
            if (mCommZim.CmdInitRangesInfo(idevch) == false)
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

                    frmTestFpga frm = new frmTestFpga(ref mCommZim,idevch);
                    frm.ShowDialog();
                }
            }
        }

        private void cboChannel_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (idevch != cboChannel.SelectedIndex)
            {
                idevch = cboChannel.SelectedIndex;
                if (mCommZim.isConnected == true)
                {
                    if (mCommZim.CmdSetChannel(idevch) == false)
                    {
                        MessageBox.Show("The command failed[DEFINE_COMMAND.CMD_SET_CHANNEL].");
                    }
                }
                else
                {
                    MessageBox.Show("Not connected.");
                }
            }

            RefreshZimInfo(idevch);
        }

        private void BtRefreshZIM_Click(object sender, EventArgs e)
        {
            if (mCommZim.isConnected == true)
            {
                mSysCfg.EnaZIM[idevch] = (byte)((ChkEnaCh.Checked == true) ? 1 : 0);
                mSysCfg.EnaROM[idevch] = (byte)((ChkEnaChROM.Checked == true) ? 1 : 0);
                if (mCommZim.WriteData(ref mSysCfg) == false)
                {
                    MessageBox.Show("Failed to write information from board.");
                }
            }
            RefreshZimInfo(idevch);
        }

        private void lnllblscanrom_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("Not connected.");
                return;
            }

            
            ViewZimInfo(idevch);
        }

        private void lnklblinitrom_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("Not connected.");
                return;
            }

            if (mCommZim.InitialZIMEEPROM(idevch) == false)
            {
                MessageBox.Show("Failed initialize EEPROM.");
                return;
            }

            ViewZimInfo(idevch);

            MessageBox.Show("Succeed initialize EEPROM.");

        }

        private void BtInitZIM_Click(object sender, EventArgs e)
        {
            if (mCommZim.isConnected == true)
            {
                eZimType type = mSysCfg.mZimCfg[idevch].GetZIMType();
                mSysCfg.EnaZIM[idevch] = 0;
                mSysCfg.EnaROM[idevch] = 0;
                mSysCfg.mZimCfg[idevch].info.Initialize(type);
                mSysCfg.mZimCfg[idevch].ranges.Initialize(type);
                if (mCommZim.WriteData(ref mSysCfg) == false)
                {
                    MessageBox.Show("Failed to write information from board.");
                }
            }
            RefreshZimInfo(idevch);
        }

        private void lnkLoadROM_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("Not connected.");
                return;
            }

            if (mCommZim.RefreshInConfigOfZim(idevch) == false)
            {
                MessageBox.Show("Failed Write EEPROM.");
                return;
            }

            RefreshZimInfo(idevch);
            MessageBox.Show("Succeed Load EEPROM and Apply Flash ROM.");

            
        }

        private void lnkSaveROM_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("Not connected.");
                return;
            }

            if (mCommZim.ProgConfigOfZim(idevch, ref mSysCfg.mZimCfg[idevch]) == false)
            {
                MessageBox.Show("Failed Write EEPROM.");
                return;
            }

            MessageBox.Show("Succeed Write EEPROM.");


            
        }

        private void lnkinitsifcfg_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("Not connected.");
                return;
            }

            stSystemConfig mcfg = new stSystemConfig(0);
           /* if(mCommZim.ReadData(ref mcfg) == false)
            {
                MessageBox.Show("Failed read System information.");
            }
            */
            if (mCommZim.WriteData(ref mcfg) == false)
            {
                MessageBox.Show("Failed read system information.");
            }

            MessageBox.Show("Succeed initialize system information.\r\n Please restart the device.");
        }
    }
    
}
