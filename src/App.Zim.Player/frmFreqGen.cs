using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Packets;

namespace App.Zim.Player
{
    public partial class frmFreqGen : Form
    {
        public CommObj mCommZim;

        st_zim_device mZim;
        st_zim_rnginf mRanges;
        int irange;
        bool LoadOn;

        public frmFreqGen()
        {
            InitializeComponent();
            this.Icon = Properties.Resources.bm;
            DoubleBuffered = true;
        }

        private void frmFreqGen_Load(object sender, EventArgs e)
        {
            if (mCommZim == null) throw new NullReferenceException("mCommZim");

            mZim = new st_zim_device(0);
            mRanges = new st_zim_rnginf(0);

          
            mCommZim.ReadData(ref mRanges);
        }

        private void ChkFreq_CheckedChanged(object sender, EventArgs e)
        {
             if(chkFreq.Checked == true)
            {
                mZim.dds_sig.reset = 0;
                mZim.dds_sig.pwdn = 0;
                mZim.dds_sig.Half = 1;
            }
            else
            {
                mZim.dds_sig.reset = 1;
                mZim.dds_sig.pwdn = 2;
            }
            double dtmp;

            if (Double.TryParse(DDS_SIG_Freq.Text, out dtmp) == false)
            {
                MessageBox.Show("DDS Signal의 frequency 값에 문제가 발생하였습니다.");
                return;
            }

            if (chkFreq.Checked == false) return;


             mZim.dds_sig.frequency = dtmp;
            mZim.dds_sig.Phase = 0;

            if (mCommZim.WriteConfigSignalDDS(mZim.dds_sig) == false)
            {
                MessageBox.Show("DDS Signal 설정값 전송에 실패하였습니다.");
                return;
            }
            MessageBox.Show("DDS Signal 설정값을 전송하였습니다.");

            
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            irange = cboirange.SelectedIndex;

            mZim.ctrl_do.data = (ushort)((irange << 1) & 0xE);
            LoadOn = checkBox2.Checked;
            mZim.ctrl_do.data |= DeviceConstants.DEVDO_VDC_RNG0;

            if (LoadOn == true) mZim.ctrl_do.data |= DeviceConstants.DEVDO_CONT_SD;

            if (mCommZim.WriteData(mZim.ctrl_do) == false)
            {
                MessageBox.Show("Control 설정값 전송에 실패하였습니다.");
                return;
            }

            MessageBox.Show("Control 설정값을 전송하였습니다.");
        }

        private void cboirange_SelectedIndexChanged(object sender, EventArgs e)
        {
            irange = cboirange.SelectedIndex;
            mZim.ctrl_do.data = (ushort)((irange << 1) & 0xE);
            LoadOn = checkBox2.Checked;
            mZim.ctrl_do.data |= DeviceConstants.DEVDO_VDC_RNG0;
            if (LoadOn == true) mZim.ctrl_do.data |= DeviceConstants.DEVDO_CONT_SD;

            if (mCommZim.WriteData(mZim.ctrl_do) == false)
            {
                MessageBox.Show("Control 설정값 전송에 실패하였습니다.");
                return;
            }

            MessageBox.Show("Control 설정값을 전송하였습니다.");
        }
    }
}
