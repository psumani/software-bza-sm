using LanSetLib;
using System;
using System.Drawing;
using System.IO;
using System.Reflection;
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
        

        public int idevbd;

        public Main()
        {
            InitializeComponent();

            this.Icon = ZM.FactorySetting.Properties.Resources.ZMFactorySetting;

            mCommZim = new CommObj();
            mSysCfg = new stSystemConfig(0);
            mWebSiteFATheader = new stWebSiteFATHeader(defWebSiteInfomation.WEBSITE_ID, 0);
            mConnCfg = new stConnCfg(0);
            idevbd = 0;


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
                cboBoard.Enabled = true;

                if (mCommZim.CmdEnableCommTimeOut(0) == false)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.ENABLE_COMM_TIMEOUT].", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    RefreshSifInfo();
                    RefreshZimInfo(idevbd);
                    return;
                }

                if (mCommZim.CmdSetCmdMode(0) == false)
                {
                    MessageBox.Show("It may be an unsupported version or there is a communication problem.[DEFINE_COMMAND.CMD_SET_MODE].", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    RefreshSifInfo();
                    RefreshZimInfo(idevbd);
                    return;
                }

            }
            else
            {
                cboBoard.Enabled = false;
            }
            RefreshSifSysCfg();
            RefreshHostname();
            RefreshSifWebSiteInfo();
        }

        public void MakeAppTitle()
        {
            string str = Assembly.GetExecutingAssembly().GetName().ToString();
            int i0 = str.IndexOf(',', 0);
            int i1 = i0 + 10;
            int i2 = str.IndexOf(',', i1);
            gFs.AppVer = str.Substring(i1, i2 - i1).Trim();
            gFs.AppTitle = str.Substring(0, i0) + " " + gFs.AppVer;
        }

        public void RefreshHostname()
        {
            if (mCommZim.isConnected == true)
            {
                if (mSysCfg.mSIFCfg.Type == (byte)eDeviceType.ZIM || mSysCfg.mSIFCfg.Type == (byte)eDeviceType.SBZA || mSysCfg.mSIFCfg.Type == (byte)eDeviceType.MBZA)
                {
                    
                    if (mCommZim.ReadData(ref mConnCfg) == false)
                    {
                        MessageBox.Show("Failed to read information from SIF.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        RefreshSifInfo();
                        RefreshZimInfo(idevbd);
                        return;
                    }
                    lnklblchghostname.Enabled = true;
                    lnklblchghostname.Text = string.Format("> Hostname:{0}", Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                }
                return;
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
                    lblTargetIp.Text += "--- Connected.";
                    lblTargetIp.ForeColor = Color.Green;
                    LnklblChgSifFW.Enabled = true;
                    return;
                }
                
            }
            
            lblTargetIp.Text += "--- Disconnected.";
            lblTargetIp.ForeColor = Color.Red;
            LnklblChgSifFW.Enabled = false;
            
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
                        MessageBox.Show("Failed to read information from SIF.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Failed to read information from SIF.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

            return false;
        }
        public void RefreshSifSysCfg()
        {
            string str;
            RefreshSifInfo();

            if (mCommZim.isConnected == false)
            {
                    cboBoard.Items.Clear();
                    for (int i = 0; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                    {
                        cboBoard.Items.Add(i.ToString());
                    }
                    cboBoard.SelectedIndex = 0;
                    return;
            }

            eDeviceType mtype = (eDeviceType)mSysCfg.mSIFCfg.Type;
            mCommZim.mDevType = (eDeviceType)mSysCfg.mSIFCfg.Type;

            cboBoard.Items.Clear();

            if (mtype == eDeviceType.MCBZA)
            {
                for (int i = 0; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                {
                    str = i.ToString();
                    if (i == 0) str += " - (MAIN)";
                    else str += " - (AUX)";
                    cboBoard.Items.Add(str);
                }
            }
            else if (mtype == eDeviceType.MBZA)
            {
                for (int i = 0; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                {
                    cboBoard.Items.Add(i.ToString());
                }
            }
            else
            {
                cboBoard.Items.Add("0");
            }

            cboBoard.SelectedIndex = 0;
            idevbd = 0;
            Thread.Sleep(2000);
        }
       
        public void RefreshSifInfo()
        {
            string str;
            
            CheckConnSifToLan();
            
            eDeviceType mtype = (eDeviceType)mSysCfg.mSIFCfg.Type;

            LnklblSetSIFCfgToLan.Enabled = mCommZim.isConnected;
            LnklblRefSifInf.Enabled = mCommZim.isConnected;
            lnklblchghostname.Enabled = mCommZim.isConnected;

            if (mtype == eDeviceType.SBZA || mtype == eDeviceType.MBZA ||  mtype == eDeviceType.MCBZA)
            {
//                LnklblSetSIFWebToLan.Enabled = true;
//                LnklblRefSifWebInf.Enabled = true;
                LnklblInitialize.Enabled = true;
                if (mtype == eDeviceType.SBZA)
                {
                    cboBoard.Enabled = false;
                }
                else
                {
                    cboBoard.Enabled = true;
                }
                if (mCommZim.isConnected == true)
                {
                    if (ReadSystemCfg() == false)
                    {
                        MessageBox.Show("Failed to read information from board.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            else
            {
//              LnklblSetSIFWebToLan.Enabled = false;
//              LnklblRefSifWebInf.Enabled = false;
                
                LnklblInitialize.Enabled = false;
                cboBoard.Enabled = false;
            }

            str = mConnCfg.GetSerialNumber();
            eProductType Producttype = mConnCfg.GetProductType();

            lblSifBdType.Text = string.Format("1) Board type : {0} / {1}", Extensions.GetEnumDescription(mtype), Extensions.GetEnumDescription(Producttype));
            lblSifBdVer.Text = string.Format("2) Board version : {0}", mSysCfg.mSIFCfg.GetBoardVer());
            lblSifFwVer.Text = string.Format("3) Firmware version : 0x{0:X2}({1})", mSysCfg.ID, mSysCfg.mSIFCfg.GetFirmwareVer());
            lblSifSerial.Text = string.Format("4) Serial number : {0}", mSysCfg.mSIFCfg.GetSerialNumber());

        }

        public void ViewZimInfo(int bd)
        {
            if (ChkEnaCh.Checked == true)
            {
                if (mCommZim.isConnected == true)
                {
                    if (mCommZim.CmdSetChannel(bd) == false)
                    {
                        MessageBox.Show("The command failed[DEFINE_COMMAND.CMD_SET_CHANNEL].", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    if (ChkEnaChROM.Checked == true)
                    {
                        if (mCommZim.CheckROMofZIM(bd, true) == true) 
                        {
                            if (mCommZim.CheckFPGAofZIM(bd) == true)
                            {
                                mCommZim.ReadData(bd, ref mSysCfg.mZimCfg[bd]);
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
                       
                        if (mCommZim.CheckFPGAofZIM(bd) == true)
                        {
                            mCommZim.ReadData(bd, ref mSysCfg.mZimCfg[bd]);
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

            LblZimBdType.Text = string.Format("1) Board type : {0}[{1}]", Extensions.GetEnumDescription(mSysCfg.mZimCfg[bd].GetZIMType())
                , Extensions.GetEnumDescription(mSysCfg.mZimCfg[bd].GetBoardType()));
            lblZimBdVer.Text = string.Format("2) Board version : {0}", mSysCfg.mZimCfg[bd].GetBoardVer());
            lblZimFwVer.Text = string.Format("3) Firmware version : {0}", mSysCfg.mZimCfg[bd].GetFirmwareVer());
            lblZimSerial.Text = string.Format("4) Serial number : {0}", mSysCfg.mZimCfg[bd].GetSerialNumber());
        }

        public void RefreshZimInfo(int bd)
        {
            eDeviceType mtype = (eDeviceType)mSysCfg.mSIFCfg.Type;

            mSysCfg.mZimCfg[bd].info.ZimBDVersion = 0;
            mSysCfg.mZimCfg[bd].info.ZimFWVersion = 0;
            mSysCfg.mZimCfg[bd].info.cModel[0] = 0x30;
            mSysCfg.mZimCfg[bd].info.cModel[1] = 0x30;
            mSysCfg.mZimCfg[bd].info.nSerial = 0;

            if (mCommZim.isConnected == true)
            {
                if (mtype == eDeviceType.SBZA || mtype == eDeviceType.MBZA || mtype == eDeviceType.MCBZA)
                {
                    if (ReadSystemCfg() == false)
                    {
                        MessageBox.Show("Failed to read information from board.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        //RefreshSifInfo();
                        //RefreshZimInfo(idevbd);
                        return;
                    }


                    ChkEnaCh.Checked = (mSysCfg.EnaZIM[bd] == 0) ? false : true;
                    ChkEnaChROM.Checked = (mSysCfg.EnaROM[bd] == 0) ? false : true;

                    ChkEnaCh.Enabled = true;
                    ChkEnaChROM.Enabled = true;
                    BtRefreshZIM.Enabled = true;
                    BtInitZIM.Enabled = true;

                    lnllblscanrom.Enabled = ChkEnaCh.Checked;
                    lnklblinitrom.Enabled = (ChkEnaCh.Checked && ChkEnaChROM.Checked) ? true : false;
                    lnkLoadROM.Enabled = (ChkEnaCh.Checked && ChkEnaChROM.Checked) ? true : false;
                    lnkSaveROM.Enabled = (ChkEnaCh.Checked && ChkEnaChROM.Checked) ? true : false;
                    LnklblBurnZIMToLan.Enabled = ChkEnaCh.Checked;
                    LnklblSetZIMCfgToLan.Enabled = ChkEnaCh.Checked;
                    LnklblInitialize.Enabled = ChkEnaCh.Checked;

                    ViewZimInfo(bd);
                    return;
                }
            }

            ChkEnaCh.Checked = false;
            ChkEnaChROM.Checked = false;

            ChkEnaCh.Enabled = false;
            ChkEnaChROM.Enabled = false;
            BtRefreshZIM.Enabled = false;
            BtInitZIM.Enabled = false;

            lnllblscanrom.Enabled = false;
            lnklblinitrom.Enabled = false;
            lnkLoadROM.Enabled = false;
            lnkSaveROM.Enabled = false;
            LnklblBurnZIMToLan.Enabled = false;
            LnklblSetZIMCfgToLan.Enabled = false;
            LnklblInitialize.Enabled = false;
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
                MessageBox.Show(ex.Message, gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                    cboBoard.Enabled = true;
                    if (mCommZim.CmdEnableCommTimeOut(0) == false)
                    {
                        MessageBox.Show("The command failed[DEFINE_COMMAND.ENABLE_COMM_TIMEOUT].", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        RefreshSifInfo();
                        RefreshZimInfo(idevbd);
                        return;
                    }

                    if (mCommZim.CmdSetCmdMode(0) == false)
                    {
                        MessageBox.Show("It may be an unsupported version or there is a communication problem.[DEFINE_COMMAND.CMD_SET_MODE].", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        RefreshSifInfo();
                        RefreshZimInfo(idevbd);
                        return;
                    }
                }
                else
                {
                    cboBoard.Enabled = true;
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
            mfrm = new frmSetProductInfo(ref mCommZim, 1, ref mSysCfg,ref mConnCfg, idevbd);
            if (mfrm.ShowDialog() == DialogResult.OK)
            {
                RefreshZimInfo(idevbd);
            }
        }

        private void LnklblBurnZIMToLan_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmBurnZIM frm;
            eZimType mtype = (eZimType)(mSysCfg.mZimCfg[idevbd].info.cModel[0] - 0x30);
            frm = new frmBurnZIM(ref mCommZim, mtype, idevbd);
            frm.ShowDialog();

            ViewZimInfo(idevbd);
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
                MessageBox.Show("No connection.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
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
                    MessageBox.Show("Firmware change failed.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    RefreshSifInfo();
                    RefreshZimInfo(idevbd);
                }
                else
                {
                    ZM.FactorySetting.Properties.Settings.Default.FilePathSIF = dlg.FileName;
                    ZM.FactorySetting.Properties.Settings.Default.Save();

                    MessageBox.Show("The firmware change has been successful. Please restart the device.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
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
            if (mCommZim.CmdInitRangesInfo(idevbd) == false)
            {
                MessageBox.Show("Failure of initialization of lange information.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                RefreshSifInfo();
                RefreshZimInfo(idevbd);
            }
            else
            {
                MessageBox.Show("success of initialization of lange information.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
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
                        MessageBox.Show("No connection.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    frmTestFpga frm = new frmTestFpga(ref mCommZim,idevbd);
                    frm.ShowDialog();
                }
            }
        }

        private void cboChannel_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (idevbd != cboBoard.SelectedIndex)
            {
                idevbd = cboBoard.SelectedIndex;
                if (mCommZim.isConnected == true)
                {
                    if (mCommZim.CmdSetChannel(idevbd) == false)
                    {
                        MessageBox.Show("The command failed[DEFINE_COMMAND.CMD_SET_CHANNEL].", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        RefreshSifInfo();
                        RefreshZimInfo(idevbd);
                        return;
                    }
                }
                else
                {
                    MessageBox.Show("Not connected.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }

            RefreshZimInfo(idevbd);
        }

        private void BtRefreshZIM_Click(object sender, EventArgs e)
        {
            if (mCommZim.isConnected == true)
            {
                mSysCfg.EnaZIM[idevbd] = (byte)((ChkEnaCh.Checked == true) ? 1 : 0);
                mSysCfg.EnaROM[idevbd] = (byte)((ChkEnaChROM.Checked == true) ? 1 : 0);
                if (mCommZim.WriteData(ref mSysCfg) == false)
                {
                    MessageBox.Show("Failed to write information from board.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    RefreshSifInfo();
                    RefreshZimInfo(idevbd);
                    return;
                }
            }
            RefreshZimInfo(idevbd);
        }

        private void lnllblscanrom_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("Not connected.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            
            ViewZimInfo(idevbd);
        }

        private void lnklblinitrom_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("Not connected.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (mCommZim.InitialZIMEEPROM(idevbd) == false)
            {
                MessageBox.Show("Failed initialize EEPROM.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                RefreshSifInfo();
                RefreshZimInfo(idevbd);
                return;
            }

            ViewZimInfo(idevbd);

            MessageBox.Show("Succeed initialize EEPROM.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void BtInitZIM_Click(object sender, EventArgs e)
        {
            if (mCommZim.isConnected == true)
            {
                int auxch;
                eZimType type = mSysCfg.mZimCfg[idevbd].GetZIMType();

                mSysCfg.EnaZIM[idevbd] = 0;
                mSysCfg.EnaROM[idevbd] = 0;

                mSysCfg.mZimCfg[idevbd].info.Initialize(type);

                for (auxch = 0; auxch < MBZA_Constant.MAX_AUX_CHANNEL; auxch++)
                {
                    mSysCfg.mZimCfg[idevbd].ranges[auxch].Initialize(type);
                }
                
                if (mCommZim.WriteData(ref mSysCfg) == false)
                {
                    MessageBox.Show("Failed to write information from board.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    RefreshSifInfo();
                    RefreshZimInfo(idevbd);
                    return;
                }
            }
            RefreshZimInfo(idevbd);
        }

        private void lnkLoadROM_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("Not connected.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (mCommZim.RefreshInConfigOfZim(idevbd) == false)
            {
                MessageBox.Show("Failed Write EEPROM.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            RefreshZimInfo(idevbd);
            MessageBox.Show("Succeed Load EEPROM and Apply Flash ROM.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);


        }

        private void lnkSaveROM_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("Not connected.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (mCommZim.ProgConfigOfZim(idevbd, ref mSysCfg.mZimCfg[idevbd]) == false)
            {
                MessageBox.Show("Failed Write EEPROM.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            MessageBox.Show("Succeed Write EEPROM.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);



        }

        private void lnkinitsifcfg_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("Not connected.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            stSystemConfig mcfg = new stSystemConfig(0);
            /* if(mCommZim.ReadData(ref mcfg) == false)
             {
                 MessageBox.Show("Failed read System information.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
             }
             */
            if (mCommZim.WriteData(ref mcfg) == false)
            {
                MessageBox.Show("System information transfer failed.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                RefreshSifInfo();
                RefreshZimInfo(idevbd);
                return;
            }

            MessageBox.Show("Succeed initialize system information.\r\n Please restart the device.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }


    public static class gFs
    {
        public static string AppTitle = "App.ZM.FactorySetting";
        public static string AppVer = "1.0.0.0";
    }

}
