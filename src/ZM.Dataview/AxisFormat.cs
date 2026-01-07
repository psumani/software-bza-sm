using System;
using NationalInstruments.UI;
using System.Drawing;

namespace ZiveLab.ZM.Dataview
{
    [Serializable]
    public class AxisFormat
    {
        private const string GRAPH_FORMATT_STRING = "s4";

        private string _FullName;
        private string[] _Name;
        private string[] _Caption;
        private string[] _Unit;
        private FormatStringMode _GraphFormatStringMode;
        private string _GraphFormatString;
        private string _FormatString;
        private ScaleType _ScaleType;
        private AxisMode _AxisMode;
        private double _RangeMax;
        private double _RangeMin;
        private bool _Inverted;
        private Color _Color;
        private bool _PlotVisible;

        private bool _UnitC = false;

        #region 프로퍼티
        public string[] Name
        {
            get { return _Name; }
            set { _Name = value; }
        }
        public string FullName
        {
            get
            {
                string temp = string.Empty;
                if (_Unit[0] == string.Empty)
                    temp = _FullName;
                else
                    temp = string.Format("{0}({1})", _FullName, _Unit[0]);

                return temp;
            }
        }
        public Type DataType { get; private set; }
        public string ColTextFormat { get; private set; }
        public string RowTextFormat { get; private set; }
        public string RowExcelFormat { get; private set; }
        public string Caption
        {
            get { return _Caption[0]; }
        }
        public string Unit
        {
            get { return _Unit[0]; }
        }
        public FormatStringMode GraphFormatStringMode
        {
            get { return _GraphFormatStringMode; }
        }
        public string GraphFormatString
        {
            get { return _GraphFormatString; }
        }
        public string FormatString
        {
            get { return _FormatString; }
        }
        public ScaleType ScaleType
        {
            get { return _ScaleType; }
            set { _ScaleType = value; }
        }
        public AxisMode AxisMode
        {
            get { return _AxisMode; }
            set { _AxisMode = value; }
        }
        public double RangeMax
        {
            get { return _RangeMax; }
            set { _RangeMax = value; }
        }
        public double RangeMin
        {
            get { return _RangeMin; }
            set { _RangeMin = value; }
        }
        public bool Inverted
        {
            get { return _Inverted; }
            set { _Inverted = value; }
        }
        public Color AxisColor
        {
            get { return _Color; }
            set { _Color = value; }
        }
        public bool Visible
        {
            get { return _PlotVisible; }
        }
        public bool MinorGridVisible { get; set; }

        public bool UnitC { set { _UnitC = value; } }
        
        #endregion

        #region 생성자
        public AxisFormat(string name, bool unitC)
        {
            _Name = new string[3];
            _Caption = new string[3];
            _Unit = new string[3];
            _UnitC = unitC;

            switch (name)
            {
                case "None":
                    _FullName = string.Empty;
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}", "");
                    _GraphFormatStringMode = FormatStringMode.ElapsedTime;
                    _GraphFormatString = @"E:hh\:mm\:ss\.fff";
                    _FormatString = "";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = false;
                    MinorGridVisible = false;
                    break;
                case "Test time":
                    _FullName = "Test Time";
                    DataType = typeof(TimeSpan);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = @"{0, -25:d\.hh\:mm\:ss\.fff}{1}";
                    RowExcelFormat = "d:hh:mm:ss.000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}", name);
                    _GraphFormatStringMode = FormatStringMode.ElapsedTime;
                    _GraphFormatString = @"E:hh\:mm\:ss\.fff";
                    _FormatString = "F3";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;                
                case "Cycle time":
                    _FullName = "Cycle Time";
                    DataType = typeof(TimeSpan);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = @"{0, -25:d\.hh\:mm\:ss\.fff}{1}";
                    RowExcelFormat = "d:hh:mm:ss.000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}", name);
                    _GraphFormatStringMode = FormatStringMode.ElapsedTime;
                    _GraphFormatString = @"E:hh\:mm\:ss\.fff";
                    _FormatString = "F3";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Step time":
                    _FullName = "Step Time";
                    DataType = typeof(TimeSpan);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = @"{0, -25:d\.hh\:mm\:ss\.fff}{1}";
                    RowExcelFormat = "d:hh:mm:ss.000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}", name);
                    _GraphFormatStringMode = FormatStringMode.ElapsedTime;
                    _GraphFormatString = @"E:hh\:mm\:ss\.fff";
                    _FormatString = "F3";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Voltage":
                case "Eref":
                    _FullName = "Voltage";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "V";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Current":
                case "I":
                    _FullName = "Current";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = name; _Name[1] = "I_s"; _Name[2] = "I_d";
                    _Unit[0] = "A"; _Unit[1] = "A/g"; _Unit[2] = "A/cm2";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Idc":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "A";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Iac":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "A";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Temperature":
                    _FullName = "Temperature";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:F2}{1}";
                    RowExcelFormat = "0.00";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = CoStringSymbol.GetSpecialSymbol("'C");
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Numeric;
                    _GraphFormatString = "0.00";
                    _FormatString = "F2";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "LogI":
                    _FullName = "Log I";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = name; _Name[1] = "LogI_s"; _Name[2] = "LogI_d";
                    _Unit[0] = "A"; _Unit[1] = "A/g"; _Unit[2] = "A/cm2";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Logarithmic;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = true;
                    break;
                case "Log(Frequency)":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "Hz";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Logarithmic;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 1;
                    _RangeMin = 0.01;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = true;
                    break;
                case "Log|Z|":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "ohm";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Logarithmic;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 1;
                    _RangeMin = 0.01;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = true;
                    break;
                case "Log|Y|":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "S";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Logarithmic;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 1;
                    _RangeMin = 0.01;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = true;
                    break;
                case "Frequency":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "Hz";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Zreal":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "ohm";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "-Zim":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "ohm";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "|Z|":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "ohm";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Z-Phase":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "deg";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    //_AxisMode = AxisMode.Fixed;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Rs(R-C)":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "ohm";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Cs(R-C)":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "F";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Rp(R|C)":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "ohm";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Cp(R|C)":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "F";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Rs(R-L)":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "ohm";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Ls(R-L)":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "H";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "|Q(R-L)|":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}", name);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Load":
                    _FullName = "Load";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = name; _Name[1] = name + "_s"; _Name[2] = name + "_d";
                    _Unit[0] = CoStringSymbol.GetSpecialSymbol("ohm"); _Unit[1] = CoStringSymbol.GetSpecialSymbol("ohm") + "/g"; _Unit[2] = CoStringSymbol.GetSpecialSymbol("ohm") + "/cm2";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Capacity":
                    _FullName = "Capacity";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = name; _Name[1] = name + "_s"; _Name[2] = name + "_d";
                    if (_UnitC)
                    {
                        _Unit[0] = "C"; _Unit[1] = "C/g"; _Unit[2] = "C/cm2";
                    }
                    else
                    {
                        _Unit[0] = "Ah"; _Unit[1] = "Ah/g"; _Unit[2] = "Ah/cm2";
                    }
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Power":
                    _FullName = "Power";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = name; _Name[1] = name + "_s"; _Name[2] = name + "_d";
                    _Unit[0] = "W"; _Unit[1] = "W/g"; _Unit[2] = "W/cm2";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Eoc":
                    _FullName = "Eoc";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "V";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Cycle No.": //cho
                    _FullName = "Cycle No.";
                    DataType = typeof(int);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:N0}{1}";
                    RowExcelFormat = "0";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = string.Empty;
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}", _Name[i]);
                    _GraphFormatStringMode = FormatStringMode.Numeric;
                    _GraphFormatString = "N0";
                    _FormatString = "N0";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Energy": 
                    _FullName = "Energy";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = name; _Name[1] = name + "_s"; _Name[2] = name + "_d";
                    _Unit[0] = "Wh"; _Unit[1] = "Wh/g"; _Unit[2] = "Wh/cm2";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
                    _FormatString = "e5";
                    _ScaleType = ScaleType.Linear;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "Log(CycleN)": //cho
                    _FullName = "Log(CycleN)";
                    DataType = typeof(int);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:N0}{1}";
                    RowExcelFormat = "0";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = string.Empty;
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Numeric;
                    _GraphFormatString = "N0";
                    _FormatString = "N0";
                    _ScaleType = ScaleType.Logarithmic;
                    _AxisMode = AxisMode.AutoScaleLoose;
                    _RangeMax = 10;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = true;
                    break;

                default:
                    break;
            }
        }
        #endregion

        #region 메소드
        public override string ToString()
        {
            return GetNameString(_Name[(int)0]);
        }
        public string GetCaption()
        {
            return GetNameString(_Caption[(int)0]);
        }

        private string GetNameString(string name)
        {
            string result = name;

            switch (_Name[0])
            {
                case "None":
                    result = result.Replace(_Name[0], Properties.Resources.None);
                    break;
                case "Test time":
                    result = result.Replace(_Name[0], Properties.Resources.Test_Time);
                    break;
                case "Cycle time":
                    result = result.Replace(_Name[0], Properties.Resources.Cyc_Time);
                    break;
                case "Step time":
                    result = result.Replace(_Name[0], Properties.Resources.Step_Time);
                    break;
                case "Voltage":
                case "Eref":
                    result = result.Replace(_Name[0], Properties.Resources.Voltage);
                    break;
                case "Current":
                case "I":
                    result = result.Replace(_Name[0], Properties.Resources.Current);
                    break;
                case "Temperature":
                    result = result.Replace(_Name[0], Properties.Resources.Temperature);
                    break;
                case "LogI":
                    result = result.Replace(_Name[0], Properties.Resources.Log_I);
                    break;
                case "Zreal":
                    result = result.Replace(_Name[0], Properties.Resources.Zreal);
                    break;
                case "-Zim":
                    result = result.Replace(_Name[0], Properties.Resources.Zimage);
                    break;
                case "Log|Z|":
                    result = result.Replace(_Name[0], Properties.Resources.LogZmag);
                    break;
                case "|Z|":
                    result = result.Replace(_Name[0], Properties.Resources.Zmag);
                    break;
                case "Z-Phase":
                    result = result.Replace(_Name[0], Properties.Resources.ZPhase);
                    break;
                case "Load":
                    result = result.Replace(_Name[0], Properties.Resources.Load);
                    break;
                case "Power":
                    result = result.Replace(_Name[0], Properties.Resources.Power);
                    break;
                case "Capacity":
                    result = result.Replace(_Name[0], Properties.Resources.Capacity);
                    break;
                case "Energy":
                    result = result.Replace(_Name[0], Properties.Resources.Energy);
                    break;
                case "Cycle No.":
                    result = result.Replace(_Name[0], Properties.Resources.Cycle_No_d);
                    break;
                case "Frequency":
                    result = result.Replace(_Name[0], Properties.Resources.Frequency);
                    break;
                case "Eoc":
                    result = result.Replace(_Name[0], Properties.Resources.Eoc_V);
                    break;
            }

            return result;
        }
        #endregion
    }
}
