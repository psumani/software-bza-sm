using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;

namespace ZiveLab.ZM
{
    public partial class frmBurnZIM : Form
    {
        public CommObj mCommZim;
        private string sSerial;
        private bool bconnect;
        private int ich;
        public frmBurnZIM(string tSerial,int inch,bool tconnect = false)
        {
            InitializeComponent();

            sSerial = tSerial;
            ich = inch;
            bconnect = tconnect;
            
            this.Text = string.Format("Firmware change of FPGA in channel[{0}-{1}].", sSerial, ich+1);
           
            InitProgressStatus();

            txtFilePath.Text = Path.Combine(gBZA.appcfg.PathZIMFW, gBZA.appcfg.FileNameZIMFW);
            if (bconnect == false)
            {
                ConnectBza();
            }
            else
            {
                if (MBZA_MapUtil.EnableCommTimeOut(sSerial, 0) == false)
                {
                    MessageBox.Show("The command failed[EnableCommTimeOut].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (MBZA_MapUtil.SetCmdMode(sSerial, 0) == false)
                {
                    MessageBox.Show("The command failed[SetCmdMode].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                if (MBZA_MapUtil.SetChannel(sSerial, ich) == false)
                {
                    MessageBox.Show("The command failed[SetChannel].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
        }

        bool ConnectBza()
        {

            mCommZim = new CommObj();
            mCommZim.HostNameToIP(gBZA.SifLnkLst[sSerial].sip, ref mCommZim.mConnTargetCfg.IpAddress);
            mCommZim.mConnTargetCfg.Port = 2000;
            mCommZim.mDevType = (eDeviceType)gBZA.SifLnkLst[sSerial].mDevInf.mSysCfg.mSIFCfg.Type;

            if (mCommZim.Connect() == false)
            {
                MessageBox.Show("Connection failed. ", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            if (mCommZim.CmdEnableCommTimeOut(0) == false)
            {
                mCommZim.Dispose();
                MessageBox.Show("The command failed[DEFINE_COMMAND.ENABLE_COMM_TIMEOUT].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error); 
                return false;
            }

            if (mCommZim.CmdSetCmdMode(0) == false)
            {
                mCommZim.Dispose();
                MessageBox.Show("The command failed[DEFINE_COMMAND.CMD_SET_MODE].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            if (mCommZim.CmdSetChannel(ich) == false)
            {
                mCommZim.Dispose();
                MessageBox.Show("The command failed[DEFINE_COMMAND.CMD_SET_CHANNEL].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            return true;
        }

        void InitProgressStatus()
        {
            lblBurn1.ForeColor = Color.Black;
            lblBurn2.ForeColor = Color.Black;
            lblBurn3.ForeColor = Color.Black;
            lblBurn4.ForeColor = Color.Black;
            lblBurn5.ForeColor = Color.Black;
            progConfirm.Maximum = 100;
            progConfirm.Value = 0;
            progConfirm.Style = ProgressBarStyle.Continuous;
            progRecord.Maximum = 100;
            progRecord.Value = 0;
            progRecord.Style = ProgressBarStyle.Continuous;
        }

        private void LnklblSelFile_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            dlg.DefaultExt = "zim";
            dlg.Filter = "zim files (*.zim)|*.zim|All files (*.*)|*.*";

            dlg.InitialDirectory = gBZA.appcfg.PathZIMFW;
            dlg.FileName = gBZA.appcfg.FileNameZIMFW;
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                txtFilePath.Text = dlg.FileName;

                gBZA.appcfg.PathZIMFW = Path.GetDirectoryName(dlg.FileName);
                gBZA.appcfg.FileNameZIMFW = Path.GetFileName(dlg.FileName);
                gBZA.appcfg.Save();
            }
        }

        private bool RecordPROM()
        {
            lblBurn3.ForeColor = Color.Red;
            this.Refresh();
            FileStream fs = new FileStream(txtFilePath.Text, FileMode.Open, FileAccess.ReadWrite, FileShare.ReadWrite);
            BinaryReader br = new BinaryReader(fs);
            bool bRet = true;
            int size = (int)fs.Length;
            int count = size / 256;
            int address = 0;
            int len;

            int nsize;
            int nLen;
            byte[] buff = new byte[256];

            if ((size % 256) > 0) count++;
            progRecord.Maximum = count;
            progRecord.Value = 0;

            nsize = size;
            while (nsize > 0)
            {
                if (nsize >= 256) nLen = 256;
                else nLen = nsize;

                fs.Position = address;
                len = fs.Read(buff, 0, nLen);

                if (len != nLen)
                {
                    MessageBox.Show("There was a problem reading the file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    bRet = false;
                    break;
                }
                if (bconnect == false)
                {
                    if (mCommZim.CmdProgramPromOfZIM(ich, address, buff) == false)
                    {
                        MessageBox.Show("The command failed[DEFINE_COMMAND.PROG_FPGA_PROM].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        bRet = false;
                        break;
                    }
                }
                else
                {
                    if (MBZA_MapUtil.ProgramPromOfZIM(sSerial, ich, address, buff) == false)
                    {
                        MessageBox.Show("The command failed[ProgramPromOfZIM].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        bRet = false;
                        break;
                    }
                }
                address += nLen;
                progRecord.Value++;

                nsize -= nLen;
                this.Refresh();

                if (bRet == false) break;
            }

            br.Close();
            fs.Close();


            this.Refresh();
            if (bRet == true) lblBurn3.ForeColor = Color.Green;
            return bRet;
        }

        private bool ConfirmPROM()
        {
            lblBurn4.ForeColor = Color.Red;
            this.Refresh();
            bool bRet = true;

            FileStream fs = new FileStream(txtFilePath.Text, FileMode.Open, FileAccess.Read,FileShare.ReadWrite);
            BinaryReader br = new BinaryReader(fs);

            int size = (int)fs.Length;
            int count = size / 256;
            int address = 0;
            int len;

            int nsize;
            int nLen;
            byte[] buff = new byte[256];
            byte[] rbuff = new byte[256];

            int i;

            if ((size % 256) > 0) count++;
            progConfirm.Maximum = count;
            progConfirm.Value = 0;
            progConfirm.Style = ProgressBarStyle.Continuous;

            nsize = size;
            while (nsize > 0)
            {
                if (nsize >= 256) nLen = 256;
                else nLen = nsize;

                buff.Initialize();
                rbuff.Initialize();

                fs.Position = address;
                len = fs.Read(buff, 0, nLen);
                if (len != nLen)
                {
                    MessageBox.Show("There was a problem reading the file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    bRet = false;
                    break;
                }
                if(bconnect == false)
                {
                    rbuff = mCommZim.CmdReadPromOfZIM(ich, address);
                }
                else
                {
                    if (MBZA_MapUtil.ReadPromOfZIM(sSerial, ich, address, ref rbuff, nLen) == false)
                    {
                        MessageBox.Show("The command failed[ProgramPromOfZIM].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        bRet = false;
                        break;
                    }
                }
                if (rbuff == null)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.READ_FPGA_PROM].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    bRet = false;
                    break;
                }

                for (i = 0; i < nLen; i++)
                {
                    if (buff[i] != rbuff[i])
                    {
                        MessageBox.Show("The contents do not match.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        bRet = false;
                        break;
                    }
                }
                address += nLen;
                progConfirm.Value++;
                nsize -= nLen;
                this.Refresh();
                if (bRet == false) break;
            }

            br.Close();
            fs.Close();
            if (bRet == true) lblBurn4.ForeColor = Color.Green;
            this.Refresh();
            return bRet;
        }

        private bool ResetFPGA(bool breset)
        {
            if (bconnect == false)
            {
                if (mCommZim.CmdResetFPGA(ich, breset) == false)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.RESET_FPGA_ICE].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
            }
            else
            {
                if (MBZA_MapUtil.ResetFPGA(sSerial, ich, breset) == false)
                {
                    MessageBox.Show("The command failed[ResetFPGA].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
            }

            return true;
        }

        private bool ResetAndConnectPROM(int Addr = 0)
        {
            lblBurn1.ForeColor = Color.Red;
            this.Refresh();
            if (bconnect == false)
            { 
                if (mCommZim.CmdConnectPromOfZIM(ich, Addr) == false)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.CONN_FPGA_PROM].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
            }
            else
            {
                if (MBZA_MapUtil.ConnectPromOfZIM(sSerial, ich, Addr) == false)
                {
                    MessageBox.Show("The command failed[ConnectPromOfZIM].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
            }

            lblBurn1.ForeColor = Color.Green;
            this.Refresh();
            return true;
        }

        private bool InitPROM()
        {
            lblBurn2.ForeColor = Color.Red;
            this.Refresh();
            if (bconnect == false)
            {
                if (mCommZim.CmdEreasePromOfZIM(ich) == false)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.EREASE_FPGA_PROM].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
            }
            else
            {
                if (MBZA_MapUtil.EreasePromOfZIM(sSerial, ich) == false)
                {
                    MessageBox.Show("The command failed[EreasePromOfZIM].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
            }
            lblBurn2.ForeColor = Color.Green;
            this.Refresh();
            return true;
        }
       
        private bool DisconnAndRunFpga()
        {
            lblBurn5.ForeColor = Color.Red;
            this.Refresh();
            if (bconnect == false)
            {
                if (mCommZim.CmdDisconnectPromOfZIM(ich) == false)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.CLOSE_FPGA_PROM].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }

                if (mCommZim.CmdResetFPGA(ich, false) == false)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.RESET_CLR_FPGA_ICE].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

                Thread.Sleep(100);

                if (mCommZim.CheckFPGAofZIM(ich) == false)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.CheckFPGA].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

                if (mCommZim.ReadData(ref gBZA.SifLnkLst[sSerial].mDevInf) == false)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.CheckFPGA].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                if (MBZA_MapUtil.DisconnectPromOfZIM(sSerial, ich) == false)
                {
                    MessageBox.Show("The command failed[ConnectPromOfZIM].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }

                if (MBZA_MapUtil.ResetFPGA(sSerial, ich, false) == false)
                {
                    MessageBox.Show("The command failed[Reset clear FPGA].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }

                Thread.Sleep(100);

                if (MBZA_MapUtil.VheckFPGAOfZIM(sSerial, ich) == false)
                {
                    MessageBox.Show("The command failed[CheckFPGA].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }

                if (MBZA_MapUtil.GetDeviceinfo(sSerial) == false)
                {
                    MessageBox.Show("The command failed[Get Device info].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
            }



            lblBurn5.ForeColor = Color.Green;
            this.Refresh();
            return true;
        }

        private void LnklblChgZIM_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
          
            this.LnklblSelFile.Enabled = false;
            this.LnklblChgZIM.Enabled = false;
            Cursor.Current = Cursors.WaitCursor;
            InitProgressStatus();
            if (File.Exists(txtFilePath.Text))
            {
                if (ResetAndConnectPROM(ich) == true)
                {
                    if (InitPROM() == true)
                    {
                        if (RecordPROM() == true)
                        {
                            if (ConfirmPROM() == true)
                            {
                                if (DisconnAndRunFpga() == true)
                                {
                                    
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                Cursor.Current = Cursors.Default;
                MessageBox.Show("I couldn't find the file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            this.LnklblSelFile.Enabled = true;
            this.LnklblChgZIM.Enabled = true;
            Cursor.Current = Cursors.Default;
        }

        private void btClose_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void CboAddr_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        private void CHK_RESETFPGA_CheckedChanged(object sender, EventArgs e)
        {
            ResetFPGA(CHK_RESETFPGA.Checked);
        }

        private void frmBurnZIM_FormClosed(object sender, FormClosedEventArgs e)
        {
            if(bconnect == false)
            {
                if (mCommZim.CmdSetCmdMode(1) == true)
                {
                    mCommZim.CmdEnableCommTimeOut(0);
                }
                mCommZim.Dispose();
            }
            else
            {
                
                if (MBZA_MapUtil.SetCmdMode(sSerial, 1) == false)
                {
                    MBZA_MapUtil.EnableCommTimeOut(sSerial, 0);
                }
            }
        }
    }
}
