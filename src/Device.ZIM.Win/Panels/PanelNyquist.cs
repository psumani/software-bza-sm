using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Windows.Forms;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelNyquist : UserControl
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
                chart.DisableAnimations = false;
                UpdateUI();
                chart.DisableAnimations = true;
            }
        }
        ObservableCollection<ZItem> zData;

        #endregion Public Properties

        #region Life and Death

        public bool ShowToolbar
        {
            get { return chart.ShowToolbar; }
            set
            {
                chart.ShowToolbar = value;
            }
        }
        public PanelNyquist()
        {
            InitializeComponent();

            DoubleBuffered = true;

            InitializeUI();
        }

        #endregion Life and Death

        #region Private Methods

        private void InitializeUI()
        {
            chart.AxisY_Count = 1;
            chart.Title = "";
            chart.ShowToolbar = false;
            chart.GraphType = GraphType.LinXLinY;
            chart.DisableAnimations = true;
            chart.Hoverable = true;
            chart.ShowDataTooltip = true;
            chart.SetXAxis1("Zreal [Ω]", "%#.3p");
            chart.SetYAxis1("-Zimag [Ω]", "%#.3p");
            chart.AddPlot("-Zimag", PlotType.LineSymbol, PointType.Circle, 1, AxisIndex.Axis1, AxisIndex.Axis1);
        }

        private void UpdateUI()
        {
            if (ZData == null)
            {
                chart.PlotXYClear(0);
            }
            else
            {
                var items = ZData.Select(z => z.Impedance);
                var x = items.Select(z => z.Real).ToArray();
                var y = items.Select(z => -z.Imaginary).ToArray();

                chart.PlotXY(0, x, y);
            }
        }

        #endregion Private Methods
    }
}
