using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;

namespace App.ZIM.FactorySetting
{
    public partial class frmTestFpga : Form
    {
        private CommObj mCommZim;
        private string sfilesif;
        private string sfilefpga;
        private bool blastreset;
        public frmTestFpga(ref CommObj mSetCommObj)
        {
            InitializeComponent();

            mCommZim = mSetCommObj;

            sfilesif = Properties.Settings.Default.FilePathSIF;
            lnklblSifFile.Text = "*SIF Firmware: " + sfilesif;
            sfilefpga = Properties.Settings.Default.FilePathZim;
            lnklblfpgaFile.Text = "*FPGA Firmware: " + sfilefpga;

            blastreset = false;
            lnklblresetfpga.Text = "Reset clear FPGA";

        }

        private void frmTestFpga_Load(object sender, EventArgs e)
        {
            int i;
            cboAddr.Items.Clear();
            for(i=0; i<8; i++)
            {
                cboAddr.Items.Add(i.ToString());
            }
            cboAddr.SelectedIndex = 0;
        }

        private void lnklblSifFile_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            dlg.DefaultExt = "bin";
            dlg.Filter = "bin files (*.bin)|*.bin|All files (*.*)|*.*";
            dlg.FileName = Properties.Settings.Default.FilePathSIF;
            dlg.InitialDirectory = Path.GetDirectoryName(Properties.Settings.Default.FilePathSIF);

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                sfilesif = dlg.FileName;
                lnklblSifFile.Text = "*SIF Firmware: " + sfilesif;
            }
        }
        private void lnklblburnsif_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (mCommZim.mComm.UploadFirmware(sfilesif) == false)
            {
                MessageBox.Show("Firmware change failed.", this.Text, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                Properties.Settings.Default.FilePathSIF = sfilesif;
                Properties.Settings.Default.Save();

                MessageBox.Show("The firmware change has been successful. Please restart the device.", this.Text, MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void lnklblfpgaFile_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            dlg.DefaultExt = "bin";
            dlg.Filter = "bin files (*.bin)|*.bin|All files (*.*)|*.*";
            dlg.FileName = Properties.Settings.Default.FilePathZim;
            dlg.InitialDirectory = Path.GetDirectoryName(Properties.Settings.Default.FilePathZim);

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                sfilefpga = dlg.FileName;
                lnklblfpgaFile.Text = "*FPGA Firmware: " + sfilefpga;
                
            }
        }

        private bool ResetFPGA(bool breset)
        {
            if (mCommZim.CmdResetFPGA(breset) == false)
            {
                MessageBox.Show("The command failed[DEFINE_COMMAND.RESET_FPGA_ICE].", this.Text, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            blastreset = breset;
            return true;
        }

        private void lnklblresetfpga_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (blastreset == true)
            {
                ResetFPGA(false);
                lnklblresetfpga.Text = "Reset set FPGA";
                lnklblburnfpgabyspi.Enabled = false;
                lnklblburnfpgabyparallel.Enabled = true;
            }
            else
            {
                ResetFPGA(true);
                lnklblresetfpga.Text = "Reset clear FPGA";
                lnklblburnfpgabyspi.Enabled = true;
                lnklblburnfpgabyparallel.Enabled = false;
            }
        }

        private void lnklblburnfpgabyspi_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (mCommZim.CmdConnectPromOfZIM(0) == false)
            {
                MessageBox.Show("Failed to connect to ROM.");
                return;
            }

            if (mCommZim.CmdEreasePromOfZIM() == true)
            {
                if (RecordPROM() == true)
                {
                    if (ConfirmPROM() == true)
                    {
                        Properties.Settings.Default.FilePathZim = sfilefpga;
                        Properties.Settings.Default.Save();
                    }
                    else
                    {
                        MessageBox.Show("Failed to verify of ROM.");
                    }
                }
                else
                {
                    MessageBox.Show("Failed to write to ROM.");
                }
            }
            else
            {
                MessageBox.Show("Failed to erase ROM.");
            }
            

            if (mCommZim.CmdDisconnectPromOfZIM() == false)
            {
                MessageBox.Show("Failed to disconnect to ROM.");
                return;
            }
            
        }
        

        private bool RecordPROM()
        {
            this.Refresh();
            FileStream fs = new FileStream(sfilefpga, FileMode.Open, FileAccess.Read);
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

                if (bRet == false) break;
            }

            br.Close();
            fs.Close();

            this.Refresh();
            return bRet;
        }

        private bool ConfirmPROM()
        {
            
            this.Refresh();
            bool bRet = true;

            FileStream fs = new FileStream(sfilefpga, FileMode.Open, FileAccess.Read);
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
                if (bRet == false) break;
            }

            br.Close();
            fs.Close();
            
            this.Refresh();
            return bRet;
        }

        private void lnklblburnfpgabyparallel_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

        }

        private void lnklbltestsend_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

        }

        private void lnklbltestrecieve_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

        }
    }
}
