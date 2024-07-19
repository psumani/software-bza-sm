using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM
{
    public partial class frmTestDevice : Form
    {
        public CommObj mCommZim;
        private string sSerial;
        private int sifch;
        st_zim_device mdevice;
        st_zim_rnginf mRanges;
        int irange;
        int vdcrange;
        bool LoadOn;
        bool bconnect;
        public frmTestDevice(string tserial, int tsifch, bool tconn = false)
        {
            InitializeComponent();
            DoubleBuffered = true;

            mdevice = new st_zim_device(0);
            mRanges = new st_zim_rnginf(0);



            sSerial = tserial;
            sifch = tsifch;
            bconnect = tconn;

            this.Text = string.Format("Check the operation of the channel[{0}-{1}].", sSerial, sifch + 1);

            mRanges.ToWritePtr(gBZA.SifLnkLst[sSerial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges[0].ToByteArray());

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
                if (MBZA_MapUtil.SetCmdMode(sSerial, sifch, 1) == false)
                {
                    MessageBox.Show("The command failed[SetCmdMode].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
   /*             if (MBZA_MapUtil.SetChannel(sSerial, sifch) == false)
                {
                    MessageBox.Show("The command failed[SetChannel].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }*/
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
            /*
            if (mCommZim.CmdSetCmdMode(0) == false)
            {
                mCommZim.Dispose();
                MessageBox.Show("The command failed[DEFINE_COMMAND.CMD_SET_MODE].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            if (mCommZim.CmdSetChannel(sifch) == false)
            {
                mCommZim.Dispose();
                MessageBox.Show("The command failed[DEFINE_COMMAND.CMD_SET_CHANNEL].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }*/
            return true;
        }

        private void frmTestDevice_Load(object sender, EventArgs e)
        {
            InitializeControl();
            Refresh_control_grp();
            view_control_grp();
            view_dds_sig_grp();
        }

        private void InitializeControl()
        {
            DDS_SIG_Reset.Checked = true;
            rdozero.Checked = true;
            DDS_SIG_Freq.Text = "100";
            DDS_SIG_Phase.Text = "4.71";

            cboirange.SelectedIndex = 0;
            cbovdcrange.SelectedIndex = 0;
            chkctrlon.Checked = false;
            SetControl();
            SetDDSsig();
        }

        

        private void view_control_grp()
        {
            int tmp;

            irange = (gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch].ctrl_do.data >> 1) & 0x7;

            cboirange.SelectedIndex = irange;

            tmp = (gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch].ctrl_do.data >> 4) & 0x1;

            if (tmp == 1) cbovdcrange.SelectedIndex = 0;
            else cbovdcrange.SelectedIndex = 1;

            vdcrange = cbovdcrange.SelectedIndex;

            if ((gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch].ctrl_do.data & 0x1) == 0x1) LoadOn = true;
            else LoadOn = false;

            chkctrlon.Checked = LoadOn;
        }

        private void Refresh_control_grp()
        {
            if (bconnect == false)
            {
                if (mCommZim.ReadData(sifch, ref mdevice.ctrl_do) == false)
                {
                    MessageBox.Show("failed vdc data.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                if (mCommZim.ReadData(sifch, ref mdevice.adc_vdc) == false)
                {
                    MessageBox.Show("failed vdc data.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (mCommZim.ReadData(sifch, ref mdevice.adc_ac.data) == false)
                {
                    MessageBox.Show("failed ac data.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (mCommZim.ReadData(sifch, ref mdevice.adc_rtd.data) == false)
                {
                    MessageBox.Show("failed rtd data.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
            else
            {
                if (MBZA_MapUtil.GetDoOfZIM(sSerial, sifch) == false)
                {
                    MessageBox.Show("failed.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                if (MBZA_MapUtil.GetAdcVdcOfZIM(sSerial, sifch) == false)
                {
                    MessageBox.Show("failed.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (MBZA_MapUtil.GetAdcAcOfZIM(sSerial, sifch) == false)
                {
                    MessageBox.Show("failed.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (MBZA_MapUtil.GetAdcRtdOfZIM(sSerial, sifch) == false)
                {
                    MessageBox.Show("failed.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                mdevice = gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch];
            }

            vdcval.Text = string.Format("{0}", mdevice.adc_vdc.value);
            vacval.Text = string.Format("{0}", mdevice.adc_ac.data.vac.value);
            iacval.Text = string.Format("{0}", mdevice.adc_ac.data.iac.value);
            rtdtempval.Text = string.Format("{0}", mdevice.adc_rtd.data.Tvalue);
            if (mdevice.adc_rtd.data.fault == 0) lblerrtemp.BackColor = SystemColors.Control;
            else lblerrtemp.BackColor = Color.Red;

            
        }

        private void SetControl()
        {

            irange = cboirange.SelectedIndex;
            mdevice.ctrl_do.data = (ushort)((irange << 1) & 0xE);
            vdcrange = cbovdcrange.SelectedIndex;
            if (vdcrange == 0) mdevice.ctrl_do.data |= DeviceConstants.DEVDO_VDC_RNG0;
            LoadOn = chkctrlon.Checked;
            if (LoadOn == true) mdevice.ctrl_do.data |= DeviceConstants.DEVDO_CONT_SD;

            if (bconnect == false)
            {
                if (mCommZim.WriteData(sifch, mdevice.ctrl_do) == false)
                {
                    MessageBox.Show("failed set control.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
            else
            {
                gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch] = mdevice;

                if (MBZA_MapUtil.SetDoOfZIM(sSerial, sifch) == false)
                {
                    MessageBox.Show("failed set control.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
        }

        private void InitControl()
        {
            irange = cboirange.SelectedIndex;
            mdevice.ctrl_do.data = (ushort)((irange << 1) & 0xE);
            mdevice.ctrl_do.data |= DeviceConstants.DEVDO_VDC_RNG0;
            mdevice.dds_sig.reset = 1;
            mdevice.dds_sig.pwdn = 3;
            if (bconnect == false)
            {
                if (mCommZim.WriteData(sifch, mdevice.ctrl_do) == true)
                {
                    mCommZim.WriteConfigSignalDDS(sifch, mdevice.dds_sig);
                }
            }
            else
            {
                gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch] = mdevice;

                if (MBZA_MapUtil.SetDoOfZIM(sSerial, sifch) == true)
                {
                    MBZA_MapUtil.SetDDSsigOfZIM(sSerial, sifch);
                }
            }
        }

        private void btsetControl_Click(object sender, EventArgs e)
        {
            SetControl();
        }

        private void SetDDSsig()
        {
            double dtmp;

            mdevice.dds_sig.reset = 0;
            mdevice.dds_sig.Half = 0;
            mdevice.dds_sig.pwdn = 0;

            if (DDS_SIG_Reset.Checked == true)
            {
                mdevice.dds_sig.reset = 1;
                rdohalf.Checked = true;
            }
            else
            {
                mdevice.dds_sig.reset = 0;
            }
            if (rdozero.Checked == true)
            {
                mdevice.dds_sig.pwdn = 3;
            }
            else
            {
                if (rdosine.Checked == true)
                {
                    mdevice.dds_sig.Half = 0;
                    mdevice.dds_sig.pwdn = 0;
                }
                else
                {
                    mdevice.dds_sig.pwdn = 1;
                    if (rdohalf.Checked == true)
                    {
                        mdevice.dds_sig.Half = 1;
                    }
                    else
                    {
                        mdevice.dds_sig.Half = 2;
                    }
                }
            }

            if (mdevice.dds_sig.Half == 0 && mdevice.dds_sig.pwdn == 0)
            {

                if (Double.TryParse(DDS_SIG_Freq.Text, out dtmp) == false)
                {
                    MessageBox.Show("Error value of frequency.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                mdevice.dds_sig.frequency = dtmp;

                if (Double.TryParse(DDS_SIG_Phase.Text, out dtmp) == false)
                {
                    MessageBox.Show("Error value of phase.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                mdevice.dds_sig.Phase = dtmp;
            }

            if (bconnect == false)
            {
                if (mCommZim.WriteConfigSignalDDS(sifch, mdevice.dds_sig) == false)
                {
                    MessageBox.Show("failed set dds.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
            else
            {
                gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch] = mdevice;

                if (MBZA_MapUtil.SetDDSsigOfZIM(sSerial, sifch) == false)
                {
                    MessageBox.Show("failed set dds.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
        }

        private void btnSetDDS_SIG_Click(object sender, EventArgs e)
        {
            SetDDSsig();
        }

        private void btrefresh_Click(object sender, EventArgs e)
        {
            Refresh_control_grp();
        }

        private void view_dds_sig_grp()
        {
            DDS_SIG_Freq.Text = string.Format("{0}", mdevice.dds_sig.frequency);
            DDS_SIG_Phase.Text = string.Format("{0}", mdevice.dds_sig.Phase);

            if (mdevice.dds_sig.reset == 0)
            {
                DDS_SIG_Reset.Checked = false;
                
            }
            else
            {
                DDS_SIG_Reset.Checked = true;
                rdozero.Checked = true;
            }
            if (mdevice.dds_sig.pwdn == 3)
            {
                rdozero.Checked = true;
            }
            else
            {
                if(mdevice.dds_sig.Half == 0)
                {
                    rdosine.Checked = true;
                }
                else if (mdevice.dds_sig.Half == 1)
                {
                    rdohalf.Checked = true;
                }
                else
                {
                    rdofull.Checked = true;
                }
            }
        }

        private void btRefreshall_Click(object sender, EventArgs e)
        {
            Refresh_control_grp();
            view_control_grp();
        }

        private void frmTestDevice_FormClosed(object sender, FormClosedEventArgs e)
        {
            InitControl();
            
            if (bconnect == false)
            {
                if (mCommZim.CmdSetCmdMode(sifch,0) == true)
                {
                    mCommZim.CmdEnableCommTimeOut(0);
                }
                mCommZim.Dispose();
            }
            else
            {

                if (MBZA_MapUtil.SetCmdMode(sSerial, sifch, 0) == false)
                {
                    MBZA_MapUtil.EnableCommTimeOut(sSerial, 0);
                }
            }
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }
    }
}
