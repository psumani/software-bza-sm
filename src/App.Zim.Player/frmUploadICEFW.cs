using System;
using System.IO;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Packets;

namespace App.Zim.Player
{
    public partial class frmUploadICEFW : Form
    {
        public CommObj mCommZim;

        st_zim_device mZim;
        st_zim_rnginf mRanges;
        int irange;
        int vdcrange;
        bool LoadOn;

        public frmUploadICEFW()
        {
            InitializeComponent();
            this.Icon = Properties.Resources.bm;
            DoubleBuffered = true;
        }

        private void frmUploadICEFW_Load(object sender, EventArgs e)
        {
            if (mCommZim == null) throw new NullReferenceException("mCommZim");

            mZim = new st_zim_device(0);
            mRanges = new st_zim_rnginf(0);

            tbFirmwareFile.Text = Path.Combine(Properties.Settings.Default.PathZIMFW, Properties.Settings.Default.FileNameZIMFW);
            btnresetice.Enabled = true;
            btnrunice.Enabled = false;
            btnErease.Enabled = false;
            btnProgram.Enabled = false;
            btnVerify.Enabled = false;

            btnConnectrom.Enabled = false;
            btnCloserom.Enabled = false;

            mCommZim.ReadData(ref mRanges);


            view_control_grp();
            view_dds_sig_grp();
            view_dds_clk_grp();
            view_rtd_grp();
            view_acadc_grp();
            view_vdc_grp();

            timer1.Start();
        }

        private void view_acadc_grp()
        {
            int rng = (irange >> 1) & 0x3;
            iacmax.Text = string.Format("{0}", mRanges.iac_rng[rng].maximum);
            iacmin.Text = string.Format("{0}", mRanges.iac_rng[rng].minimum);
            iacfactor.Text = string.Format("{0}", mRanges.iac_rng[rng].factor);
            iacgain.Text = string.Format("{0}", mRanges.iac_rng[rng].gain);
            iacoffset.Text = string.Format("{0}", mRanges.iac_rng[rng].offset);

            vacmax.Text = string.Format("{0}", mRanges.vac_rng.maximum);
            vacmin.Text = string.Format("{0}", mRanges.vac_rng.minimum);
            vacfactor.Text = string.Format("{0}", mRanges.vac_rng.factor);
            vacgain.Text = string.Format("{0}", mRanges.vac_rng.gain);
            vacoffset.Text = string.Format("{0}", mRanges.vac_rng.offset);

            cboiacosr.SelectedIndex = mZim.adc_ac.cfg.iac_osr;
            cboiacflt.SelectedIndex = mZim.adc_ac.cfg.iac_flt;
            cbovacosr.SelectedIndex = mZim.adc_ac.cfg.vac_osr;
            cbovacflt.SelectedIndex = mZim.adc_ac.cfg.vac_flt;

            iacadc.Text = string.Format("0x{0:X}", mZim.adc_ac.data.iac.adcval);
            iacval.Text = string.Format("{0}", mZim.adc_ac.data.iac.value);
            vacadc.Text = string.Format("0x{0:X}", mZim.adc_ac.data.vac.adcval);
            vacval.Text = string.Format("{0}", mZim.adc_ac.data.vac.value);
        }
        private void view_vdc_grp()
        {
            vdcmax.Text = string.Format("{0}", mRanges.vdc_rng[vdcrange].maximum);
            vdcmin.Text = string.Format("{0}", mRanges.vdc_rng[vdcrange].minimum);
            vdcfactor.Text = string.Format("{0}", mRanges.vdc_rng[vdcrange].factor);
            vdcgain.Text = string.Format("{0}", mRanges.vdc_rng[vdcrange].gain);
            vdcoffset.Text = string.Format("{0}", mRanges.vdc_rng[vdcrange].offset);

            vdcadc.Text = string.Format("0x{0:X}", mZim.adc_vdc.adcval);
            vdcval.Text = string.Format("{0}", mZim.adc_vdc.value);
        }
        private void view_rtd_grp()
        {
            if ((mZim.adc_rtd.config.data & 0x10) > 0) cbortdwire.SelectedIndex = 1;
            else cbortdwire.SelectedIndex = 0;
            if ((mZim.adc_rtd.config.data & 0x1) > 0) cbortdnoise.SelectedIndex = 1;
            else cbortdnoise.SelectedIndex = 0;

            if ((mZim.adc_rtd.config.data & 0xC) == 0xC) cbofaultcycle.SelectedIndex = 3;
            else
            {
                if ((mZim.adc_rtd.config.data & 0x0040) == 04) cbofaultcycle.SelectedIndex = 1;
                else if ((mZim.adc_rtd.config.data & 0x8) == 0x0080) cbofaultcycle.SelectedIndex = 2;
                else cbofaultcycle.SelectedIndex = 0;
            }
            
            rtdmax.Text = string.Format("{0}", mRanges.rtd_rng.maximum);
            rtdmin.Text = string.Format("{0}", mRanges.rtd_rng.minimum);
            rtdfactor.Text = string.Format("{0}", mRanges.rtd_rng.factor);
            rtdgain.Text = string.Format("{0}", mRanges.rtd_rng.gain);
            rtdoffset.Text = string.Format("{0}", mRanges.rtd_rng.offset);

            if (mZim.adc_rtd.data.fault > 0) chkrtdFault.Checked = true;
            else chkrtdFault.Checked = false;

            rtdadcval.Text = string.Format("0x{0:X}", mZim.adc_rtd.data.adcval);
            rtdresval.Text = string.Format("{0}", mZim.adc_rtd.data.Rvalue);
            rtdtempval.Text = string.Format("{0}", mZim.adc_rtd.data.Tvalue);
        }

        private void view_dds_sig_grp()
        {
            DDS_SIG_Freq.Text = string.Format("{0}", mZim.dds_sig.frequency);
            DDS_SIG_Phase.Text = string.Format("{0}", mZim.dds_sig.Phase);
            if (mZim.dds_sig.reset == 0) DDS_SIG_Reset.Checked = false;
            else DDS_SIG_Reset.Checked = true;

            if (mZim.dds_sig.pwdn == 0)
            {
                chkpwdn.Checked = false;
                chkpwdn1.Checked = false;
            }
            else if (mZim.dds_sig.pwdn == 1)
            {
                chkpwdn.Checked = true;
                chkpwdn1.Checked = false;
            }
            else if (mZim.dds_sig.pwdn == 2)
            {
                chkpwdn.Checked = false;
                chkpwdn1.Checked = true;
            }
            else
            {
                chkpwdn.Checked = true;
                chkpwdn1.Checked = true;
            }
         }
        private void view_dds_clk_grp()
        {
            DDS_CLK_Freq.Text = string.Format("{0}", mZim.dds_clk.frequency);
            DDS_CLK_Phase.Text = string.Format("{0}", mZim.dds_clk.Phase);
            if (mZim.dds_clk.reset == 0) DDS_CLK_Reset.Checked = false;
            else DDS_CLK_Reset.Checked = true;
        }

        private void view_control_grp()
        {
            int tmp;

            irange = (mZim.ctrl_do.data >> 1) & 0x7;
            cboirange.SelectedIndex = irange;

            tmp = (mZim.ctrl_do.data >> 4) & 0x1;

            if (tmp == 1) cbovdcrange.SelectedIndex = 0;
            else cbovdcrange.SelectedIndex = 1;

            vdcrange = cbovdcrange.SelectedIndex;

            if ((mZim.ctrl_do.data & 0x1) == 0x1) LoadOn = true;
            else LoadOn = false;

            chkctrlon.Checked = LoadOn;
        }

        private void btnresetice_Click(object sender, EventArgs e)
        {
           
            this.Enabled = false;
             Cursor.Current = Cursors.WaitCursor;

            if (mCommZim.CmdResetFPGA(true) == false)
            {
                MessageBox.Show("DEFINE_COMMAND.RESET_FPGA_ICE 명령이 실패했어요.");
                this.Enabled = true;
                 Cursor.Current = Cursors.Default;
                return;
            }

            btnConnectrom.Enabled = true;
            btnCloserom.Enabled = false;

            btnresetice.Enabled = false;
            btnrunice.Enabled = true;
            btnErease.Enabled = false;
            btnProgram.Enabled = false;
            btnVerify.Enabled = false;

            this.Enabled = true;
            Cursor.Current = Cursors.Default;
        }

        private void btnConnectrom_Click(object sender, EventArgs e)
        {
            this.Enabled = false;
             Cursor.Current = Cursors.WaitCursor;

            if (mCommZim.CmdConnectPromOfZIM(0) == false)
            {
                MessageBox.Show("DEFINE_COMMAND.CONN_FPGA_PROM 명령이 실패했어요.");
                this.Enabled = true;
                 Cursor.Current = Cursors.Default;
                return;
            }
            btnConnectrom.Enabled = false;
            btnCloserom.Enabled = true;
            btnresetice.Enabled = false;
            btnrunice.Enabled = false;
            btnErease.Enabled = true;
            btnProgram.Enabled = true;
            btnVerify.Enabled = true;

            this.Enabled = true;
             Cursor.Current = Cursors.Default;
        }

        private void btnErease_Click(object sender, EventArgs e)
        {
            this.Enabled = false;
             Cursor.Current = Cursors.WaitCursor;

            if (mCommZim.CmdEreasePromOfZIM() == false)
            {
                MessageBox.Show("DEFINE_COMMAND.EREASE_FPGA_PROM 명령이 실패했어요.");
                this.Enabled = false;
                 Cursor.Current = Cursors.Default;
                return;
            }
            btnConnectrom.Enabled = false;
            btnCloserom.Enabled = true;
            btnresetice.Enabled = false;
            btnrunice.Enabled = true;
            btnErease.Enabled = false;
            btnProgram.Enabled = true;
            btnVerify.Enabled = false;

            this.Enabled = true;
             Cursor.Current = Cursors.Default;
        }

        private void btnProgram_Click(object sender, EventArgs e)
        {
            this.Enabled = false;
             Cursor.Current = Cursors.WaitCursor;

            string filename = tbFirmwareFile.Text;

            if (File.Exists(filename))
            {
                FileStream fs = new FileStream(tbFirmwareFile.Text, FileMode.Open, FileAccess.Read);
                BinaryReader br = new BinaryReader(fs);

                int size = (int)fs.Length;
                int count = size / 256;
                int address = 0;
                int len;

                int nsize;
                int nLen;
                byte[] buff = new byte[256];

                if ((size % 256) > 0) count++;
                progProgram.Maximum = count;
                progProgram.Value = 0;
                progProgram.Style = ProgressBarStyle.Continuous;

                nsize = size;
                while (nsize > 0)
                {
                    if (nsize >= 256) nLen = 256;
                    else nLen = nsize;

                    fs.Position = address;
                    len = fs.Read(buff, 0, nLen);

                    if (len != nLen)
                    {
                        MessageBox.Show("파일 읽을 때 문제가 발생했어요.");
                        break;
                    }
                    if (mCommZim.CmdProgramPromOfZIM(address, buff) == false)
                    {
                        MessageBox.Show("DEFINE_COMMAND.PROG_FPGA_PROM 명령이 실패했어요.");
                        break;
                    }
                    address += nLen;
                    progProgram.Value++;
                    nsize -= nLen;
                }

                br.Close();
                fs.Close();

                btnresetice.Enabled = false;
                btnrunice.Enabled = true;
                btnErease.Enabled = true;
                btnProgram.Enabled = false;
                btnVerify.Enabled = true;

                btnConnectrom.Enabled = false;
                btnCloserom.Enabled = true;
            }
            else
            {
                MessageBox.Show("파일이 없어요!");
            }

            this.Enabled = true;
             Cursor.Current = Cursors.Default;
        }

        private void btnVerify_Click(object sender, EventArgs e)
        {
            this.Enabled = false;
             Cursor.Current = Cursors.WaitCursor;

            string filename = tbFirmwareFile.Text;

            if (File.Exists(filename))
            {
                FileStream fs = new FileStream(tbFirmwareFile.Text, FileMode.Open, FileAccess.Read);
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
                progVerify.Maximum = count;
                progVerify.Value = 0;
                progVerify.Style = ProgressBarStyle.Continuous;

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
                        MessageBox.Show("파일 읽을 때 문제가 발생했어요.");
                        break;
                    }

                    // _SifComm.ClearReadBuffer();

                    rbuff = mCommZim.CmdReadPromOfZIM(address);
                    if (rbuff == null)
                    {
                        MessageBox.Show("Verify 확인에 실패했어요.");
                        br.Close();
                        fs.Close();

                        this.Enabled = true;
                        return;
                    }

                    for (i = 0; i < nLen; i++)
                    {
                        if (buff[i] != rbuff[i])
                        {
                            MessageBox.Show("Verify 확인에 실패했어요.");
                            br.Close();
                            fs.Close();

                            this.Enabled = true;
                            return;
                        }
                    }
                    address += nLen;
                    progVerify.Value++;
                    nsize -= nLen;
                }

                br.Close();
                fs.Close();

                btnresetice.Enabled = false;
                btnrunice.Enabled = true;
                btnErease.Enabled = true;
                btnProgram.Enabled = false;
                btnVerify.Enabled = true;

                btnConnectrom.Enabled = false;
                btnCloserom.Enabled = true;

            }
            else
            {
                MessageBox.Show("파일이 없어요!");
            }
            this.Enabled = true;
             Cursor.Current = Cursors.Default;
        }

        private void btnCloserom_Click(object sender, EventArgs e)
        {

            this.Enabled = false;
             Cursor.Current = Cursors.WaitCursor;

            if (mCommZim.CmdDisconnectPromOfZIM() == false)
            {
                MessageBox.Show("DEFINE_COMMAND.CLOSE_FPGA_PROM 명령이 실패했어요.");
                this.Enabled = true;
                 Cursor.Current = Cursors.Default;
                return;
            }

            btnConnectrom.Enabled = true;
            btnCloserom.Enabled = false;
            btnresetice.Enabled = false;
            btnrunice.Enabled = true;
            btnErease.Enabled = false;
            btnProgram.Enabled = false;
            btnVerify.Enabled = false;

            this.Enabled = true;
             Cursor.Current = Cursors.Default;
        }

        private void btnrunice_Click(object sender, EventArgs e)
        {
            this.Enabled = false;
             Cursor.Current = Cursors.WaitCursor;

            if (mCommZim.CmdResetFPGA(false) == false)
            {
                MessageBox.Show("DEFINE_COMMAND.RESET_CLR_FPGA_ICE 명령이 실패했어요.");
                this.Enabled = true;
                 Cursor.Current = Cursors.Default;
                return;
            }

            btnConnectrom.Enabled = false;
            btnCloserom.Enabled = false;
            btnresetice.Enabled = true;
            btnrunice.Enabled = false;
            btnErease.Enabled = false;
            btnProgram.Enabled = false;
            btnVerify.Enabled = false;

            this.Enabled = true;
             Cursor.Current = Cursors.Default;
        }

        private void btnOpen_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            dlg.DefaultExt = "bin";
            dlg.Filter = "bin files (*.bin)|*.bin|All files (*.*)|*.*";
            dlg.FileName = tbFirmwareFile.Text;
            dlg.InitialDirectory = Path.GetDirectoryName(tbFirmwareFile.Text);

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                tbFirmwareFile.Text = dlg.FileName;

                Properties.Settings.Default.PathZIMFW = Path.GetDirectoryName(tbFirmwareFile.Text);
                Properties.Settings.Default.FileNameZIMFW = Path.GetFileName(tbFirmwareFile.Text);
                Properties.Settings.Default.Save();
            }
        }
        
        private void btnSetDDS_SIG_Click(object sender, EventArgs e)
        {
            double dtmp;

            if (DDS_SIG_Reset.Checked == true) mZim.dds_sig.reset = 1;
            else mZim.dds_sig.reset = 0;

            if (chkpwdn.Checked == true && chkpwdn1.Checked == true) mZim.dds_sig.pwdn = 3;
            else if (chkpwdn.Checked == true) mZim.dds_sig.pwdn = 1;
            else if (chkpwdn1.Checked == true) mZim.dds_sig.pwdn = 2;
            else mZim.dds_sig.pwdn = 0;
            if(chkhalf.Checked == true) mZim.dds_sig.Half = 1;
            else mZim.dds_sig.Half = 0;
            if (Double.TryParse(DDS_SIG_Freq.Text, out dtmp) == false)
            {
                MessageBox.Show("DDS Signal의 frequency 값에 문제가 발생하였습니다.");
                return;
            }
            mZim.dds_sig.frequency = dtmp;

            if (Double.TryParse(DDS_SIG_Phase.Text, out dtmp) == false)
            {
                MessageBox.Show("DDS Signal의 phase value 값에 문제가 발생하였습니다.");
                return;
            }
            mZim.dds_sig.Phase = dtmp;

            if (mCommZim.WriteConfigSignalDDS(mZim.dds_sig) == false)
            {
                MessageBox.Show("DDS Signal 설정값 전송에 실패하였습니다.");
                return;
            }
            MessageBox.Show("DDS Signal 설정값을 전송하였습니다.");
        }

        private void btnSetDDS_CLK_Click(object sender, EventArgs e)
        {
            double dtmp;

            if (DDS_CLK_Reset.Checked == true) mZim.dds_clk.reset = 1;
            else mZim.dds_clk.reset = 0;

            if (Double.TryParse(DDS_CLK_Freq.Text, out dtmp) == false)
            {
                MessageBox.Show("DDS Clock의 frequency 값에 문제가 발생하였습니다.");
                return;
            }
            mZim.dds_clk.frequency = dtmp;

            if (Double.TryParse(DDS_CLK_Phase.Text, out dtmp) == false)
            {
                MessageBox.Show("DDS Clock의 phase value 값에 문제가 발생하였습니다.");
                return;
            }
            mZim.dds_clk.Phase = dtmp;
            if (mCommZim.WriteConfigClockDDS(mZim.dds_clk) == false) 
            {
                MessageBox.Show("DDS Clock 설정값 전송에 실패하였습니다.");
                return;
            }
            MessageBox.Show("DDS Clock 설정값을 전송하였습니다.");
        }
    
        private void rtdapply_Click(object sender, EventArgs e)
        {
            double dtmp;

            if (Double.TryParse(rtdmax.Text, out dtmp) == false)
            {
                MessageBox.Show("RTD 설정의 maximum value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.rtd_rng.maximum = dtmp;

            if (Double.TryParse(rtdmin.Text, out dtmp) == false)
            {
                MessageBox.Show("RTD 설정의 minimum value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.rtd_rng.minimum = dtmp;

            if (Double.TryParse(rtdfactor.Text, out dtmp) == false)
            {
                MessageBox.Show("RTD 설정의 factor value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.rtd_rng.factor = dtmp;

            if (Double.TryParse(rtdgain.Text, out dtmp) == false)
            {
                MessageBox.Show("RTD 설정의 gain value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.rtd_rng.gain = dtmp;

            if (Double.TryParse(rtdoffset.Text, out dtmp) == false)
            {
                MessageBox.Show("RTD 설정의 offset value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.rtd_rng.offset = dtmp;
            
            if (mCommZim.WriteData(mRanges) == false)
            {
                MessageBox.Show("RTD Range 정보 전송에 실패하였습니다.");
                return;
            }
            MessageBox.Show("RTD Range 정보를 전송하였습니다.");
        }

        private void rtdset_Click(object sender, EventArgs e)
        {
            mZim.adc_rtd.config.data = 0xc0;
            if (cbortdwire.SelectedIndex == 1) mZim.adc_rtd.config.data |= 0x10;
            if (cbortdnoise.SelectedIndex == 1) mZim.adc_rtd.config.data |= 0x1;

            if (cbofaultcycle.SelectedIndex == 1) mZim.adc_rtd.config.data |= 0x4;
            else if (cbofaultcycle.SelectedIndex == 2) mZim.adc_rtd.config.data |= 0x8;
            else if (cbofaultcycle.SelectedIndex == 3) mZim.adc_rtd.config.data |= 0xC;

            if (mCommZim.WriteData(mZim.adc_rtd.config) == false)
            {
                MessageBox.Show("RTD 설정값 전송에 실패하였습니다.");
                return;
            }
            MessageBox.Show("RTD 설정값을 전송하였습니다.");
        }

        private void rtdread_Click(object sender, EventArgs e)
        {
            byte[] buf;

            buf = mCommZim.CmdReadRtdOfZIM();
            if(buf == null)
            {
                MessageBox.Show("RTD 측정값 받기가 실패하였습니다.");
                return;
            }
            mZim.adc_rtd.data.ToWritePtr(buf);

            if (mZim.adc_rtd.data.fault > 0) chkrtdFault.Checked = true;
            else chkrtdFault.Checked = false;

            rtdadcval.Text = string.Format("0x{0:X}", mZim.adc_rtd.data.adcval);
            rtdresval.Text = string.Format("{0}", mZim.adc_rtd.data.Rvalue);
            rtdtempval.Text = string.Format("{0}", mZim.adc_rtd.data.Tvalue);
        }

        private void btsetControl_Click(object sender, EventArgs e)
        {
            irange = cboirange.SelectedIndex;
            mZim.ctrl_do.data = (ushort)((irange << 1) & 0xE);

            vdcrange = cbovdcrange.SelectedIndex;
            if (vdcrange == 0) mZim.ctrl_do.data |= DeviceConstants.DEVDO_VDC_RNG0;

            LoadOn = chkctrlon.Checked;
            if (LoadOn == true) mZim.ctrl_do.data |= DeviceConstants.DEVDO_CONT_SD;
            
            if (mCommZim.WriteData(mZim.ctrl_do) == false)
            {
                MessageBox.Show("Control 설정값 전송에 실패하였습니다.");
                return;
            }
            
            view_acadc_grp();
            view_vdc_grp();

            MessageBox.Show("Control 설정값을 전송하였습니다.");

        }

        private void btiacapply_Click(object sender, EventArgs e)
        {
            double dtmp;
            int rng = (irange >> 1) & 0x3;
            if (Double.TryParse(iacmax.Text, out dtmp) == false)
            {
                MessageBox.Show("IAC 설정의 maximum value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.iac_rng[rng].maximum = dtmp;

            if (Double.TryParse(iacmin.Text, out dtmp) == false)
            {
                MessageBox.Show("IAC 설정의 minimum value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.iac_rng[rng].minimum = dtmp;

            if (Double.TryParse(iacfactor.Text, out dtmp) == false)
            {
                MessageBox.Show("IAC 설정의 factor value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.iac_rng[rng].factor = dtmp;

            if (Double.TryParse(iacgain.Text, out dtmp) == false)
            {
                MessageBox.Show("IAC 설정의 gain value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.iac_rng[rng].gain = dtmp;

            if (Double.TryParse(iacoffset.Text, out dtmp) == false)
            {
                MessageBox.Show("IAC 설정의 offset value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.iac_rng[rng].offset = dtmp;

            if (mCommZim.WriteData(mRanges) == false)
            {
                MessageBox.Show("IAC Range 정보 전송에 실패하였습니다.");
                return;
            }
            MessageBox.Show("IAC Range 정보를 전송하였습니다.");
        }

        private void btvacapply_Click(object sender, EventArgs e)
        {
            double dtmp;

            if (Double.TryParse(vacmax.Text, out dtmp) == false)
            {
                MessageBox.Show("VAC 설정의 maximum value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.vac_rng.maximum = dtmp;

            if (Double.TryParse(vacmin.Text, out dtmp) == false)
            {
                MessageBox.Show("VAC 설정의 minimum value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.vac_rng.minimum = dtmp;

            if (Double.TryParse(vacfactor.Text, out dtmp) == false)
            {
                MessageBox.Show("VAC 설정의 factor value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.vac_rng.factor = dtmp;

            if (Double.TryParse(vacgain.Text, out dtmp) == false)
            {
                MessageBox.Show("VAC 설정의 gain value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.vac_rng.gain = dtmp;

            if (Double.TryParse(vacoffset.Text, out dtmp) == false)
            {
                MessageBox.Show("VAC 설정의 offset value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.vac_rng.offset = dtmp;

            if (mCommZim.WriteData(mRanges) == false)
            {
                MessageBox.Show("VAC Range 정보 전송에 실패하였습니다.");
                return;
            }
            MessageBox.Show("VAC Range 정보를 전송하였습니다.");
        }

        private void btvacsetting_Click(object sender, EventArgs e)
        {
            mZim.adc_ac.cfg.iac_osr = (ushort)cboiacosr.SelectedIndex;
            mZim.adc_ac.cfg.iac_flt = (ushort)cboiacflt.SelectedIndex;
            mZim.adc_ac.cfg.vac_osr = (ushort)cbovacosr.SelectedIndex;
            mZim.adc_ac.cfg.vac_flt = (ushort)cbovacflt.SelectedIndex;
            
            if (mCommZim.WriteData(mZim.adc_ac.cfg)== false)
            {
                MessageBox.Show("VAC Range 정보 전송에 실패하였습니다.");
                return;
            }
            MessageBox.Show("VAC Range 정보를 전송하였습니다.");
        }

        private void btvacrefresh_Click(object sender, EventArgs e)
        {
            if (mCommZim.ReadData(ref mZim.adc_ac.data) == false)
            {
                MessageBox.Show("VAC 측정값 받기가 실패하였습니다.");
                return;
            }

            iacadc.Text = string.Format("0x{0:X}", mZim.adc_ac.data.iac.adcval);
            iacval.Text = string.Format("{0}", mZim.adc_ac.data.iac.value);
            vacadc.Text = string.Format("0x{0:X}", mZim.adc_ac.data.vac.adcval);
            vacval.Text = string.Format("{0}", mZim.adc_ac.data.vac.value);
        }

        private void btvdcapply_Click(object sender, EventArgs e)
        {
            double dtmp;

            if (Double.TryParse(vdcmax.Text, out dtmp) == false)
            {
                MessageBox.Show("VDC 설정의 maximum value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.vdc_rng[vdcrange].maximum = dtmp;

            if (Double.TryParse(vdcmin.Text, out dtmp) == false)
            {
                MessageBox.Show("VDC 설정의 minimum value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.vdc_rng[vdcrange].minimum = dtmp;

            if (Double.TryParse(vdcfactor.Text, out dtmp) == false)
            {
                MessageBox.Show("VDC 설정의 factor value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.vdc_rng[vdcrange].factor = dtmp;

            if (Double.TryParse(vdcgain.Text, out dtmp) == false)
            {
                MessageBox.Show("VDC 설정의 gain value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.vdc_rng[vdcrange].gain = dtmp;

            if (Double.TryParse(vdcoffset.Text, out dtmp) == false)
            {
                MessageBox.Show("VDC 설정의 offset value 값에 문제가 발생하였습니다.");
                return;
            }
            mRanges.vdc_rng[vdcrange].offset = dtmp;

            if (mCommZim.WriteData(mRanges) == false)
            {
                MessageBox.Show("VDC Range 정보 전송에 실패하였습니다.");
                return;
            }
            MessageBox.Show("VDC Range 정보를 전송하였습니다.");
        }

        private void btvdcrefresh_Click(object sender, EventArgs e)
        {

            if (mCommZim.ReadData(ref mZim.adc_vdc) == false)
            {
                MessageBox.Show("VAC 측정값 받기가 실패하였습니다.");
                return;
            }

            vdcadc.Text = string.Format("0x{0:X}", mZim.adc_vdc.adcval);
            vdcval.Text = string.Format("{0}", mZim.adc_vdc.value);
        }

        private void btTestApply_Click(object sender, EventArgs e)
        {
            st_TestCmd mTestCmd = new st_TestCmd((ushort)cboTestMode.SelectedIndex);
            
            if (mCommZim.WriteData(mTestCmd) == false)
            {
                MessageBox.Show("전송에 실패하였습니다.");
                return;
            }
            MessageBox.Show("전송하였습니다.");
        }

        private void chkctrlon_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (mCommZim.ReadData(ref mZim.adc_vdc) == false)
            {
                return;
            }

            vdcadc.Text = string.Format("0x{0:X}", mZim.adc_vdc.adcval);
            vdcval.Text = string.Format("{0}", mZim.adc_vdc.value);
        }
    }
}
