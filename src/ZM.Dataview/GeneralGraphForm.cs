using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using System.IO;
using System.Threading;
using System.Drawing.Imaging;
using System.Drawing.Printing;
using System.Diagnostics;
using NationalInstruments.UI;
using System.Collections;
using C1.Win.C1FlexGrid;
using System.Drawing.Drawing2D;
using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;
using System.Runtime.InteropServices;

namespace ZiveLab.ZM.Dataview
{
    public partial class GeneralGraphForm : Form    
    {

        public event EventHandler OpenSchEditorClick;
        public event EventHandler OpenDataEditorClick;

        public const int MAX_GRAPH_FILE = 20;
        public int MaxAuxCount;
        public int _LegendIndex = 0;
        public int _Pad = 14;
        public ToolStripMenuItem[] MenuAuxCh;
        private LineStyle[] m_LineStyle = new LineStyle[] { LineStyle.Dash, LineStyle.DashDot, LineStyle.DashDotDot, LineStyle.Dot, LineStyle.None, LineStyle.Solid };
        
        private static string[] XAxesString = new string[]
       {
           "Log(Frequency)","Zreal","Yreal","Zphase","Yphase","Rs(R-C)","Cs(R-C)","Rp(R|C)","Cp(R|C)","Rs(R-L)","Ls(R-L)","Q(R-L)","Test time","Vdc","Idc","Temperature","Frequency","Eoc","Capacity",
       };

        private static string[] Y1AxesString = new string[]
        {
           "Zreal","-Zimg","|Z|","Zphase","Yreal","-Yimg","|Y|","Yphase","Log|Z|","Log|Y|","Rs(R-C)","Cs(R-C)","Rp(R|C)","Cp(R|C)","Rs(R-L)","Ls(R-L)","Q(R-L)","Vdc","Idc","Temperature","Load","Power","Capacity","Energy","Eoc",
        };

        private static string[] YOtherAxesString = new string[]
        {
           "None","Zreal","-Zimg","|Z|","Zphase","Yreal","-Yimg","|Y|","Yphase","Log|Z|","Log|Y|","Rs(R-C)","Cs(R-C)","Rp(R|C)","Cp(R|C)","Rs(R-L)","Ls(R-L)","Q(R-L)","Vdc","Idc","Temperature","Load","Power","Capacity","Energy","Eoc",
        };


        private ToolStripComboBox[] _TscbYAxes;
        
        private Dictionary<string, AxisFormat> _XAxisDict = new Dictionary<string, AxisFormat>();
        private Dictionary<string, AxisFormat>[] _YAxesDict = new Dictionary<string, AxisFormat>[4];        
        
        private DataFilter _DataFilter = new DataFilter();

        private Pen _pen;
        private Bitmap _bmp;

        private Hashtable m_Hashtable = new Hashtable();
        private Hashtable _BgHashtable = new Hashtable();

        private List<int> _SelRowIdxList = new List<int>();
        private int _SelRowIdx = -1;
        
        // ToolStrip Button Status
        private bool _graphPoint;
        private bool _graphLine;

        // YAxes Range
        private double[] _YMin = new double[4];
        private double[] _YMax = new double[4];

        // Cursor
        private bool _XYCursor = false;

        private bool _LoadFile = false;
        private int ZSharpTarget = -1;
        
        private string[] _Files;

        private int _LangIdx = 0;

        private int _TimeFormat = 1;
        private double _graphRangeMargin = 0.02;

        // 경로
        private bool _EnAlwaysOpenPath;
        private string _AlwaysOpenPath;
        private string _SchTempPath;

        // 외부 프로그램
        private ExtAppProc _extAppPath;

        // 메시지 박스 캡션
        private string _MsgBoxCaption;

        private Node _selNode;              // FlexGridLegend Selection Node
        private int[] _selNodeIndex = { -1, -1, -1 };
        private Dictionary<int, Dictionary<int, Dictionary<int, CheckEnum>>> _savedCheckState;

        private string[] _xAxisStrings = XAxesString;
        private string[] _yAxisStrings = Y1AxesString;
        private string[] _ynAxisStrings = YOtherAxesString;

        private DataViewSet _dataviewset = null;

        public string MsgBoxCaption { set { _MsgBoxCaption = value; } }
        public int TimeFormat { set { _TimeFormat = value; } }
        public double GraphRangeMargin { set { _graphRangeMargin = value; } }
        public bool EnAlwaysOpenPath { set { _EnAlwaysOpenPath = value; } }
        public string AlwaysOpenPath { set { _AlwaysOpenPath = value; } }
        public string SchTempPath { set { _SchTempPath = value; } }
        
        public ExtAppProc ExtAppPath { set { _extAppPath = value; } }
        public DataViewSet dataviewset { set { _dataviewset = value; } }
        public GeneralGraphForm(int langidx, bool viewOpenSch = true, DataViewSet tDataViewSet = null)
        {
            InitializeComponent();

            this.Icon = Util.BitmapToIcon(Properties.Resources.AutoscaleXY);

            MaxAuxCount = 0;
            lnlAuxMenu.Visible = false;

            AuxMenuChannelsAll.Checked = true;
            MenuAuxCh = new ToolStripMenuItem[]{ AuxMenuChannel1,AuxMenuChannel2,AuxMenuChannel3,AuxMenuChannel4,AuxMenuChannel5,
                AuxMenuChannel6,AuxMenuChannel7,AuxMenuChannel8,AuxMenuChannel9,AuxMenuChannel10,AuxMenuChannel11,AuxMenuChannel12 };
            for (int i=0; i< MBZA_Constant.MAX_AUX_CHANNELS; i++)
            {
                MenuAuxCh[i].Checked = true;
            }

            _xAxisStrings = XAxesString;
            _yAxisStrings = Y1AxesString;
            _ynAxisStrings = YOtherAxesString;

            tsbtnGeneralViewScheduleInfor.Visible = viewOpenSch;

            DoubleBuffered = true;

            if (tDataViewSet == null)
                _dataviewset = DataviewCommon.LoadFromSetFile();
            else _dataviewset = tDataViewSet;

            InitGraph();
            InitToolStrip_Bottom();

            _TscbYAxes = new ToolStripComboBox[] { tscbY1Axis, tscbY2Axis, tscbY3Axis, tscbY4Axis };
            for (int i = 0; i < _YAxesDict.Length; i++) _YAxesDict[i] = new Dictionary<string, AxisFormat>();

            for (int i = 0; i < _xAxisStrings.Length; i++)
            {
                AxisFormat xAxisFormat = new AxisFormat(_xAxisStrings[i], _dataviewset._dataConvSet.UnitC);
                _XAxisDict.Add(_xAxisStrings[i], xAxisFormat);
            }
            
            for (int i = 0; i < _yAxisStrings.Length; i++)
            {
                AxisFormat y1AxisFormat = new AxisFormat(_yAxisStrings[i], _dataviewset._dataConvSet.UnitC);
                _YAxesDict[0].Add(_yAxisStrings[i], y1AxisFormat);
            }

            for (int i = 0; i < _ynAxisStrings.Length; i++)
            {
                AxisFormat y2AxisFormat = new AxisFormat(_ynAxisStrings[i], _dataviewset._dataConvSet.UnitC);
                _YAxesDict[1].Add(_ynAxisStrings[i], y2AxisFormat);
            }

            for (int i = 0; i < _ynAxisStrings.Length; i++)
            {
                AxisFormat y3AxisFormat = new AxisFormat(_ynAxisStrings[i], _dataviewset._dataConvSet.UnitC);
                _YAxesDict[2].Add(_ynAxisStrings[i], y3AxisFormat);
            }

            for (int i = 0; i < _ynAxisStrings.Length; i++)
            {
                AxisFormat y4AxisFormat = new AxisFormat(_ynAxisStrings[i], _dataviewset._dataConvSet.UnitC);
                _YAxesDict[3].Add(_ynAxisStrings[i], y4AxisFormat);
            }
            
            SetLanguage(langidx);

            InitRangeMinMax();
        }

        public GeneralGraphForm(string[] files, int langidx,bool viewOpenSch = true)
        {
            InitializeComponent();

            _xAxisStrings = XAxesString;
            _yAxisStrings = Y1AxesString;
            _ynAxisStrings = YOtherAxesString;

            tsbtnGeneralViewScheduleInfor.Visible = viewOpenSch;

            DoubleBuffered = true;

            InitGraph();
            InitToolStrip_Bottom();

            _TscbYAxes = new ToolStripComboBox[] { tscbY1Axis, tscbY2Axis, tscbY3Axis, tscbY4Axis };
            for (int i = 0; i < _YAxesDict.Length; i++) _YAxesDict[i] = new Dictionary<string, AxisFormat>();

            for (int i = 0; i < _xAxisStrings.Length; i++)
            {
                AxisFormat xAxisFormat = new AxisFormat(_xAxisStrings[i], _dataviewset._dataConvSet.UnitC);
                _XAxisDict.Add(_xAxisStrings[i], xAxisFormat);
            }

            for (int i = 0; i < _yAxisStrings.Length; i++)
            {
                AxisFormat y1AxisFormat = new AxisFormat(_yAxisStrings[i], _dataviewset._dataConvSet.UnitC);
                _YAxesDict[0].Add(_yAxisStrings[i], y1AxisFormat);
            }

            for (int i = 0; i < _ynAxisStrings.Length; i++)
            {
                AxisFormat y2AxisFormat = new AxisFormat(_ynAxisStrings[i], _dataviewset._dataConvSet.UnitC);
                _YAxesDict[1].Add(_ynAxisStrings[i], y2AxisFormat);
            }

            for (int i = 0; i < _ynAxisStrings.Length; i++)
            {
                AxisFormat y3AxisFormat = new AxisFormat(_ynAxisStrings[i], _dataviewset._dataConvSet.UnitC);
                _YAxesDict[2].Add(_ynAxisStrings[i], y3AxisFormat);
            }

            for (int i = 0; i < _ynAxisStrings.Length; i++)
            {
                AxisFormat y4AxisFormat = new AxisFormat(_ynAxisStrings[i], _dataviewset._dataConvSet.UnitC);
                _YAxesDict[3].Add(_ynAxisStrings[i], y4AxisFormat);
            }

            SetLanguage(langidx);

            InitRangeMinMax();

            _LoadFile = true;
            _Files = files;
        }

        public void SetLanguage(int langidx)
        {
            _LangIdx = langidx;

            Properties.Resources.Culture = DataviewCommon.SetLanguage(this, langidx, typeof(GeneralGraphForm), new ContextMenuStrip[] { contextMenuCheckItem });

            SetYAxisCaptionOrientation();

            InitToolStripLabel();

            ribbonLabel1.Text = Properties.Resources.IDLE;
        }

        private void SetYAxisCaptionOrientation()
        {
            if (_LangIdx == 0) // 영어
            {
                for (int i = 0; i < scGraph.YAxes.Count; i++)
                {
                    scGraph.YAxes[i].LeftCaptionOrientation = VerticalCaptionOrientation.BottomToTop;
                    //scGraph.YAxes[i].RightCaptionOrientation = VerticalCaptionOrientation.TopToBottom;
                    scGraph.YAxes[i].RightCaptionOrientation = VerticalCaptionOrientation.BottomToTop;
                }
            }
            else if (_LangIdx == 1) // 한국어
            {
                for (int i = 0; i < scGraph.YAxes.Count; i++)
                {
                    scGraph.YAxes[i].LeftCaptionOrientation = VerticalCaptionOrientation.TopToBottom;
                    scGraph.YAxes[i].RightCaptionOrientation = VerticalCaptionOrientation.TopToBottom;
                }
            }
        }

        private void InitToolStripLabel()
        {
            tsbtnGeneralOpenDataFile.ToolTipText = Properties.Resources.Open_Data_File;
            tsbtnGeneralUnloadData.ToolTipText = Properties.Resources.Unload_Selected_File_on_Graph;
            /*
            tsbtnBodeGraph.ToolTipText = Properties.Resources.Bode_Graph;
            tsbtnNyquistGraph.ToolTipText = Properties.Resources.Nyquist_Graph;
            tsbtnRsCsFreqGraph.ToolTipText = Properties.Resources.RsCs_vs_Freq_Graph;
            tsbtnZreVdcvsTimeGraph.ToolTipText = Properties.Resources.Zre_Vdc_vsTime_Graph;
            tsbtnCsCpvsTimeGraph.ToolTipText = Properties.Resources.Cs_Cp_vs_TimeGraph;
            tsbtnVdcTempvsTime.ToolTipText = Properties.Resources.Vdc_Temp_vs_TimeGraph_vs_Time_graph;
            tsbtnEocTempvsTime.ToolTipText = Properties.Resources.Eoc_Temp_vs_TimeGraph;
            tsbtnRsRpvsTime.ToolTipText = Properties.Resources.Cs_Rp_vs_TimeGraph;
            tsbtnZTvsVdc.ToolTipText = Properties.Resources.Zre_Temp_vs_Vdc_Graph;
            tsbtnErefDivIvsTimeGraph.ToolTipText = Properties.Resources.Eref_s_I_vs_Time_Graph;
            tsbtnErefvsAbsQGraph.ToolTipText = Properties.Resources.Eref_vs_AbsQ_Graph;
            */
            tsbtnGeneralViewHideRestData.ToolTipText = Properties.Resources.View_s_Hide_REST_Data;
            tsbtnGeneralPlotAdvSetting.ToolTipText = Properties.Resources.Graph_Axes_and_Data_Filter_Setting;
            tsbtnGeneralUpdatingGraph.ToolTipText = Properties.Resources.Reload_Graph_From_File;
            tsbtnGeneralInitGraphSize.ToolTipText = Properties.Resources.Initialize_Graph_to_Original;
            tsbtnGeneralSetZoomMode.ToolTipText = Properties.Resources.Zoom_Mode;
            tsbtnGeneralSetMoveMode.ToolTipText = Properties.Resources.Pan_Mode;
            tsbtnCursorOnOff.ToolTipText = Properties.Resources.Cursor_On_s_Off;
            tsbtnGeneralLineOnOff.ToolTipText = Properties.Resources.Line_On_s_Off;
            tsbtnGeneralPointOnOff.ToolTipText = Properties.Resources.Point_On_s_Off;
            tsbtnGeneralGridOnOff.ToolTipText = Properties.Resources.Grid_On_s_Off;
            tsbtnGeneralLegendOnOff.ToolTipText = Properties.Resources.Legend_On_s_Off;
            tsbtnGeneralViewScheduleInfor.ToolTipText = Properties.Resources.Open_Schedule_Editor;
            tsbtnGeneralDataEditor.ToolTipText = Properties.Resources.Open_Data_Editor;
            tsbtnGeneralSaveAsTextFile.ToolTipText = Properties.Resources.Convert_To_Ascii_File;
            tsbtnGeneralExportToExcel.ToolTipText = Properties.Resources.Convert_To_Excel_File;
            tsbtnGeneralCopyGraphToClipboard.ToolTipText = Properties.Resources.Copy_Graph_Image_To_Clipboard;
            tsbtnGeneralPrintGraph.ToolTipText = Properties.Resources.Print_Graph;
            tsbtnRunZMan.ToolTipText = Properties.Resources.Run_ZMan;
            tslblDivision.Text = Properties.Resources.Division;
            tsbtnRedraw.ToolTipText = Properties.Resources.Redraw;

            if (tscbDivision.Items.Count > 0)
            {
                int seldiv = tscbDivision.SelectedIndex;

                tscbDivision.Items.Clear();

                tscbDivision.Items.Add(Properties.Resources.All);
                tscbDivision.Items.Add(Properties.Resources.Cycle);

                tscbDivision.SelectedIndex = seldiv;
            }
            else
            {
                tscbDivision.Items.Add(Properties.Resources.All);
                tscbDivision.Items.Add(Properties.Resources.Cycle);

                tscbDivision.SelectedIndex = 0;
            }

            c1SplitterPanel1.Text = Properties.Resources.Graph;
            c1SplitterPanel2.Text = Properties.Resources.Legend;

            UpdateAxesListCombo();

            ApplyComboToAxes();
        }

        private void InitRangeMinMax()
        {
            for (int i = 0; i < 4; i++)
            {
                _YMin[i] = double.NaN;
                _YMax[i] = double.NaN;
            }
        }

        private void FormGeneralGraph_Load(object sender, EventArgs e)
        {   
            InitToolStrip();

            System.Drawing.Color color = System.Drawing.Color.FromArgb(150, c1FlexGridLegend.Styles.Normal.ForeColor);
            _pen = new Pen(color, 1);
            _bmp = new Bitmap(100, 20);
            Rectangle rc = Rectangle.Empty;
            rc.Size = _bmp.Size;
            using (Graphics g = Graphics.FromImage(_bmp))
            using (Brush b = new LinearGradientBrush(rc, System.Drawing.Color.Transparent, color, LinearGradientMode.Horizontal))
            {
                g.FillRectangle(b, rc);
            }

            if (_LoadFile && _Files != null)
                LoadFiles(_Files);
        }

        private void InitToolStrip()
        {
            tsbtnGeneralSetZoomMode.CheckOnClick = true;
            tsbtnGeneralSetZoomMode.Checked = false;

            tsbtnGeneralSetMoveMode.CheckOnClick = true;
            tsbtnGeneralSetMoveMode.Checked = false;

            tsbtnCursorOnOff.CheckOnClick = true;
            //tsbtnCursorOnOff.Checked = WBCSGraph.General_ViewCursor;

            tsbtnGeneralLegendOnOff.CheckOnClick = true;
            tsbtnGeneralLegendOnOff.Checked = true;

            tsbtnGeneralLineOnOff.CheckOnClick = true;
            tsbtnGeneralLineOnOff.Checked = _dataviewset._GraphSetEx.ViewLine;

            tsbtnGeneralPointOnOff.CheckOnClick = true;
            tsbtnGeneralPointOnOff.Checked = _dataviewset._GraphSetEx.ViewPoint;

            tsbtnGeneralGridOnOff.CheckOnClick = true;
            tsbtnGeneralGridOnOff.Checked = _dataviewset._GraphSetEx.ViewGrid;

            tsbtnGeneralViewScheduleInfor.CheckOnClick = false;
            tsbtnGeneralViewScheduleInfor.Enabled = true;

            tsbtnGeneralDataEditor.CheckOnClick = false;
            tsbtnGeneralDataEditor.Enabled = true;

            tsbtnGeneralSaveAsTextFile.CheckOnClick = false;
            tsbtnGeneralSaveAsTextFile.Enabled = true;

            tsbtnGeneralExportToExcel.CheckOnClick = false;
            tsbtnGeneralExportToExcel.Enabled = true;
            
            InitAnalysisButton();
        }

        private void InitAnalysisButton()
        {
            try
            {
                tsbtnRunZMan.Enabled = _extAppPath == null ? false : File.Exists(_extAppPath.ZMan);
            }
            catch (Exception)
            {
            }
        }

   

        private void InitToolStrip_Bottom()
        {
            tscbXAxis.DropDownStyle = ComboBoxStyle.DropDownList;
            tscbXAxis.MaxDropDownItems = 30;
            tscbY1Axis.DropDownStyle = ComboBoxStyle.DropDownList;
            tscbY1Axis.MaxDropDownItems = 30;
            tscbY2Axis.DropDownStyle = ComboBoxStyle.DropDownList;
            tscbY2Axis.MaxDropDownItems = 30;
            tscbY3Axis.DropDownStyle = ComboBoxStyle.DropDownList;
            tscbY3Axis.MaxDropDownItems = 30;
            tscbY4Axis.DropDownStyle = ComboBoxStyle.DropDownList;
            tscbY4Axis.MaxDropDownItems = 30;
        }

        private void InitGraph()
        {
            scGraph.Plots.Clear();
            scGraph.YAxes.Clear();

            // Y1Axis
            YAxis y1Axis = new YAxis();
            y1Axis.Position = YAxisPosition.Left;
            y1Axis.CaptionPosition = YAxisPosition.Left;            
            y1Axis.Visible = false;

            scGraph.YAxes.Add(y1Axis);

            // Y2Axis
            YAxis y2Axis = new YAxis();
            y2Axis.Position = YAxisPosition.Right;
            y2Axis.CaptionPosition = YAxisPosition.Right;
            y2Axis.RightCaptionOrientation = VerticalCaptionOrientation.BottomToTop;
            y2Axis.Visible = false;

            scGraph.YAxes.Add(y2Axis);

            // Y3Axis
            YAxis y3Axis = new YAxis();
            y3Axis.Position = YAxisPosition.Left;
            y3Axis.CaptionPosition = YAxisPosition.Left;
            y3Axis.Visible = false;

            scGraph.YAxes.Add(y3Axis);

            // Y4Axis
            YAxis y4Axis = new YAxis();
            y4Axis.Position = YAxisPosition.Right;
            y4Axis.CaptionPosition = YAxisPosition.Right;
            y4Axis.RightCaptionOrientation = VerticalCaptionOrientation.BottomToTop;
            y4Axis.Visible = false;

            scGraph.YAxes.Add(y4Axis);

            /////////////////////////////////            
            scGraph.XAxes[0].CaptionFont = new System.Drawing.Font("Segoe UI", (float)8.25, FontStyle.Regular);
            scGraph.XAxes[0].CaptionForeColor = _dataviewset._GraphSet.XAxisColor;
            scGraph.XAxes[0].MajorDivisions.LabelForeColor = _dataviewset._GraphSet.XAxisColor;
            scGraph.XAxes[0].MajorDivisions.TickColor = _dataviewset._GraphSet.XAxisColor;
            scGraph.XAxes[0].MajorDivisions.GridColor = _dataviewset._GraphSet.MajorGridColor;
            scGraph.XAxes[0].MinorDivisions.GridColor = _dataviewset._GraphSet.MinorGridColor;
            
            for (int i = 0; i < scGraph.YAxes.Count; i++)
            {
                //scGraph.YAxes[i].CaptionForeColor = _graphProp.YAxesColor[i];
                scGraph.YAxes[i].CaptionFont = new System.Drawing.Font("Segoe UI", (float)8.25, FontStyle.Regular);
                scGraph.YAxes[i].CaptionForeColor = System.Drawing.Color.Transparent;       // Paint에서 처리                
                scGraph.YAxes[i].MajorDivisions.LabelForeColor = _dataviewset._GraphSet.YAxesColor[i];
                scGraph.YAxes[i].MajorDivisions.TickColor = _dataviewset._GraphSet.YAxesColor[i];
                scGraph.YAxes[i].MajorDivisions.GridColor = _dataviewset._GraphSet.MajorGridColor;
                scGraph.YAxes[i].MinorDivisions.GridColor = _dataviewset._GraphSet.MinorGridColor;
            }

            scGraph.PlotAreaColor = _dataviewset._GraphSet.PlotAreaColor;            

            xyCursor.Plot = null;
        }

        private void UpdateAxesListCombo()
        {
            IDictionaryEnumerator ide;
            string xAxisFormat = _dataviewset._GraphSetEx.XAxisFormat;
            string[] yAxesFormat = _dataviewset._GraphSetEx.YAxesFormat;

            tscbXAxis.Items.Clear();
            ide = _XAxisDict.GetEnumerator();
            while (ide.MoveNext())
            {
                AxisFormat af = (AxisFormat)ide.Value;
                System.Diagnostics.Debug.WriteLine($"x '{ide.Value}' → ToString='{ide.Value.ToString()}'");
                if (ide.Value != null && !string.IsNullOrEmpty(ide.Value.ToString()))
                    tscbXAxis.Items.Add(ide.Value);
            }

            for (int i = 0; i < _TscbYAxes.Length; i++)
            {
                _TscbYAxes[i].Items.Clear();
                ide = _YAxesDict[i].GetEnumerator();
                while (ide.MoveNext())
                {
                    AxisFormat af = (AxisFormat)ide.Value;
                    System.Diagnostics.Debug.WriteLine($"y '{ide.Value}' → ToString='{ide.Value.ToString()}'");
                    if (ide.Value != null && !string.IsNullOrEmpty(ide.Value.ToString()))
                        _TscbYAxes[i].Items.Add(ide.Value);
                }
            }

            // 선택
            if (_XAxisDict.ContainsKey(xAxisFormat))
            {
                tscbXAxis.SelectedItem = _XAxisDict[xAxisFormat];
            }
            else
            {
                tscbXAxis.SelectedIndex = 0;
            }

            for (int i = 0; i < _TscbYAxes.Length; i++)
            {
                if (_YAxesDict[i].ContainsKey(yAxesFormat[i]))
                    _TscbYAxes[i].SelectedItem = _YAxesDict[i][yAxesFormat[i]];
                else
                    _TscbYAxes[i].SelectedIndex = 0;
            }
        }

        private delegate void SetProgressCallback(C1FlexGrid flexgrid, C1.Win.C1FlexGrid.Row row, StatusString status);

        private void SetProgress(C1FlexGrid flexgrid, C1.Win.C1FlexGrid.Row row, StatusString status)
        {
            if (flexgrid.InvokeRequired)
            {
                flexgrid.Invoke(new SetProgressCallback(SetProgress), new object[] { flexgrid, row, status });
            }
            else
            {
                row[0] = status;
            }
        }

        private void tsbtnOpenDataFile_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Title = Properties.Resources.Open_Data_File;
            dlg.InitialDirectory = _EnAlwaysOpenPath ? _AlwaysOpenPath : _dataviewset._GraphSetEx.OpenPath;
            dlg.Multiselect = true;
            dlg.Filter = string.Format("{0}(*.zmf)|*.zmf|{1} (*.*)|*.*", Properties.Resources.BZADataFiles, Properties.Resources.All_Files);

            c1FlexGridLegend.Cols[0].Width = c1FlexGridLegend.Width;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                string[] result = CheckFileCount(dlg.FileNames);

                if (result == null)
                {
                    MessageBox.Show(Properties.Resources.Msg_ExceedsOpenFiles, _MsgBoxCaption, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    if (result.Length < dlg.FileNames.Length)
                    {
                        MessageBox.Show(Properties.Resources.Msg_ExceedsOpenFiles, _MsgBoxCaption, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        LoadFiles(dlg.FileNames);

                        _dataviewset._GraphSetEx.OpenPath = Path.GetDirectoryName(dlg.FileName);
                        DataviewCommon.SaveToSetFile(_dataviewset);
                    }                    
                }
            }
        }

        private string[] CheckFileCount(string[] files)
        {
            string[] result = null;

            if (c1FlexGridLegend.Nodes.Length < MAX_GRAPH_FILE)
            {
                int count = MAX_GRAPH_FILE - c1FlexGridLegend.Nodes.Length;

                count = (files.Length > count) ? count : files.Length;

                result = new string[count];

                for (int i = 0; i < count; i++)
                    result[i] = files[i];
            }

            return result;
        }

        public void LoadFiles(string[] filenames)
        {
            List<string> invalid = GetInvalidFile(filenames);

            if (invalid.Count > 0)
            {
                // Disable ToolStrip
                toolStrip_Top.Enabled = false;
                toolStrip_Bottom.Enabled = false;
                foreach (string filename in invalid)
                {
                    if (File.Exists(filename))
                    {
                        var node = c1FlexGridLegend.Rows.AddNode(0);
                        node.Data = new StatusString(0, "");
                        node.Checked = CheckEnum.Checked;
                        _selNode = node;                        
                        //

                        BackgroundWorker bgWorkerLoadFile = new BackgroundWorker();
                        bgWorkerLoadFile.WorkerReportsProgress = true;
                        bgWorkerLoadFile.WorkerSupportsCancellation = true;
                        bgWorkerLoadFile.DoWork += new DoWorkEventHandler(bgWorkerLoadFile_DoWork);
                        bgWorkerLoadFile.ProgressChanged += new ProgressChangedEventHandler(bgWorkerLoadFile_ProgressChanged);
                        bgWorkerLoadFile.RunWorkerCompleted += new RunWorkerCompletedEventHandler(bgWorkerLoadFile_RunWorkerCompleted);

                        _BgHashtable.Add(bgWorkerLoadFile, node);                        

                        bgWorkerLoadFile.RunWorkerAsync(new object[] { filename, node, GetXAxisComboName(), GetYAxisComboName(), false });
                    }
                }
            }
        }

        public string GetXAxisComboName()
        {
            return ((AxisFormat)tscbXAxis.SelectedItem).Name[0];
        }

        public string[] GetYAxisComboName()
        {
            List<string> result = new List<string>();

            for(int i = 0; i < _TscbYAxes.Length; i++)
            {
                if (_TscbYAxes[i].SelectedItem == null) continue;

                result.Add(((AxisFormat)_TscbYAxes[i].SelectedItem).Name[0]);
            }

            return result.ToArray();
        }

        public List<string> GetInvalidFile(string[] filenames)
        {
            List<string> invalidFileList = new List<string>();

            foreach (string file in filenames)
            {
                if (File.Exists(file))
                {
                    invalidFileList.Add(file);
                }
            }

            return invalidFileList;
        }
        private void SaveCheckState()
        {
            _savedCheckState = new Dictionary<int, Dictionary<int, Dictionary<int, CheckEnum>>>();

            for (int fi = 0; fi < c1FlexGridLegend.Nodes.Length; fi++)
            {
                _savedCheckState[fi] = new Dictionary<int, Dictionary<int, CheckEnum>>();
                Node fileNode = c1FlexGridLegend.Nodes[fi];
                
                _savedCheckState[fi][0] = new Dictionary<int, CheckEnum>(); //
                _savedCheckState[fi][0][0] = fileNode.Checked;

                for (int ti = 0; ti < fileNode.Nodes.Length; ti++)
                {
                    _savedCheckState[fi][ti + 1] = new Dictionary<int, CheckEnum>();
                    Node typeNode = fileNode.Nodes[ti];
                    
                    _savedCheckState[fi][ti + 1][0] = typeNode.Checked;

                    for (int ci = 0; ci < typeNode.Nodes.Length; ci++)
                    {
                        _savedCheckState[fi][ti + 1][ci + 1] = typeNode.Nodes[ci].Checked;
                    }
                }
            }
        }

        private void RestoreCheckState()
        {
            if (_savedCheckState == null) return;

            for (int fi = 0; fi < c1FlexGridLegend.Nodes.Length; fi++)
            {
                if (!_savedCheckState.ContainsKey(fi)) continue;
                Node fileNode = c1FlexGridLegend.Nodes[fi];

                if (_savedCheckState[fi].ContainsKey(0) &&
                    _savedCheckState[fi][0].ContainsKey(0))
                    fileNode.Checked = _savedCheckState[fi][0][0];

                for (int ti = 0; ti < fileNode.Nodes.Length; ti++)
                {
                    if (!_savedCheckState[fi].ContainsKey(ti + 1)) continue; // ← ti+1
                    Node typeNode = fileNode.Nodes[ti];

                    if (_savedCheckState[fi][ti + 1].ContainsKey(0))
                        typeNode.Checked = _savedCheckState[fi][ti + 1][0];

                    for (int ci = 0; ci < typeNode.Nodes.Length; ci++)
                    {
                        if (!_savedCheckState[fi][ti + 1].ContainsKey(ci + 1)) continue; // ← ci+1
                        typeNode.Nodes[ci].Checked = _savedCheckState[fi][ti + 1][ci + 1];
                        Node chNode = typeNode.Nodes[ci];
                        if (chNode.Row.UserData is ScatterPlot && chNode.Row.Visible)
                        {
                            ((ScatterPlot)chNode.Row.UserData).Visible = (chNode.Checked == CheckEnum.Checked);
                        }
                    }
                }
            }
            AutoRange();
        }
        public void ReLoadFiles(bool refresh = false)
        {
            if (c1FlexGridLegend.Nodes.Length == 0)
                return;
            SaveCheckState();
            // Disable ToolStrip
            toolStrip_Top.Enabled = false;
            toolStrip_Bottom.Enabled = false;
            
            for (int i = 0; i < c1FlexGridLegend.Nodes.Length; i++ )
            {
                Node node = c1FlexGridLegend.Nodes[i];

                FileNodeInfor fni = (FileNodeInfor)node.Row.UserData;

                string filename = fni.FileName;

                BackgroundWorker bgWorkerLoadFile = new BackgroundWorker();
                bgWorkerLoadFile.WorkerReportsProgress = true;
                bgWorkerLoadFile.WorkerSupportsCancellation = true;
                bgWorkerLoadFile.DoWork += new DoWorkEventHandler(bgWorkerLoadFile_DoWork);
                bgWorkerLoadFile.ProgressChanged += new ProgressChangedEventHandler(bgWorkerLoadFile_ProgressChanged);
                bgWorkerLoadFile.RunWorkerCompleted += new RunWorkerCompletedEventHandler(bgWorkerLoadFile_RunWorkerCompleted);

                _BgHashtable.Add(bgWorkerLoadFile, node);

                if (tscbXAxis.SelectedItem == null)
                {
                    MessageBox.Show("X축 항목을 선택해주세요.", "경고",
                        MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                bgWorkerLoadFile.RunWorkerAsync(new object[] { filename, node, GetXAxisComboName(), GetYAxisComboName(), refresh });                
            }
        }

        private void LoadFile(object sender, DoWorkEventArgs e)
        {            
            BackgroundWorker bgWorker = (BackgroundWorker)sender;

            object[] argArray = (object[])e.Argument;

            string filename = (string)argArray[0];
            Node node = (Node)argArray[1];
            string xAxisName = (string)argArray[2];
            string[] yAxisNames = (string[])argArray[3];
            bool reload = (bool)argArray[4];

            try
            {
                int oldPercent = -1;
                ZMF_File fzmf = new ZMF_File();
                
                bgWorker.ReportProgress(fzmf.Percent, node);

                if (!fzmf.Open(filename))
                {
                    e.Result = new object[] { false, node, 0, Properties.Resources.Failed_File_Open };
                    return;
                }
                fzmf.dhv.RefreshInfo();
                if (MaxAuxCount < fzmf.dhv.MaxAuxCh) MaxAuxCount = fzmf.dhv.MaxAuxCh;

                bgWorker.ReportProgress(fzmf.Percent, node);

                FileNodeInfor fni = (FileNodeInfor)node.Row.UserData;

                double dCapacity = reload ? GetCellCapacity(fni.DataHeaderValue) : GetCellCapacity(fzmf.dhv);
                if (dCapacity <= 0.0) dCapacity = 1.0;

                MakeGraphData mgd = new MakeGraphData( xAxisName, yAxisNames, _DataFilter, dCapacity, _TimeFormat);
                fzmf.Clear_rdList();
                while (true)
                {
                    if (bgWorker.CancellationPending)
                    {
                        e.Cancel = true;
                        return;
                    }

                    int result = fzmf.ReadDatas();

                    if (result == -1)
                    {
                        break;
                    }
                    if (oldPercent != fzmf.Percent)
                    {
                        oldPercent = fzmf.Percent;
                        bgWorker.ReportProgress(fzmf.Percent, node);
                    }
                    
                    Thread.Sleep(0);
                }

                fzmf.Analysis();

                foreach (UnitReportData urgd in fzmf.gdList)
                {
                    mgd.Add(urgd);
                }

                if (reload)
                {
                    ((FileNodeInfor)node.Row.UserData).MakeGraphData = mgd;
                }
                else
                    node.Row.UserData = new FileNodeInfor(fzmf.dhv, mgd);

                fzmf.CloseFile();

                e.Result = new object[] { true, node, 100, "" };
            }
            catch(OutOfMemoryException)
            {
                MessageBox.Show("Out of memory. Try using Data Manager.", "WonATech", MessageBoxButtons.OK, MessageBoxIcon.Error);
                e.Result = new object[] { false, node, 0, "Out of memory." };
            }
        }

      
        public void ApplyProperties()
        {
            int index = 0;

            for(int row = 0; row < c1FlexGridLegend.Rows.Count; row++)
            {
                object userData = c1FlexGridLegend.Rows[row].UserData;

                if(userData is ScatterPlot)
                {
                    ScatterPlot sp = (ScatterPlot)userData;

                    sp.LineColor = _dataviewset._GraphSet.PlotSets[index].LineColor;
                    sp.PointColor = _dataviewset._GraphSet.PlotSets[index].LineColor;
                    sp.LineStyle = _graphLine ? ConvertNiLineStyle(_dataviewset._GraphSet.PlotSets[index].LineStyle) : LineStyle.None;
                    sp.LineWidth = _dataviewset._GraphSet.PlotSets[index].LineWidth;
                    sp.PointStyle = _graphPoint ? ConvertNiPointStyle(_dataviewset._GraphSet.PlotSets[index].PointStyle) : PointStyle.None;

                    if (c1FlexGridLegend.Rows[row][0] is PlotNodeValue)
                    {
                        PlotNodeValue pnv = (PlotNodeValue)c1FlexGridLegend.Rows[row][0];

                        pnv.ForeColor = _dataviewset._GraphSet.PlotSets[index].LineColor;

                        c1FlexGridLegend.Rows[row].Style.ForeColor = _dataviewset._GraphSet.PlotSets[index].LineColor;
                    }

                    index++;
                }
            }

            SetAxisColor(scGraph.XAxes[0], _dataviewset._GraphSet.XAxisColor, _dataviewset._GraphSet.MajorGridColor, _dataviewset._GraphSet.MinorGridColor);
            for(int i = 0; i < scGraph.YAxes.Count; i++)
            {
                SetAxisColor(scGraph.YAxes[i], _dataviewset._GraphSet.YAxesColor[i], _dataviewset._GraphSet.MajorGridColor, _dataviewset._GraphSet.MinorGridColor);
            }
        }

        private void SetAxisColor(Axis axis, System.Drawing.Color axisColor, System.Drawing.Color majorGridColor, System.Drawing.Color minorGridColor)            
        {
            axis.CaptionForeColor = axis.MajorDivisions.LabelForeColor = axis.MajorDivisions.TickColor = axisColor;
            axis.MajorDivisions.GridColor = majorGridColor;
            axis.MinorDivisions.GridColor = minorGridColor;
        }

        
        private void bgWorkerLoadFile_DoWork(object sender, DoWorkEventArgs e)
        {
            LoadFile(sender, e);
        }
        
        private void bgWorkerLoadFile_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            Node node = (Node)e.UserState;

            string text = string.Format("{1} ({0} {2})", e.ProgressPercentage, Properties.Resources.Loading_ddd, Properties.Resources.done);

            node.Data = new StatusString(e.ProgressPercentage, text);
        }
                
        private void bgWorkerLoadFile_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            if (e.Cancelled)
                return;

            object[] objArr = (object[])e.Result;

            bool succecc = (bool)objArr[0];
            Node node = (Node)objArr[1];
            int percent = (int)objArr[2];
            string message = (string)objArr[3];            

            if (succecc)
            {
                node.Data = new StatusString(percent, Properties.Resources.Waiting_ddd);                
            }
            else
            {
                node.Data = new StatusString(percent, message);
            }

            _BgHashtable.Remove(sender);

            if (MaxAuxCount > 0)
            {
                lnlAuxMenu.Visible = true;
                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    if (i >= MaxAuxCount)
                    {
                        MenuAuxCh[i].Visible = false;
                    }
                    else
                    {
                        MenuAuxCh[i].Visible = true;
                    }
                }
            }
            else
            {
                lnlAuxMenu.Visible = false;
            }

            if (_BgHashtable.Count == 0)
            {
                DrawGraph();
                RestoreCheckState();
                
                toolStrip_Top.Enabled = true;
                toolStrip_Bottom.Enabled = true;

                this.Refresh();

                c1FlexGridLegend.RowSel = -1;
                c1FlexGridLegend.Row = -1;
                c1FlexGridLegend.RowSel = _selNode.Row.Index;
                c1FlexGridLegend.Row = _selNode.Row.Index;
                
                SetFilePath(_selNode.Row.Index);
            }
            
        }

        private void SetFilePath(int rowSel)
        {
            string tiptext = string.Empty;

            try
            {
                int row = c1FlexGridLegend.RowSel;
                object userdata = c1FlexGridLegend.Rows[row].UserData;

                if (row >= 0 && c1FlexGridLegend.Rows[row].Node.Level == 0 && userdata != null)
                {
                    FileNodeInfor fni = (FileNodeInfor)userdata;
                    tiptext = fni.FileName;
                    c1SplitterPanel1.Text = string.Format("{0} - {1}", "Graph", tiptext);
                }
                else
                    c1SplitterPanel1.Text = "Graph";
            }
            catch (Exception)
            {
                c1SplitterPanel1.Text = "Graph";
            }
            finally
            {

            }
        }

        private delegate void AddPlotCallback(ScatterPlot plot);
        private delegate void GraphUpdateCallback(bool begin);
        private delegate Node AddNodeCallback(Node node, PlotNodeValue value, ScatterPlot plot);

        private void AddPlot(ScatterPlot plot)
        {
            if (scGraph.InvokeRequired)
                scGraph.Invoke(new AddPlotCallback(AddPlot), new object[] { plot });
            else
            {
                scGraph.Plots.Add(plot);
            }
        }

        private Node AddNode(Node node, PlotNodeValue value, ScatterPlot plot)
        {
            Node child = null;

            if (c1FlexGridLegend.InvokeRequired)
                c1FlexGridLegend.Invoke(new AddNodeCallback(AddNode), new object[] { node, value, plot });
            else
            {
                child = node.AddNode(NodeTypeEnum.LastChild, value);
                child.Checked = CheckEnum.Checked;
                child.Row.Style = c1FlexGridLegend.Styles.Fixed;
                child.Row.UserData = plot;                
            }

            return child;
        }

        private Node AddNodeII(Node node, PlotNodeValue value, ScatterPlot plot)
        {
            Node child = null;

            c1FlexGridLegend.Invoke(new MethodInvoker(delegate
                {
                    child = node.AddNode(NodeTypeEnum.LastChild, value);
                    child.Checked = CheckEnum.Checked;
                    child.Row.Style = c1FlexGridLegend.Styles.Fixed;
                    child.Row.UserData = plot;
                }));

            return child;
        }

        private void GraphUpdate(bool begin)
        {
            if (scGraph.InvokeRequired)
                scGraph.Invoke(new GraphUpdateCallback(GraphUpdate), new object[] { begin });
            else
            {
                if (begin)
                    scGraph.BeginUpdate();
                else
                    scGraph.EndUpdate();
            }
        }

        private void GraphClear()
        {
            scGraph.Invoke(new MethodInvoker(delegate
            {
                scGraph.Plots.Clear();         
            }));
        }

        private void ClearPlotNode(Node node)
        {
            int len = node.Nodes.Length;

            for (int i = 0; i < len; i++)
                node.Nodes[0].RemoveNode();
        }

        private void CollapsedNode(Node node)
        {
            c1FlexGridLegend.Invoke(new MethodInvoker(delegate
            {
                node.Collapsed = true;
            }));
        }

        private void C1FlexGridUpdate(bool begin)
        {
            c1FlexGridLegend.Invoke(new MethodInvoker(delegate
            {
                if (begin)
                    c1FlexGridLegend.BeginUpdate();
                else
                    c1FlexGridLegend.EndUpdate();
            }));
        }

        private void AutoRange()
        {
            XAxesRegulateRangeMinMax();
            YAxesRegulateRangeMinMax();
            AdjustRange();
        }

        private void MoveCursor()
        {
            if (xyCursor.Visible)
            {
                if (scGraph.Plots.Count > 0)
                {
                    SetCursor(scGraph.Plots[0]);
                }
            }
        }

        private void DrawGraph()
        {
            _LegendIndex = 0;

            scGraph.BeginUpdate();
            c1FlexGridLegend.BeginUpdate();
            scGraph.Plots.Clear();
            _SelRowIdxList.Clear();
            _SelRowIdx = -1;
            ApplyComboToAxes();     // 축 Combo 박스 내용 축에 적용
            
            foreach (Node node in c1FlexGridLegend.Nodes)
            {
                if(node.Checked == CheckEnum.Checked)
                    DrawPlot(node);
            }
            
            AutoRange();

            MoveCursor();

            c1FlexGridLegend.EndUpdate();
            scGraph.EndUpdate();            
        }
        
        private void XAxesRegulateRangeMinMax()
        {
            try
            {
                scGraph.XAxes[0].Mode = AxisMode.AutoScaleLoose;

                AxisFormat af = (AxisFormat)tscbXAxis.SelectedItem;

                if (af.Name[0] == "Test time" || af.Name[0] == "Step time" || af.Name[0] == "Cycle time" || af.Name[0] == "LogI")
                {
                    scGraph.XAxes[0].Mode = AxisMode.AutoScaleLoose;
                    return;
                }

                scGraph.XAxes[0].Mode = AxisMode.Fixed;

                // XAxes
                Dictionary<XAxis, List<double>> dictData = new Dictionary<XAxis, List<double>>();

                for (int i = 0; i < scGraph.Plots.Count; i++)
                {
                    if (scGraph.Plots[i].Visible)
                    {
                        if (dictData.ContainsKey(scGraph.Plots[i].XAxis) == false)
                        {
                            List<double> data = new List<double>();

                            data.AddRange(scGraph.Plots[i].GetXData());

                            dictData.Add(scGraph.Plots[i].XAxis, data);
                        }
                        else
                        {
                            dictData[scGraph.Plots[i].XAxis].AddRange(scGraph.Plots[i].GetXData());

                        }
                    }
                }

                IDictionaryEnumerator ide = dictData.GetEnumerator();

                while (ide.MoveNext())
                {
                    XAxis xaxis = (XAxis)ide.Key;
                    List<double> datalist = (List<double>)ide.Value;

                    //Range range = Common.GetGraphXaisRange(datalist.ToArray(), _GraphSet.AutoRangeMarginX, _GraphSet.AutoRangeMargin, _GraphSet.AutoRangeMarginXLowLimit, _GraphSet.AutoRangeMarginLowLimit);
                    //Range range = Common.GetGraphXaisRange2(datalist.ToArray(), _graphRangeMargin, true);
                    double max, min;

                    //CoMath.GetRange(datalist.ToArray(), out min, out max);
                    CoMath.GetRange(datalist.ToArray(), _graphRangeMargin, out min, out max);

                    if (xaxis.ScaleType == ScaleType.Logarithmic || min == max)
                    {
                        xaxis.Mode = AxisMode.AutoScaleLoose;
                    }
                    else
                    {
                        xaxis.Range = new Range(min, max);
                    }
                }
            }
            catch (Exception)
            {
            }
        }

        private void YAxesRegulateRangeMinMax()
        {
            try
            {
                // YAxes
                Dictionary<YAxis, List<double>> dictData = new Dictionary<YAxis, List<double>>();

                for (int i = 0; i < scGraph.Plots.Count; i++)
                {
                    if (scGraph.Plots[i].Visible)
                    {
                        if (dictData.ContainsKey(scGraph.Plots[i].YAxis) == false)
                        {
                            List<double> data = new List<double>();

                            data.AddRange(scGraph.Plots[i].GetYData());

                            dictData.Add(scGraph.Plots[i].YAxis, data);
                        }
                        else
                        {
                            dictData[scGraph.Plots[i].YAxis].AddRange(scGraph.Plots[i].GetYData());

                        }
                    }
                }

                IDictionaryEnumerator ide = dictData.GetEnumerator();

                while (ide.MoveNext())
                {
                    YAxis yaxis = (YAxis)ide.Key;
                    List<double> datalist = (List<double>)ide.Value;

                    //Range range = Common.GetGraphXaisRange(datalist.ToArray(), _GraphSet.AutoRangeMarginX, _GraphSet.AutoRangeMargin, _GraphSet.AutoRangeMarginXLowLimit, _GraphSet.AutoRangeMarginLowLimit, false, yaxis.ScaleType == ScaleType.Logarithmic);
                    //Range range = Common.GetGraphXaisRange2(datalist.ToArray(), _graphRangeMargin);
                    double max, min;

                    //CoMath.GetRange(datalist.ToArray(), out min, out max);
                    CoMath.GetRange(datalist.ToArray(), _graphRangeMargin, out min, out max);

                    yaxis.Range = new Range(min, max);
                }
            }
            catch (Exception)
            {
            }
        }

        private void AdjustRange()
        {
            AdjustRangeItem("Ch Q", "Dch Q");
            AdjustRangeItem("Ch Q_s", "Dch Q_s");
            AdjustRangeItem("Ch Q_d", "Dch Q_d");

            AdjustRangeItem("Ch Wh", "Dch Wh");
            AdjustRangeItem("Ch Wh_s", "Dch Wh_s");
            AdjustRangeItem("Ch Wh_d", "Dch Wh_d");

            AdjustRangeItem("Ch P", "Dch P");
            AdjustRangeItem("Ch P_s", "Dch P_s");
            AdjustRangeItem("Ch P_d", "Dch P_d");
        }

        private void AdjustRangeItem(string name1, string name2)
        {
            if (IsContainAxisFormat(name1, name2))
            {
                List<int> idxList = GetContainAxisFormatIndex(name1, name2);

                if (idxList.Count > 1)
                {
                    double max = scGraph.YAxes[idxList[0]].Range.Maximum;
                    double min = scGraph.YAxes[idxList[0]].Range.Minimum;

                    for (int i = 0; i < idxList.Count; i++)
                    {
                        max = Math.Max(max, scGraph.YAxes[idxList[i]].Range.Maximum);
                        min = Math.Min(min, scGraph.YAxes[idxList[i]].Range.Minimum);
                    }

                    for (int i = 0; i < idxList.Count; i++)
                    {
                        scGraph.YAxes[idxList[i]].Range = new Range(min, max);
                    }
                }
            }
        }

        private bool IsContainAxisFormat(string name1, string name2)
        {
            bool result1 = false;
            bool result2 = false;

            for (int i = 0; i < _TscbYAxes.Length; i++)
            {
                if (_TscbYAxes[i].SelectedItem == null) continue;
                AxisFormat af = (AxisFormat)_TscbYAxes[i].SelectedItem;

                if (af.ToString() == name1)
                {
                    result1 = true;
                }

                if (af.ToString() == name2)
                {
                    result2 = true;
                }
            }

            return result1 & result2;
        }

        private List<int> GetContainAxisFormatIndex(string name1, string name2)
        {
            List<int> list = new List<int>();

            for (int i = 0; i < _TscbYAxes.Length; i++)
            {
                if (_TscbYAxes[i].SelectedItem == null) continue;
                AxisFormat af = (AxisFormat)_TscbYAxes[i].SelectedItem;

                if (af.ToString() == name1)
                {
                    list.Add(i);
                }

                if (af.ToString() == name2)
                {
                    list.Add(i);
                }
            }

            return list;
        }

        private double GetCellCapacity(DataHeaderValues dhv)
        {
            return dhv._ResHead.mInfo.Capa;
        }

        private void DrawPlot(Node node)
        {
            ClearPlotNode(node);

            if (node.Row.UserData == null)
                return;

            FileNodeInfor fni = (FileNodeInfor)node.Row.UserData;

            string filename = fni.FileName;
            DataHeaderValues dhv = fni.DataHeaderValue;
            MakeGraphData mgd = fni.MakeGraphData;


            
            for(int i = 0; i < mgd.GraphDataXY.DataYList.Count; i++)
            {
                DrawPlotItem(node, mgd.RemakeGraphDataList(i), i);
            }
            
            SetProgress(c1FlexGridLegend, node.Row, new StatusString(100, Path.GetFileName(filename)));
        }

        private void DrawPlotItem(Node node, GraphDataList gdList, int yidx)
        {
            try
            {
 
                // 축이 로그일 경우 절대값으로 변경
                if (scGraph.XAxes[0].ScaleType == ScaleType.Logarithmic)
                {
                    for (int i = 0; i < gdList.Count; i++)
                    {
                        for (int j = 0; j < MBZA_Constant.MAX_AUXTYPE_CHANNELS; j++)
                        {
                            gdList[i].XData[j] = Math.Abs(gdList[i].XData[j]);
                        }
                    }
                }

                if (scGraph.YAxes[yidx].ScaleType == ScaleType.Logarithmic)
                {
                    for (int i = 0; i < gdList.Count; i++)
                    {
                        for (int j = 0; j < MBZA_Constant.MAX_AUXTYPE_CHANNELS; j++)
                        {
                            gdList[i].YData[j] = Math.Abs(gdList[i].YData[j]);
                        }                   
                    }
                }
                //////////////////////////////////////////////////////////////////////////////

                if ((eGraphDivision)tscbDivision.SelectedIndex == eGraphDivision.All)
                {
                    if (MaxAuxCount > 0)
                    {
                        string nodeText = string.Format("{0} vs {1}", ((AxisFormat)_TscbYAxes[yidx].SelectedItem).ToString(), ((AxisFormat)tscbXAxis.SelectedItem).ToString());
                        Node AuxsNode = AddNode(node, new PlotNodeValue(nodeText, System.Drawing.Color.White, System.Drawing.Color.Black), null);
                        _SelRowIdxList.Add(AuxsNode.Row.Index);

                        DrawPlotSubItem("Main", (int)0, AuxsNode, gdList, yidx);
                        for (int i=0; i< MaxAuxCount; i++)
                        {
                            DrawPlotSubItem(string.Format("AuxCh{0}", i+1), (int)(i + 1), AuxsNode, gdList, yidx,i+1);
                        }
                        AuxsNode.Collapsed = true;
                    }
                    else
                    {
                        ScatterPlot plot = new ScatterPlot(scGraph.XAxes[0], scGraph.YAxes[yidx]);
                        plot.LineColor = _dataviewset._GraphSet.PlotSets[_LegendIndex].LineColor;
                        plot.LineStyle = _graphLine ? ConvertNiLineStyle(_dataviewset._GraphSet.PlotSets[_LegendIndex].LineStyle) : LineStyle.None;
                        plot.LineWidth = _dataviewset._GraphSet.PlotSets[_LegendIndex].LineWidth;
                        plot.PointColor = _dataviewset._GraphSet.PlotSets[_LegendIndex].LineColor;
                        plot.PointStyle = _graphPoint ? ConvertNiPointStyle(_dataviewset._GraphSet.PlotSets[_LegendIndex].PointStyle) : PointStyle.None;
                        plot.ProcessSpecialValues = true;
                        plot.SmoothUpdates = true;

                        plot.PlotXY(gdList.GetXData(), gdList.GetYData(yidx));
                        plot.Tag = _dataviewset._GraphSet.PlotSets[_LegendIndex];

                        C1FlexGridUpdate(true);

                        string nodeText = string.Format("{0} vs {1}", ((AxisFormat)_TscbYAxes[yidx].SelectedItem).ToString(), ((AxisFormat)tscbXAxis.SelectedItem).ToString());
                        AddNode(node, new PlotNodeValue(nodeText, System.Drawing.Color.White, _dataviewset._GraphSet.PlotSets[_LegendIndex].LineColor), plot);
                        AddPlot(plot);

                        C1FlexGridUpdate(false);

                        _LegendIndex++;

                        if (_LegendIndex >= _dataviewset._GraphSet.PlotSets.Length)
                            _LegendIndex = 0;
                    }
                }
                else if ((eGraphDivision)tscbDivision.SelectedIndex == eGraphDivision.Cycle)
                {
                    //string nodeText = string.Format("{0} vs {1}", WbcsStatic.GraphSetting.Gen_YAxesFormat[yidx].ToString(), WbcsStatic.GraphSetting.Gen_XAxisFormat.ToString());
                    string nodeText = string.Format("{0} vs {1}", ((AxisFormat)_TscbYAxes[yidx].SelectedItem).ToString(), ((AxisFormat)tscbXAxis.SelectedItem).ToString());
                    Node cycNode = AddNode(node, new PlotNodeValue(nodeText, System.Drawing.Color.White, System.Drawing.Color.Black), null);
                    _SelRowIdxList.Add(cycNode.Row.Index);

                    Dictionary<uint, GraphDataList> dictGdfList = ConvGraphData.GetDataByCycle(gdList);

                    IDictionaryEnumerator ide = dictGdfList.GetEnumerator();

                    while (ide.MoveNext())
                    {
                        uint cycle = (uint)ide.Key;
                        GraphDataList gdfList = (GraphDataList)ide.Value;
                        if (MaxAuxCount > 0)
                        {
                            string nodeText1 = string.Format("{1} {0}", cycle + 1, Properties.Resources.Cycle);
                            Node cycauxNode = AddNode(cycNode, new PlotNodeValue(nodeText1, System.Drawing.Color.White, System.Drawing.Color.Black), null);
                            _SelRowIdxList.Add(cycauxNode.Row.Index);

                            DrawPlotSubItem("Main", (int)0, cycauxNode, gdfList, yidx);
                            for (int i = 0; i < MaxAuxCount; i++)
                            {
                                DrawPlotSubItem(string.Format("AuxCh{0}", i + 1), (int)(i + 1), cycauxNode, gdfList, yidx,i+1);
                            }
                            cycauxNode.Collapsed = true;
                        }
                        else
                        {
                            DrawPlotSubItem(string.Format("{1} {0}", cycle + 1, Properties.Resources.Cycle), (int)(cycle + 1), cycNode, gdfList, yidx);
                        }
                    }
                    cycNode.Collapsed = true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("[DrawPlotItem]_" + ex.Message);
            }
        }

        private void DrawPlotSubItem(string name, Node node, GraphDataList gdList, int yidx, int dindex = 0)
        {
            ScatterPlot plot = new ScatterPlot(scGraph.XAxes[0], scGraph.YAxes[yidx]);
            plot.LineColor = _dataviewset._GraphSet.PlotSets[_LegendIndex].LineColor;
            plot.LineStyle = _graphLine ? ConvertNiLineStyle(_dataviewset._GraphSet.PlotSets[_LegendIndex].LineStyle) : LineStyle.None;
            plot.LineWidth = _dataviewset._GraphSet.PlotSets[_LegendIndex].LineWidth;
            plot.PointColor = _dataviewset._GraphSet.PlotSets[_LegendIndex].LineColor;
            plot.PointStyle = _graphPoint ? ConvertNiPointStyle(_dataviewset._GraphSet.PlotSets[_LegendIndex].PointStyle) : PointStyle.None;
            plot.ProcessSpecialValues = true;

            plot.PlotXY(gdList.GetXData(dindex), gdList.GetYData(yidx, dindex));
            plot.Tag = _dataviewset._GraphSet.PlotSets[_LegendIndex];

            AddNode(node, new PlotNodeValue(name, System.Drawing.Color.White, _dataviewset._GraphSet.PlotSets[_LegendIndex].LineColor), plot);
            AddPlot(plot);

            _LegendIndex++;

            if (_LegendIndex >= _dataviewset._GraphSet.PlotSets.Length)
                _LegendIndex = 0;            
        }

        private void DrawPlotSubItem(string name, int number, Node node, GraphDataList gdList, int yidx, int dindex = 0)
        {
            ScatterPlot plot = new ScatterPlot(scGraph.XAxes[0], scGraph.YAxes[yidx]);
            plot.LineColor = _dataviewset._GraphSet.PlotSets[_LegendIndex].LineColor;
            plot.LineStyle = _graphLine ? ConvertNiLineStyle(_dataviewset._GraphSet.PlotSets[_LegendIndex].LineStyle) : LineStyle.None;
            plot.LineWidth = _dataviewset._GraphSet.PlotSets[_LegendIndex].LineWidth;
            plot.PointColor = _dataviewset._GraphSet.PlotSets[_LegendIndex].LineColor;
            plot.PointStyle = _graphPoint ? ConvertNiPointStyle(_dataviewset._GraphSet.PlotSets[_LegendIndex].PointStyle) : PointStyle.None;
            plot.ProcessSpecialValues = true;

            plot.PlotXY(gdList.GetXData(dindex), gdList.GetYData(yidx, dindex));
            plot.Tag = _dataviewset._GraphSet.PlotSets[_LegendIndex];

            AddNode(node, new PlotNodeValue(name, number, System.Drawing.Color.White, _dataviewset._GraphSet.PlotSets[_LegendIndex].LineColor), plot);
            AddPlot(plot);

            _LegendIndex++;

            if (_LegendIndex >= _dataviewset._GraphSet.PlotSets.Length)
                _LegendIndex = 0;
        }
        
        private LineStyle ConvertNiLineStyle(eLineStyle style)
        {
            LineStyle linestyle = LineStyle.Dash;

            switch (style)
            {
                case eLineStyle.Dash:
                    linestyle = LineStyle.Dash;
                    break;
                case eLineStyle.DashDot:
                    linestyle = LineStyle.DashDot;
                    break;
                case eLineStyle.DashDotDot:
                    linestyle = LineStyle.DashDotDot;
                    break;
                case eLineStyle.Dot:
                    linestyle = LineStyle.Dot;
                    break;
                case eLineStyle.None:
                    linestyle = LineStyle.None;
                    break;
                case eLineStyle.Solid:
                    linestyle = LineStyle.Solid;
                    break;
            }

            return linestyle;
        }

        private PointStyle ConvertNiPointStyle(ePointStyle style)
        {
            PointStyle pointstyle = PointStyle.EmptyCircle;

            switch (style)
            {
                case ePointStyle.Cross:
                    pointstyle = PointStyle.Cross;
                    break;
                case ePointStyle.EmptyCircle:
                    pointstyle = PointStyle.EmptyCircle;
                    break;
                case ePointStyle.EmptyDiamond:
                    pointstyle = PointStyle.EmptyDiamond;
                    break;
                case ePointStyle.EmptySquare:
                    pointstyle = PointStyle.EmptySquare;
                    break;
                case ePointStyle.EmptyTriangleDown:
                    pointstyle = PointStyle.EmptyTriangleDown;
                    break;
                case ePointStyle.EmptyTriangleLeft:
                    pointstyle = PointStyle.EmptyTriangleLeft;
                    break;
                case ePointStyle.EmptyTriangleRight:
                    pointstyle = PointStyle.EmptyTriangleRight;
                    break;
                case ePointStyle.EmptyTriangleUp:
                    pointstyle = PointStyle.EmptyTriangleUp;
                    break;
                case ePointStyle.None:
                    pointstyle = PointStyle.None;
                    break;
                case ePointStyle.Plus:
                    pointstyle = PointStyle.Plus;
                    break;
                case ePointStyle.SolidCircle:
                    pointstyle = PointStyle.SolidCircle;
                    break;
                case ePointStyle.SolidDiamond:
                    pointstyle = PointStyle.SolidDiamond;
                    break;
                case ePointStyle.SolidSquare:
                    pointstyle = PointStyle.SolidSquare;
                    break;
                case ePointStyle.SolidTriangleDown:
                    pointstyle = PointStyle.SolidTriangleDown;
                    break;
                case ePointStyle.SolidTriangleLeft:
                    pointstyle = PointStyle.SolidTriangleLeft;
                    break;
                case ePointStyle.SolidTriangleRight:
                    pointstyle = PointStyle.SolidTriangleRight;
                    break;
                case ePointStyle.SolidTriangleUp:
                    pointstyle = PointStyle.SolidTriangleUp;
                    break;
            }

            return pointstyle;
        }       
        
        private void tsbtnUnloadData_Click(object sender, EventArgs e)
        {
            if (c1FlexGridLegend.Nodes.Length == 0)
                return;

            Node fileNode = c1FlexGridLegend.Rows[c1FlexGridLegend.Row].Node;

            while (fileNode.Level > 0)
            {
                fileNode = fileNode.Parent;
            }

            for (int i = 0; i < fileNode.Nodes.Length; i++)
            {
                Node firstNode = fileNode.Nodes[i];

                if (firstNode.Row.UserData is ScatterPlot)
                {
                    scGraph.Plots.Remove((ScatterPlot)firstNode.Row.UserData);
                }

                for (int j = 0; j < firstNode.Nodes.Length; j++)
                {
                    Node secondNode = firstNode.Nodes[j];

                    if (secondNode.Row.UserData is ScatterPlot)
                    {
                        scGraph.Plots.Remove((ScatterPlot)secondNode.Row.UserData);
                    }
                }
            }

            if (_XYCursor && scGraph.Plots.Count > 0)
            {
                double xValue = (scGraph.XAxes[0].Range.Minimum + scGraph.XAxes[0].Range.Maximum) / 2;
                double yValue = (scGraph.YAxes[0].Range.Minimum + scGraph.YAxes[0].Range.Maximum) / 2;

                SetCursor(scGraph.Plots[0]);
            }

            fileNode.RemoveNode();

            SetFilePath(c1FlexGridLegend.RowSel);        
        }

        private void tsbtnGridOnOff_CheckedChanged(object sender, EventArgs e)
        {
            scGraph.XAxes[0].MajorDivisions.GridVisible = tsbtnGeneralGridOnOff.Checked;
            scGraph.YAxes[0].MajorDivisions.GridVisible = tsbtnGeneralGridOnOff.Checked;

            AxisFormat x = (AxisFormat)scGraph.XAxes[0].Tag;
            AxisFormat y1 = (AxisFormat)scGraph.YAxes[0].Tag;

            scGraph.XAxes[0].MinorDivisions.GridVisible = (x.MinorGridVisible && tsbtnGeneralGridOnOff.Checked) ? true : false;
            scGraph.YAxes[0].MinorDivisions.GridVisible = (y1.MinorGridVisible && tsbtnGeneralGridOnOff.Checked) ? true : false;            
        }

        private void c1SplitterPanel2_VisibleChanged(object sender, EventArgs e)
        {
            tsbtnGeneralLegendOnOff.Checked = c1SplitterPanel2.Visible;
        }        
        
        private void ApplyXAxis(AxisFormat format)
        {
            scGraph.XAxes[0].Caption = format.GetCaption();
            //scGraph.XAxes[0].CaptionForeColor = format.AxisColor;
            scGraph.XAxes[0].CaptionVisible = true;
            scGraph.XAxes[0].MajorDivisions.LabelFormat = new FormatString(format.GraphFormatStringMode, format.GraphFormatString);
            //scGraph.XAxes[0].MajorDivisions.LabelForeColor = format.AxisColor;
            //scGraph.XAxes[0].MajorDivisions.TickColor = format.AxisColor;
            scGraph.XAxes[0].MinorDivisions.GridVisible = (_dataviewset._GraphSetEx.ViewGrid && format.MinorGridVisible) ? true : false; ;
            scGraph.XAxes[0].ScaleType = format.ScaleType;
            scGraph.XAxes[0].Mode = AxisMode.AutoScaleLoose;
            //scGraph.XAxes[0].Range = new Range(format.RangeMin, format.RangeMax);
            scGraph.XAxes[0].Inverted = format.Inverted;
            scGraph.XAxes[0].Visible = format.Visible;            
            scGraph.XAxes[0].Tag = format;            
        }

        private void ApplyYAxis(AxisFormat format, int index)
        {
            scGraph.YAxes[index].Caption = format.GetCaption();
            //scGraph.YAxes[index].CaptionForeColor = format.AxisColor;
            scGraph.YAxes[index].CaptionVisible = true;
            scGraph.YAxes[index].MajorDivisions.LabelFormat = new FormatString(format.GraphFormatStringMode, format.GraphFormatString);
            //scGraph.YAxes[index].MajorDivisions.LabelForeColor = format.AxisColor;
            //scGraph.YAxes[index].MajorDivisions.TickColor = format.AxisColor;
            scGraph.YAxes[index].MinorDivisions.GridVisible = (_dataviewset._GraphSetEx.ViewGrid && format.MinorGridVisible) ? true : false;
            scGraph.YAxes[index].ScaleType = format.ScaleType;
            scGraph.YAxes[index].Inverted = format.Inverted;
            scGraph.YAxes[index].Visible = format.Visible;
            scGraph.YAxes[index].EditRangeNumericFormatMode = NumericFormatMode.CreateEngineeringMode(format.GraphFormatString);
            scGraph.YAxes[index].Tag = format;
        }

        private void ApplyComboToAxes()
        {
            // Axis 적용
            AxisFormat xaf = (AxisFormat)tscbXAxis.SelectedItem;
            ApplyXAxis(xaf);
            _dataviewset._GraphSetEx.XAxisFormat = xaf.Name[0];
            for (int i = 0; i < _TscbYAxes.Length; i++)
            {
                if (_TscbYAxes[i].SelectedItem == null) continue;
                AxisFormat yaf = (AxisFormat)_TscbYAxes[i].SelectedItem;
                ApplyYAxis(yaf, i);
                _dataviewset._GraphSetEx.YAxesFormat[i] = yaf.Name[0];
            }
        }

        private void tsbtnPlotAdvSetting_Click(object sender, EventArgs e)
        {
            AxisFormat x = (AxisFormat)tscbXAxis.SelectedItem;
            AxisFormat[] y = new AxisFormat[4];
            for (int i = 0; i < 4; i++)
                y[i] = (AxisFormat)_TscbYAxes[i].SelectedItem;

            PlotAdvancedSettingForm pasForm = new PlotAdvancedSettingForm( x, y, _LangIdx);
            pasForm.DataFilter = _DataFilter;

            if (pasForm.ShowDialog() == DialogResult.OK)
            {
                //DrawGraph();
                ReLoadFiles();
            }
        }

        private void tsbtnRedraw_Click(object sender, EventArgs e)
        {
            ReLoadFiles(true);
        }

        private void tsbtnUpdatingGraph_Click(object sender, EventArgs e)
        {
            ReLoadFiles();
        }

        private void tsbtnCursorOnOff_CheckedChanged(object sender, EventArgs e)
        {
            xyCursor.Visible = tsbtnCursorOnOff.Checked;

            if (xyCursor.Visible)
            {
                if(c1FlexGridLegend.RowSel >= 0 && 
                    c1FlexGridLegend.RowSel < c1FlexGridLegend.Rows.Count && 
                    c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node != null &&
                    c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Row.UserData is ScatterPlot)
                {
                    XYPlot xyPlot = (XYPlot)c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Row.UserData;
                    SetCursor(xyPlot);
                }
                else
                {
                    if (scGraph.Plots.Count > 0)
                        SetCursor(scGraph.Plots[0]);
                }
            }
        }

        private void SetCursor(XYPlot xyPlot, bool move = true)
        {
            try
            {
                xyCursor.Plot = xyPlot;
                xyCursor.Color = xyPlot.LineColor;

                if (move)
                {
                    double xValue = (xyPlot.XAxis.Range.Minimum + xyPlot.XAxis.Range.Maximum) / 2;
                    double yValue = (xyPlot.YAxis.Range.Minimum + xyPlot.YAxis.Range.Maximum) / 2;

                    xyCursor.MoveCursor(xValue, yValue);
                }
            }
            catch (Exception)
            {
            }
        }

        private void tsbtnSetZoomMode_Click(object sender, EventArgs e)
        {
            if (tsbtnGeneralSetZoomMode.Checked)
                scGraph.InteractionModeDefault = GraphDefaultInteractionMode.ZoomXY;
            else
                scGraph.InteractionModeDefault = GraphDefaultInteractionMode.None;
        }

        private void tsbtnSetMoveMode_Click(object sender, EventArgs e)
        {
            if (tsbtnGeneralSetMoveMode.Checked)
                scGraph.InteractionModeDefault = GraphDefaultInteractionMode.PanXY;
            else
                scGraph.InteractionModeDefault = GraphDefaultInteractionMode.None;
        }

        private void scGraph_InteractionModeDefaultChanged(object sender, EventArgs e)
        {
            if (scGraph.InteractionModeDefault == GraphDefaultInteractionMode.PanXY)
            {
                tsbtnGeneralSetZoomMode.Checked = false;
                tsbtnGeneralSetMoveMode.Checked = true;
            }
            else if (scGraph.InteractionModeDefault == GraphDefaultInteractionMode.ZoomXY)
            {
                tsbtnGeneralSetMoveMode.Checked = false;
                tsbtnGeneralSetZoomMode.Checked = true;
            }
            else if (scGraph.InteractionModeDefault == GraphDefaultInteractionMode.None)
            {
                tsbtnGeneralSetZoomMode.Checked = false;
                tsbtnGeneralSetMoveMode.Checked = false;
            }
        }

        private void tsbtnInitGraphSize_Click(object sender, EventArgs e)
        {
            scGraph.ResetZoomPan();
        }        

        private void EnableToolStripButton(ToolStrip ts, ToolStripButton btn, bool enable)
        {
            ts.Invoke(new MethodInvoker(delegate
            {
                btn.Enabled = enable;
            }));
        }

        private void EnableDataFileUtilButton(bool enable)
        {
            EnableToolStripButton(toolStrip_Top, tsbtnGeneralUnloadData, enable);
            EnableToolStripButton(toolStrip_Top, tsbtnGeneralViewScheduleInfor, enable);
            EnableToolStripButton(toolStrip_Top, tsbtnGeneralDataEditor, enable);
            EnableToolStripButton(toolStrip_Top, tsbtnGeneralSaveAsTextFile, enable);
            EnableToolStripButton(toolStrip_Top, tsbtnGeneralExportToExcel, enable);
        }             

        private int GetAxisItemIndex(string[] items, string item)
        {
            int result = -1;

            for (int i = 0; i < items.Length; i++)
                if(items[i] == item)
                    return i;

            return result;
        }

        private void tsbtnNyquistGraph_Click(object sender, EventArgs e)
        {
            int x = GetAxisItemIndex(_xAxisStrings, "Zreal");
            int y1 = GetAxisItemIndex(_yAxisStrings, "-Zimg");
            int y2 = GetAxisItemIndex(_ynAxisStrings, "None");
            int y3 = GetAxisItemIndex(_ynAxisStrings, "None");
            int y4 = GetAxisItemIndex(_ynAxisStrings, "None");

            tscbXAxis.SelectedIndex = x;
            _TscbYAxes[0].SelectedIndex = y1;
            _TscbYAxes[1].SelectedIndex = y2;
            _TscbYAxes[2].SelectedIndex = y3;
            _TscbYAxes[3].SelectedIndex = y4;

            //DrawGraph();
            ReLoadFiles(true);
        }

        private void tsbtnBodeGraph_Click(object sender, EventArgs e)
        {
            int x = GetAxisItemIndex(_xAxisStrings, "Log(Frequency)");
            int y1 = GetAxisItemIndex(_yAxisStrings, "|Z|");
            int y2 = GetAxisItemIndex(_ynAxisStrings, "Zphase");
            int y3 = GetAxisItemIndex(_ynAxisStrings, "None");
            int y4 = GetAxisItemIndex(_ynAxisStrings, "None");

            tscbXAxis.SelectedIndex = x;
            _TscbYAxes[0].SelectedIndex = y1;
            _TscbYAxes[1].SelectedIndex = y2;
            _TscbYAxes[2].SelectedIndex = y3;
            _TscbYAxes[3].SelectedIndex = y4;

            //DrawGraph();
            ReLoadFiles(true);
        }

        private void tsbtnRsCsFreqGraph_Click(object sender, EventArgs e)
        {
            int x = GetAxisItemIndex(XAxesString, "Log(Frequency)");
            int y1 = GetAxisItemIndex(Y1AxesString, "Rs(R-C)");
            int y2 = GetAxisItemIndex(YOtherAxesString, "Cs(R-C)");
            int y3 = GetAxisItemIndex(YOtherAxesString, "None");
            int y4 = GetAxisItemIndex(YOtherAxesString, "None");

            tscbXAxis.SelectedIndex = x;
            _TscbYAxes[0].SelectedIndex = y1;
            _TscbYAxes[1].SelectedIndex = y2;
            _TscbYAxes[2].SelectedIndex = y3;
            _TscbYAxes[3].SelectedIndex = y4;

            //DrawGraph();
            ReLoadFiles(true);
        }

        private void tsbtnZreVdcvsTimeGraph_Click(object sender, EventArgs e)
        {
            int x = GetAxisItemIndex(XAxesString, "Test time");
            int y1 = GetAxisItemIndex(Y1AxesString, "Zreal");
            int y2 = GetAxisItemIndex(YOtherAxesString, "Vdc");
            int y3 = GetAxisItemIndex(YOtherAxesString, "None");
            int y4 = GetAxisItemIndex(YOtherAxesString, "None");

            tscbXAxis.SelectedIndex = x;
            _TscbYAxes[0].SelectedIndex = y1;
            _TscbYAxes[1].SelectedIndex = y2;
            _TscbYAxes[2].SelectedIndex = y3;
            _TscbYAxes[3].SelectedIndex = y4;

            //DrawGraph();
            ReLoadFiles(true);
        }

        private void tsbtnOpenSchDatas_Click(object sender, EventArgs e)
        {
            if (c1FlexGridLegend.Nodes.Length == 0 || c1FlexGridLegend.Row < 0)
                return;

            Node fileNode = c1FlexGridLegend.Rows[c1FlexGridLegend.Row].Node;

            while (fileNode.Level > 0)
            {
                fileNode = fileNode.Parent;
            }

            FileNodeInfor fni = (FileNodeInfor)fileNode.Row.UserData;
            DataHeaderValues dhv = fni.DataHeaderValue;
            
            OpenSchEditorClick?.Invoke(sender, new DataViewEventArgs(fni.DataHeaderValue._ResHead.GetTechFilename(),fni.FileName));
        }

        private void tsbtnSaveAsTextFile_Click(object sender, EventArgs e)
        {
            GraphDataConvTextForm gdctForm = new GraphDataConvTextForm(c1FlexGridLegend.Nodes, _LangIdx);

            if (gdctForm.ShowDialog() == DialogResult.OK)
            {
                if (gdctForm.CheckedNodeList.Count > 0)
                {
                    string ext = (gdctForm.Delimiter == eDelimiter.Comma) ? "csv" : "txt";

                    SaveFileDialog dlg = new SaveFileDialog();
                    dlg.Title = Properties.Resources.Save_Ascii_File;
                    dlg.FileName = CoFile.GetMergedFileName(GetNodeFileList(gdctForm.CheckedNodeList));
                    dlg.Filter = string.Format("{1} (*.{0})|*.{0}", ext, Properties.Resources.Ascii_File);
                    dlg.DefaultExt = ext;

                    if (dlg.ShowDialog() == DialogResult.OK)
                    {
                        toolStrip_Top.Enabled = false;
                        toolStrip_Bottom.Enabled = false;

                        ribbonLabel2.Visible = true;
                        ribbonProgressBar1.Visible = true;
                        ZSharpTarget = -1;
                        BackgroundWorker bgWorkerConvText = new BackgroundWorker();
                        bgWorkerConvText.WorkerReportsProgress = true;
                        bgWorkerConvText.WorkerSupportsCancellation = true;
                        bgWorkerConvText.DoWork += new DoWorkEventHandler(bgWorkerConvText_DoWork);
                        bgWorkerConvText.ProgressChanged += new ProgressChangedEventHandler(bgWorkerConvText_ProgressChanged);
                        bgWorkerConvText.RunWorkerCompleted += new RunWorkerCompletedEventHandler(bgWorkerConvText_RunWorkerCompleted);

                        bgWorkerConvText.RunWorkerAsync(new object[] { gdctForm.GraphOnly, gdctForm.CheckedNodeList, gdctForm.Delimiter, dlg.FileName, GetColumns(true, _Pad) });
                    }
                }
            }
        }

        private List<string> GetNodeFileList(List<Node> nodeList)
        {
            List<string> fileList = new List<string>();

            IEnumerator ie = nodeList.GetEnumerator();

            while(ie.MoveNext())
            {
                Node node = (Node)ie.Current;

                FileNodeInfor fni = (FileNodeInfor)node.Row.UserData;

                //DataHeaderValues dhv = fni.DataHeaderValue;

                fileList.Add(fni.FileName);
            }

            return fileList;
        }

        private void bgWorkerConvText_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker bgWorker = (BackgroundWorker)sender;

            object[] objArray = (object[])e.Argument;
            bool[] bAuxCh = new bool[MBZA_Constant.MAX_AUX_CHANNELS];
            bool graphOnly = (bool)objArray[0];
            List<Node> nodeList = (List<Node>)objArray[1];
            eDelimiter delimiter = (eDelimiter)objArray[2];
            string dstfile = (string)objArray[3];
            string[] columns = (string[])objArray[4];
            int pad = _Pad;
            DataFileTextWriter textWriter = new DataFileTextWriter(_dataviewset._dataConvSet.UnitC);            

            string errmsg;
            int count = nodeList.Count;
            int counter = 0;
            int percent = 0;
            int prevval = 0;

            for(int i=0; i< MBZA_Constant.MAX_AUX_CHANNELS; i++)
            {
                bAuxCh[i] = MenuAuxCh[i].Checked;
            }
            if (MaxAuxCount > 0) pad += 2;
            if (textWriter.Create(dstfile, delimiter, out errmsg) == false)
            {
                e.Result = new object[] { 0, Properties.Resources.File_creation_failed, dstfile };
                textWriter.Close();
                return;
            }

            bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });

            for (int i = 0; i < nodeList.Count; i++)
            {
                counter++;
                percent = prevval = 0;
                bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });

                if ((bgWorker.CancellationPending == true))
                {
                    e.Result = new object[] { percent, Properties.Resources.User_Stop, dstfile };
                    textWriter.Close();
                    return;
                }
                else
                {
                    if (nodeList[i].Row.UserData == null)
                        return;
                    FileNodeInfor fni = (FileNodeInfor)nodeList[i].Row.UserData;

                    string filename = fni.FileName;
                    DataHeaderValues dhv = fni.DataHeaderValue;
                    MakeGraphData mgd = fni.MakeGraphData;
                    mgd.SetFormat(_dataviewset._dataConvSet.TimeFormat);

                    if (graphOnly)
                    {
                        for (int k = 0; k < columns.Length; k++)
                            columns[k] = MakeGraphData.SubStringWidthPad(columns[k], pad, ' ');

                        textWriter.Column = columns;
                        textWriter._ColLine = mgd.GetColLine(pad);

                        if (textWriter.WriteHeader(dhv) != Define.NO_ERROR)
                        {
                            e.Result = new object[] { percent, Properties.Resources.Write_failed, dstfile };
                            textWriter.Close();
                            return;
                        }

                        if (textWriter.WriteColumn(pad) != Define.NO_ERROR)
                        {
                            e.Result = new object[] { percent, Properties.Resources.Write_failed, dstfile };
                            textWriter.Close();
                            return;
                        }

                        for (int j = 0; j < mgd.GraphDataXY.DataX.DataList.Count; j++)
                        {
                            List<string> sl = new List<string>();

                            textWriter.WriteData(mgd.GetLineData(j, MaxAuxCount,  bAuxCh),pad);
                            
                            percent = (int)((double)j / mgd.GraphDataXY.DataX.DataList.Count * 1000);
                            if(prevval != percent)
                            {
                                bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });
                                prevval = percent;
                            }

                            Thread.Sleep(0);
                        }
                    }
                    else
                    {
                        int index = 0;
                        
                        ZMF_File fzmf = new ZMF_File();
                        if(!fzmf.Open(filename))
                        {
                            e.Result = new object[] { percent, Properties.Resources.Error_c_Open_failed, dstfile };
                            textWriter.Close();
                            return;
                        }

                        textWriter.ColLanguage(_dataviewset._dataConvSet.UnitC, _LangIdx);

                        if (textWriter.WriteHeader(fzmf.dhv) != Define.NO_ERROR)
                        {
                            e.Result = new object[] { percent, Properties.Resources.Write_failed, dstfile };
                            textWriter.Close();
                            return;
                        }
                        if (ZSharpTarget >= 0)
                        {
                            if (textWriter.WriteColumnZSharp(_dataviewset._dataConvSet, pad, ZSharpTarget) != Define.NO_ERROR)
                            {
                                e.Result = new object[] { percent, Properties.Resources.Write_failed, dstfile };
                                textWriter.Close();
                                return;
                            }
                        }
                        else
                        {
                            if (textWriter.WriteColumn(_dataviewset._dataConvSet, pad, MaxAuxCount) != Define.NO_ERROR)
                            {
                                e.Result = new object[] { percent, Properties.Resources.Write_failed, dstfile };
                                textWriter.Close();
                                return;
                            }
                        }
                        fzmf.Clear_rdList();
                        while (true)
                        {
                            if(bgWorker.CancellationPending)
                            {
                                e.Result = new object[] { percent, Properties.Resources.User_Stop, dstfile };
                                textWriter.Close();
                                fzmf.CloseFile();
                                return;
                            }
                            else
                            {
                                int result = fzmf.ReadDatas();
                                
                                percent = (int)((double)fzmf.FilePosition / fzmf.FileLength * 1000);
                                if (prevval != percent)
                                {
                                    bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });
                                    prevval = percent;
                                }

                                if (result == -1)
                                    break;
                            }

                            Thread.Sleep(0);
                        }

                        fzmf.Analysis();
                      
                        foreach(var urgd in fzmf.gdList)
                        {
                            if (ZSharpTarget >= 0) textWriter.ZSharpWriteData(index++, urgd, delimiter, pad, null, ZSharpTarget);
                            else textWriter.WriteData(index++, urgd, _dataviewset._dataConvSet, delimiter, pad, null,MaxAuxCount);

                            Thread.Sleep(0);
                        }

                        fzmf.CloseFile();
                    }

                    textWriter.WriteLine(2);

                    Thread.Sleep(100);
                }
            }

            textWriter.Close();

            bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });

            Thread.Sleep(100);
            e.Result = new object[] { 100, Properties.Resources.Complete, dstfile };
        }

        private void bgWorkerConvText_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            object[] objArr = (object[])e.UserState;

            string status = (string)objArr[0];
            int total = (int)objArr[1];
            int current = (int)objArr[2];

            ribbonLabel1.Text = status;
            ribbonLabel2.Text = string.Format("{0:F1}% ({1}/{2})", (double)e.ProgressPercentage / 10, current, total);
            ribbonProgressBar1.Value = e.ProgressPercentage / 10;
        }

        private void bgWorkerConvText_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            object[] resArr = (object[])e.Result;

            ribbonLabel1.Text = (string)resArr[1];
            ribbonLabel2.Visible = false;
            ribbonProgressBar1.Visible = false;

            toolStrip_Top.Enabled = true;
            toolStrip_Bottom.Enabled = true;

            string filename = (string)resArr[2];

            if (File.Exists(filename) == false)
                return;


            if (ZSharpTarget >= 0)
            {

                if (_extAppPath != null && File.Exists(_extAppPath.ZMan))
                {
                    if (File.Exists(filename))
                    {
                        ProcessStartInfo psi = new ProcessStartInfo
                        {
                            FileName = _extAppPath.ZMan,
                            Arguments = $"\"{filename}\"", // 문서 경로를 인자로 전달
                            UseShellExecute = false
                        };
                        Process.Start(psi);
                    }
                    else
                        Process.Start(_extAppPath.ZMan);
                }
                else
                {
                    ProcessStartInfo psi = new ProcessStartInfo
                    {
                        FileName = "notepad.exe",
                        Arguments = $"\"{filename}\"", // 문서 경로를 인자로 전달
                        UseShellExecute = false
                    };
                    Process.Start(psi);
                }
            }
            else
            {
                string message = Properties.Resources.Msg_AsciiConvOk;

                if (MessageBox.Show(message, _MsgBoxCaption, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    Process.Start(filename);
                }
            }
            tsbtnRunZMan.Enabled = _extAppPath == null ? false : File.Exists(_extAppPath.ZMan);
            ZSharpTarget = -1;
        }

        private void WriteInfor(SheetData sd, string[] infoArr)
        {
            foreach (string info in infoArr)
            {
                DocumentFormat.OpenXml.Spreadsheet.Row row = new DocumentFormat.OpenXml.Spreadsheet.Row();
                row.Append(ConstructCell(info, CellValues.String));

                sd.AppendChild(row);
            }
        }

        private Cell GetTimeSpanString(TimeSpan ts, int timeFormat)
        {
            Cell cell = null;

            switch (timeFormat)
            {
                case 0:
                    cell = new Cell()
                    {
                        CellValue = new CellValue(CoTypeString.TimeToStringII(ts)),
                        DataType = new EnumValue<CellValues>(CellValues.String),
                        StyleIndex = 4
                    };
                    break;
                case 1:
                    cell = new Cell()
                    {
                        CellValue = new CellValue(ts.TotalSeconds.ToString("F5")),
                        DataType = new EnumValue<CellValues>(CellValues.Number)
                    };
                    break;
                case 2:
                    cell = new Cell()
                    {
                        CellValue = new CellValue(string.Format("{0:E3}", ts.TotalSeconds)),
                        DataType = new EnumValue<CellValues>(CellValues.Number),
                        StyleIndex = 3
                    };
                    break;
                default:
                    cell = new Cell()
                    {
                        CellValue = new CellValue(ts.TotalSeconds.ToString("F5")),
                        DataType = new EnumValue<CellValues>(CellValues.Number)
                    };
                    break;
            }

            return cell;
        }

        private Cell ConstructCell(string value, CellValues dataType)
        {
            return new Cell()
            {
                CellValue = new CellValue(value),
                DataType = new EnumValue<CellValues>(dataType)
            };
        }

        private Cell ConstructCell(string value, CellValues dataType, eDataStringType strType)
        {
            Cell cell = null;

            switch (strType)
            {
                case eDataStringType.Number:                
                    cell = new Cell()
                    {
                        CellValue = new CellValue(value),
                        DataType = new EnumValue<CellValues>(dataType)
                    };
                    break;
                case eDataStringType.Time:
                    cell = new Cell()
                    {
                        CellValue = new CellValue(value),
                        DataType = new EnumValue<CellValues>(CellValues.String),
                        StyleIndex = 4
                    };
                    break;
                case eDataStringType.Exponent:
                    cell = new Cell()
                    {
                        CellValue = new CellValue(value),
                        DataType = new EnumValue<CellValues>(dataType),
                        StyleIndex = 3
                    };
                    break;
            }

            return cell;
        }

        private void WriteColumn(SheetData sd, string[] colList)
        {
            DocumentFormat.OpenXml.Spreadsheet.Row row = new DocumentFormat.OpenXml.Spreadsheet.Row();

            foreach (string col in colList)
            {
                row.Append(ConstructCell(col, CellValues.String));
            }

            sd.AppendChild(row);
        }

        private void WriteData(SheetData sheetdata, int dataIdx, UnitReportData urgd)
        {

            DocumentFormat.OpenXml.Spreadsheet.Row row = new DocumentFormat.OpenXml.Spreadsheet.Row();

            row.Append(ConstructCell(dataIdx.ToString(), CellValues.Number));
            //row.Append(ConstructCell(urgd.TestTime.TotalSeconds.ToString(), CellValues.Number));
            row.Append(GetTimeSpanString(urgd.TestTime, _TimeFormat));
            row.Append(ConstructCell((urgd.mRawData.nCycle + 1).ToString(), CellValues.Number));
            //row.Append(ConstructCell(urgd.CycleTime.TotalSeconds.ToString(), CellValues.Number));
            row.Append(GetTimeSpanString(urgd.CycleTime, _TimeFormat));
            row.Append(ConstructCell((urgd.mRawData.nTaskNo + 1).ToString(), CellValues.Number));
            //row.Append(ConstructCell(urgd.StepTime.TotalSeconds.ToString(), CellValues.Number));
            row.Append(GetTimeSpanString(urgd.StepTime, _TimeFormat));
            row.Append(ConstructCell(urgd.MainZ.Frequency.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.MainZ.Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.MainZ.Zim.ToString(), CellValues.Number));
            /*
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                row.Append(ConstructCell(urgd.AuxZ[i].Zre.ToString(), CellValues.Number));
            }

            row.Append(ConstructCell(urgd.mRawData.Idc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Auxiliary.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Auxs[1].ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Auxs[2].ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Temperature.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Ocp.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Power.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Load.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Capacity.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Energy.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Range, CellValues.String));
            */
            sheetdata.AppendChild(row);
        }
        
        private void WriteData(SheetData sheetdata, string[] dataArr)
        {
            DocumentFormat.OpenXml.Spreadsheet.Row row = new DocumentFormat.OpenXml.Spreadsheet.Row();

            foreach (string col in dataArr)
            {
                row.Append(ConstructCell(col, CellValues.Number));
            }

            sheetdata.AppendChild(row);
        }

        private void WriteData(SheetData sheetdata, List<DataTypeString> datalist)
        {
            DocumentFormat.OpenXml.Spreadsheet.Row row = new DocumentFormat.OpenXml.Spreadsheet.Row();

            foreach (DataTypeString col in datalist)
            {
                if(col.Type == eDataStringType.Time) row.Append(ConstructCell(col.Data, CellValues.String, col.Type));
                else if (col.Type == eDataStringType.Exponent) row.Append(ConstructCell(col.Data, CellValues.String, col.Type));
                else row.Append(ConstructCell(col.Data, CellValues.Number, col.Type));
            }

            sheetdata.AppendChild(row);
        }

        private Stylesheet CreateStylesheet()
        {
            Stylesheet ss = new Stylesheet();

            Fonts fts = new Fonts();

            DocumentFormat.OpenXml.Spreadsheet.Font ft = new DocumentFormat.OpenXml.Spreadsheet.Font();
            FontName ftn = new FontName();
            ftn.Val = StringValue.FromString("Calibri");
            FontSize ftsz = new FontSize();
            ftsz.Val = DoubleValue.FromDouble(11);
            ft.FontName = ftn;
            ft.FontSize = ftsz;
            fts.Append(ft);

            ft = new DocumentFormat.OpenXml.Spreadsheet.Font();
            ftn = new FontName();
            ftn.Val = StringValue.FromString("Palatino Linotype");
            ftsz = new FontSize();
            ftsz.Val = DoubleValue.FromDouble(18);
            ft.FontName = ftn;
            ft.FontSize = ftsz;
            fts.Append(ft);

            fts.Count = UInt32Value.FromUInt32((uint)fts.ChildElements.Count);

            Fills fills = new Fills();
            Fill fill;
            PatternFill patternFill;
            fill = new Fill();
            patternFill = new PatternFill();
            patternFill.PatternType = PatternValues.None;
            fill.PatternFill = patternFill;
            fills.Append(fill);

            fill = new Fill();
            patternFill = new PatternFill();
            patternFill.PatternType = PatternValues.Gray125;
            fill.PatternFill = patternFill;
            fills.Append(fill);

            fill = new Fill();
            patternFill = new PatternFill();
            patternFill.PatternType = PatternValues.Solid;
            patternFill.ForegroundColor = new ForegroundColor();
            patternFill.ForegroundColor.Rgb = HexBinaryValue.FromString("00ff9728");
            patternFill.BackgroundColor = new BackgroundColor();
            patternFill.BackgroundColor.Rgb = patternFill.ForegroundColor.Rgb;
            fill.PatternFill = patternFill;
            fills.Append(fill);

            fills.Count = UInt32Value.FromUInt32((uint)fills.ChildElements.Count);

            Borders borders = new Borders();

            DocumentFormat.OpenXml.Spreadsheet.Border border = new DocumentFormat.OpenXml.Spreadsheet.Border();
            border.LeftBorder = new LeftBorder();
            border.RightBorder = new RightBorder();
            border.TopBorder = new TopBorder();
            border.BottomBorder = new BottomBorder();
            border.DiagonalBorder = new DiagonalBorder();
            borders.Append(border);

            border = new DocumentFormat.OpenXml.Spreadsheet.Border();
            border.LeftBorder = new LeftBorder();
            border.LeftBorder.Style = BorderStyleValues.Thin;
            border.RightBorder = new RightBorder();
            border.RightBorder.Style = BorderStyleValues.Thin;
            border.TopBorder = new TopBorder();
            border.TopBorder.Style = BorderStyleValues.Thin;
            border.BottomBorder = new BottomBorder();
            border.BottomBorder.Style = BorderStyleValues.Thin;
            border.DiagonalBorder = new DiagonalBorder();
            borders.Append(border);
            borders.Count = UInt32Value.FromUInt32((uint)borders.ChildElements.Count);

            CellStyleFormats csfs = new CellStyleFormats();

            CellFormat cf = new CellFormat();
            cf.NumberFormatId = 0;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 0;
            csfs.Append(cf);
            csfs.Count = UInt32Value.FromUInt32((uint)csfs.ChildElements.Count);

            uint iExcelIndex = 164;
            NumberingFormats nfs = new NumberingFormats();
            CellFormats cfs = new CellFormats();

            cf = new CellFormat();
            cf.NumberFormatId = 0;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cfs.Append(cf);

            NumberingFormat nfDateTime = new NumberingFormat();
            nfDateTime.NumberFormatId = UInt32Value.FromUInt32(iExcelIndex++);
            nfDateTime.FormatCode = StringValue.FromString("dd/mm/yyyy hh:mm:ss");
            nfs.Append(nfDateTime);

            NumberingFormat nf4decimal = new NumberingFormat();
            nf4decimal.NumberFormatId = UInt32Value.FromUInt32(iExcelIndex++);
            nf4decimal.FormatCode = StringValue.FromString("#,##0.0000");
            nfs.Append(nf4decimal);

            NumberingFormat nfExponent = new NumberingFormat();
            nfExponent.NumberFormatId = UInt32Value.FromUInt32(iExcelIndex++);
            nfExponent.FormatCode = StringValue.FromString("0.000E+000");
            nfs.Append(nfExponent);

            // #,##0.00 is also Excel style index 4
            NumberingFormat nf2decimal = new NumberingFormat();
            nf2decimal.NumberFormatId = UInt32Value.FromUInt32(iExcelIndex++);
            nf2decimal.FormatCode = StringValue.FromString("#,##0.00");
            nfs.Append(nf2decimal);

            // @ is also Excel style index 49
            NumberingFormat nfForcedText = new NumberingFormat();
            nfForcedText.NumberFormatId = UInt32Value.FromUInt32(iExcelIndex++);
            nfForcedText.FormatCode = StringValue.FromString("@");
            nfs.Append(nfForcedText);

            // index 1
            cf = new CellFormat();
            cf.NumberFormatId = nfDateTime.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 2
            cf = new CellFormat();
            cf.NumberFormatId = nf4decimal.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 3
            cf = new CellFormat();
            cf.NumberFormatId = nfExponent.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 4
            cf = new CellFormat();
            cf.NumberFormatId = nfForcedText.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 5
            // Header text
            cf = new CellFormat();
            cf.NumberFormatId = nfForcedText.NumberFormatId;
            cf.FontId = 1;
            cf.FillId = 0;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 6
            // column text
            cf = new CellFormat();
            cf.NumberFormatId = nfForcedText.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 1;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 7
            // coloured 2 decimal text
            cf = new CellFormat();
            cf.NumberFormatId = nf2decimal.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 2;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 8
            // coloured column text
            cf = new CellFormat();
            cf.NumberFormatId = nfForcedText.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 2;
            cf.BorderId = 1;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            nfs.Count = UInt32Value.FromUInt32((uint)nfs.ChildElements.Count);
            cfs.Count = UInt32Value.FromUInt32((uint)cfs.ChildElements.Count);

            ss.Append(nfs);
            ss.Append(fts);
            ss.Append(fills);
            ss.Append(borders);
            ss.Append(csfs);
            ss.Append(cfs);

            CellStyles css = new CellStyles();
            DocumentFormat.OpenXml.Spreadsheet.CellStyle cs = new DocumentFormat.OpenXml.Spreadsheet.CellStyle();
            cs.Name = StringValue.FromString("Normal");
            cs.FormatId = 0;
            cs.BuiltinId = 0;
            css.Append(cs);
            css.Count = UInt32Value.FromUInt32((uint)css.ChildElements.Count);
            ss.Append(css);

            DifferentialFormats dfs = new DifferentialFormats();
            dfs.Count = 0;
            ss.Append(dfs);

            TableStyles tss = new TableStyles();
            tss.Count = 0;
            tss.DefaultTableStyle = StringValue.FromString("TableStyleMedium9");
            tss.DefaultPivotStyle = StringValue.FromString("PivotStyleLight16");
            ss.Append(tss);

            return ss;
        }

        private void ConvToExcelForGraphData(object sender, DoWorkEventArgs e)
        {
            try
            {
                BackgroundWorker bgWorker = (BackgroundWorker)sender;

                object[] objArray = (object[])e.Argument;

                List<Node> nodeList = (List<Node>)objArray[1];
                string dstfile = (string)objArray[2];
                string[] column = (string[])objArray[3];

                int count = nodeList.Count;
                int counter = 0;
                int percent = 0;
                int prevval = 0;
                bool[] bAuxCh = new bool[MBZA_Constant.MAX_AUX_CHANNELS];

                uint sheetId = 1;

                string sheetName = string.Empty;

                BzaDataToExcel toExcel = new BzaDataToExcel();

                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    bAuxCh[i] = MenuAuxCh[i].Checked;
                }

                using (SpreadsheetDocument document = SpreadsheetDocument.Create(dstfile, SpreadsheetDocumentType.Workbook))
                {
                    WorkbookPart workbookPart = document.AddWorkbookPart();
                    workbookPart.Workbook = new Workbook();
                    Sheets sheets = workbookPart.Workbook.AppendChild<Sheets>(new Sheets());
                    workbookPart.Workbook.Save();

                    WorkbookStylesPart wbsp = workbookPart.AddNewPart<WorkbookStylesPart>();
                    wbsp.Stylesheet = CreateStylesheet();
                    wbsp.Stylesheet.Save();

                    bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });

                    for (int i = 0; i < nodeList.Count; i++)
                    {
                        counter++;
                        percent = prevval = 0;
                        bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });

                        FileNodeInfor fni = (FileNodeInfor)nodeList[i].Row.UserData;

                        DataHeaderValues dhv = fni.DataHeaderValue;
                        MakeGraphData mgd = fni.MakeGraphData;
                        mgd.SetFormat(_dataviewset._dataConvSet.TimeFormat);
                        // Information Sheet
                        sheetName = string.Format("{0}_{1}", Properties.Resources.Information, i + 1);
                        WorksheetPart worksheetPart = workbookPart.AddNewPart<WorksheetPart>();
                        worksheetPart.Worksheet = new Worksheet();                        
                        Sheet sheet = new Sheet() { Id = workbookPart.GetIdOfPart(worksheetPart), SheetId = sheetId++, Name = sheetName };
                        sheets.Append(sheet);
                        SheetData sheetData = worksheetPart.Worksheet.AppendChild(new SheetData());

                        WriteInfor(sheetData, DataviewCommon.CreateInforArray(dhv));

                        worksheetPart.Worksheet.Save();
                        /////////////////////////////////////////////////////////                        

                        if ((bgWorker.CancellationPending == true))
                        {
                            worksheetPart.Worksheet.Save();

                            e.Result = new object[] { percent, Properties.Resources.User_Stop, dstfile };
                            return;
                        }

                        int datacnt = 1;
                        uint datasheetIndex = 1;
                        bool newsheet = true;

                        for (int j = 0; j < mgd.GraphDataXY.DataX.DataList.Count; j++)
                        {
                            if (newsheet)
                            {
                                sheetName = string.Format("{0}_{1}_{2}", Properties.Resources.Data, i + 1, datasheetIndex++);
                                worksheetPart = workbookPart.AddNewPart<WorksheetPart>();
                                worksheetPart.Worksheet = new Worksheet();
                                sheet = new Sheet() { Id = workbookPart.GetIdOfPart(worksheetPart), SheetId = sheetId++, Name = sheetName };
                                sheets.Append(sheet);
                                sheetData = worksheetPart.Worksheet.AppendChild(new SheetData());

                                WriteColumn(sheetData, column);

                                newsheet = false;
                            }

                            WriteData(sheetData, mgd.GetTypeStringLineData(j,MaxAuxCount,bAuxCh));
                            datacnt++;

                            percent = (int)((double)j / mgd.GraphDataXY.DataX.DataList.Count * 1000);
                            if (prevval != percent)
                            {
                                bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });
                                prevval = percent;
                            }

                            if (datacnt >= BzaDataToExcel.ExcelRowLimit)
                            {
                                datacnt = 1;
                                newsheet = true;

                                worksheetPart.Worksheet.Save();
                            }

                            Thread.Sleep(0);
                        }

                        worksheetPart.Worksheet.Save();

                        Thread.Sleep(0);                        
                    }
                }

                bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });

                e.Result = new object[] { 100, Properties.Resources.Complete, dstfile };
            }
            catch(Exception)
            {
                e.Result = new object[] { 100, Properties.Resources.File_creation_failed, string.Empty };
            }
        }

        private void ConvToExcelForFileDataII(object sender, DoWorkEventArgs e)
        {
            try
            {

                BackgroundWorker bgWorker = (BackgroundWorker)sender;

                object[] objArray = (object[])e.Argument;

                List<Node> nodeList = (List<Node>)objArray[1];
                string dstfile = (string)objArray[2];
                string[] column = (string[])objArray[3];

                int count = nodeList.Count;
                int counter = 0;
                int percent = 0;
                int prevval = 0;

                uint sheetId = 1;

                string sheetName = string.Empty;

                BzaDataToExcel toExcel = new BzaDataToExcel();
                toExcel.GenColLanguage(_dataviewset._dataConvSet.UnitC, _LangIdx);

                using (SpreadsheetDocument document = SpreadsheetDocument.Create(dstfile, SpreadsheetDocumentType.Workbook))
                {
                    WorkbookPart workbookPart = document.AddWorkbookPart();
                    workbookPart.Workbook = new Workbook();
                    Sheets sheets = workbookPart.Workbook.AppendChild<Sheets>(new Sheets());
                    workbookPart.Workbook.Save();

                    WorkbookStylesPart wbsp = workbookPart.AddNewPart<WorkbookStylesPart>();
                    wbsp.Stylesheet = CreateStylesheet();
                    wbsp.Stylesheet.Save();

                    bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });

                    for (int i = 0; i < nodeList.Count; i++)
                    {
                        counter++;
                        percent = prevval = 0;
                        bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });

                        FileNodeInfor fni = (FileNodeInfor)nodeList[i].Row.UserData;

                        string filename = fni.FileName;
                        DataHeaderValues dhv = fni.DataHeaderValue;
                        MakeGraphData mgd = fni.MakeGraphData;
                        mgd.SetFormat(_dataviewset._dataConvSet.TimeFormat);
                        
                        // Information Sheet
                        sheetName = string.Format("{0}_{1}", Properties.Resources.Information, i + 1);
                        WorksheetPart worksheetPart = workbookPart.AddNewPart<WorksheetPart>();
                        worksheetPart.Worksheet = new Worksheet();
                        Sheet sheet = new Sheet() { Id = workbookPart.GetIdOfPart(worksheetPart), SheetId = sheetId++, Name = sheetName };
                        sheets.Append(sheet);
                        SheetData sheetData = worksheetPart.Worksheet.AppendChild(new SheetData());

                        WriteInfor(sheetData, DataviewCommon.CreateInforArray(dhv));

                        worksheetPart.Worksheet.Save();
                        /////////////////////////////////////////////////////////
                        
                        if ((bgWorker.CancellationPending == true))
                        {
                            worksheetPart.Worksheet.Save();

                            e.Result = new object[] { percent, Properties.Resources.User_Stop, dstfile };                                                   
                            return;
                        }

                        int datacnt = 1;
                        uint datasheetIndex = 1;
                        int dataidx = 1;
                        bool newsheet = true;

                        ZMF_File fzmf = new ZMF_File();
                        if (!fzmf.Open(filename))
                        {
                            e.Result = new object[] { percent, Properties.Resources.Error_c_Open_failed, dstfile };
                            return;
                        }
                        fzmf.Clear_rdList();
                        while (true)
                        {
                            if ((bgWorker.CancellationPending))
                            {
                                e.Result = new object[] { Properties.Resources.User_Stop };
                                return;
                            }
                            else
                            {
                                int result = fzmf.ReadDatas();

                                if (result == -1)
                                {

                                    break;
                                }

                                percent = (int)((double)fzmf.FilePosition / fzmf.FileLength * 1000);
                                if (prevval != percent)
                                {
                                    bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });
                                    prevval = percent;
                                }

                                Thread.Sleep(0);
                            }
                        }

                        fzmf.Analysis();

                        foreach (UnitReportData urgd in fzmf.gdList)
                        {
                            if (newsheet)
                            {
                                sheetName = string.Format("{0}_{1}_{2}", Properties.Resources.Data, i + 1, datasheetIndex++);
                                worksheetPart = workbookPart.AddNewPart<WorksheetPart>();
                                worksheetPart.Worksheet = new Worksheet();
                                sheet = new Sheet() { Id = workbookPart.GetIdOfPart(worksheetPart), SheetId = sheetId++, Name = sheetName };
                                sheets.Append(sheet);
                                sheetData = worksheetPart.Worksheet.AppendChild(new SheetData());

                                WriteColumn(sheetData, toExcel.ColumnGeneral);

                                newsheet = false;
                            }

                            WriteData(sheetData, mgd.GetTypeStringLineData(dataidx));
                            

                            percent = (int)((double)dataidx / fzmf.gdList.Count * 1000);
                            if (prevval != percent)
                            {
                                bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });
                                prevval = percent;
                            }
                            datacnt++;
                            dataidx++;

                            if (datacnt >= BzaDataToExcel.ExcelRowLimit)
                            {
                                datacnt = 1;
                                newsheet = true;

                                worksheetPart.Worksheet.Save();
                            }

                            Thread.Sleep(0);
                        }
                        worksheetPart.Worksheet.Save();
                        fzmf.CloseFile();

                        Thread.Sleep(0);
                    }
                }
                
                bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });

                Thread.Sleep(100);
                e.Result = new object[] { 100, Properties.Resources.Complete, dstfile };
            }
            catch(Exception)
            {
                e.Result = new object[] { 100, Properties.Resources.File_creation_failed, string.Empty };
            }
        }

        private void ConvToExcelForFileData(object sender, DoWorkEventArgs e)
        {
            try
            {
                BackgroundWorker bgWorker = (BackgroundWorker)sender;

                object[] objArray = (object[])e.Argument;

                List<Node> nodeList = (List<Node>)objArray[1];
                string dstfile = (string)objArray[2];
                string[] column = (string[])objArray[3];

                int count = nodeList.Count;
                int counter = 0;
                int percent = 0;
                int prevval = 0;                                

                bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Reading_ddd, nodeList.Count, counter });

                List<UnitToExcelDataInfor> udiList = new List<UnitToExcelDataInfor>();

                for (int i = 0; i < nodeList.Count; i++)
                {
                    List<object> dataList = new List<object>();

                    counter++;
                    percent = prevval = 0;
                    bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Reading_ddd, nodeList.Count, counter });

                    FileNodeInfor fni = (FileNodeInfor)nodeList[i].Row.UserData;

                    string filename = fni.FileName;
                    DataHeaderValues dhv = fni.DataHeaderValue;
                    MakeGraphData mgd = fni.MakeGraphData;
                    mgd.SetFormat(_dataviewset._dataConvSet.TimeFormat);

                    if ((bgWorker.CancellationPending == true))
                    {
                        e.Result = new object[] { percent, Properties.Resources.User_Stop, dstfile };
                        return;
                    }

                    //int datacnt = 1;                    

                    ZMF_File fzmf = new ZMF_File();
                    if (!fzmf.Open(filename))
                    {
                        e.Result = new object[] { percent, Properties.Resources.Error_c_Open_failed, dstfile };
                        return;
                    }
                    fzmf.Clear_rdList();
                    while (true)
                    {
                        if (bgWorker.CancellationPending)
                        {
                            fzmf.CloseFile();
                            e.Result = new object[] { percent, Properties.Resources.User_Stop, dstfile };
                            return;
                        }

                        int result = fzmf.ReadDatas();


                        percent = (int)((double)fzmf.FilePosition / fzmf.FileLength * 1000);
                        if (prevval != percent)
                        {
                            bgWorker.ReportProgress(percent, new object[] { Properties.Resources.Reading_ddd, nodeList.Count, counter });
                            prevval = percent;
                        }

                        if (result == -1)
                        {                            
                            break;
                        }

                        //if (datacnt >= SIDataToExcel.ExcelRowLimit)
                        //{
                        //    datacnt = 1;                                                        
                        //}

                        Thread.Sleep(0);
                    }

                    fzmf.Analysis();

                    udiList.Add(new UnitToExcelDataInfor(dhv._FileName, dhv._ResHead, dhv._datacount,fzmf.gdList.Cast<object>().ToList()));

                    fzmf.CloseFile();

                    Thread.Sleep(0);
                }

                DataFileToExcel dfte = new DataFileToExcel(_dataviewset._dataConvSet, udiList);
                dfte.RunMulti(dstfile, bgWorker);

                bgWorker.ReportProgress(1000, new object[] { Properties.Resources.Converting_ddd, nodeList.Count, counter });

                Thread.Sleep(100);
                e.Result = new object[] { 100, Properties.Resources.Complete, dstfile };
            }
            catch (Exception)
            {
                e.Result = new object[] { 100, Properties.Resources.File_creation_failed, string.Empty };
            }
        }

        private void tsbtnExportToExcel_Click(object sender, EventArgs e)
        {
            GraphDataConvExcelForm gdceForm = new GraphDataConvExcelForm(c1FlexGridLegend.Nodes, _LangIdx);

            if (gdceForm.ShowDialog() == DialogResult.OK)
            {
                if (gdceForm.CheckedNodeList.Count > 0)
                {
                    string ext = "xlsx";

                    SaveFileDialog dlg = new SaveFileDialog();
                    dlg.FileName = CoFile.GetMergedFileName(GetNodeFileList(gdceForm.CheckedNodeList));
                    dlg.Filter = string.Format("{1} (*.{0})|*.{0}", ext, Properties.Resources.Excel_Files);
                    dlg.DefaultExt = ext;

                    if (dlg.ShowDialog() == DialogResult.OK)
                    {
                        toolStrip_Top.Enabled = false;
                        toolStrip_Bottom.Enabled = false;

                        ribbonLabel2.Visible = true;
                        ribbonProgressBar1.Visible = true;

                        BackgroundWorker bgWorkerConvExcel = new BackgroundWorker();
                        bgWorkerConvExcel.WorkerReportsProgress = true;
                        bgWorkerConvExcel.WorkerSupportsCancellation = true;
                        bgWorkerConvExcel.DoWork += new DoWorkEventHandler(bgWorkerConvExcel_DoWork);
                        bgWorkerConvExcel.ProgressChanged += new ProgressChangedEventHandler(bgWorkerConvExcel_ProgressChanged);
                        bgWorkerConvExcel.RunWorkerCompleted += new RunWorkerCompletedEventHandler(bgWorkerConvExcel_RunWorkerCompleted);

                        bgWorkerConvExcel.RunWorkerAsync(new object[] { gdceForm.GraphOnly, gdceForm.CheckedNodeList, dlg.FileName, GetColumns(true) });
                    }
                }
            }
        }

        private void bgWorkerConvExcel_DoWork(object sender, DoWorkEventArgs e)
        {
            object[] objArray = (object[])e.Argument;

            bool graphOnly = (bool)objArray[0];

            if (graphOnly)
                ConvToExcelForGraphData(sender, e);
            else
                ConvToExcelForFileData(sender, e);
        }

        private void bgWorkerConvExcel_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            object[] objArr = (object[])e.UserState;

            string status = (string)objArr[0];
            int total = (int)objArr[1];
            int current = (int)objArr[2];

            ribbonLabel1.Text = status;
            ribbonLabel2.Text = string.Format("{0:F1}% ({1}/{2})", (double)e.ProgressPercentage / 10, current, total);
            ribbonProgressBar1.Value = e.ProgressPercentage / 10;
        }

        private void bgWorkerConvExcel_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            object[] resArr = (object[])e.Result;

            ribbonLabel1.Text = (string)resArr[1];
            ribbonLabel2.Visible = false;
            ribbonProgressBar1.Visible = false;

            toolStrip_Top.Enabled = true;
            toolStrip_Bottom.Enabled = true;

            string filename = (string)resArr[2];

            if (File.Exists(filename) == false)
                return;

            string message = Properties.Resources.Msg_ExcelConvOk;

            if (MessageBox.Show(message, _MsgBoxCaption, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Process.Start(filename);
            }
        }

        private string[] GetColumns(bool idx = false, int pad = 0, int ch = -1)
        {
            List<string> cols = new List<string>();
            string sCaption;
            string str;
            if (MaxAuxCount > 0) pad += 2;
            if (idx)
                cols.Add(Properties.Resources.Index.PadRight(pad));

            cols.Add(((AxisFormat)tscbXAxis.SelectedItem).GetCaption().PadRight(pad));

            for (int i = 0; i < _TscbYAxes.Length; i++)
            {
                if (_TscbYAxes[i].SelectedItem == null) continue;
                if (((AxisFormat)_TscbYAxes[i].SelectedItem).Name[0] != "None")
                {
                    cols.Add(((AxisFormat)_TscbYAxes[i].SelectedItem).GetCaption().PadRight(pad));
                }
            }
            if(ch == -1)
            {
                if (MaxAuxCount > 0)
                {

                    for (int i = 0; i < MaxAuxCount; i++)
                    {
                        if (MenuAuxCh[i].Checked)
                        {
                            sCaption = ((AxisFormat)tscbXAxis.SelectedItem).GetCaption();
                            str = string.Format("A{0}_{1}", i + 1, sCaption);
                            cols.Add(str.PadRight(pad));
                            for (int j = 0; j < _TscbYAxes.Length; j++)
                            {
                                if (((AxisFormat)_TscbYAxes[j].SelectedItem).Name[0] != "None")
                                {
                                    sCaption = ((AxisFormat)_TscbYAxes[j].SelectedItem).GetCaption();
                                    str = string.Format("A{0}_{1}", i + 1, sCaption);
                                    cols.Add(str.PadRight(pad));
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                sCaption = ((AxisFormat)tscbXAxis.SelectedItem).GetCaption();
                str = string.Format("A{0}_{1}", ch + 1, sCaption);
                cols.Add(str.PadRight(pad));
                for (int j = 0; j < _TscbYAxes.Length; j++)
                {
                    if (((AxisFormat)_TscbYAxes[j].SelectedItem).Name[0] != "None")
                    {
                        sCaption = ((AxisFormat)_TscbYAxes[j].SelectedItem).GetCaption();
                        str = string.Format("A{0}_{1}", ch + 1, sCaption);
                        cols.Add(str.PadRight(pad));
                    }
                }
            }
            return cols.ToArray();
        }

        private void tsbtnCopyGraphToClipboard_Click(object sender, EventArgs e)
        {
            int width = c1SplitContainer1.Size.Width;
            int height = c1SplitContainer1.Size.Height;

            Bitmap bm = new Bitmap(width, height);

            c1SplitContainer1.DrawToBitmap(bm, new Rectangle(0, 0, width, height));

            Clipboard.SetImage(bm);
        }

        private void tsbtnPrintGraph_Click(object sender, EventArgs e)
        {
            PrintDialog printdlg = new PrintDialog();
            printDocGraph.DefaultPageSettings.Landscape = true;
            printdlg.Document = printDocGraph;

            if (printdlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                printDocGraph.Print();
            }
        }

        private void printDocGraph_PrintPage(object sender, PrintPageEventArgs e)
        {
            System.Drawing.Font FontPageStringFont = new System.Drawing.Font("Segoe UI", 20, FontStyle.Regular, GraphicsUnit.Point);

            int width = e.MarginBounds.Width;
            int height = e.MarginBounds.Height;

            using (Bitmap bmp = new Bitmap(width, height, PixelFormat.Format32bppPArgb))
            using (Graphics g = Graphics.FromImage(bmp))
            {
                Rectangle bounds = new Rectangle(0, 0, width, height);

                scGraph.Draw(new NationalInstruments.UI.ComponentDrawArgs(g, bounds));

                e.Graphics.DrawImage(bmp, e.MarginBounds.X, e.MarginBounds.Y);
            }
        }

        private void tsbtnLineOnOff_Click(object sender, EventArgs e)
        {
            _dataviewset._GraphSetEx.ViewLine = tsbtnGeneralLineOnOff.Checked;
        }  

        private void tsbtnDataEditor_Click(object sender, EventArgs e)
        {
            if (c1FlexGridLegend.Nodes.Length == 0 || c1FlexGridLegend.Row < 0)
                return;

            Node fileNode = c1FlexGridLegend.Rows[c1FlexGridLegend.Row].Node;

            while (fileNode.Level > 0)
            {
                fileNode = fileNode.Parent;
            }

            FileNodeInfor fni = (FileNodeInfor)fileNode.Row.UserData;

            string filename = fni.FileName;

            OpenDataEditorClick?.Invoke(sender, new DataViewEventArgs(string.Empty, filename));
        }

        private void scGraph_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Right || e.KeyCode == Keys.Left)
            {
                IEnumerator ie = scGraph.Cursors.GetEnumerator();

                while (ie.MoveNext())
                {
                    XYCursor cursor = (XYCursor)ie.Current;

                    if (cursor.Visible)
                    {
                        if (e.KeyCode == Keys.Right)
                            cursor.MoveNext();

                        if (e.KeyCode == Keys.Left)
                            cursor.MovePrevious();
                    }
                }
            }
        }

        private void tvList_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            if (e.KeyCode == Keys.Right || e.KeyCode == Keys.Left)
            {
                IEnumerator ie = scGraph.Cursors.GetEnumerator();

                while (ie.MoveNext())
                {
                    XYCursor cursor = (XYCursor)ie.Current;

                    if (cursor.Visible)
                    {
                        if (e.KeyCode == Keys.Right)
                            cursor.MoveNext();

                        if (e.KeyCode == Keys.Left)
                            cursor.MovePrevious();
                    }
                }
            }
        }

        private void scGraph_Zoom(object sender, ActionEventArgs e)
        {
            for (int i = 0; i < scGraph.XAxes.Count; i++)
                scGraph.XAxes[i].Mode = AxisMode.Fixed;
            for (int i = 0; i < scGraph.YAxes.Count; i++)
                scGraph.YAxes[i].Mode = AxisMode.Fixed;
        }

        private void c1FlexGridLegend_OwnerDrawCell(object sender, OwnerDrawCellEventArgs e)
        {
            if (e.Col == 0)
            {
                if (c1FlexGridLegend.Rows[e.Row][e.Col] is PlotNodeValue)
                {
                    PlotNodeValue value = (PlotNodeValue)c1FlexGridLegend.Rows[e.Row][e.Col];

                    // draw background
                    if (c1FlexGridLegend.RowSel == e.Row)
                    {
                        //e.Style = c1FlexGridLegend.Styles.Highlight;
                        e.Style.BackColor = System.Drawing.Color.LightSkyBlue;
                        e.Style.ForeColor = value.ForeColor;

                        Node currentNode = c1FlexGridLegend.Rows[e.Row].Node;
                        if (currentNode != null && currentNode.Level==2)
                        {
                            int file_index = currentNode.Parent.Parent.Index;
                            int graph_index = currentNode.Parent.Index;
                            int index = currentNode.Index;
                            _selNodeIndex[0] = file_index;
                            _selNodeIndex[1] = graph_index;
                            _selNodeIndex[2] = index;
                        }
                    }
                    else
                    {
                        //e.Style = c1FlexGridLegend.Styles.Normal;
                        e.Style.BackColor = value.BackColor;
                        e.Style.ForeColor = value.ForeColor;
                    }
                    
                    e.DrawCell(DrawCellFlags.Background);
                                        
                    // progress bar outline
                    Rectangle rc = e.Bounds;
                    rc.Width--;
                    rc.Height--;
                    e.Graphics.DrawRectangle(_pen, rc);

                    e.Text = " " + value.Text;                    
                    e.DrawCell(DrawCellFlags.Content);
                    e.Handled = true;                    
                }
                else
                {
                    StatusString status = (StatusString)c1FlexGridLegend.Rows[e.Row][e.Col];

                    if (status == null)
                        return;

                    // draw background
                    if (status.Value < 100)
                    {
                        e.Style = c1FlexGridLegend.Styles.Normal;
                        e.DrawCell(DrawCellFlags.Background);

                        // progress bar outline
                        Rectangle rc = e.Bounds;
                        rc.Width--;
                        rc.Height--;
                        e.Graphics.DrawRectangle(_pen, rc);

                        // fill progress bar
                        rc = e.Bounds;
                        rc.Inflate(-2, -2);
                        rc.Width = rc.Width * status.Value / 100;
                        e.Graphics.DrawImage(_bmp, rc);
                    }
                    else
                    {
                        if (c1FlexGridLegend.RowSel == e.Row)
                            e.Style = c1FlexGridLegend.Styles.Highlight;
                        else
                            e.Style = c1FlexGridLegend.Styles.Normal;
                        e.DrawCell(DrawCellFlags.Background);
                    }

                    // draw text
                    e.Text = " " + status.Text;
                    e.DrawCell(DrawCellFlags.Content);
                    e.Handled = true;
                }
            }
        }

        private void tsbtnRunZMan_Click(object sender, EventArgs e)
        {
            try
            {
                string argument = string.Empty;
                string filename;
                if (c1FlexGridLegend.RowSel >= 0)
                {
                    /*if (c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Level == 0)
                    {
                        FileNodeInfor fni = (FileNodeInfor)c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].UserData;

                        filename = fni.FileName;
                    }
                    else if (c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Level == 1)
                    {
                        FileNodeInfor fni = (FileNodeInfor)c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Parent.Row.UserData;

                        filename = fni.FileName;
                    }
                    else
                    {
                        MessageBox.Show("The file is not selected.");
                        return;
                    }*/
                    FileNodeInfor fni = (FileNodeInfor)c1FlexGridLegend.Rows[_selNodeIndex[0]].UserData;
                    filename = fni.FileName;
                    if (File.Exists(filename) == false)
                    {
                        MessageBox.Show("File not found.");
                        return;
                    }

                    SaveFileDialog savedlg = new SaveFileDialog();
                    savedlg.Title = Properties.Resources.Save_Ascii_File;
                    savedlg.InitialDirectory = Path.GetDirectoryName(filename);

                    savedlg.FileName = _selNodeIndex[2] == 0 ? 
                        string.Format("{0}_MAIN", Path.GetFileNameWithoutExtension(filename)) : string.Format("{0}_AUX{1}", Path.GetFileNameWithoutExtension(filename), (_selNodeIndex[2] == -1 ? 1 : _selNodeIndex[2]));

                    savedlg.Filter = "Z# data files(*.Z#)|*.Z#";
                    savedlg.DefaultExt = "Z#";

                    if (savedlg.ShowDialog() == DialogResult.OK)
                    {
                        toolStrip_Top.Enabled = false;
                        toolStrip_Bottom.Enabled = false;

                        ribbonLabel2.Visible = true;
                        ribbonProgressBar1.Visible = true;

                        BackgroundWorker bgWorkerConvText = new BackgroundWorker();
                        bgWorkerConvText.WorkerReportsProgress = true;
                        bgWorkerConvText.WorkerSupportsCancellation = true;
                        bgWorkerConvText.DoWork += new DoWorkEventHandler(bgWorkerConvText_DoWork);
                        bgWorkerConvText.ProgressChanged += new ProgressChangedEventHandler(bgWorkerConvText_ProgressChanged);
                        bgWorkerConvText.RunWorkerCompleted += new RunWorkerCompletedEventHandler(bgWorkerConvText_RunWorkerCompleted);
                        ZSharpTarget = _selNodeIndex[2];

                        List<Node> CheckedNodeList = new List<Node>();
                        CheckedNodeList.Add((Node)c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Parent.Parent);

                        bgWorkerConvText.RunWorkerAsync(new object[] { false, CheckedNodeList, eDelimiter.Tab, savedlg.FileName, GetColumns(true, _Pad, _selNodeIndex[2]) });
                            
                    }
                }
            }
            catch (Exception)
            {
            }
        }

        private void Form_GeneralGraph_FormClosed(object sender, FormClosedEventArgs e)
        {
            
        }

        private void tsbtnGeneralPointOnOff_CheckedChanged(object sender, EventArgs e)
        {
            _graphPoint = tsbtnGeneralPointOnOff.Checked;

            for (int i = 0; i < scGraph.Plots.Count; i++)
            {
                PlotSet plotset = (PlotSet)scGraph.Plots[i].Tag;

                if (_graphPoint)
                    scGraph.Plots[i].PointStyle = ConvertNiPointStyle(plotset.PointStyle);
                else
                    scGraph.Plots[i].PointStyle = PointStyle.None;
            }
        }

        private void tsbtnGeneralLineOnOff_CheckedChanged(object sender, EventArgs e)
        {
            _graphLine = tsbtnGeneralLineOnOff.Checked;

            for (int i = 0; i < scGraph.Plots.Count; i++)
            {
                PlotSet plotset = (PlotSet)scGraph.Plots[i].Tag;

                if (_graphLine)
                    scGraph.Plots[i].LineStyle = ConvertNiLineStyle(plotset.LineStyle);
                else
                    scGraph.Plots[i].LineStyle = LineStyle.None;
            }
        }

        private void c1FlexGridLegend_SelChange(object sender, EventArgs e)
        {
            if (c1FlexGridLegend.Row < 0)
                return;

            Node selNode = c1FlexGridLegend.Rows[c1FlexGridLegend.Row].Node;

            if (selNode != null && selNode.Row.UserData is ScatterPlot)
            {
                XYPlot xyPlot = (XYPlot)selNode.Row.UserData;

                SetCursor(xyPlot, true);
            }            

            //if(selNode != null && selNode.Row.UserData is FileNodeInfor)
            {
                tsbtnFileHeaderInfor.Enabled = true;
            }
            //else
            {
            //    tsbtnFileHeaderInfor.Enabled = false;
            }
        }

        private void c1FlexGridLegend_CellChecked(object sender, RowColEventArgs e)
        {
            var node = c1FlexGridLegend.Rows[e.Row].Node;

            if (node.Row.UserData != null && node.Row.UserData is ScatterPlot)
            {
                ScatterPlot plot = (ScatterPlot)node.Row.UserData;

                plot.Visible = (node.Checked == CheckEnum.Checked) ? true : false;

                //AutoRange();                
            }
            else
            {
                for (int i = 0; i < node.Nodes.Length; i++)
                {
                    var node1 = node.Nodes[i];

                    node1.Checked = node.Checked;
                    if (node1.Row.UserData != null && node1.Row.UserData is ScatterPlot)
                    {
                        ScatterPlot plot = (ScatterPlot)node1.Row.UserData;

                        plot.Visible = (node1.Checked == CheckEnum.Checked) ? true : false;

                        //AutoRange();
                    }
                    else
                    {
                        for (int j = 0; j < node1.Nodes.Length; j++)
                        {
                            var node2 = node1.Nodes[j];

                            node2.Checked = node1.Checked;
                            if (node2.Row.UserData != null && node2.Row.UserData is ScatterPlot)
                            {
                                ScatterPlot plot = (ScatterPlot)node2.Row.UserData;

                                plot.Visible = (node2.Checked == CheckEnum.Checked) ? true : false;

                                //AutoRange();
                            }
                        }
                    }
                }
            }
        }

        private void RedrawPlotByCheck(int row)
        {
            var node = c1FlexGridLegend.Rows[row].Node;

            if (node.Row.UserData != null && node.Row.UserData is ScatterPlot)
            {
                ScatterPlot plot = (ScatterPlot)node.Row.UserData;

                plot.Visible = (node.Checked == CheckEnum.Checked) ? true : false;

                //AutoRange();                
            }
            else
            {
                for (int i = 0; i < node.Nodes.Length; i++)
                {
                    var node1 = node.Nodes[i];

                    node1.Checked = node.Checked;
                    if (node1.Row.UserData != null && node1.Row.UserData is ScatterPlot)
                    {
                        ScatterPlot plot = (ScatterPlot)node1.Row.UserData;

                        plot.Visible = (node1.Checked == CheckEnum.Checked) ? true : false;

                        //AutoRange();
                    }
                    else
                    {
                        for (int j = 0; j < node1.Nodes.Length; j++)
                        {
                            var node2 = node1.Nodes[j];

                            node2.Checked = node1.Checked;
                            if (node2.Row.UserData != null && node2.Row.UserData is ScatterPlot)
                            {
                                ScatterPlot plot = (ScatterPlot)node2.Row.UserData;

                                plot.Visible = (node2.Checked == CheckEnum.Checked) ? true : false;

                                //AutoRange();
                            }
                        }
                    }
                }
            }
        }

        private void scGraph_AfterMoveCursor(object sender, AfterMoveXYCursorEventArgs e)
        {
        }

        private void scGraph_XAxisRangeChanged(object sender, XAxisEventArgs e)
        {
            try
            {
                if (xyCursor.Plot == null)
                    return;

                XYPlot xyPlot = xyCursor.Plot;

                double xValue = (xyPlot.XAxis.Range.Minimum + xyPlot.XAxis.Range.Maximum) / 2;
                double yValue = (xyPlot.YAxis.Range.Minimum + xyPlot.YAxis.Range.Maximum) / 2;

                xyCursor.MoveCursor(xValue, yValue);
            }
            catch (Exception)
            {
            }
        }

        private void scGraph_YAxisRangeChanged(object sender, YAxisEventArgs e)
        {
            try
            {
                if (xyCursor.Plot == null)
                    return;

                XYPlot xyPlot = xyCursor.Plot;

                double xValue = (xyPlot.XAxis.Range.Minimum + xyPlot.XAxis.Range.Maximum) / 2;
                double yValue = (xyPlot.YAxis.Range.Minimum + xyPlot.YAxis.Range.Maximum) / 2;

                xyCursor.MoveCursor(xValue, yValue);
            }
            catch (Exception)
            {
            }
        }

        private void tsbtnGeneralCursorOnOff_Click(object sender, EventArgs e)
        {
            _dataviewset._GraphSetEx.ViewCursor = tsbtnCursorOnOff.Checked;

            if(tsbtnCursorOnOff.Checked)
                scGraph.InteractionModeDefault = GraphDefaultInteractionMode.None;
        }        

        private void tsbtnGeneralViewHideRestData_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void tsbtnGeneralGridOnOff_Click(object sender, EventArgs e)
        {
            _dataviewset._GraphSetEx.ViewGrid = tsbtnGeneralGridOnOff.Checked;
        }

        private void tsbtnGeneralViewHideRestData_Click(object sender, EventArgs e)
        {
            
        }

        private void tsbtnGeneralLegendOnOff_CheckedChanged(object sender, EventArgs e)
        {
            c1SplitterPanel2.Visible = tsbtnGeneralLegendOnOff.Checked;
        }

        private void tsbtnGeneralPointOnOff_Click(object sender, EventArgs e)
        {
            _dataviewset._GraphSetEx.ViewPoint = tsbtnGeneralPointOnOff.Checked;
        }

        private bool _MouseClicked = false;
        private bool _MouseFirstMove = false;
        private float PreviousX, PreviousY;

        private void scGraph_PlotAreaMouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Middle)
            {
                scGraph.ResetZoomPan();
            }

            if (e.Button == MouseButtons.Left)
            {
                
            }
        }

        private void scGraph_PlotAreaMouseUp(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                if (scGraph.InteractionModeDefault == GraphDefaultInteractionMode.None)
                    scGraph.InteractionModeDefault = GraphDefaultInteractionMode.ZoomXY;
                else if (scGraph.InteractionModeDefault == GraphDefaultInteractionMode.ZoomXY)
                    scGraph.InteractionModeDefault = GraphDefaultInteractionMode.PanXY;
                else if (scGraph.InteractionModeDefault == GraphDefaultInteractionMode.PanXY)
                    scGraph.InteractionModeDefault = GraphDefaultInteractionMode.None;
            }
        }

        private void scGraph_PlotAreaMouseMove(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                PointF P;

                P = scGraph.PointToVirtual(new Point(e.X, e.Y));

                if (_MouseClicked && _MouseFirstMove == false)
                {
                    scGraph.PanXY(PreviousX - P.X, PreviousY - P.Y);
                }

                PreviousX = P.X;
                PreviousY = P.Y;

                _MouseFirstMove = false;                
            }
        }

        private void Form_GeneralGraph_DragOver(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop, true))
            {
                string[] filenames = e.Data.GetData(DataFormats.FileDrop, true) as string[];

                bool check = true;

                foreach (string filename in filenames)
                {
                    string extention = Path.GetExtension(filename);

                    if (extention != ".wrd")
                        check = false;
                }

                if(check == true)
                    e.Effect = DragDropEffects.Move;
                else
                    e.Effect = DragDropEffects.None;                
            }
        }

        private void Form_GeneralGraph_DragDrop(object sender, DragEventArgs e)
        {
            string[] filenames = e.Data.GetData(DataFormats.FileDrop, true) as string[];

            LoadFiles(filenames);
        }

        private void scGraph_PlotAreaMouseWheel(object sender, MouseEventArgs e)
        {
            float zoomFactor = (e.Delta > 0) ? 1.15f : 0.85f;

            scGraph.ZoomAroundPoint((float)zoomFactor);
        }

        private void scGraph_Pan(object sender, ActionEventArgs e)
        {
            for (int i = 0; i < scGraph.XAxes.Count; i++)
                scGraph.XAxes[i].Mode = AxisMode.Fixed;
            for (int i = 0; i < scGraph.YAxes.Count; i++)
                scGraph.YAxes[i].Mode = AxisMode.Fixed;
        }

        private void FormGeneralGraph_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (_BgHashtable.Count > 0)
            {
                e.Cancel = true;

                IDictionaryEnumerator ie = _BgHashtable.GetEnumerator();

                while (ie.MoveNext())
                {
                    BackgroundWorker bgWorker = (BackgroundWorker)ie.Key;

                    if (bgWorker.IsBusy)
                        bgWorker.CancelAsync();
                }

                timerCheckBgWorker.Start();
            }
        }

        private void c1FlexGridLegend_MouseDown(object sender, MouseEventArgs e)
        {
            if(e.Button == MouseButtons.Right)
            {
                int rowidx = c1FlexGridLegend.HitTest().Row;

                if (_SelRowIdxList.Contains(rowidx))
                {
                    _SelRowIdx = rowidx;
                    Point menuLocation = new Point(ScrollBar.MousePosition.X, ScrollBar.MousePosition.Y);
                    contextMenuCheckItem.Show(menuLocation);
                }
            }
        }

        private void checkAnOddNumber135ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Node[] nodes = c1FlexGridLegend.Rows[_SelRowIdx].Node.Nodes;

            for (int i = 0; i < nodes.Length; i++)
            {
                PlotNodeValue pnv = (PlotNodeValue)nodes[i].Data;
                if (pnv.Number % 2 == 1 && nodes[i].Checked == CheckEnum.Unchecked)
                {
                    nodes[i].Checked = CheckEnum.Checked;
                    RedrawPlotByCheck(nodes[i].Row.Index);
                }
            }
        }

        private void checkAnEvenNumber246ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Node[] nodes = c1FlexGridLegend.Rows[_SelRowIdx].Node.Nodes;

            for (int i = 0; i < nodes.Length; i++)
            {
                PlotNodeValue pnv = (PlotNodeValue)nodes[i].Data;
                if (pnv.Number % 2 == 0 && nodes[i].Checked == CheckEnum.Unchecked)
                {
                    nodes[i].Checked = CheckEnum.Checked;
                    RedrawPlotByCheck(nodes[i].Row.Index);
                }
            }
        }

        private void check11121ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Node[] nodes = c1FlexGridLegend.Rows[_SelRowIdx].Node.Nodes;

            for (int i = 0; i < nodes.Length; i++)
            {
                PlotNodeValue pnv = (PlotNodeValue)nodes[i].Data;
                if (pnv.Number % 10 == 1 && nodes[i].Checked == CheckEnum.Unchecked)
                {
                    nodes[i].Checked = CheckEnum.Checked;
                    RedrawPlotByCheck(nodes[i].Row.Index);
                }
            }
        }

        private void c1FlexGridLegend_MouseMove(object sender, MouseEventArgs e)
        {
            /*string tiptext = string.Empty;

            try
            {
                int row = c1FlexGridLegend.MouseRow;                
                
                if (row >= 0 && c1FlexGridLegend.Rows[row].Node.Level == 0 && c1FlexGridLegend.Rows[row].UserData != null)
                {
                    FileNodeInfor fni = (FileNodeInfor)c1FlexGridLegend.Rows[row].UserData;

                    tiptext = fni.FileName;                   
                }
            }
            catch(Exception)
            {

            }   
            finally
            {
                toolTipFilePath.SetToolTip(c1FlexGridLegend, tiptext);
            }*/
        }

        private void c1FlexGridLegend_MouseHover(object sender, EventArgs e)
        {
            /*string tiptext = string.Empty;

            try
            {
                int row = c1FlexGridLegend.MouseRow;

                if (row >= 0 && c1FlexGridLegend.Rows[row].Node.Level == 0 && c1FlexGridLegend.Rows[row].UserData != null)
                {
                    FileNodeInfor fni = (FileNodeInfor)c1FlexGridLegend.Rows[row].UserData;

                    tiptext = fni.FileName;        
                }
            }
            catch (Exception)
            {

            }
            finally
            {
                toolTipFilePath.InitialDelay = 0;                
                toolTipFilePath.SetToolTip(c1FlexGridLegend, tiptext);
            }*/
        }

        private void c1FlexGridLegend_AfterSelChange(object sender, RangeEventArgs e)
        {
            
        }

        private void c1FlexGridLegend_MouseClick(object sender, MouseEventArgs e)
        {
            SetFilePath(c1FlexGridLegend.MouseRow);
        }

        private void c1FlexGridLegend_Click(object sender, EventArgs e)
        {
            
        }

        private void contextMenuFolder_Opening(object sender, CancelEventArgs e)
        {
            try
            {
                if (c1FlexGridLegend.RowSel >= 0)
                {
                    if (c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Level == 0)
                    {
                        FileNodeInfor fni = (FileNodeInfor)c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].UserData;

                        string filename = fni.FileName;

                        if (!File.Exists(filename))
                        {
                            e.Cancel = true;
                        }
                    }
                    else if (c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Level == 1)
                    {
                        FileNodeInfor fni = (FileNodeInfor)c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Parent.Row.UserData;

                        string filename = fni.FileName;

                        if (!File.Exists(filename))
                        {
                            e.Cancel = true;
                        }
                    }
                    else
                    {
                        e.Cancel = true;
                    }
                }
                else
                {
                    e.Cancel = true;
                }
            }
            catch (Exception)
            {
                e.Cancel = true;
            }

        }

        private void tsbtnFileHeaderInfor_Click(object sender, EventArgs e)
        {
            string filename = string.Empty;
            FileNodeInfor fni = null;

            if (c1FlexGridLegend.RowSel >= 0)
            {
                int nodelevel = c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Level;

                if (nodelevel == 0)
                {
                    if (c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].UserData is FileNodeInfor)
                    {
                        fni = (FileNodeInfor)c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].UserData;
                    }
                }    
                else if(nodelevel == 1)
                {
                    if (c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Parent.Row.UserData is FileNodeInfor)
                    {
                        fni = (FileNodeInfor)c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Parent.Row.UserData;
                    }
                }
                else if (nodelevel == 2)
                {
                    if (c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Parent.Parent.Row.UserData is FileNodeInfor)
                    {
                        fni = (FileNodeInfor)c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Parent.Parent.Row.UserData;
                    }
                }
            }

            if (fni != null)
            {
                FileHeaderInforForm dlg = new FileHeaderInforForm(_LangIdx);
                dlg.Version = fni.Version;
                dlg.dhv = fni.DataHeaderValue;

                dlg.ShowDialog();
            }
        }

        private void fileInformationToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string filename = string.Empty;
            FileNodeInfor fni = null;

            if (c1FlexGridLegend.RowSel >= 0)
            {
                int nodelevel = c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Level;

                if (nodelevel == 0)
                {
                    if (c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].UserData is FileNodeInfor)
                    {
                        fni = (FileNodeInfor)c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].UserData;
                    }
                }
                else if (nodelevel == 1)
                {
                    if (c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Parent.Row.UserData is FileNodeInfor)
                    {
                        fni = (FileNodeInfor)c1FlexGridLegend.Rows[c1FlexGridLegend.RowSel].Node.Parent.Row.UserData;
                    }
                }
            }

            if (fni != null)
            {
                FileHeaderInforForm dlg = new FileHeaderInforForm(_LangIdx);
                dlg.Version = fni.Version;
                dlg.dhv = fni.DataHeaderValue;

                dlg.ShowDialog();
            }
        }

        private void scGraph_Paint(object sender, PaintEventArgs e)
        {
            for (int i = 0; i < scGraph.YAxes.Count; i++)
            {
                if (i % 2 == 0)
                {
                    Rectangle axisBounds = scGraph.YAxes[i].GetBounds(YAxisPosition.Left);
                    SizeF labelSize = e.Graphics.MeasureString(scGraph.YAxes[i].Caption, scGraph.YAxes[i].CaptionFont);
                    float labelx = axisBounds.Height / 2 - labelSize.Width / 2 + axisBounds.Height / 10;
                    float labely = axisBounds.X + labelSize.Height / 2;

                    Brush brush = new SolidBrush(_dataviewset._GraphSet.YAxesColor[i]);

                    e.Graphics.TranslateTransform(0, scGraph.Height);
                    e.Graphics.RotateTransform(-90);
                    e.Graphics.DrawString(scGraph.YAxes[i].Caption, scGraph.YAxes[i].CaptionFont, brush, labelx, labely);
                    e.Graphics.ResetTransform();
                }
                else
                {
                    Rectangle axisBounds = scGraph.YAxes[i].GetBounds(YAxisPosition.Right);
                    
                    SizeF labelSize = e.Graphics.MeasureString(scGraph.YAxes[i].Caption, scGraph.YAxes[i].CaptionFont);
                    float labelx = axisBounds.Height / 2 - labelSize.Width / 2 + axisBounds.Height / 10;
                    float labely = axisBounds.Width / 2 + axisBounds.X + labelSize.Height;

                    Brush brush = new SolidBrush(_dataviewset._GraphSet.YAxesColor[i]);

                    e.Graphics.TranslateTransform(0, scGraph.Height);
                    e.Graphics.RotateTransform(-90);
                    e.Graphics.DrawString(scGraph.YAxes[i].Caption, scGraph.YAxes[i].CaptionFont, brush, labelx, labely);
                    e.Graphics.ResetTransform();
                }
            }
        }

        private void lnlAuxMenu_MouseUp(object sender, MouseEventArgs e)
        {

        }

        private void lnlAuxMenu_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                contextMenuAux.Show(lnlAuxMenu, e.Location);   
            }
        }

        private void AuxMenuApply()
        {
            Node node, node1, node2, node3;
            PlotNodeValue value;
            int AuxCh = -1;
            int FindIndex;
            for (int i = 0; i < c1FlexGridLegend.Nodes.Length; i++)
            {
                node = c1FlexGridLegend.Nodes[i];
                for (int j = 0; j < node.Nodes.Length; j++)
                {
                    node1 = node.Nodes[j];
                    value = (PlotNodeValue)node1.Data;
                    FindIndex = value.Text.IndexOf("AuxCh", StringComparison.OrdinalIgnoreCase);
                    if (FindIndex >= 0)
                    {
                        AuxCh = Convert.ToInt32(value.Text.Substring(5))-1;
                        node1.Checked = MenuAuxCh[AuxCh].Checked ? CheckEnum.Checked : CheckEnum.Unchecked;
                        ((ScatterPlot)node1.Row.UserData).Visible = MenuAuxCh[AuxCh].Checked;
                    }

                    for (int k = 0; k < node1.Nodes.Length; k++)
                    {
                        node2 = node1.Nodes[k];
                        value = (PlotNodeValue)node2.Data;
                        FindIndex = value.Text.IndexOf("AuxCh", StringComparison.OrdinalIgnoreCase);
                        if (FindIndex >= 0)
                        {
                            AuxCh = Convert.ToInt32(value.Text.Substring(5))-1;
                            node2.Checked = MenuAuxCh[AuxCh].Checked ? CheckEnum.Checked : CheckEnum.Unchecked;
                            ((ScatterPlot)node2.Row.UserData).Visible = MenuAuxCh[AuxCh].Checked;
                        }
                        for (int l = 0; l < node2.Nodes.Length; l++)
                        {
                            node3 = node2.Nodes[l];
                            value = (PlotNodeValue)node3.Data;
                            FindIndex = value.Text.IndexOf("AuxCh", StringComparison.OrdinalIgnoreCase);
                            if (FindIndex >= 0)
                            {
                                AuxCh = Convert.ToInt32(value.Text.Substring(5)) - 1;
                                node3.Checked = MenuAuxCh[AuxCh].Checked ? CheckEnum.Checked : CheckEnum.Unchecked;
                                ((ScatterPlot)node3.Row.UserData).Visible = MenuAuxCh[AuxCh].Checked;
                            }
                        }
                    }
                }
            }
        }

        private void AuxMenuChannelsAll_Click(object sender, EventArgs e)
        {
            AuxMenuChannelsAll.Checked = !AuxMenuChannelsAll.Checked;
            for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
            {
                MenuAuxCh[i].Checked = AuxMenuChannelsAll.Checked;                    
            }
            AuxMenuApply();
        }

        private void AuxMenuChannel1_Click(object sender, EventArgs e)
        {
            AuxMenuChannel1.Checked = !AuxMenuChannel1.Checked;
            AuxMenuApply();
        }

        private void AuxMenuChannel2_Click(object sender, EventArgs e)
        {
            AuxMenuChannel2.Checked = !AuxMenuChannel2.Checked;
            AuxMenuApply();
        }

        private void AuxMenuChannel3_Click(object sender, EventArgs e)
        {
            AuxMenuChannel3.Checked = !AuxMenuChannel3.Checked;
            AuxMenuApply();
        }

        private void AuxMenuChannel4_Click(object sender, EventArgs e)
        {
            AuxMenuChannel4.Checked = !AuxMenuChannel4.Checked;
            AuxMenuApply();
        }

        private void AuxMenuChannel5_Click(object sender, EventArgs e)
        {
            AuxMenuChannel5.Checked = !AuxMenuChannel5.Checked;
            AuxMenuApply();
        }

        private void AuxMenuChannel6_Click(object sender, EventArgs e)
        {
            AuxMenuChannel6.Checked = !AuxMenuChannel6.Checked;
            AuxMenuApply();
        }

        private void AuxMenuChannel7_Click(object sender, EventArgs e)
        {
            AuxMenuChannel7.Checked = !AuxMenuChannel7.Checked;
            AuxMenuApply();
        }

        private void AuxMenuChannel8_Click(object sender, EventArgs e)
        {
            AuxMenuChannel8.Checked = !AuxMenuChannel8.Checked;
            AuxMenuApply();
        }

        private void toolStripMenuItem9_Click(object sender, EventArgs e)
        {
            AuxMenuChannel9.Checked = !AuxMenuChannel9.Checked;
            AuxMenuApply();
        }

        private void toolStripMenuItem10_Click(object sender, EventArgs e)
        {
            AuxMenuChannel10.Checked = !AuxMenuChannel10.Checked;
            AuxMenuApply();
        }

        private void AuxMenuChannel11_Click(object sender, EventArgs e)
        {
            AuxMenuChannel11.Checked = !AuxMenuChannel11.Checked;
            AuxMenuApply();
        }

        private void AuxMenuChannel12_Click(object sender, EventArgs e)
        {
            AuxMenuChannel12.Checked = !AuxMenuChannel12.Checked;
            AuxMenuApply();
        }

        private void tsbtnCsCpvsTimeGraph_Click(object sender, EventArgs e)
        {
            int x = GetAxisItemIndex(XAxesString, "Test time");
            int y1 = GetAxisItemIndex(Y1AxesString, "Cs(R-C)");
            int y2 = GetAxisItemIndex(YOtherAxesString, "Cp(R|C)");
            int y3 = GetAxisItemIndex(YOtherAxesString, "None");
            int y4 = GetAxisItemIndex(YOtherAxesString, "None");

            tscbXAxis.SelectedIndex = x;
            _TscbYAxes[0].SelectedIndex = y1;
            _TscbYAxes[1].SelectedIndex = y2;
            _TscbYAxes[2].SelectedIndex = y3;
            _TscbYAxes[3].SelectedIndex = y4;

            //DrawGraph();
            ReLoadFiles(true);
        }

        private void tsbtnVdcTempvsTime_Click(object sender, EventArgs e)
        {
            int x = GetAxisItemIndex(XAxesString, "Test time");
            int y1 = GetAxisItemIndex(Y1AxesString, "Vdc");
            int y2 = GetAxisItemIndex(YOtherAxesString, "Temperature");
            int y3 = GetAxisItemIndex(YOtherAxesString, "None");
            int y4 = GetAxisItemIndex(YOtherAxesString, "None");

            tscbXAxis.SelectedIndex = x;
            _TscbYAxes[0].SelectedIndex = y1;
            _TscbYAxes[1].SelectedIndex = y2;
            _TscbYAxes[2].SelectedIndex = y3;
            _TscbYAxes[3].SelectedIndex = y4;

            //DrawGraph();
            ReLoadFiles(true);
        }

        private void tsbtnEocTempvsTime_Click(object sender, EventArgs e)
        {
            int x = GetAxisItemIndex(XAxesString, "Test time");
            int y1 = GetAxisItemIndex(Y1AxesString, "Eoc");
            int y2 = GetAxisItemIndex(YOtherAxesString, "Temperature");
            int y3 = GetAxisItemIndex(YOtherAxesString, "None");
            int y4 = GetAxisItemIndex(YOtherAxesString, "None");

            tscbXAxis.SelectedIndex = x;
            _TscbYAxes[0].SelectedIndex = y1;
            _TscbYAxes[1].SelectedIndex = y2;
            _TscbYAxes[2].SelectedIndex = y3;
            _TscbYAxes[3].SelectedIndex = y4;

            //DrawGraph();
            ReLoadFiles(true);
        }

        private void tsbtnRsRpvsTime_Click(object sender, EventArgs e)
        {
            int x = GetAxisItemIndex(XAxesString, "Test time");
            int y1 = GetAxisItemIndex(Y1AxesString, "Rs(R-C)");
            int y2 = GetAxisItemIndex(YOtherAxesString, "Rp(R | C)");
            int y3 = GetAxisItemIndex(YOtherAxesString, "None");
            int y4 = GetAxisItemIndex(YOtherAxesString, "None");

            tscbXAxis.SelectedIndex = x;
            _TscbYAxes[0].SelectedIndex = y1;
            _TscbYAxes[1].SelectedIndex = y2;
            _TscbYAxes[2].SelectedIndex = y3;
            _TscbYAxes[3].SelectedIndex = y4;

            //DrawGraph();
            ReLoadFiles(true);
        }

        private void tsbtnZTvsVdc_Click(object sender, EventArgs e)
        {
            int x = GetAxisItemIndex(XAxesString, "Vdc");
            int y1 = GetAxisItemIndex(Y1AxesString, "Zreal");
            int y2 = GetAxisItemIndex(YOtherAxesString, "|Z|");
            int y3 = GetAxisItemIndex(YOtherAxesString, "Temperature");
            int y4 = GetAxisItemIndex(YOtherAxesString, "None");

            tscbXAxis.SelectedIndex = x;
            _TscbYAxes[0].SelectedIndex = y1;
            _TscbYAxes[1].SelectedIndex = y2;
            _TscbYAxes[2].SelectedIndex = y3;
            _TscbYAxes[3].SelectedIndex = y4;

            //DrawGraph();
            ReLoadFiles(true);
        }
        
        private void tsbtnErefDivIvsTimeGraph_Click(object sender, EventArgs e)
        {
            int x = GetAxisItemIndex(XAxesString, "Test time");
            int y1 = GetAxisItemIndex(Y1AxesString, "Vdc");
            int y2 = GetAxisItemIndex(YOtherAxesString, "Idc");
            int y3 = GetAxisItemIndex(YOtherAxesString, "None");
            int y4 = GetAxisItemIndex(YOtherAxesString, "None");

            tscbXAxis.SelectedIndex = x;
            _TscbYAxes[0].SelectedIndex = y1;
            _TscbYAxes[1].SelectedIndex = y2;
            _TscbYAxes[2].SelectedIndex = y3;
            _TscbYAxes[3].SelectedIndex = y4;

            //DrawGraph();
            ReLoadFiles(true);
        }

        private void tsbtnErefvsAbsQGraph_Click(object sender, EventArgs e)
        {
            int x = GetAxisItemIndex(_xAxisStrings, "Capacity"); //|Q|
            int y1 = GetAxisItemIndex(_yAxisStrings, "Vdc");
            int y2 = GetAxisItemIndex(_ynAxisStrings, "None");
            int y3 = GetAxisItemIndex(_ynAxisStrings, "None");
            int y4 = GetAxisItemIndex(_ynAxisStrings, "None");

            tscbXAxis.SelectedIndex = x;
            _TscbYAxes[0].SelectedIndex = y1;
            _TscbYAxes[1].SelectedIndex = y2;
            _TscbYAxes[2].SelectedIndex = y3;
            _TscbYAxes[3].SelectedIndex = y4;

            //DrawGraph();
            ReLoadFiles(true);
        }

        private void timerCheckBgWorker_Tick(object sender, EventArgs e)
        {
            IDictionaryEnumerator ide = _BgHashtable.GetEnumerator();
            bool isBusy = false;

            while(ide.MoveNext())
            {
                BackgroundWorker bgWorker = (BackgroundWorker)ide.Key;

                if(bgWorker.IsBusy)
                {
                    isBusy = true;
                    break;
                }
            }

            if (!isBusy)
            {
                _BgHashtable.Clear();
                timerCheckBgWorker.Stop();
                Close();
            }            
        }              
    }
}
