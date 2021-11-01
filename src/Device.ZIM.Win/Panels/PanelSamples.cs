using MathNet.Numerics;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Numerics;
using System.Windows.Forms;
using ZiveLab.Device.ZIM.Win.Analysis;
using ZiveLab.Primer;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelSamples : UserControl
    {
        #region Public Properties

        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        [EditorBrowsable(EditorBrowsableState.Never)]
        [Bindable(false)]
        [Browsable(false)]
        public ObservableCollection<ZItem> ZData
        {
            get { return zData; }
            set
            {
                zData = value;
                UpdateUI();
            }
        }
        ObservableCollection<ZItem> zData;

        private SamplesMode samplesMode = SamplesMode.Summary;
        public SamplesMode SamplesMode
        {
            get { return samplesMode; }
            set
            {
                samplesMode = value;
                OnSamplesModeChanged(samplesMode);
            }
        }

        private void OnSamplesModeChanged(SamplesMode mode)
        {
            switch (mode)
            {
                default:
                case SamplesMode.Summary:
                    tabControl.SelectedTab = this.pageSummary;
                    break;

                case SamplesMode.LissajousCurve:
                    tabControl.SelectedTab = this.pageLissajous;
                    break;

                case SamplesMode.TimeDomain:
                    tabControl.SelectedTab = this.pageTime;
                    break;

                case SamplesMode.FrequencyDomain:
                    tabControl.SelectedTab = this.pagePower;
                    break;

                case SamplesMode.Error:
                    tabControl.SelectedTab = this.pageError;
                    break;
            }
        }

        private int index;
        public int Index
        {
            get { return index; }
            set
            {
                if (index != value)
                {
                    index = value;
                    UpdateUI();
                }
            }
        }

        #endregion Public Properties

        #region Life and Death

        public PanelSamples()
        {
            InitializeComponent();

            tabControl.ItemSize = new Size(0, 1);
            tabControl.SizeMode = TabSizeMode.Fixed;
            tabControl.SelectedTab = this.pageSummary;

            InitializeUI();
        }

        #endregion Life and Death

        #region Private Methods

        private void InitializeUI()
        {
            chartLissajous.Title = "";
            chartLissajous.ShowToolbar = false;
            chartLissajous.GraphType = GraphType.LinXLinY;
            chartLissajous.DisableAnimations = true;
            chartLissajous.Hoverable = false;
            chartLissajous.ShowDataTooltip = false;
            chartLissajous.SetXAxis1("Voltage [V]", "%#.3p");
            chartLissajous.SetYAxis1("Current [A]", "%#.3p");
            chartLissajous.AddPlot("Measured", PlotType.Line, PointType.Circle, 1, AxisIndex.Axis1, AxisIndex.Axis1);
            chartLissajous.AddPlot("Analyzed", PlotType.Line, PointType.Circle, 1, AxisIndex.Axis1, AxisIndex.Axis1);

            chartTimeV.Title = "";
            chartTimeV.ShowToolbar = false;
            chartTimeV.GraphType = GraphType.LinXLinY;
            chartTimeV.DisableAnimations = true;
            chartTimeV.Hoverable = false;
            chartTimeV.ShowDataTooltip = false;
            chartTimeV.SetXAxis1("Time [s]", "%#.3p");
            chartTimeV.SetYAxis1("Voltage [V]", "%#.3p");
            chartTimeV.AddPlot("Measured", PlotType.Line, PointType.Circle, 1, AxisIndex.Axis1, AxisIndex.Axis1);
            chartTimeV.AddPlot("Analyzed", PlotType.Line, PointType.Circle, 1, AxisIndex.Axis1, AxisIndex.Axis1);

            chartTimeI.Title = "";
            chartTimeI.ShowToolbar = false;
            chartTimeI.GraphType = GraphType.LinXLinY;
            chartTimeI.DisableAnimations = true;
            chartTimeI.Hoverable = false;
            chartTimeI.ShowDataTooltip = false;
            chartTimeI.SetXAxis1("Time [s]", "%#.3p");
            chartTimeI.SetYAxis1("Current [A]", "%#.3p");
            chartTimeI.AddPlot("Measured", PlotType.Line, PointType.Circle, 1, AxisIndex.Axis1, AxisIndex.Axis1);
            chartTimeI.AddPlot("Analyzed", PlotType.Line, PointType.Circle, 1, AxisIndex.Axis1, AxisIndex.Axis1);

            chartPowerV.Title = "";
            chartPowerV.ShowToolbar = false;
            chartPowerV.GraphType = GraphType.LogXLinY;
            chartPowerV.DisableAnimations = true;
            chartPowerV.Hoverable = false;
            chartPowerV.ShowDataTooltip = false;
            chartPowerV.SetXAxis1("Frequency [Hz]", "%#.0p");
            chartPowerV.SetYAxis1("Voltage Power [dB]", "%#.3p");
            chartPowerV.AddPlot("Measured", PlotType.Line, PointType.Circle, 0, AxisIndex.Axis1, AxisIndex.Axis1);
            chartPowerV.Chart.AxisY[0].MaxValue = 0.0;

            chartPowerI.Title = "";
            chartPowerI.ShowToolbar = false;
            chartPowerI.GraphType = GraphType.LogXLinY;
            chartPowerI.DisableAnimations = true;
            chartPowerI.Hoverable = false;
            chartPowerI.ShowDataTooltip = false;
            chartPowerI.SetXAxis1("Frequency [Hz]", "%#.0p");
            chartPowerI.SetYAxis1("Current Power [dB]", "%#.3p");
            chartPowerI.AddPlot("Measured", PlotType.Line, PointType.Circle, 0, AxisIndex.Axis1, AxisIndex.Axis1);
            chartPowerI.Chart.AxisY[0].MaxValue = 0.0;

            chartErrorV.Title = "";
            chartErrorV.ShowToolbar = false;
            chartErrorV.GraphType = GraphType.LinXLinY;
            chartErrorV.DisableAnimations = true;
            chartErrorV.Hoverable = false;
            chartErrorV.ShowDataTooltip = false;
            chartErrorV.SetXAxis1("Time [s]", "%#.3p");
            chartErrorV.SetYAxis1("Error Voltage [V]", "%#.3p");
            chartErrorV.AddPlot("Error", PlotType.Line, PointType.Circle, 1, AxisIndex.Axis1, AxisIndex.Axis1);

            chartErrorI.Title = "";
            chartErrorI.ShowToolbar = false;
            chartErrorI.GraphType = GraphType.LinXLinY;
            chartErrorI.DisableAnimations = true;
            chartErrorI.Hoverable = false;
            chartErrorI.ShowDataTooltip = false;
            chartErrorI.SetXAxis1("Time [s]", "%#.3p");
            chartErrorI.SetYAxis1("Error Current [A]", "%#.3p");
            chartErrorI.AddPlot("Error", PlotType.Line, PointType.Circle, 1, AxisIndex.Axis1, AxisIndex.Axis1);
        }

        WaveForm waveformV;
        WaveForm waveformI;
        private void UpdateUI()
        {
            if (ZData == null || ZData.Count == 0) return;
            if (Index < 0 || Index >= ZData.Count) return;

            if (ZData[Index].VoltageSamples == null || ZData[Index].VoltageSamples.Count == 0) return;
            if (ZData[Index].CurrentSamples == null || ZData[Index].CurrentSamples.Count == 0) return;

            waveformV = new WaveForm(ZData[Index], true);
            waveformI = new WaveForm(ZData[Index], false);

            // Summary
            var pairs = waveformV.ToKeyValuePairs();
            pairs.AddRange(waveformI.ToKeyValuePairs());
            pairs.Add(new KeyValuePair<string, string>("[Impedance]", ""));

            Complex z = waveformV.Component / waveformI.Component;
            NumericFormatter NF = new NumericFormatter();
            pairs.Add(new KeyValuePair<string, string>("Real", string.Format(NF, "{0:%.3pΩ}", z.Real)));
            pairs.Add(new KeyValuePair<string, string>("Imaginary", string.Format(NF, "{0:%.3pΩ}", z.Imaginary)));
            pairs.Add(new KeyValuePair<string, string>("Magnitude", string.Format(NF, "{0:%.3pΩ}", z.Magnitude)));
            pairs.Add(new KeyValuePair<string, string>("Phase", string.Format(NF, "{0:%.3f°}", z.Phase * 180.0 / Constants.Pi)));
            panelSummary.Pairs = pairs;
            panelSummary.Refresh();
                   
            int nth = 4; // To speed up, get every nth points only.

            // chartLissajous
            var lissajous_X1 = waveformV.Samples.Where((v, i) => i % nth == 0).ToArray();
            var lissajous_Y1 = waveformI.Samples.Where((v, i) => i % nth == 0).ToArray();
            var lissajous_X2 = waveformV.BaseSignal.Where((v, i) => i % nth == 0).ToArray();
            var lissajous_Y2 = waveformI.BaseSignal.Where((v, i) => i % nth == 0).ToArray();
            chartLissajous.PlotXY(0, lissajous_X1, lissajous_Y1);
            chartLissajous.PlotXY(1, lissajous_X2, lissajous_Y2);

            // chartTimeV
            var timeV_X = waveformV.Times.Where((v, i) => i % nth == 0).ToArray();
            var timeV_Y1 = waveformV.Samples.Where((v, i) => i % nth == 0).ToArray();
            var timeV_Y2 = waveformV.BaseSignal.Where((v, i) => i % nth == 0).ToArray();
            chartTimeV.PlotXY(0, timeV_X, timeV_Y1);
            chartTimeV.PlotXY(1, timeV_X, timeV_Y2);

            // chartTimeI
            var timeI_X = waveformI.Times.Where((v, i) => i % nth == 0).ToArray();
            var timeI_Y1 = waveformI.Samples.Where((v, i) => i % nth == 0).ToArray();
            var timeI_Y2 = waveformI.BaseSignal.Where((v, i) => i % nth == 0).ToArray();
            chartTimeI.PlotXY(0, timeI_X, timeI_Y1);
            chartTimeI.PlotXY(1, timeI_X, timeI_Y2);

            // chartPowerV
            var powerV_X = waveformV.Frequencies.Where((v, i) => i > 0).ToArray(); // remove DC component
            var powerV_Y1 = waveformV.PowerIndB.Where((v, i) => i > 0).ToArray();
            chartPowerV.PlotXY(0, powerV_X, powerV_Y1);

            // chartPowerI
            var powerI_X = waveformI.Frequencies.Where((v, i) => i > 0).ToArray();
            var powerI_Y1 = waveformI.PowerIndB.Where((v, i) => i > 0).ToArray();
            chartPowerI.PlotXY(0, powerI_X, powerI_Y1);

            // chartErrorV
            var errorV_X = waveformV.Times.Where((v, i) => i % nth == 0).ToArray();
            var errorV_Y1 = waveformV.ErrorSignal.Where((v, i) => i % nth == 0).ToArray();
            chartErrorV.PlotXY(0, errorV_X, errorV_Y1);

            // chartErrorI
            var errorI_X = waveformI.Times.Where((v, i) => i % nth == 0).ToArray();
            var errorI_Y1 = waveformI.ErrorSignal.Where((v, i) => i % nth == 0).ToArray();
            chartErrorI.PlotXY(0, errorI_X, errorI_Y1);
        }

        #endregion Private Methods
    }
}
