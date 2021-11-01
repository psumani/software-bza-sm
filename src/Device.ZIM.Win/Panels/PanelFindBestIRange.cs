using MathNet.Numerics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelFindBestIRange : UserControl
    {
        #region Variables

        public int idxIRange = 0;
        
        List<double> defaultIRanges = new List<double>() { 2, 0.4, 0.2, 0.04, 0.02, 0.004, 0.002, 0.0004 };
        List<double> iRanges; // in [A]
        double Zexpected; // in [mOhm]
        double maxVrms; // max Linear region in [mVrms]
        double noiseLevel; // in [uVrms]

        List<int> SNRs = new List<int>() { 30, 35, 40, 45, 50, 55, 60 };
        int requestedSNR;

        double minVrms; // in [mVrms]

        public double SuggestedIRange { get; set; }

        #endregion Variables

        #region Life and Death

        public PanelFindBestIRange(double zexp = 10E-3, double noiseLevelInVolts = 25E-6, List<double> iRanges = null)
        {
            InitializeComponent();

            DoubleBuffered = true;

            this.Zexpected = zexp * 1000; // [mOhm]
            this.noiseLevel = noiseLevelInVolts * 1.0E6; //[uVrms]
            this.iRanges = (iRanges == null) ? defaultIRanges : iRanges;
        }

        private void PanelFindBestIRange_Load(object sender, EventArgs e)
        {
            Timer delayedTimer = new Timer() { Interval = 100 };
            delayedTimer.Tick += delegate
            {
                delayedTimer.Stop();
                delayedTimer.Dispose();

                this.InitializeVariables();
                this.UpdateUI();
            };
            delayedTimer.Start();
        }

        #endregion Life and Death

        #region Private Methods

        private void InitializeVariables()
        {
            Zexpected = Properties.Settings.Default.ExpectedZ;
            if (double.IsNaN(Zexpected) || Zexpected < 0)
                Zexpected = 25;

            maxVrms = Properties.Settings.Default.MaxVrms;
            if (double.IsNaN(maxVrms) || maxVrms < 10 || maxVrms > 50)
                maxVrms = 15;

            requestedSNR = Properties.Settings.Default.RequestedSNR;
            ValidateSNR();

            this.tbExpectedZ.Text = string.Format("{0}", Zexpected);
            this.tbMaxVrms.Text = string.Format("{0}", maxVrms);
            this.tbNoiseLevel.Text = string.Format("{0:#0.00}", noiseLevel);
        }

        private void ValidateSNR()
        {
            var maxSNR = (int)(20.0 * Math.Log10(this.maxVrms / this.noiseLevel * 1000.0));
            /*  if (SNRs.Max() == (int)((maxSNR - 30.0) / 5.0) * 5 + 30)
              {
                  var idx = this.cbSuggestedSNR.SelectedIndex;
                  this.cbSuggestedSNR.SelectedIndex = -1;
                  this.cbSuggestedSNR.SelectedIndex = idx;
                  return;
              }
              */
            SNRs = new List<int>();
            int n = (int)((maxSNR - 30.0) / 5.0) + 1;
            for (int i = 0; i < n; i++)
            {
                SNRs.Add(30 + i * 5);
            }

            this.cbSuggestedSNR.Items.Clear();
            foreach (var item in SNRs)
            {
                this.cbSuggestedSNR.Items.Add(item);
            }

            if (double.IsNaN(requestedSNR) || requestedSNR < SNRs.Min() || requestedSNR > SNRs.Max())
                requestedSNR = 30;

            this.cbSuggestedSNR.SelectedIndex = SNRs.FindIndex(p => p >= requestedSNR);
        }

        private void UpdateUI()
        {
            this.minVrms = this.noiseLevel / 1000.0 * Math.Pow(10.0, 0.05 * requestedSNR);
            var parList = new List<parObject>();
            List<int> inRanges = new List<int>();
            foreach (var iRange in iRanges)
            {
                var par = new parObject(iRange, minVrms, maxVrms);
                parList.Add(par);
                inRanges.Add(par.IsInRange(Zexpected));
            }

            this.parGrid.DataSource = parList;

            idxIRange = -1;
            for (int i = inRanges.Count - 1; i >= 0; i--)
            {
                if (inRanges[i] == 2)
                {
                    idxIRange = i;
                    break;
                }
            }

            if (idxIRange < 0)
            {
                for (int i = inRanges.Count - 1; i >= 0; i--)
                {
                    if (inRanges[i] == 1)
                    {
                        idxIRange = i;
                        break;
                    }
                }
            }

            idxIRange = Math.Max(0, idxIRange);
            this.SuggestedIRange = iRanges[idxIRange];

            this.parGrid.Refresh();
            this.parGrid.CurrentCell = this.parGrid.Rows[idxIRange].Cells[0];
            this.parGrid.Rows[idxIRange].Selected = true;
        }

        #endregion Private Methods

        #region Events

        private void tbExpectedZ_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (int)13)
            {
                tbExpectedZ_ValueChanged(tbExpectedZ.Text);
            }
        }
        private void tbExpectedZ_Leave(object sender, EventArgs e)
        {
            tbExpectedZ_ValueChanged(tbExpectedZ.Text);
        }
        private void tbExpectedZ_ValueChanged(string text)
        {
            if (string.IsNullOrWhiteSpace(text))
                return;

            double val;
            if (double.TryParse(text, out val))
            {
                this.Zexpected = val;

                Properties.Settings.Default.ExpectedZ = val;
                Properties.Settings.Default.Save();
                this.UpdateUI();
            }
        }

        private void tbMaxVrms_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (int)13)
            {
                tbMaxVrms_ValueChanged(tbMaxVrms.Text);
            }
        }
        private void tbMaxVrms_Leave(object sender, EventArgs e)
        {
            tbMaxVrms_ValueChanged(tbMaxVrms.Text);
        }
        private void tbMaxVrms_ValueChanged(string text)
        {
            if (string.IsNullOrWhiteSpace(text))
                return;

            double val;
            if (double.TryParse(text, out val))
            {
                if (val < 10)
                {
                    tbMaxVrms.Text = "10"; tbMaxVrms_ValueChanged("10"); val = 10.0;
                }
                else if (val > 50)
                {
                    tbMaxVrms.Text = "50"; tbMaxVrms_ValueChanged("50"); val = 50.0;
                }

                this.maxVrms = val;

                Properties.Settings.Default.MaxVrms = val;
                Properties.Settings.Default.Save();
                this.ValidateSNR();
            }
        }

        private void cbSuggestedSNR_SelectionChangeCommitted(object sender, EventArgs e)
        {
            var ctrl = sender as ComboBox;

            if (ctrl.SelectedIndex < 0)
                return;

            requestedSNR = this.SNRs[ctrl.SelectedIndex];

            Properties.Settings.Default.RequestedSNR = requestedSNR;
            Properties.Settings.Default.Save();

            this.UpdateUI();
        }

        #endregion Events

        private class parObject
        {
            [System.ComponentModel.DisplayName("IRange(A)")]
            public double IRange { get; set; }
            [System.ComponentModel.DisplayName("Bias(A)")]
            public double DCBias { get; }
            [System.ComponentModel.DisplayName("Amp.(A)")]
            public double ACAmplitude { get; }
            [System.ComponentModel.DisplayName("Min Z(mΩ)")]
            public double MinZ { get; }
            [System.ComponentModel.DisplayName("Max Z(mΩ)")]
            public double MaxZ { get; }

            public parObject(double iRange, double minVrms, double maxVrms)
            {
                this.IRange = iRange;
                this.DCBias = iRange / 2.0;
                this.ACAmplitude = iRange / 2.0;

                var Irms = ACAmplitude / Constants.Sqrt2;
                var min = Math.Min(minVrms, maxVrms);
                var max = Math.Max(minVrms, maxVrms);
                this.MinZ = Math.Round(min / Irms, 1);
                this.MaxZ = Math.Round(max / Irms, 1);
            }

            public int IsInRange(double expectedZ)
            {
                if (expectedZ >= this.MinZ && expectedZ <= this.MaxZ)
                    return 2;
                else if (expectedZ >= this.MinZ)
                    return 1;
                else
                    return 0;
            }
        }

        
    }
}
