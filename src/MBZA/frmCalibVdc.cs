using SMLib;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM
{
    public partial class frmCalibVdc : Form
    {
        private string Serial;
        private string sTitle;
        private int ch;
        private int sifch;
        private int rng;
        private stZimCfg mZim;

        public frmCalibVdc(int tch, string tserial, int tsifch, int trng)
        {
            InitializeComponent();
            DoubleBuffered = true;

            ch = tch;
            Serial = tserial;
            sifch = tsifch;
            rng = trng;
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];

            if (MBZA_MapUtil.SetAutoVdc(Serial, sifch, false) == false)
            {
                MessageBox.Show("The command failed[SetAutoVdc].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }


            if (trng == 0)
            {
                this.Text = string.Format("Calibration DC Voltage[x1.0:{0}] - CH{0}[{1}-{2}].", SM_Number.ToRangeString(p.ranges.vdc_rng[rng].realmax, "V"), ch + 1, Serial, sifch + 1);
                sTitle = "VDC_X1";
            }
            else
            {
                this.Text = string.Format("Calibration DC Voltage[x0.1:{0}] - CH{0}[{1}-{2}].", SM_Number.ToRangeString(p.ranges.vdc_rng[rng].realmax, "V"), ch + 1, Serial, sifch + 1);
                sTitle = "VDC_X10";
            }
            

            mZim = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];

            for (int i = 0; i < 3; i++)
            {
                SetVdcRng(rng);
                Thread.Sleep(500);
                if (gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[sifch].Vdc_rngno == rng)
                {
                    InitView();
                    return;
                }
            }
            MessageBox.Show("Channel's VDC range is incorrect. Check it.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }

        private void LoadLogInfo()
        {
            string sFilename = gBZA.GetCalibLogFileName(Serial, mZim.GetSerialNumber());

            if (File.Exists(sFilename) == false)
            {
                return;
            }
            
            string sitem;
            string sValue1;
            string sValue2;

            int count = gBZA.GetIniIntData(sTitle, "Count", sFilename, 0);
            mZim.ranges.vdc_rng[rng].gain = gBZA.GetIniDoubleData(sTitle, "Gain", sFilename, mZim.ranges.vdc_rng[rng].gain);
            mZim.ranges.vdc_rng[rng].offset = gBZA.GetIniDoubleData(sTitle, "Offset", sFilename, mZim.ranges.vdc_rng[rng].offset);
            for (int row = 0; row < count; row++)
            {
                sitem = string.Format("Target{0}", row + 1);
                sValue1 = gBZA.GetIniDoubleData(sTitle, sitem, sFilename, 0.0).ToString();
                sitem = string.Format("Real{0}", row + 1);
                sValue2 = gBZA.GetIniDoubleData(sTitle, sitem, sFilename, 0.0).ToString();

                AddList(ref ListAfter1, sValue1, sValue2);
            }
        }

        private void SaveLogInfo()
        {
            string sFilename = gBZA.GetCalibLogFileName(Serial, mZim.GetSerialNumber());
            string sitem;
            string sValue;

            gBZA.WriteIniStrData("Device", "SIF_Serial", sFilename, Serial);
            gBZA.WriteIniStrData("Device", "ZIM_Serial", sFilename, mZim.GetSerialNumber());
            gBZA.WriteIniDoubleData(sTitle, "Gain", sFilename, mZim.ranges.vdc_rng[rng].gain);
            gBZA.WriteIniDoubleData(sTitle, "Offset", sFilename, mZim.ranges.vdc_rng[rng].offset);
            gBZA.WriteIniIntData(sTitle, "Count", sFilename, ListAfter1.Items.Count);
            for (int row = 0; row < ListAfter1.Items.Count; row++)
            {
                sitem = string.Format("Target{0}", row + 1);
                sValue = ListAfter1.Items[row].SubItems[0].Text.Replace("\r", "").Replace("\n", "");
                gBZA.WriteIniDoubleData(sTitle, sitem, sFilename, Convert.ToDouble(sValue));
                sitem = string.Format("Real{0}", row + 1);
                sValue = ListAfter1.Items[row].SubItems[1].Text.Replace("\r", "").Replace("\n", "");
                gBZA.WriteIniDoubleData(sTitle, sitem, sFilename, Convert.ToDouble(sValue));
            }
        }
        private void InitList(ref ListView mlstv)
        {
            mlstv.BeginUpdate();

            mlstv.Clear();

            mlstv.View = View.Details;
            mlstv.GridLines = true;
            mlstv.FullRowSelect = true;
            mlstv.CheckBoxes = false;
            mlstv.MultiSelect = true;
            mlstv.LabelEdit = false;
            mlstv.LabelWrap = false;

            mlstv.Columns.Clear();
            mlstv.Columns.Add("Target", 120, HorizontalAlignment.Center);
            mlstv.Columns.Add("Real", 120, HorizontalAlignment.Center);
          
            mlstv.Items.Clear();
            mlstv.EndUpdate();
        }
        
        private void AddList(ref ListView mlstv, string sTarget, string sReal)
        {
            ListViewItem lvItem;
            lvItem = new ListViewItem(new string[] { sTarget, sReal });
            mlstv.Items.Add(lvItem);
        }

        private void InitView()
        {
            InitList(ref ListBefore1);
            InitList(ref ListAfter1);

            LoadLogInfo();

            txtMax1.Text = string.Format("{0:0.0#####}", mZim.ranges.vdc_rng[rng].maximum);
            txtMin1.Text = string.Format("{0:0.0#####}", mZim.ranges.vdc_rng[rng].minimum);
            txtFactor1.Text = string.Format("{0:0.0#####}", mZim.ranges.vdc_rng[rng].factor);
            txtGain1.Text = string.Format("{0:0.0#####}", mZim.ranges.vdc_rng[rng].gain);
            txtOffset1.Text = string.Format("{0:0.0#####}", mZim.ranges.vdc_rng[rng].offset);
            txtSquare1.Text = "1.0";
            txtResSquare1.Text = "1.0";
            chkCalib1.Checked = false;
            txtRangeStat.Text = SM_Number.ToRangeString(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges.vdc_rng[gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[sifch].Vdc_rngno].realmax,"V");

            txtTarget1.Text = "0.0";
            txtReal1.Text = "0.0";
        }

        private void btRefresh1_Click(object sender, EventArgs e)
        {
            double val;
            txtRangeStat.Text = SM_Number.ToRangeString(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges.vdc_rng[gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[sifch].Vdc_rngno].realmax, "V");
            val = gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[sifch].Vdc;
            try
            {
                if (chkCalib1.Checked == false)
                {
                    val = val * Convert.ToDouble(txtGain1.Text) + Convert.ToDouble(txtOffset1.Text);
                }
                txtReal1.Text = string.Format("{0:0.0#####}", val);
            }
            catch 
            {
                txtReal1.Text = "0.0";
            }
        }
        private void btLARem1_Click(object sender, EventArgs e)
        {
            if (ListAfter1.Items.Count == 0)
            {
                MessageBox.Show("Not found items."); return;
            }
            if (ListAfter1.SelectedItems.Count == 0)
            {
                MessageBox.Show("Not found selected items."); return;
            }
            for (int i = ListAfter1.SelectedItems.Count - 1; i >= 0; i--)
            {
                ListAfter1.Items.Remove(ListAfter1.SelectedItems[i]);
            }
        }

        private void btLBRem1_Click(object sender, EventArgs e)
        {
            if (ListBefore1.Items.Count == 0)
            {
                MessageBox.Show("Not found items."); return;
            }
            if (ListBefore1.SelectedItems.Count == 0)
            {
                MessageBox.Show("Not found selected items."); return;
            }
            for (int i = ListBefore1.SelectedItems.Count - 1; i >= 0; i--)
            {
                ListBefore1.Items.Remove(ListBefore1.SelectedItems[i]);
            }
        }

        private void btLBAdd1_Click(object sender, EventArgs e)
        {
            AddList(ref ListBefore1, txtTarget1.Text, txtReal1.Text);
        }

        private void btLAAdd1_Click(object sender, EventArgs e)
        {
            AddList(ref ListAfter1, txtTarget1.Text, txtReal1.Text);
        }

        private void chkCalib1_CheckedChanged(object sender, EventArgs e)
        {
            double val;

            val =  gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[sifch].Vdc;
            if (chkCalib1.Checked == false)
            {
                val = val * Convert.ToDouble(txtGain1.Text) + Convert.ToDouble(txtOffset1.Text);
            }
            txtReal1.Text = string.Format("{0:0.0#####}", val);
        }

        private void btGetCalInf1_Click(object sender, EventArgs e)
        {
            if (ListBefore1.Items.Count == 0)
            {
                MessageBox.Show("Not found items."); return;
            }
            CalibInputOperProc(ref ListBefore1,ref txtGain1, ref txtOffset1,ref txtSquare1);
        }

        void CalibInputOperProc(ref ListView mlstv, ref TextBox tGain, ref TextBox tOffset, ref TextBox tSquare)
        {
            int s;
            double mX;
            double mY;
            double Sx;
            double Sy;
            double Sxx;
            double Sxy;
            double dTemp;
            double dGain;
            double dOfs;
            double SStot = 0.0;
            double SSres = 0.0;
            double dSquare;

            s = 0;
            Sx = 0.0;
            Sy = 0.0;
            Sxx = 0.0;
            Sxy = 0.0;

            for (s = 0; s < mlstv.Items.Count; s++)
            {
                mX = Convert.ToDouble(mlstv.Items[s].SubItems[1].Text.Trim());
                mY = Convert.ToDouble(mlstv.Items[s].SubItems[0].Text.Trim());
                Sx += mX;
                Sy += mY;
                Sxx += (mX * mX);
                Sxy += (mX * mY);
            }
            dTemp = (s * Sxx) - (Sx * Sx);

            dOfs = ((Sxx * Sy - Sx * Sxy) / dTemp);
            dGain = ((s * Sxy - Sx * Sy) / dTemp);

            Sy = Sy / s;
            SStot = 0.0;
            SSres = 0.0;

            for (s = 0; s < mlstv.Items.Count; s++)
            {
                mX = Convert.ToDouble(mlstv.Items[s].SubItems[1].Text.Trim());
                mX = mX * dGain + dOfs;
                mY = Convert.ToDouble(mlstv.Items[s].SubItems[0].Text.Trim());

                SStot += (mY - Sy) * (mY - Sy);
                SSres += (mY - mX) * (mY - mX);
            }

            if (s > 0)
            {
                if (SStot == 0.0)
                {
                    dSquare = 0.0f;
                }
                else if (SSres == 0.0)
                {
                    dSquare = 1.0f;
                }
                else
                {
                    dSquare = (float)(1.0 - (SSres / SStot));
                }
            }
            else
            {
                if (SStot == 0.0)
                {
                    dSquare = 0.0f;
                }
                else if (SSres == 0.0)
                {
                    dSquare = 1.0f;
                }
                else
                {
                    dSquare = (float)(1.0 - (SSres / SStot));
                }
            }
            tGain.Text = string.Format("{0:0.0#####}", dGain);
            tOffset.Text = string.Format("{0:0.0#####}", dOfs);
            tSquare.Text = string.Format("{0:0.0#####}", dSquare);
        }

        void CheckInputOperProc(ref ListView mlstv, ref TextBox tSquare)
        {
            int s;
            double mX;
            double mY;
            double Sx;
            double Sy;

            double SStot = 0.0;
            double SSres = 0.0;
            double dSquare;

            s = 0;
            Sx = 0.0;
            Sy = 0.0;

            for (s = 0; s < mlstv.Items.Count; s++)
            {
                mX = Convert.ToDouble(mlstv.Items[s].SubItems[1].Text.Trim());
                mY = Convert.ToDouble(mlstv.Items[s].SubItems[0].Text.Trim());
                Sx += mX;
                Sy += mY;
            }

            Sy = Sy / s;

            for (s = 0; s < mlstv.Items.Count; s++)
            {
                mX = Convert.ToDouble(mlstv.Items[s].SubItems[1].Text.Trim());
                mY = Convert.ToDouble(mlstv.Items[s].SubItems[0].Text.Trim());

                SStot += (mY - Sy) * (mY - Sy);
                SSres += (mY - mX) * (mY - mX);
            }

            if (s > 0)
            {
                if (SStot == 0.0)
                {
                    dSquare = 0.0f;
                }
                else if (SSres == 0.0)
                {
                    dSquare = 1.0f;
                }
                else
                {
                    dSquare = (float)(1.0 - (SSres / SStot));
                }
            }
            else
            {
                if (SStot == 0.0)
                {
                    dSquare = 0.0f;
                }
                else if (SSres == 0.0)
                {
                    dSquare = 1.0f;
                }
                else
                {
                    dSquare = (float)(1.0 - (SSres / SStot));
                }
            }
            tSquare.Text = string.Format("{0:0.0#####}", dSquare);
        }

        private void btCheckCal1_Click(object sender, EventArgs e)
        {
            if (ListAfter1.Items.Count == 0)
            {
                MessageBox.Show("Not found items."); return;
            }
            CheckInputOperProc(ref ListAfter1, ref txtResSquare1);
        }
        
        private void btApply1_Click(object sender, EventArgs e)
        {
            mZim.ranges.vdc_rng[rng].gain = Convert.ToDouble(txtGain1.Text);
            mZim.ranges.vdc_rng[rng].offset = Convert.ToDouble(txtOffset1.Text);

            gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch] = mZim;
            if (MBZA_MapUtil.Save_Range_info(Serial, sifch) == false)
            {
                MessageBox.Show("The operation failed.");
                return;
            }
            SaveLogInfo();
            MessageBox.Show("The operation has been successful.");
        }
        
        private void btClose_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void frmCalibVdc_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MBZA_MapUtil.SetAutoVdc(Serial, sifch, true) == false)
            {
                MessageBox.Show("The command failed[SetAutoVdc].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void SetCalibMode(bool bcalib = false)
        {
            if (MBZA_MapUtil.SetCalibMode(Serial, sifch, bcalib) == false)
            {
                MessageBox.Show("The command failed[SetCalibMode].");
            }
        }

        private void SetVdcRng(int rng, bool bload = false)
        {
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mdevice[sifch];

            p.ctrl_do.data &= 0xFFEE; // LOAD Off

            if (rng == 0) p.ctrl_do.data |= DeviceConstants.DEVDO_VDC_RNG0;
            if(bload == true) p.ctrl_do.data |= DeviceConstants.DEVDO_CONT_SD;

            gBZA.SifLnkLst[Serial].MBZAIF.mdevice[sifch].ctrl_do.data = p.ctrl_do.data;
            if (MBZA_MapUtil.SetDoOfZIM(Serial, sifch) == false)
            {
                MessageBox.Show("The command failed[SetDoOfZIM].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
        }

        private void BtOpenFolder_Click(object sender, EventArgs e)
        {
            string sFilename = gBZA.GetCalibLogFileName(Serial, mZim.GetSerialNumber());
            if(File.Exists(sFilename))
            {
                Process.Start(sFilename);
            }
            else
            {
                MessageBox.Show("The log file could not be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }
    }
}
