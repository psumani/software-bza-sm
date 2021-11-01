﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;

namespace App.Zim.Player
{
    public partial class frmBurnZIM : Form
    {
        public CommObj mCommZim;
        public frmBurnZIM(ref CommObj mSetCommZim)
        {
            InitializeComponent();
            this.Icon = Properties.Resources.bm;
            mCommZim = mSetCommZim;
            InitProgressStatus();

            txtFilePath.Text = Path.Combine(Properties.Settings.Default.PathZIMFW, Properties.Settings.Default.FileNameZIMFW);
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
            dlg.FileName = txtFilePath.Text;
            dlg.InitialDirectory = Path.GetDirectoryName(txtFilePath.Text);

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                txtFilePath.Text = dlg.FileName;
                Properties.Settings.Default.PathZIMFW = Path.GetDirectoryName(txtFilePath.Text);
                Properties.Settings.Default.FileNameZIMFW = Path.GetFileName(txtFilePath.Text);
                Properties.Settings.Default.Save();
            }
        }

        private bool RecordPROM()
        {
            lblBurn3.ForeColor = Color.Red;
            this.Refresh();
            FileStream fs = new FileStream(txtFilePath.Text, FileMode.Open, FileAccess.Read);
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
                    MessageBox.Show("There was a problem reading the file.");
                    bRet = false;
                    break;
                }
                if (mCommZim.CmdProgramPromOfZIM(address, buff) == false)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.PROG_FPGA_PROM].");
                    bRet = false;
                    break;
                }
                address += nLen;
                progRecord.Value++;
                nsize -= nLen;
                
                this.Refresh();
                Application.DoEvents();
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

            FileStream fs = new FileStream(txtFilePath.Text, FileMode.Open, FileAccess.Read);
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
                    MessageBox.Show("There was a problem reading the file.");
                    bRet = false;
                    break;
                }

                rbuff = mCommZim.CmdReadPromOfZIM(address);
                if (rbuff == null)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.READ_FPGA_PROM].");
                    bRet = false;
                    break;
                }

                for (i = 0; i < nLen; i++)
                {
                    if (buff[i] != rbuff[i])
                    {
                        MessageBox.Show("The contents do not match.");
                        bRet = false;
                        break;
                    }
                }
                address += nLen;
                progConfirm.Value++;
                nsize -= nLen;
                this.Refresh();
                Application.DoEvents();
                if (bRet == false) break;
            }

            br.Close();
            fs.Close();
            if (bRet == true) lblBurn4.ForeColor = Color.Green;
            this.Refresh();
            return bRet;
        }
        private bool ResetAndConnectPROM()
        {
            lblBurn1.ForeColor = Color.Red;
            this.Refresh();
            if (mCommZim.CmdResetFPGA(true) == false)
            {
                MessageBox.Show("The command failed[DEFINE_COMMAND.RESET_FPGA_ICE].");
                return false;
            }

            if (mCommZim.CmdConnectPromOfZIM(0) == false)
            {
                MessageBox.Show("The command failed[DEFINE_COMMAND.CONN_FPGA_PROM].");
                return false;
            }
            lblBurn1.ForeColor = Color.Green;
            this.Refresh();
            return true;
        }

        private bool InitPROM()
        {
            lblBurn2.ForeColor = Color.Red;
            this.Refresh();
            if (mCommZim.CmdEreasePromOfZIM() == false)
            {
                MessageBox.Show("The command failed[DEFINE_COMMAND.EREASE_FPGA_PROM].");
                return false;
            }
            lblBurn2.ForeColor = Color.Green;
            this.Refresh();
            return true;
        }
       
        private bool DisconnAndRunFpga()
        {
            lblBurn5.ForeColor = Color.Red;
            this.Refresh();
            if (mCommZim.CmdDisconnectPromOfZIM() == false)
            {
                MessageBox.Show("The command failed[DEFINE_COMMAND.CLOSE_FPGA_PROM].");
                return false;
            }

            if (mCommZim.CmdResetFPGA(false) == false)
            {
                MessageBox.Show("The command failed[DEFINE_COMMAND.RESET_CLR_FPGA_ICE].");
                return false;
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
                if (ResetAndConnectPROM() == true)
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
                MessageBox.Show("I couldn't find the file.");
            }

            this.LnklblSelFile.Enabled = true;
            this.LnklblChgZIM.Enabled = true;
            Cursor.Current = Cursors.Default;
        }

        private void btClose_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }
    }
}
