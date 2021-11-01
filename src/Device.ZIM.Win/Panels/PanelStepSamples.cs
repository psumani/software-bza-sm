using System.ComponentModel;
using System.Windows.Forms;
using ZiveLab.Device.ZIM.Win.Panels;

namespace ZiveLab.Device.ZIM.Win.SubPanels
{
    public partial class PanelStepSamples : UserControl
    {
        #region Public Properties

        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        [EditorBrowsable(EditorBrowsableState.Never)]
        [Bindable(false)]
        [Browsable(false)]
        public StepSamples Samples
        {
            get { return samples; }
            set
            {
                samples = value;
                UpdateUI();
            }
        }
        StepSamples samples;

        #endregion Public Properties

        #region Life and Death

        public PanelStepSamples()
        {
            InitializeComponent();

            DoubleBuffered = true;

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
        }

        private void UpdateUI()
        {
            if (Samples == null)
            {
                chartLissajous.PlotXYClear(0);
            }
            else
            {
                chartLissajous.PlotXY(0, Samples.VoltageSamples, Samples.CurrentSamples);
            }
        }

        #endregion Private Methods
    }
}
