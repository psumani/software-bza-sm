using System;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using System.Linq;
using ZiveLab.ZM.ZIM;

namespace ZiveLab.ZM
{
    public partial class frmAuxVdc : Form
    {
        private int Channel;
        private Timer refreshTimer;
        public frmAuxVdc(int ch)
        {
            InitializeComponent();
             
            Channel = ch;

            string sch = Channel.ToString();


            this.Text = string.Format("Auxiliary Cell Voltage Monitor[{0}].", Channel + 1);
            
            if (gBZA.ChLnkLst.ContainsKey(sch) == false)
            {
                MessageBox.Show("The channel information could not be found, or the channel does not support auxiliary channels.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1);
                this.DialogResult = DialogResult.OK;
                return;
            }

            var Value = gBZA.ChLnkLst[sch];
            if (gBZA.SifLnkLst.ContainsKey(Value.sSerial) == false)
            {
                MessageBox.Show("The channel information could not be found, or the channel does not support auxiliary channels.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1);
                this.DialogResult = DialogResult.OK;
                return;
            }

            if ((eDeviceType)Value.mDevInf.mSysCfg.mSIFCfg.Type != eDeviceType.MCBZA)
             {
                 MessageBox.Show("The channel information could not be found, or the channel does not support auxiliary channels.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1);
                 this.DialogResult = DialogResult.OK;
                 return;
             }
             
            CheckBox chkbox;
            for (int i = 0; i<MBZA_Constant.MAX_AUX_CHANNELS; i++)
            {
                chkbox = this.Controls.Find($"chkauxvdc{i + 1}", true).FirstOrDefault() as CheckBox;
                chkbox.Checked = gBZA.appcfg.ViewMonAuxCh[i];
            }

            cbocalctype.Items.Clear();

            cbocalctype.Items.Add("StDev");
            cbocalctype.Items.Add("Average");
            cbocalctype.Items.Add("Maximum");
            cbocalctype.Items.Add("Minimum");

            cbocalctype.SelectedIndex = 0;

            InitChart();
            this.Load += FrmAuxVdc_Load;
            this.FormClosed += FrmAuxVdc_FormClosed;


            Bitmap bitmap = Properties.Resources.RangeColumnChart;
            IntPtr hIcon = bitmap.GetHicon();
            this.Icon = Icon.FromHandle(hIcon);
        }

        private void FrmAuxVdc_Load(object sender, EventArgs e)
        {
            
            refreshTimer = new Timer();
            refreshTimer.Interval = 1000;
            refreshTimer.Tick += RefreshChart;
            refreshTimer.Start();

            RefreshChart(null, EventArgs.Empty);
        }
        public void SetCh(int ch)
        {

            string sch = ch.ToString();


            this.Text = string.Format("Auxiliary DC Voltage Monitoring of channel {0}.", Channel + 1);
            
            if (gBZA.ChLnkLst.ContainsKey(sch) == false)
            {
                MessageBox.Show("The channel information could not be found, or the channel does not support auxiliary channels.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1);
                this.DialogResult = DialogResult.OK;
                return;
            }

            var Value = gBZA.ChLnkLst[sch];
            if (gBZA.SifLnkLst.ContainsKey(Value.sSerial) == false)
            {
                MessageBox.Show("The channel information could not be found, or the channel does not support auxiliary channels.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1);
                this.DialogResult = DialogResult.OK;
                return;
            }
            
            if ((eDeviceType)Value.mDevInf.mSysCfg.mSIFCfg.Type != eDeviceType.MCBZA)
            {
                MessageBox.Show("The channel information could not be found, or the channel does not support auxiliary channels.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1);
                this.DialogResult = DialogResult.OK;
                return;
            }
            
            Channel = ch;
            this.Text = string.Format("Auxiliary DC Voltage Monitoring of channel {0}.", Channel + 1);
        }
        private void FrmAuxVdc_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (refreshTimer != null)
            {
                refreshTimer.Stop();
                refreshTimer.Dispose();
                refreshTimer = null;
            }
        }

        private void InitChart()
        {
            chart1.Series.Clear();
            chart1.Legends.Clear();

            Series series0 = new Series("Vdc");
            series0.ChartType = SeriesChartType.Column;
            series0.IsVisibleInLegend = false;

            chart1.Series.Add(series0);

            chart1.ChartAreas[0].AxisX.Interval = 1;
            chart1.ChartAreas[0].AxisX.LabelStyle.IsStaggered = false;
            chart1.ChartAreas[0].AxisX.IsLabelAutoFit = false;
            chart1.ChartAreas[0].AxisX.LabelStyle.Angle = 0;

            

            Legend legend = new Legend("Legend1");
            chart1.Legends.Add(legend);
            legend.BackColor = this.BackColor;
            legend.BorderColor = Color.Transparent;

            LegendItem itemGreen = new LegendItem();
            //itemGreen.Name = "Stable";
            itemGreen.Name = $"Above Voltage({gBZA.appcfg.VdcThreshold:##0.000} V)";
            itemGreen.Color = Color.Green;
            legend.CustomItems.Add(itemGreen);

            LegendItem itemRed = new LegendItem();
            itemRed.Name = "Under Voltage";
            itemRed.Color = Color.Red;
            legend.CustomItems.Add(itemRed);
        }

        private void UpdateLegendAndLabel()
        {
            if (chart1.Legends.Count > 0)
            {
                var legend = chart1.Legends[0];
                if (legend.CustomItems.Count > 0)
                {
                    legend.CustomItems[0].Name = $"Above Voltage({gBZA.appcfg.VdcThreshold:##0.000} V)";
                }
            }
        }


        private void RefreshChart(object sender, EventArgs e)
        {
            string sch = Channel.ToString();
            if (gBZA.ChLnkLst.ContainsKey(sch) == false)
            {
                MessageBox.Show("The channel information could not be found, or the channel does not support auxiliary channels.",gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1);
                this.DialogResult = DialogResult.OK;
                return;
            }
                
            var Value = gBZA.ChLnkLst[sch];
            if (gBZA.SifLnkLst.ContainsKey(Value.sSerial) == false)
            {
                MessageBox.Show("The channel information could not be found, or the channel does not support auxiliary channels.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1);
                this.DialogResult = DialogResult.OK;
                return;
            }
            
            if ((eDeviceType)Value.mDevInf.mSysCfg.mSIFCfg.Type != eDeviceType.MCBZA)
            {
                MessageBox.Show("The channel information could not be found, or the channel does not support auxiliary channels.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1);
                this.DialogResult = DialogResult.OK;
                return;
            }
            
            
            
            if (chart1 == null || chart1.IsDisposed) return;
            if (chart1.Series.Count == 0) return;
            
            var series0 = chart1.Series[0];
            series0.Points.Clear();
    


            var auxValues = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].Aux_Vdc;
            double[] RaW = new double[MBZA_Constant.MAX_AUX_CHANNELS];
            double vdcValue;
            double VMax = MBZA_Constant.MAX_INITVALUE;
            double VMin = MBZA_Constant.MIN_INITVALUE;
            double VAvg = 0.0; 
            double VTotal = 0.0;
            int nCount = 0;
            double std = 1.0;

            int ChartPoint = 0;

            int auxbd;

            chart1.ChartAreas[0].AxisY.StripLines[0].IntervalOffset = gBZA.appcfg.VdcThreshold;
            for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
            {
                RaW[i] = 0.0;
                auxbd = i / 4 + 1;
                CheckBox chkbox = this.Controls.Find($"chkauxvdc{i + 1}", true).FirstOrDefault() as CheckBox;
                if (chkbox == null) continue;

                
                if (Value.mDevInf.mSysCfg.EnaZIM[auxbd] == 0 || Value.mDevInf.mSysCfg.ChkZIM[auxbd] == 0)
                {
                    chkbox.Enabled = false;
                    chkbox.Checked = false;
                    chkbox.Text = $"Ch {i + 1,2}: None.";
                    continue;
                }
                
                chkbox.Enabled = true;
                vdcValue = auxValues[i];
                chkbox.Text = $"Ch {i + 1,2}: {vdcValue,7:##0.000} V";
                if (chkbox.Checked == false) continue;

                RaW[nCount] = vdcValue;
                if (VMax < vdcValue) VMax = vdcValue;
                if (VMin > vdcValue) VMin = vdcValue;
                VTotal += vdcValue;
                nCount++;
                


                series0.Points.AddXY("Ch" + (i + 1), vdcValue);
                series0.Points[ChartPoint].Color = Color.Transparent;

               // if (vdcValue > 0 )
                {
                    if (vdcValue >= gBZA.appcfg.VdcThreshold)
                        series0.Points[ChartPoint].Color = Color.Green;
                    else
                        series0.Points[ChartPoint].Color = Color.Red;
                }
                ChartPoint++;
            }
            VAvg = VTotal / nCount;

            double dTemp = 0.0;
            VTotal = 0.0;
            for (int i = 0; i < nCount; i++)
            {
                dTemp = RaW[i] - VAvg;
                VTotal += (dTemp * dTemp);
            }
            if (VTotal <= 0.0f || nCount <= 1) std = 0.0f;
            else
            {
                VTotal /= (nCount-1);
                std = Math.Sqrt(VTotal);
            }

            if(cbocalctype.SelectedIndex == 1) txtcalc.Text = $"{VAvg,7:##0.000} V";
            else if (cbocalctype.SelectedIndex == 2) txtcalc.Text = $"{VMax,7:##0.000} V";
            else if (cbocalctype.SelectedIndex == 3) txtcalc.Text = $"{VMin,7:##0.000} V";
            else txtcalc.Text = $"{std,6:##0.0##} V";
            
            if (gBZA.appcfg.VdcAutoRange)
            {
                double absmax = VMax - VMin;
                if (absmax == 0) absmax = 0.1;
                if (VMax == 0.0)
                {
                     chart1.ChartAreas[0].AxisY.Maximum = absmax * 0.1;
                }
                else
                {
                    chart1.ChartAreas[0].AxisY.Maximum = VMax + (absmax * 0.1);
                }

                if (VMin == 0.0)
                {
                    chart1.ChartAreas[0].AxisY.Minimum = absmax * -0.1;
                }
                else
                {
                    chart1.ChartAreas[0].AxisY.Minimum = VMin - (absmax * 0.1);
                }
            }
            else
            {
                chart1.ChartAreas[0].AxisY.Maximum = gBZA.appcfg.VdcMaxVal;
                chart1.ChartAreas[0].AxisY.Minimum = gBZA.appcfg.VdcMinVal;
            }
            
        }

        private void VdcSetButton_Click(object sender, EventArgs e)
        {
            using (frmSetVdcReference form = new frmSetVdcReference(gBZA.appcfg.VdcThreshold, gBZA.appcfg.VdcMaxVal, gBZA.appcfg.VdcMinVal, gBZA.appcfg.VdcAutoRange))
            {
                form.StartPosition = FormStartPosition.CenterParent;
                if (form.ShowDialog(this) == DialogResult.OK)
                {
                    gBZA.appcfg.VdcThreshold = form.ReferenceValue;
                    gBZA.appcfg.VdcMaxVal = form.MaxValue;
                    gBZA.appcfg.VdcMinVal = form.MinValue;
                    gBZA.appcfg.VdcAutoRange = form.AutoRange;
                    UpdateLegendAndLabel();
                    gBZA.SaveAppCfg();
                }
            }
        }

        private void chart1_Click(object sender, EventArgs e)
        {

        }

        private void chkauxvdc1_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.ViewMonAuxCh[0] = chkauxvdc1.Checked;
            gBZA.SaveAppCfg();
        }

        private void chkauxvdc2_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.ViewMonAuxCh[1] = chkauxvdc2.Checked;
            gBZA.SaveAppCfg();
        }

        private void chkauxvdc3_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.ViewMonAuxCh[2] = chkauxvdc3.Checked;
            gBZA.SaveAppCfg();
        }

        private void chkauxvdc4_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.ViewMonAuxCh[3] = chkauxvdc4.Checked;
            gBZA.SaveAppCfg();
        }

        private void chkauxvdc5_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.ViewMonAuxCh[4] = chkauxvdc5.Checked;
            gBZA.SaveAppCfg();
        }

        private void chkauxvdc6_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.ViewMonAuxCh[5] = chkauxvdc6.Checked;
            gBZA.SaveAppCfg();
        }

        private void chkauxvdc7_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.ViewMonAuxCh[6] = chkauxvdc7.Checked;
            gBZA.SaveAppCfg();
        }

        private void chkauxvdc8_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.ViewMonAuxCh[7] = chkauxvdc8.Checked;
            gBZA.SaveAppCfg();
        }

        private void chkauxvdc9_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.ViewMonAuxCh[8] = chkauxvdc9.Checked;
            gBZA.SaveAppCfg();
        }

        private void chkauxvdc10_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.ViewMonAuxCh[9] = chkauxvdc10.Checked;
            gBZA.SaveAppCfg();
        }

        private void chkauxvdc11_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.ViewMonAuxCh[10] = chkauxvdc11.Checked;
            gBZA.SaveAppCfg();
        }

        private void chkauxvdc12_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.ViewMonAuxCh[11] = chkauxvdc12.Checked;
            gBZA.SaveAppCfg();
        }
    }
}
