using SMLib;
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
    public partial class frmCalibCtrlIdc : Form
    {
        private string sSerial;
        private int sifch;
        private int ch;
        private int irng;
        private int iacrng;
        private double [] dresult;
        private bool bSkipEvent;
        private string sTitle;
        private string sitem;
        private string sFilename;
        private stZimCfg mZim;
        private st_zim_rnginf mRange;
        st_zim_device mdevice;
        public frmCalibCtrlIdc(int tch, string tserial, int tsifch, int trng)
        {
            InitializeComponent();
            string str;
            double tdouble = 0.0;
            mdevice = new st_zim_device(0);

            this.Cursor = Cursors.WaitCursor;

            bSkipEvent = true;
            ch = tch;
            sSerial = tserial;
            sifch = tsifch;
            iacrng = trng;
            dresult = new double[DeviceConstants.MAX_IAC_CTRL_RNGCNT];
            if (gBZA.SifLnkLst.ContainsKey(sSerial))
            {
                mZim = gBZA.SifLnkLst[sSerial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
                mRange = gBZA.SifLnkLst[sSerial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges;
            }
            else
            {
                mZim = gBZA.ChLnkLst[ch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];
                mRange = gBZA.ChLnkLst[ch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch].ranges;
            }
            sFilename = gBZA.GetCalibLogFileName(sSerial, mZim.GetSerialNumber());

            irng = 0;
            iacrng = 0;
            if (trng >= 0)
            {
                iacrng = trng/2;
                irng = trng;
                cboirange.Enabled = false;
            }
            sTitle = "IDC";

            cboirange.Items.Clear();
            for(int i=0; i< DeviceConstants.MAX_IAC_CTRL_RNGCNT; i++)
            {
                tdouble = mRange.iac_rng[i/2].realmax * 0.5;
                if (i % 2 > 0) tdouble *= mRange.iac_rng[i / 2].controlgain;
                str = SM_Number.ToRangeString(tdouble, "A");
                cboirange.Items.Add(str);
                sitem = string.Format("Range{0}", i);
                dresult[i] = gBZA.GetIniDoubleData(sTitle, sitem, sFilename, 0.0);

            }
            cboirange.SelectedIndex = irng;
            
            txtresult.Text = dresult[irng].ToString();

            if (mRange.Idc_rnginf.idcofs[irng].offset < 0.0 || mRange.Idc_rnginf.idcofs[irng].offset > 10.0)
            {
                mRange.Idc_rnginf.idcofs[irng].offset = DeviceConstants.DEV_DEFAULT_IDC_OFFSET;
            }

            textApp.Text = string.Format("{0:#0.0###}", mRange.Idc_rnginf.idcofs[irng].offset);
            numericUpDown1.Value = Convert.ToDecimal(mRange.Idc_rnginf.idcofs[irng].offset);
            numericUpDown1.Increment = Convert.ToDecimal(0.001);
            cboIncPhase.SelectedIndex = 1;
            chkctrlon.Checked = false;

            tdouble = mRange.iac_rng[iacrng].realmax * 0.5;
            if (irng % 2 > 0) tdouble *= mRange.iac_rng[iacrng].controlgain;
            this.Text = string.Format("Idc calibration[{0}] - CH{1}[{2}-{3}].", tdouble, ch + 1, sSerial, sifch + 1);
            /*
            if (MBZA_MapUtil.EnableCommTimeOut(sSerial, 0) == false)
            {
                MessageBox.Show("The command failed[EnableCommTimeOut].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            */
            if (MBZA_MapUtil.SetCmdMode(sSerial, sifch,2) == false)
            {
                MessageBox.Show("The command failed[SetCmdMode].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            SetDoAll(false);


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
             
            mdevice.dds_sig.frequency = 0.000001;
            mdevice.dds_sig.Phase = mRange.Idc_rnginf.idcofs[iacrng].offset;
            mdevice.dds_sig.reset = 0;
            mdevice.dds_sig.pwdn = 0;
            mdevice.dds_sig.Half = 0;

            gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch] = mdevice;

            if (MBZA_MapUtil.SetDDSsigOfZIM(sSerial, sifch) == false)
            {
                MessageBox.Show("failed set dds.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            this.Cursor = Cursors.Default;
            bSkipEvent = false;
        }

        private void frmCalibCtrlIdc_Load(object sender, EventArgs e)
        {
            
        }

        private void SetDoAll(bool bcell)
        {
            mdevice.ctrl_do.data &= 0xFFF0;
            mdevice.ctrl_do.data |= (ushort)((irng << 1) & 0xE);

            if (bcell == true) mdevice.ctrl_do.data |= DeviceConstants.DEVDO_CONT_SD;
            gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch] = mdevice;

            if (MBZA_MapUtil.SetDoOfZIM(sSerial, sifch) == false)
            {
                MessageBox.Show("failed set control.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
        }

        private void SetIRange()
        {
            mdevice.ctrl_do.data &= 0xFFF1;
            mdevice.ctrl_do.data |= (ushort)((irng << 1) & 0xE);
          
            gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch] = mdevice;

            if (MBZA_MapUtil.SetDoOfZIM(sSerial, sifch) == false)
            {
                MessageBox.Show("failed set control.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
        }


        private void SetCellon()
        {
            iacrng = cboirange.SelectedIndex;
            mdevice.ctrl_do.data &= 0xFFF0;
            mdevice.ctrl_do.data |= (ushort)((irng << 1) & 0xE);

            if (chkctrlon.Checked == true) mdevice.ctrl_do.data |= DeviceConstants.DEVDO_CONT_SD;
 
            gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch] = mdevice;

            if (MBZA_MapUtil.SetDoOfZIM(sSerial, sifch) == false)
            {
                MessageBox.Show("failed set control.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
        }

        private void cboirange_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bSkipEvent) return;

            double tdouble = 0.0;

            irng = cboirange.SelectedIndex;
            iacrng = irng / 2;

            SetIRange();
            if(mRange.Idc_rnginf.idcofs[irng].offset <0.0 || mRange.Idc_rnginf.idcofs[irng].offset > 10.0)
            {
                mRange.Idc_rnginf.idcofs[irng].offset = DeviceConstants.DEV_DEFAULT_IDC_OFFSET;
            }
            numericUpDown1.Value = Convert.ToDecimal(mRange.Idc_rnginf.idcofs[irng].offset);

            tdouble = mRange.iac_rng[iacrng].realmax * 0.5;
            if (irng % 2 > 0) tdouble *= mRange.iac_rng[iacrng].controlgain;
            this.Text = string.Format("Idc calibration[{0}] - CH{1}[{2}-{3}].", tdouble, ch + 1, sSerial, sifch + 1);
            textApp.Text = string.Format("{0:#0.0###}", mRange.Idc_rnginf.idcofs[irng].offset);
            txtresult.Text = dresult[irng].ToString();
        }

        private void cboIncPhase_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(cboIncPhase.SelectedIndex == 0)  numericUpDown1.Increment = Convert.ToDecimal(0.0001);
            else if (cboIncPhase.SelectedIndex == 1) numericUpDown1.Increment = Convert.ToDecimal(0.001);
            else if (cboIncPhase.SelectedIndex == 2) numericUpDown1.Increment = Convert.ToDecimal(0.01);
            else numericUpDown1.Increment = Convert.ToDecimal(0.1);
        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {
            if (bSkipEvent) return;

            mdevice.dds_sig.Phase = Decimal.ToDouble(numericUpDown1.Value);

            gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch] = mdevice;

            if (MBZA_MapUtil.SetDDSsigOfZIM(sSerial, sifch) == false)
            {
                MessageBox.Show("failed set dds.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
        }

        private void chkctrlon_CheckedChanged(object sender, EventArgs e)
        {
            SetCellon();
        }

        private void btApply_Click(object sender, EventArgs e)
        {
            mRange.Idc_rnginf.idcofs[irng].offset = Decimal.ToDouble(numericUpDown1.Value);
            textApp.Text = string.Format("{0:#0.0###}", mRange.Idc_rnginf.idcofs[irng].offset);
            dresult[irng] = Convert.ToDouble(txtresult.Text);  
        }
        

        private void btSave_Click(object sender, EventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;

            if (gBZA.SifLnkLst.ContainsKey(sSerial)) gBZA.SifLnkLst[sSerial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges.ToWritePtr(mRange.ToByteArray());
            else gBZA.ChLnkLst[ch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch].ranges.ToWritePtr(mRange.ToByteArray());

            bool res = MBZA_MapUtil.Save_Range_info(sSerial, sifch);

            sitem = string.Format("Range{0}", irng);
            gBZA.WriteIniDoubleData(sTitle, sitem, sFilename, dresult[irng]);
            if (res == false)
            {
                MessageBox.Show("Failed to apply range information by sending it to the device.");
            }
            this.Cursor = Cursors.Default;
        }

        private void btCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void frmCalibCtrlIdc_FormClosed(object sender, FormClosedEventArgs e)
        {
            bSkipEvent = true;
            mdevice.ctrl_do.data &= 0xFFFE;
            gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch] = mdevice;

            if (MBZA_MapUtil.SetDoOfZIM(sSerial, sifch) == false)
            {
                MessageBox.Show("failed set control.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            mdevice.ctrl_do.data &= 0xFFF0;
            gBZA.SifLnkLst[sSerial].MBZAIF.mdevice[sifch] = mdevice;

            if (MBZA_MapUtil.SetDoOfZIM(sSerial, sifch) == false)
            {
                MessageBox.Show("failed set control.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (MBZA_MapUtil.SetCmdMode(sSerial, sifch, 0) == false)
            {
                MessageBox.Show("The command failed[SetCmdMode].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            /*
            if (MBZA_MapUtil.EnableCommTimeOut(sSerial, 1) == false)
            {
                MessageBox.Show("The command failed[EnableCommTimeOut].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            */
        }
    }
}
