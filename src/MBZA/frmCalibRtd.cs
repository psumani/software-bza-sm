using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM
{
    public partial class frmCalibRtd : Form
    {
        private string Serial;
        private int sifch;
        private int ch;
        private stZimCfg mZim;
       
        public frmCalibRtd(int tch,string tserial, int tsifch)
        {
            InitializeComponent();
            DoubleBuffered = true;
            ch = tch;
            Serial = tserial;
            sifch = tsifch;
            
            mZim = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            InitView(); 
            this.Text = string.Format("Calibration Temperature[PT-100] - CH{0}[{1}-{2}].", ch + 1, Serial, sifch + 1);
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

        private void LoadLogInfo()
        {
            string sFilename = gBZA.GetCalibLogFileName(Serial, mZim.GetSerialNumber());

            if(File.Exists(sFilename) == false)
            {
                return;
            }

            string sitem;
            string sValue1;
            string sValue2;

            int count = gBZA.GetIniIntData("RTD", "Count", sFilename, 0);
            mZim.ranges[0].rtd_rng.gain = gBZA.GetIniDoubleData("RTD", "Gain", sFilename, mZim.ranges[0].rtd_rng.gain);
            mZim.ranges[0].rtd_rng.offset = gBZA.GetIniDoubleData("RTD", "Offset", sFilename, mZim.ranges[0].rtd_rng.offset);
            for (int row = 0; row < count; row++)
            {
                sitem = string.Format("Target{0}", row + 1);
                sValue1 = gBZA.GetIniDoubleData("RTD", sitem, sFilename, 0.0).ToString();
                sitem = string.Format("Real{0}", row + 1);
                sValue2 = gBZA.GetIniDoubleData("RTD", sitem, sFilename, 0.0).ToString();
                AddList(ref ListAfter0, sValue1, sValue2);
            }
        }

        private void InitView()
        {
            InitList(ref ListBefore0);
            InitList(ref ListAfter0);

            LoadLogInfo();

            txtMax0.Text = string.Format("{0:0.0#####}", mZim.ranges[0].rtd_rng.maximum);
            txtMin0.Text = string.Format("{0:0.0#####}", mZim.ranges[0].rtd_rng.minimum);
            txtFactor0.Text = string.Format("{0:0.0#####}", mZim.ranges[0].rtd_rng.factor);
            txtGain0.Text = string.Format("{0:0.0#####}", mZim.ranges[0].rtd_rng.gain);
            txtOffset0.Text = string.Format("{0:0.0#####}", mZim.ranges[0].rtd_rng.offset);
            txtSquare0.Text = "1.0";
            txtResSquare0.Text = "1.0";
            chkCalib0.Checked = false;

            txtTarget0.Text = "0.0";
            txtReal0.Text = "0.0";
        }
        
        private void btApply0_Click(object sender, EventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;

            mZim.ranges[0].rtd_rng.gain = Convert.ToDouble(txtGain0.Text);
            mZim.ranges[0].rtd_rng.offset = Convert.ToDouble(txtOffset0.Text);
            gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch] = mZim;
            if (MBZA_MapUtil.Save_Range_info(Serial, sifch) == false)
            {
                this.Cursor = Cursors.Default;
                MessageBox.Show("The operation failed.");
                return;
            }
            
            SaveLogInfo();
            this.Cursor = Cursors.Default;
            MessageBox.Show("The operation has been successful.");
        }

        private void btLBAdd0_Click(object sender, EventArgs e)
        {
            AddList(ref ListBefore0, txtTarget0.Text, txtReal0.Text);
        }

        private void btLAAdd0_Click(object sender, EventArgs e)
        {
            AddList(ref ListAfter0, txtTarget0.Text, txtReal0.Text);
        }

        private void btLBRem0_Click(object sender, EventArgs e)
        {
            if (ListBefore0.Items.Count == 0)
            {
                MessageBox.Show("Not found items."); return;
            }
            if (ListBefore0.SelectedItems.Count == 0)
            {
                MessageBox.Show("Not found selected items."); return;
            }
            for (int i = ListBefore0.SelectedItems.Count - 1; i >= 0; i--)
            {
                ListAfter0.Items.Remove(ListBefore0.SelectedItems[i]);
            }
        }

        private void btLARem0_Click(object sender, EventArgs e)
        {
            if (ListAfter0.Items.Count == 0)
            {
                MessageBox.Show("Not found items."); return;
            }
            if (ListAfter0.SelectedItems.Count == 0)
            {
                MessageBox.Show("Not found selected items."); return;
            }

            for (int i = ListAfter0.SelectedItems.Count-1; i >= 0 ; i--)
            {
                ListAfter0.Items.Remove(ListAfter0.SelectedItems[i]);
            }
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

        private void btGetCalInf0_Click(object sender, EventArgs e)
        {
            if (ListBefore0.Items.Count == 0)
            {
                MessageBox.Show("Not found items."); return;
            }
            CalibInputOperProc(ref ListBefore0, ref txtGain0, ref txtOffset0, ref txtSquare0);
        }

        private void btCheckCal0_Click(object sender, EventArgs e)
        {
            if (ListAfter0.Items.Count == 0)
            {
                MessageBox.Show("Not found items."); return;
            }
            CheckInputOperProc(ref ListAfter0, ref txtResSquare0);
        }

        private void btRefresh0_Click(object sender, EventArgs e)
        {
            double val;

            val = gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[sifch].Temperature; 
            if (chkCalib0.Checked == false)
            {
                val = val * Convert.ToDouble(txtGain0.Text) + Convert.ToDouble(txtOffset0.Text);
            }

            txtReal0.Text = string.Format("{0:0.0#####}", val);
        }

        private void frmCalibRtd_FormClosing(object sender, FormClosingEventArgs e)
        {

        }

        private void btclose_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void SaveLogInfo()
        {
            string sFilename = gBZA.GetCalibLogFileName(Serial, mZim.GetSerialNumber());
            string sitem;
            string sValue;

            gBZA.WriteIniDoubleData("RTD", "Gain", sFilename, mZim.ranges[0].rtd_rng.gain);
            gBZA.WriteIniDoubleData("RTD", "Offset", sFilename, mZim.ranges[0].rtd_rng.offset);
            gBZA.WriteIniIntData("RTD", "Count", sFilename, ListAfter0.Items.Count);
            
            for (int row = 0; row < ListAfter0.Items.Count; row++)
            {
                sitem = string.Format("Target{0}", row + 1);
                sValue = ListAfter0.Items[row].SubItems[0].Text.Replace("\r", "").Replace("\n", "");
                gBZA.WriteIniDoubleData("RTD", sitem, sFilename, Convert.ToDouble(sValue));
                sitem = string.Format("Real{0}", row + 1);
                sValue = ListAfter0.Items[row].SubItems[1].Text.Replace("\r", "").Replace("\n", "");
                gBZA.WriteIniDoubleData("RTD", sitem, sFilename, Convert.ToDouble(sValue));
            }
            gBZA.UpdateLastCalDate(Serial);
        }

        private void BtOpenFolder_Click(object sender, EventArgs e)
        {
            string sFilename = gBZA.GetCalibLogFileName(Serial, mZim.GetSerialNumber());
            if (File.Exists(sFilename))
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
