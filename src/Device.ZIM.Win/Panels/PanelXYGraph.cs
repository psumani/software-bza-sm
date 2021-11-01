using LiveCharts;
using LiveCharts.Configurations;
using LiveCharts.Defaults;
using LiveCharts.Wpf;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Forms;
using System.Windows.Media;
using ZiveLab.Primer;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelXYGraph : UserControl
    {
        #region Public Properties

        public int AxisY_Count = 1;
        private string title = "Untitled";
        public string Title
        {
            get { return title; }
            set
            {
                title = value;
                labelTitle.Text = title;
                panelTitle.Visible = !string.IsNullOrWhiteSpace(title);
            }
        }

        private GraphType graphType = GraphType.LinXLinY;
        public GraphType GraphType
        {
            get { return graphType; }
            set
            {
                OnGraphTypeChanged(value);
            }
        }

        private bool disableAnimations = true;
        public bool DisableAnimations
        {
            get { return disableAnimations; }
            set
            {
                disableAnimations = value;
                chart.DisableAnimations = disableAnimations;
            }
        }

        private bool hoverable = false;
        public bool Hoverable
        {
            get { return hoverable; }
            set
            {
                hoverable = value;
                chart.Hoverable = hoverable;
            }
        }

        private bool showDataTooltip = true;
        public bool ShowDataTooltip
        {
            get { return showDataTooltip; }
            set
            {
                showDataTooltip = value;
                if (!showDataTooltip)
                    chart.DataTooltip = null;
            }
        }

        public LiveCharts.WinForms.CartesianChart Chart { get { return chart; } }

        public SeriesCollection SeriesCollection;

        private bool showToolbar = true;
        public bool ShowToolbar
        {
            get { return showToolbar; }
            set
            {
                showToolbar = value;
                panelToolStrip.Visible = showToolbar;
            }
        }

        #endregion Public Properties

        #region Life and Death

        public PanelXYGraph()
        {
            InitializeComponent();

            DoubleBuffered = true;
        }

        #endregion Life and Death

        #region Private Methods
        

        private void OnGraphTypeChanged(GraphType graphType)
        {
            NumericFormatter NF = new NumericFormatter();
            var formatString = "%#.3p";

            var LinXAxis1 = new Axis()
            {
                Title = "X Axis 1",
                LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", v),
                FontSize = 12,
            };
            var LinYAxis1 = new Axis()
            {
                Title = "Y Axis 1",
                LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", v),
                FontSize = 12,
            };
            var LinXAxis2 = new Axis()
            {
                Title = "X Axis 2",
                LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", v),
                FontSize = 12,
                Position = AxisPosition.RightTop,
            };
            var LinYAxis2 = new Axis()
            {
                Title = "Y Axis 2",
                LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", v),
                FontSize = 12,
                Position = AxisPosition.RightTop,
            };

            var LogXAxis1 = new LogarithmicAxis()
            {
                Title = "X Axis 1",
                Base = 10,
                LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", Math.Pow(10, v)),
                FontSize = 12,
            };
            var LogYAxis1 = new LogarithmicAxis()
            {
                Title = "Y Axis 1",
                Base = 10,
                LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", Math.Pow(10, v)),
                FontSize = 12,
            };
            var LogXAxis2 = new LogarithmicAxis()
            {
                Title = "X Axis 2",
                Base = 10,
                LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", Math.Pow(10, v)),
                FontSize = 12,
                Position = AxisPosition.RightTop,
            };
            var LogYAxis2 = new LogarithmicAxis()
            {
                Title = "Y Axis 2",
                Base = 10,
                LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", Math.Pow(10, v)),
                FontSize = 12,
                Position = AxisPosition.RightTop,
            };

            switch (graphType)
            {
                default:
                case GraphType.LinXLinY:
                    chart.AxisX = new AxesCollection() { LinXAxis1 };
                    chart.AxisY = new AxesCollection() { LinYAxis1 };
                    break;

                case GraphType.LinXLogY:
                    chart.AxisX = new AxesCollection() { LinXAxis1 };
                    chart.AxisY = new AxesCollection() { LogYAxis1 };
                    break;

                case GraphType.LogXLinY:
                    chart.AxisX = new AxesCollection() { LogXAxis1 };
                    chart.AxisY = new AxesCollection() { LinYAxis1 };
                    break;

                case GraphType.LogXLogY:
                    chart.AxisX = new AxesCollection() { LogXAxis1 };
                    chart.AxisY = new AxesCollection() { LogYAxis1 };
                    break;

                case GraphType.LinXLinYLinY:
                    chart.AxisX = new AxesCollection() { LinXAxis1 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LinYAxis2 };
                    break;

                case GraphType.LinXLinYLogY:
                    chart.AxisX = new AxesCollection() { LinXAxis1 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LogYAxis2 };
                    break;

                case GraphType.LinXLogYLinY:
                    chart.AxisX = new AxesCollection() { LinXAxis1 };
                    chart.AxisY = new AxesCollection() { LogYAxis1, LinYAxis2 };
                    break;

                case GraphType.LinXLogYLogY:
                    chart.AxisX = new AxesCollection() { LinXAxis1 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LogYAxis2 };
                    break;

                case GraphType.LogXLinYLinY:
                    chart.AxisX = new AxesCollection() { LogXAxis1 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LinYAxis2 };
                    break;

                case GraphType.LogXLinYLogY:
                    chart.AxisX = new AxesCollection() { LogXAxis1 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LogYAxis2 };
                    break;

                case GraphType.LogXLogYLinY:
                    chart.AxisX = new AxesCollection() { LogXAxis1 };
                    chart.AxisY = new AxesCollection() { LogYAxis1, LinYAxis2 };
                    break;

                case GraphType.LogXLogYLogY:
                    chart.AxisX = new AxesCollection() { LogXAxis1 };
                    chart.AxisY = new AxesCollection() { LogYAxis1, LogYAxis2 };
                    break;

                case GraphType.LinXLinYLinXLinY:
                    chart.AxisX = new AxesCollection() { LinXAxis1, LinXAxis2 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LinYAxis2 };
                    break;

                case GraphType.LinXLinYLinXLogY:
                    chart.AxisX = new AxesCollection() { LinXAxis1, LinXAxis2 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LogYAxis2 };
                    break;

                case GraphType.LinXLinYLogXLinY:
                    chart.AxisX = new AxesCollection() { LinXAxis1, LogXAxis2 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LinYAxis2 };
                    break;

                case GraphType.LinXLinYLogXLogY:
                    chart.AxisX = new AxesCollection() { LinXAxis1, LogXAxis2 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LogYAxis2 };
                    break;

                case GraphType.LinXLogYLinXLinY:
                    chart.AxisX = new AxesCollection() { LinXAxis1, LinXAxis2 };
                    chart.AxisY = new AxesCollection() { LogYAxis1, LinYAxis2 };
                    break;

                case GraphType.LinXLogYLinXLogY:
                    chart.AxisX = new AxesCollection() { LinXAxis1, LinXAxis2 };
                    chart.AxisY = new AxesCollection() { LogYAxis1, LogYAxis2 };
                    break;

                case GraphType.LinXLogYLogXLinY:
                    chart.AxisX = new AxesCollection() { LinXAxis1, LogXAxis2 };
                    chart.AxisY = new AxesCollection() { LogYAxis1, LinYAxis2 };
                    break;

                case GraphType.LinXLogYLogXLogY:
                    chart.AxisX = new AxesCollection() { LinXAxis1, LogXAxis2 };
                    chart.AxisY = new AxesCollection() { LogYAxis1, LogYAxis2 };
                    break;

                case GraphType.LogXLinYLinXLinY:
                    chart.AxisX = new AxesCollection() { LogXAxis1, LinXAxis2 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LinYAxis2 };
                    break;

                case GraphType.LogXLinYLinXLogY:
                    chart.AxisX = new AxesCollection() { LogXAxis1, LinXAxis2 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LogYAxis2 };
                    break;

                case GraphType.LogXLinYLogXLinY:
                    chart.AxisX = new AxesCollection() { LogXAxis1, LogXAxis2 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LinYAxis2 };
                    break;

                case GraphType.LogXLinYLogXLogY:
                    chart.AxisX = new AxesCollection() { LogXAxis1, LogXAxis2 };
                    chart.AxisY = new AxesCollection() { LinYAxis1, LogYAxis2 };
                    break;
                case GraphType.LogXLogYLinXLinY:
                    chart.AxisX = new AxesCollection() { LogXAxis1, LinXAxis2 };
                    chart.AxisY = new AxesCollection() { LogYAxis1, LinYAxis2 };
                    break;

                case GraphType.LogXLogYLinXLogY:
                    chart.AxisX = new AxesCollection() { LogXAxis1, LinXAxis2 };
                    chart.AxisY = new AxesCollection() { LogYAxis1, LogYAxis2 };
                    break;

                case GraphType.LogXLogYLogXLinY:
                    chart.AxisX = new AxesCollection() { LogXAxis1, LogXAxis2 };
                    chart.AxisY = new AxesCollection() { LogYAxis1, LinYAxis2 };
                    break;

                case GraphType.LogXLogYLogXLogY:
                    chart.AxisX = new AxesCollection() { LogXAxis1, LogXAxis2 };
                    chart.AxisY = new AxesCollection() { LogYAxis1, LogYAxis2 };
                    break;
            }

            SeriesCollection = new SeriesCollection();
            chart.Series = SeriesCollection;
        }
        
        private Geometry PointTypeToGeometry(PointType pointType)
        {
            switch (pointType)
            {
                default:
                case PointType.Circle:
                    return DefaultGeometries.Circle;

                case PointType.Cross:
                    return DefaultGeometries.Cross;

                case PointType.Diamond:
                    return DefaultGeometries.Diamond;

                case PointType.Square:
                    return DefaultGeometries.Square;

                case PointType.Triangle:
                    return DefaultGeometries.Triangle;
            }
        }

        #endregion Private Methods

        #region Public Methods

        public void RefreshGraph()
        {
            int ycount = AxisY_Count;
            if (chart.AxisX == null && chart.AxisX.Count < 1) throw new NullReferenceException();
            chart.AxisX[0].MinValue = double.NaN;
            chart.AxisX[0].MaxValue = double.NaN;
            if (ycount < chart.AxisX.Count) ycount = chart.AxisX.Count;

            for (int i = 0; i < ycount; i++)
            {
                chart.AxisY[i].MinValue = double.NaN;
                chart.AxisY[i].MaxValue = double.NaN;
            }
        }

        public void SetXAxis1(string title = "XAxis1", string formatString = "%#.3p")
        {
            if (chart.AxisX == null && chart.AxisX.Count < 1) throw new NullReferenceException();

            var axis = chart.AxisX[0];
            axis.Title = title;

            NumericFormatter NF = new NumericFormatter();
            if (axis.GetType() == typeof(LogarithmicAxis))
            {
                axis.LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", Math.Pow(10, v));
            }
            else
            {
                axis.LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", v);
            }
        }

        public void SetXAxis2(string title = "XAxis1", string formatString = "%#.3p")
        {
            if (chart.AxisX == null && chart.AxisX.Count < 2) throw new NullReferenceException();

            var axis = chart.AxisX[1];
            axis.Title = title;

            NumericFormatter NF = new NumericFormatter();
            if (axis.GetType() == typeof(LogarithmicAxis))
            {
                axis.LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", Math.Pow(10, v));
            }
            else
            {
                axis.LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", v);
            }
        }

        public void SetYAxis1(string title = "YAxis1", string formatString = "%#.3p")
        {
            if (chart.AxisY == null && chart.AxisY.Count < 1) throw new NullReferenceException();

            var axis = chart.AxisY[0];
            axis.Title = title;

            NumericFormatter NF = new NumericFormatter();
            if (axis.GetType() == typeof(LogarithmicAxis))
            {
                axis.LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", Math.Pow(10, v));
            }
            else
            {
                axis.LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", v);
            }
        }

        public void SetYAxis2(string title = "YAxis1", string formatString = "%#.3p")
        {
            if (chart.AxisY == null && chart.AxisY.Count < 2) throw new NullReferenceException();

            var axis = chart.AxisY[1];
            axis.Title = title;

            NumericFormatter NF = new NumericFormatter();
            if (axis.GetType() == typeof(LogarithmicAxis))
            {
                axis.LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", Math.Pow(10, v));
            }
            else
            {
                axis.LabelFormatter = v => string.Format(NF, "{0:" + formatString + "}", v);
            }
        }

        public void AddPlot(string title, PlotType plotType = PlotType.Line, PointType pointType = PointType.Circle, double lineSmootheness = 1, AxisIndex axisXat = 0, AxisIndex axisYat = 0)
        {
            var xAxis = (int)axisXat;
            var yAxis = (int)axisYat;

            if (xAxis < 0 || xAxis >= chart.AxisX.Count) throw new IndexOutOfRangeException();
            if (yAxis < 0 || yAxis >= chart.AxisY.Count) throw new IndexOutOfRangeException();

            object mapper;
            if (chart.AxisX[xAxis].GetType() == typeof(LogarithmicAxis))
            {
                if (chart.AxisY[yAxis].GetType() == typeof(LogarithmicAxis))
                {
                    mapper = Mappers.Xy<ObservablePoint>()
                        .X(point => Math.Log10(point.X))
                        .Y(point => Math.Log10(point.Y));
                }
                else
                {
                    mapper = Mappers.Xy<ObservablePoint>()
                        .X(point => Math.Log10(point.X))
                        .Y(point => point.Y);
                }
            }
            else
            {
                if (chart.AxisY[yAxis].GetType() == typeof(LogarithmicAxis))
                {
                    mapper = Mappers.Xy<ObservablePoint>()
                        .X(point => point.X)
                        .Y(point => Math.Log10(point.Y));
                }
                else
                {
                    mapper = Mappers.Xy<ObservablePoint>()
                        .X(point => point.X)
                        .Y(point => point.Y);
                }
            }
            
            Series plot;
            var plotValues = new ChartValues<ObservablePoint>();
            if (plotType == PlotType.Scatter)
            {
                plot = new ScatterSeries(mapper)
                {
                    PointGeometry = PointTypeToGeometry(pointType),
                };
            }
            else if (plotType == PlotType.Line)
            {
                plot = new LineSeries(mapper)
                {
                    PointGeometry = Geometry.Empty,
                    LineSmoothness = Math.Min(1.0, Math.Max(0.0, lineSmootheness)),
                };
            }
            else // (plotType == PlotType.LineSymbol)
            {
                plot = new LineSeries(mapper)
                {
                    PointGeometry = PointTypeToGeometry(pointType),
                    LineSmoothness = Math.Min(1.0, Math.Max(0.0, lineSmootheness)),
                };
            }

            plot.Title = title;
            plot.Values = new ChartValues<ObservablePoint>();
            plot.ScalesXAt = xAxis;
            plot.ScalesYAt = yAxis;
            plot.Fill = System.Windows.Media.Brushes.Transparent;

            SeriesCollection.Add(plot);
        }

        public void ChangePlot(int index, string title, PlotType plotType = PlotType.Line, PointType pointType = PointType.Circle, double lineSmootheness = 1, AxisIndex axisXat = 0, AxisIndex axisYat = 0)
        {
            var xAxis = (int)axisXat;
            var yAxis = (int)axisYat;

            if (SeriesCollection == null) throw new Exception("SeriesCollection is null");
            if (index < 0 || index >= SeriesCollection.Count) throw new IndexOutOfRangeException();
            if (xAxis < 0 || xAxis >= chart.AxisX.Count) throw new IndexOutOfRangeException();
            if (yAxis < 0 || yAxis >= chart.AxisY.Count) throw new IndexOutOfRangeException();

            var plot = SeriesCollection[index];
            var plotValues = SeriesCollection[index].Values;

            object mapper;
            if (chart.AxisX[xAxis].GetType() == typeof(LogarithmicAxis))
            {
                if (chart.AxisY[yAxis].GetType() == typeof(LogarithmicAxis))
                {
                    mapper = Mappers.Xy<ObservablePoint>()
                        .X(point => Math.Log10(point.X))
                        .Y(point => Math.Log10(point.Y));
                }
                else
                {
                    mapper = Mappers.Xy<ObservablePoint>()
                        .X(point => Math.Log10(point.X))
                        .Y(point => point.Y);
                }
            }
            else
            {
                if (chart.AxisY[yAxis].GetType() == typeof(LogarithmicAxis))
                {
                    mapper = Mappers.Xy<ObservablePoint>()
                        .X(point => point.X)
                        .Y(point => Math.Log10(point.Y));
                }
                else
                {
                    mapper = Mappers.Xy<ObservablePoint>()
                        .X(point => point.X)
                        .Y(point => point.Y);
                }
            }

            if (plotType == PlotType.Scatter)
            {
                plot = new ScatterSeries(mapper)
                {
                    Title = title,
                    PointGeometry = PointTypeToGeometry(pointType),
                };
            }
            else if (plotType == PlotType.Line)
            {
                plot = new LineSeries(mapper)
                {
                    Title = title,
                    PointGeometry = Geometry.Empty,
                    LineSmoothness = Math.Min(1.0, Math.Max(0.0, lineSmootheness)),
                };
            }
            else // (plotType == PlotType.LineSymbol)
            {
                plot = new LineSeries(mapper)
                {
                    Title = title,
                    PointGeometry = PointTypeToGeometry(pointType),
                    LineSmoothness = Math.Min(1.0, Math.Max(0.0, lineSmootheness)),
                };
            }

            plot.Values = plotValues;
            plot.ScalesXAt = xAxis;
            plot.ScalesYAt = yAxis;
        }

        public void RemovePlot(int index)
        {
            if (SeriesCollection == null) throw new Exception("SeriesCollection is null");
            if (index < 0 || index >= SeriesCollection.Count) throw new IndexOutOfRangeException();

            SeriesCollection.RemoveAt(index);
        }

        /// <summary>
        /// Plots y values against x values by appending the x and y value to the existing data.
        /// </summary>
        public void PlotXYAppend(int index, double[] x, double[] y)
        {
            if (x == null || x.Length < 1 || y == null || y.Length < 1) return;
            if (x.Length != y.Length) throw new Exception("Length of x and y are different.");
            if (index < 0 || index >= SeriesCollection.Count) throw new IndexOutOfRangeException();
            if (SeriesCollection == null) throw new Exception("SeriesCollecion is null.");

            var series = SeriesCollection.Where(v => v.Values == SeriesCollection[index].Values).ToList();
            if (series == null || series.Count == 0) return;
            var seriesView = series[0];

            var points = new ObservablePoint[x.Length];
            for (int i = 0; i < x.Length; i++)
            {
                points[i] = new ObservablePoint(x[i], y[i]);
            }
            seriesView.Values.AddRange(points);
        }

        /// <summary>
        /// Plots an array of y values against an array of x values.
        /// </summary>
        public void PlotXY(int index, double[] x, double[] y)
        {
            if (x == null || x.Length < 1 || y == null || y.Length < 1)
            {
                chart.DisableAnimations = true;
                var series = SeriesCollection.Where(v => v.Values == SeriesCollection[index].Values).ToList();
                if (series == null || series.Count == 0) return;
                var seriesView = series[0];
                seriesView.Values.Clear();
            }
            else
            {
                chart.DisableAnimations = this.DisableAnimations;
            }
            if (x.Length != y.Length) throw new Exception("Length of x and y are different.");
            if (SeriesCollection == null || SeriesCollection.Count == 0) throw new NullReferenceException("SeriesCollection");
            if (index < 0 || index >= SeriesCollection.Count) throw new IndexOutOfRangeException();
            if (SeriesCollection == null) throw new Exception("SeriesCollecion is null.");

            try
            {
                var series = SeriesCollection.Where(v => v.Values == SeriesCollection[index].Values).ToList();
                if (series == null || series.Count == 0) return;
                var seriesView = series[0];

                if (seriesView.Values.Count == x.Length)
                {
                    for (int i = 0; i < x.Length; i++)
                    {
                        //var point = seriesView.Values[i] as ObservablePoint;
                        //if (point.X != x[i] && point.Y != y[i])
                            seriesView.Values[i] = new ObservablePoint(x[i], y[i]);
                    }
                }
                else if (seriesView.Values.Count < x.Length)
                {
                    for (int i = 0; i < seriesView.Values.Count; i++)
                    {
                        //var point = seriesView.Values[i] as ObservablePoint;
                        //if (point.X != x[i] && point.Y != y[i])
                            seriesView.Values[i] = new ObservablePoint(x[i], y[i]);
                    }
                    var points = new ObservablePoint[x.Length - seriesView.Values.Count];
                    for (int i = 0; i < x.Length - seriesView.Values.Count; i++)
                    {
                        points[i] = new ObservablePoint(x[seriesView.Values.Count + i], y[seriesView.Values.Count + i]);
                    }
                    seriesView.Values.AddRange(points);
                }
                else
                {
                    for (int i = 0; i < x.Length; i++)
                    {
                        //var point = seriesView.Values[i] as ObservablePoint;
                        //if (point.X != x[i] && point.Y != y[i])
                            seriesView.Values[i] = new ObservablePoint(x[i], y[i]);
                    }
                    for (int i = seriesView.Values.Count - 1; i >= x.Length; i--)
                    {
                        seriesView.Values.RemoveAt(i);
                    }
                }
            }
            catch
            { }
        }

        /// <summary>
        /// Plots a list of y values against a list of x values.
        /// </summary>
        public void PlotXY(int index, List<double> x, List<double> y)
        {
            PlotXY(index, x.ToArray(), y.ToArray());
        }

        /// <summary>
        /// Plots an observableCollection of y values against an ObservableCollection of x values.
        /// </summary>
        public void PlotXY(int index, ObservableCollection<double> x, ObservableCollection<double> y)
        {
            PlotXY(index, x.ToArray(), y.ToArray());
        }

        /// <summary>
        /// Clear values in the indexed plot.
        /// </summary>
        public void PlotXYClear(int index)
        {
            var x = new double[0];
            var y = new double[0];
            PlotXY(index, x, y);
        }


        #endregion Public Methods

        private void cmdPoint_Click(object sender, EventArgs e)
        {
            
            chart.Pan = PanningOptions.None;
            chart.Zoom = ZoomingOptions.None;
            chart.Cursor = Cursors.Arrow;
            RefreshGraph();
            cmdPoint.Checked = true;
            cmdPanXY.Checked = false;
            cmdPanX.Checked = false;
            cmdPanY.Checked = false;
            cmdZoomIn.Checked = false;
            cmdZoomPoint.Checked = false;
            cmdZoomOut.Checked = false;
            cmdCursor.Checked = false;
            cmdAutoScaleXY.Checked = false;
            cmdAutoScaleX.Checked = false;
            cmdAutoScaleY.Checked = false;
        }

        private void cmdPanXY_Click(object sender, EventArgs e)
        {
            chart.Zoom = ZoomingOptions.None;
            chart.Pan = PanningOptions.Xy;
            chart.Cursor = Cursors.Hand;
            cmdPoint.Checked = false;
            cmdPanXY.Checked = true;
            cmdPanX.Checked = false;
            cmdPanY.Checked = false;
            cmdZoomIn.Checked = false;
            cmdZoomPoint.Checked = false;
            cmdZoomOut.Checked = false;
            cmdCursor.Checked = false;
            cmdAutoScaleXY.Checked = false;
            cmdAutoScaleX.Checked = false;
            cmdAutoScaleY.Checked = false;
        }

        private void cmdPanX_Click(object sender, EventArgs e)
        {
            chart.Zoom = ZoomingOptions.None;
            chart.Pan = PanningOptions.X;
            chart.Cursor = Cursors.Hand;
            cmdPoint.Checked = false;
            cmdPanXY.Checked = false;
            cmdPanX.Checked = true;
            cmdPanY.Checked = false;
            cmdZoomIn.Checked = false;
            cmdZoomPoint.Checked = false;
            cmdZoomOut.Checked = false;
            cmdCursor.Checked = false;
            cmdAutoScaleXY.Checked = false;
            cmdAutoScaleX.Checked = false;
            cmdAutoScaleY.Checked = false;
        }

        private void cmdPanY_Click(object sender, EventArgs e)
        {
            chart.Zoom = ZoomingOptions.None;
            chart.Pan = PanningOptions.Y;
            chart.Cursor = Cursors.Hand;

            cmdPoint.Checked = false;
            cmdPanXY.Checked = false;
            cmdPanX.Checked = false;
            cmdPanY.Checked = true;
            cmdZoomIn.Checked = false;
            cmdZoomPoint.Checked = false;
            cmdZoomOut.Checked = false;
            cmdCursor.Checked = false;
            cmdAutoScaleXY.Checked = false;
            cmdAutoScaleX.Checked = false;
            cmdAutoScaleY.Checked = false;
        }

        private void cmdZoomIn_Click(object sender, EventArgs e)
        {
        }

        private void cmdZoomPoint_Click(object sender, EventArgs e)
        {
            chart.Pan = PanningOptions.None;
            chart.Zoom = ZoomingOptions.Xy;
            chart.Cursor = Cursors.NoMove2D;
            cmdPoint.Checked = false;
            cmdPanXY.Checked = false;
            cmdPanX.Checked = false;
            cmdPanY.Checked = false;
            cmdZoomIn.Checked = false;
            cmdZoomPoint.Checked = true;
            cmdZoomOut.Checked = false;
            cmdCursor.Checked = false;
            cmdAutoScaleXY.Checked = false;
            cmdAutoScaleX.Checked = false;
            cmdAutoScaleY.Checked = false;
        }

        private void cmdZoomOut_Click(object sender, EventArgs e)
        {
            
        }

        private void cmdCursor_Click(object sender, EventArgs e)
        {
        
        }

        private void cmdAutoScaleXY_Click(object sender, EventArgs e)
        {
            
        }

        private void cmdAutoScaleX_Click(object sender, EventArgs e)
        {
            
        }

        private void cmdAutoScaleY_Click(object sender, EventArgs e)
        {

        }

        private void cmdMatchScale_Click(object sender, EventArgs e)
        {

        }
    }
}
