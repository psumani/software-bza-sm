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
                case "Time":
                    _FullName = "Time";
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
                case "File time":
                    _FullName = "File Time";
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
                case "AuxVdc":
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
                case "AuxZre":
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
                case "-AuxZim":
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
                case "|AuxZ|":
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
                case "Yreal":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "S";
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
                case "-Yim":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "s";
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
                case "|Y|":
                    _FullName = name;
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "S";
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
                case "AuxZph":
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
                case "Y-Phase":
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
                    _AxisMode = AxisMode.Fixed;
                    _RangeMax = 1;
                    _RangeMin = 0;
                    _Inverted = false;
                    _Color = Color.Black;
                    _PlotVisible = true;
                    MinorGridVisible = false;
                    break;
                case "IR":
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
                case "Rp":
                    _Name[0] = name; _Name[1] = name + "_s"; _Name[2] = name + "_d";
                    _Unit[0] = "Ohm"; _Unit[1] = "Ohm/g"; _Unit[2] = "Ohm/cm2";
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
                case "Ch Q":
                    _FullName = "Chareg Q";
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
                case "Dch Q":
                    _FullName = "Discharge Q";
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
                case "Accumulate Q":
                    _FullName = "Accumulate Q";
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
                case "Ch P":
                    _FullName = "Charge Power";
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
                case "Dch P":
                    _FullName = "Discharge Power";
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
                case "Accumulate Wh":
                    _FullName = "Accumulate Energy";
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
                case "Accumulate |Q|":
                    _FullName = "Accumulate |Q|";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = name; _Name[1] = "Accumulate |Q_s|"; _Name[2] = "Accumulate |Q_d|";
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
                case "|Q|":
                    _FullName = "|Q|";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = name; _Name[1] = "|Q_s|"; _Name[2] = "|Q_d|";
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
                case "Accumulate Q-Q1":
                    _FullName = "Accumulate Q-Q1";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = name; _Name[1] = "Q_s-Q0_s"; _Name[2] = "Q_d-Q0_d";
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
                case "|I|":
                    _FullName = "|I|";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = name; _Name[1] = "|I_s|"; _Name[2] = "|I_d|";
                    _Unit[0] = "A"; _Unit[1] = "A/g"; _Unit[2] = "A/cm2";
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
                case "dQ/dV":
                    _Name[0] = name; _Name[1] = "dQ_s/dV"; _Name[2] = "dQ_d/dV";
                    _Unit[0] = "Ah/V"; _Unit[1] = "Ah/V/g"; _Unit[2] = "Ah/V/cm2";
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

                case "Coulomb Eff.": //cho
                    _FullName = "Coulomb Efficiency";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "%";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
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

                case "Ch Wh": //cho
                    _FullName = "Charge Energy";
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

                case "Dch Wh": //cho
                    _FullName = "Discharge Energy";
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

                case "Energy Eff.": //cho
                    _FullName = "Energy Efficiency";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "%";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
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

                case "Min V": //cho
                    _FullName = "Min. Voltage";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "V";
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

                case "Max V": //cho
                    _FullName = "Max. Voltage";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "V";
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

                case "Ch Vavg": //cho
                    _FullName = "Charge V Average";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "V";
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

                case "Dch Vavg": //cho
                    _FullName = "Discharge V Average";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "V";
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

                case "Vavg": //cho
                    _FullName = "V Average";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:e5}{1}";
                    RowExcelFormat = "0.00000E+000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "V";
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

                case "Depth of discharge": //cho
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "%";
                    for (int i = 0; i < 3; i++)
                        _Caption[i] = string.Format("{0}({1})", _Name[i], _Unit[i]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
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

                case "Ch Q/Q1":
                    _FullName = "Charge Q/Q1";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:F3}{1}";
                    RowExcelFormat = "0.000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "%";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
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
                case "Dch Q/Q1":
                    _FullName = "Discharge Q/Q1";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:F3}{1}";
                    RowExcelFormat = "0.000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "%";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
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
                case "Ch Q/NQ":
                    _FullName = "Charge Q/NQ";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:F3}{1}";
                    RowExcelFormat = "0.000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "%";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
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
                case "Dch Q/NQ":
                    _FullName = "Discharge Q/NQ";
                    DataType = typeof(double);
                    ColTextFormat = "{0, -25}{1}";
                    RowTextFormat = "{0, -25:F3}{1}";
                    RowExcelFormat = "0.000";
                    _Name[0] = _Name[1] = _Name[2] = name;
                    _Unit[0] = _Unit[1] = _Unit[2] = "%";
                    _Caption[0] = _Caption[1] = _Caption[2] = string.Format("{0}({1})", name, _Unit[0]);
                    _GraphFormatStringMode = FormatStringMode.Engineering;
                    _GraphFormatString = GRAPH_FORMATT_STRING;
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
                case "File time":
                    result = result.Replace(_Name[0], Properties.Resources.File_Time);
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
                case "Aux":
                    result = result.Replace(_Name[0], Properties.Resources.Auxiliary);
                    break;
                case "Aux1":
                    result = result.Replace(_Name[0], Properties.Resources.Aux1);
                    break;
                case "Aux2":
                    result = result.Replace(_Name[0], Properties.Resources.Aux2);
                    break;
                case "Aux3":
                    result = result.Replace(_Name[0], Properties.Resources.Aux3);
                    break;
                case "Aux4":
                    result = result.Replace(_Name[0], Properties.Resources.Aux4);
                    break;
                case "Aux5":
                    result = result.Replace(_Name[0], Properties.Resources.Aux5);
                    break;
                case "Aux6":
                    result = result.Replace(_Name[0], Properties.Resources.Aux6);
                    break;
                case "Aux7":
                    result = result.Replace(_Name[0], Properties.Resources.Aux7);
                    break;
                case "Aux8":
                    result = result.Replace(_Name[0], Properties.Resources.Aux8);
                    break;
                case "Aux9":
                    result = result.Replace(_Name[0], Properties.Resources.Aux9);
                    break;
                case "Aux10":
                    result = result.Replace(_Name[0], Properties.Resources.Aux10);
                    break;
                case "Aux11":
                    result = result.Replace(_Name[0], Properties.Resources.Aux11);
                    break;
                case "Aux12":
                    result = result.Replace(_Name[0], Properties.Resources.Aux12);
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
                case "Load":
                    result = result.Replace(_Name[0], Properties.Resources.Load);
                    break;
                case "Power":
                    result = result.Replace(_Name[0], Properties.Resources.Power);
                    break;
                case "Ch Q":
                    result = result.Replace(_Name[0], Properties.Resources.Charge_Q);
                    break;
                case "Dch Q":
                    result = result.Replace(_Name[0], Properties.Resources.Discharge_Q);
                    break;
                case "Ch P":
                    result = result.Replace(_Name[0], Properties.Resources.Charge_P);
                    break;
                case "Dch P":
                    result = result.Replace(_Name[0], Properties.Resources.Discharge_P);
                    break;
                case "Ch Wh":
                    result = result.Replace(_Name[0], Properties.Resources.Charge_Wh);
                    break;
                case "Dch Wh":
                    result = result.Replace(_Name[0], Properties.Resources.Discharge_Wh);
                    break;
                case "Accumulate Q":
                    result = result.Replace(_Name[0], Properties.Resources.Accumulate_Q);
                    break;
                case "Accumulate |Q|":
                    result = result.Replace("Accumulate", Properties.Resources.Accumulate);
                    result = result.Replace("Q", Properties.Resources.Q);
                    break;
                case "Accumulate Wh":
                    result = result.Replace(_Name[0], Properties.Resources.Accumulate_Wh);
                    break;
                case "|Q|":
                    result = result.Replace("Q", Properties.Resources.Q);
                    break;
                case "|I|":
                    result = result.Replace("I", Properties.Resources.Current);
                    break;
                case "Cycle No.":
                    result = result.Replace(_Name[0], Properties.Resources.Cycle_No_d);
                    break;
                case "Coulomb Eff.":
                    result = result.Replace(_Name[0], Properties.Resources.Coulomb_Eff_d);
                    break;
                case "Energy Eff.":
                    result = result.Replace(_Name[0], Properties.Resources.Energy_Eff_d);
                    break;
                case "Min V":
                    result = result.Replace(_Name[0], Properties.Resources.Min_d_V);
                    break;
                case "Max V":
                    result = result.Replace(_Name[0], Properties.Resources.Max_d_V);
                    break;
                case "Ch Vavg":
                    result = result.Replace(_Name[0], Properties.Resources.Chg_d_Vavg);
                    break;
                case "Dch Vavg":
                    result = result.Replace(_Name[0], Properties.Resources.Dchg_d_Vavg);
                    break;
                case "Vavg":
                    result = result.Replace(_Name[0], Properties.Resources.Vavg);
                    break;
                case "Ch Q/Q1":
                    result = result.Replace(_Name[0], Properties.Resources.Ch_Q_Q1);
                    break;
                case "Dch Q/Q1":
                    result = result.Replace(_Name[0], Properties.Resources.Dch_Q_Q1);
                    break;
                case "Ch Q/NQ":
                    result = result.Replace(_Name[0], Properties.Resources.Ch_Q_NQ);
                    break;
                case "Dch Q/NQ":
                    result = result.Replace(_Name[0], Properties.Resources.Dch_Q_NQ);
                    break;
                case "IR":
                    result = result.Replace(_Name[0], Properties.Resources.IR);
                    break;
            }

            return result;
        }
        #endregion
    }
}
