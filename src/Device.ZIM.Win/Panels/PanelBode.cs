using MathNet.Numerics;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Windows.Forms;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelBode : UserControl
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

        public PanelBode()
        {
            InitializeComponent();

            DoubleBuffered = true;

            InitializeUI();
        }

        #endregion Life and Death

        #region Private Methods

        private void InitializeUI()
        {
            chart.AxisY_Count = 2;
            chart.Title = "";
            chart.DisableAnimations = true;
            chart.Hoverable = true;
            chart.ShowToolbar = false;
            chart.ShowDataTooltip = true;
            chart.GraphType = GraphType.LogXLogYLinY;
            chart.SetXAxis1("Frequency [Hz]", "%#.3p");
            chart.SetYAxis1("Zmod [Ω]", "%#.3p");
            chart.SetYAxis2("Phase [°]", "%#.3f");
            chart.AddPlot("Zmod", PlotType.LineSymbol, PointType.Circle, 1, AxisIndex.Axis1, AxisIndex.Axis1);
            chart.AddPlot("Phase", PlotType.LineSymbol, PointType.Circle, 1, AxisIndex.Axis1, AxisIndex.Axis2);
        }
        
        private void UpdateUI()
        {
            if (ZData == null)
            {
                chart.PlotXYClear(0);
                chart.PlotXYClear(1);
            }
            else
            {
                var x = ZData.Select(v => v.Frequency).ToArray();

                var items = ZData.Select(v => v.Impedance);
                var y1 = items.Select(z => z.Magnitude).ToArray();
                var y2 = items.Select(z => z.Phase * 180 / Constants.Pi).ToArray();

                // Remove NaN points
                List<double> xx = new List<double>();
                List<double> yy1 = new List<double>();
                List<double> yy2 = new List<double>();
                for (int i = 0; i < x.Length; i++)
                {
                    if (!double.IsNaN(x[i]) && !double.IsNaN(y1[i]))
                    {
                        xx.Add(x[i]);
                        yy1.Add(y1[i]);
                        yy2.Add(y2[i]);
                    }
                }

                chart.PlotXY(0, xx, yy1);
                chart.PlotXY(1, xx, yy2);
            }
        }

        #endregion Private Methods
    }
}
