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
        //private double VdcThreshold = 1.0;
        public static double VdcThreshold = 1.0;
        public frmAuxVdc(int ch)
        {
            InitializeComponent();
             
            Channel = ch;

            string sch = Channel.ToString();


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
            itemGreen.Name = $"Above Voltage({VdcThreshold:##0.000} V)";
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
                    legend.CustomItems[0].Name = $"Above Voltage({VdcThreshold:##0.000} V)";
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

            var auxValues = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].Aux_Vdc;


            if (chart1 == null || chart1.IsDisposed) return;
            if (chart1.Series.Count == 0) return;

            var series0 = chart1.Series[0];
            series0.Points.Clear();

            for (int i = 0; i < 12; i++)
            {
                series0.Points.AddXY("Ch" + (i + 1), 0);
                series0.Points[i].Color = Color.Transparent;
            }

            for (int i = 0; i < auxValues.Length && i < 12; i++)
            {
                double vdcValue = auxValues[i];

                if (vdcValue > 0)
                {
                    series0.Points[i].SetValueY(vdcValue);

                    if (vdcValue >= VdcThreshold)
                        series0.Points[i].Color = Color.Green;
                    else
                        series0.Points[i].Color = Color.Red;
                }

                Label lbl = this.Controls.Find($"AuxVdclabel{i + 1}", true).FirstOrDefault() as Label;
                if (lbl != null)
                {
                    lbl.Text = $"Ch {i + 1,2}: {vdcValue,6:##0.00} V";
                }
            }
        }

        //private void VdcSetButton_Click(object sender, EventArgs e)
        //{
        //    using (frmSetVdcReference form = new frmSetVdcReference())
        //    {
        //        form.StartPosition = FormStartPosition.CenterParent;
        //        form.ShowDialog(this);
        //    }
        //}

        private void VdcSetButton_Click(object sender, EventArgs e)
        {
            using (frmSetVdcReference form = new frmSetVdcReference(VdcThreshold))
            {
                form.StartPosition = FormStartPosition.CenterParent;
                if (form.ShowDialog(this) == DialogResult.OK)
                {
                    VdcThreshold = form.ReferenceValue;
                    UpdateLegendAndLabel();
                }
            }
        }

        private void chart1_Click(object sender, EventArgs e)
        {

        }
    }
}
