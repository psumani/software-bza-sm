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
    public partial class frmCalibRtd : Form
    {
        public CommObj mCommZim;
        public st_zim_rnginf ranges;
        public st_zim_device mZim;
        st_zim_rnginf tRanges;
        public frmCalibRtd(ref CommObj mRefCommZim, ref st_zim_rnginf mRefranges, ref st_zim_device mRefZim)
        {
            InitializeComponent();
            this.Icon = Properties.Resources.bm;

            mCommZim = mRefCommZim;
            ranges = mRefranges;
            mZim = mRefZim;

            tRanges = new st_zim_rnginf(0);
            tRanges.ToWritePtr(ranges.ToByteArray());

            tRanges.rtd_rng.gain = 1.0;
            tRanges.rtd_rng.offset = 0.0;
          
            if (mCommZim.WriteData(tRanges) == false) MessageBox.Show("The operation failed.");

            InitView();

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
            txtMax0.Text = string.Format("{0:0.0#####}", ranges.rtd_rng.maximum);
            txtMin0.Text = string.Format("{0:0.0#####}", ranges.rtd_rng.minimum);
            txtFactor0.Text = string.Format("{0:0.0#####}", ranges.rtd_rng.factor);
            txtGain0.Text = string.Format("{0:0.0#####}", ranges.rtd_rng.gain);
            txtOffset0.Text = string.Format("{0:0.0#####}", ranges.rtd_rng.offset);
            txtSquare0.Text = "1.0";
            txtResSquare0.Text = "1.0";
            chkCalib0.Checked = false;
            InitList(ref ListBefore0);
            InitList(ref ListAfter0);

           

            txtTarget0.Text = "0.0";
            txtReal0.Text = "0.0";
        }

        private bool RefreshMearsurementRtd()
        {
            byte[] buf;
            buf = mCommZim.CmdReadRtdOfZIM();
            if (buf == null)
            {
                return false;
            }
            mZim.adc_rtd.data.ToWritePtr(buf);
            return true;
        }
        private void btApply0_Click(object sender, EventArgs e)
        {
            ranges.rtd_rng.gain = Convert.ToDouble(txtGain0.Text);
            ranges.rtd_rng.offset = Convert.ToDouble(txtOffset0.Text);

            if (mCommZim.WriteData(ranges) == false) MessageBox.Show("The operation failed.");
            if (mCommZim.CmdStoreRangesInfo() == false) MessageBox.Show("The operation failed.");
            if (mCommZim.WriteData(tRanges) == false) MessageBox.Show("The operation failed.");
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
            for (int i = 0; i < ListBefore0.SelectedItems.Count; i++)
            {
                ListBefore0.SelectedItems[0].Remove();
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

            for (int i = 0; i < ListAfter0.SelectedItems.Count; i++)
            {
                ListAfter0.SelectedItems[0].Remove();
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
            if (RefreshMearsurementRtd() == false)
            {
                MessageBox.Show("The operation failed.");
                return;
            }

            val = mZim.adc_rtd.data.Tvalue;
            if (chkCalib0.Checked == false)
            {
                val = val * Convert.ToDouble(txtGain0.Text) + Convert.ToDouble(txtOffset0.Text);
            }

            txtReal0.Text = string.Format("{0:0.0#####}", val);
        }

        private void frmCalibRtd_FormClosing(object sender, FormClosingEventArgs e)
        {
            mCommZim.WriteData(ranges);
        }
    }
}
