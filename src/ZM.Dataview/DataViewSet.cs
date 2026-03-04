using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using static ZiveLab.ZM.Dataview.CoMath;

namespace ZiveLab.ZM.Dataview
{
    [Serializable]
    public class GraphSet
    {
        public Color XAxisColor { get; set; }
        public Color[] YAxesColor { get; set; }
        public Color MajorGridColor { get; set; }
        public Color MinorGridColor { get; set; }  
        
        public Color PlotAreaColor { get; set; } 

        public PlotSet[] PlotSets { get; set; }

        public double AutoRangeMargin { get; set; }
        public double AutoRangeMarginLowLimit { get; set; }
        public double AutoRangeMarginX { get; set; }
        public double AutoRangeMarginXLowLimit { get; set; }

        public GraphSet()
        {
            Init();
        }

        public void Init()
        {
            XAxisColor = Color.FromArgb(69, 69, 69);
            YAxesColor = new Color[] { Color.FromArgb(69, 69, 69), Color.FromArgb(69, 69, 69), Color.FromArgb(69, 69, 69), Color.FromArgb(69, 69, 69) };
            MajorGridColor = Color.FromArgb(210, 210, 210);
            MinorGridColor = Color.FromArgb(240, 240, 240);

            PlotAreaColor = Color.FromArgb(240, 240, 240);

            PlotSets = new PlotSet[]
            {
                new PlotSet(Color.FromArgb(255, 0, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 0, 255), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(125, 0, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 125, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 0, 125), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 255, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(64, 128, 128), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(255, 0, 255), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 0, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 64, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),

                new PlotSet(Color.FromArgb(125, 125, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 125, 125), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(125, 0, 125), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(125, 125, 125), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(62, 0, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 255, 255), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(128, 128, 255), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(255, 128, 64), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(128, 64, 64), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(90, 0, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),

                new PlotSet(Color.FromArgb(90, 90, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(128, 64, 64), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 255, 64), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(200, 0, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(200, 200, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 200, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 200, 200), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 0, 200), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(200, 0, 200), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(255, 120, 255), eLineStyle.Solid, 1, ePointStyle.EmptySquare),

                new PlotSet(Color.FromArgb(60, 120, 255), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(60, 255, 120), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(128, 60, 60), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(47, 78, 24), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(0, 176, 176), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(255, 128, 0), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(255, 0, 128), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(50, 100, 50), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(99, 120, 207), eLineStyle.Solid, 1, ePointStyle.EmptySquare),
                new PlotSet(Color.FromArgb(128, 0, 255), eLineStyle.Solid, 1, ePointStyle.EmptySquare)
            };

            AutoRangeMargin = 0.1;
            AutoRangeMarginLowLimit = 0.02;
            AutoRangeMarginX = 0.5;
            AutoRangeMarginXLowLimit = 0.01;
        }
    }

    [Serializable]
    public class PlotSet
    {
        public Color LineColor { get; set; }
        public eLineStyle LineStyle { get; set; }
        public int LineWidth { get; set; }
        public ePointStyle PointStyle { get; set; }

        public PlotSet(Color lineColor, eLineStyle lineStyle, int lineWidth, ePointStyle pointStyle)
        {
            LineColor = lineColor;
            LineStyle = lineStyle;
            LineWidth = lineWidth;
            PointStyle = pointStyle;
        }
    }

    [Serializable]
    public class GraphSetEx
    {
        public bool ViewLine { get; set; }
        public bool ViewPoint { get; set; }
        public bool ViewGrid { get; set; }
        public bool ViewCursor { get; set; }

        public string XAxisFormat { get; set; }
        public string[] YAxesFormat { get; set; }        

        public string OpenPath { get; set; }


        public GraphSetEx()    // 0 : General, 1 : Cycle, 2 : EIS
        {
            ViewLine = true;
            ViewPoint = false;
            ViewGrid = true;
            ViewCursor = false;

            XAxisFormat = "Zreal";
            YAxesFormat = new string[] { "-Zimg", "None", "None", "None" };

            OpenPath = "C:\\ZIVE DATA\\ZM\\Data\\"; 
        }
    }

    [Serializable]
    public class DataConvSet
    {
        private int _languageIndex = 0;
        //private bool _unitC = false;

        public bool UnitC { get; set; }
        public int TimeFormat { get; set; }
        public string ResultPath { get; set; }
        public string FilePath { get; set; }
        public bool SplitSave { get; set; }
        public int SplitSavePoint { get; set; }
        public bool CycleColumnArrange { get; set; }

        public List<DataColItem> DataColList { get; set; }

        public DataConvSet() 
        {
            TimeFormat = 1;
            ResultPath = "C:\\ZIVE DATA\\ZM\\Data\\";
            FilePath = "C:\\ZIVE DATA\\ZM\\Data\\";
            SplitSave = false;
            SplitSavePoint = 500000;
            CycleColumnArrange = false;
            InitDataColList();
        }    

        public void SetData(int languageidx)
        {
            _languageIndex = languageidx;
            //_unitC = unitC;

            if(DataColList != null)
            {
                foreach(DataColItem gdCol in DataColList)
                {
                    gdCol.SetData(languageidx);
                }
            }
        }
        
        private void InitDataColList()
        {
            DataColList = new List<DataColItem>();
            
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.INDEX, DataColItem.eDataFormat.NUMBER, DataColItem.eUnit.none, CoMath.eSiUnit.NONE, 10));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.TESTTIME, DataColItem.eDataFormat.STRING, DataColItem.eUnit.second, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.CYCNO, DataColItem.eDataFormat.NUMBER, DataColItem.eUnit.none, CoMath.eSiUnit.NONE, 10));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.CYCTIME, DataColItem.eDataFormat.STRING, DataColItem.eUnit.second, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AMPS, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ampere, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.VOLT, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.POWER, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.watt, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.LOAD, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.CAPACITY, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ampere_hour, CoMath.eSiUnit.NONE, 17));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.ENERGY, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.watt_hour, CoMath.eSiUnit.NONE, 17)); 
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX1, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true)); //10
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX2, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX3, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX4, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX5, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX6, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX7, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX8, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX9, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX10, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX11, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX12, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true)); //21
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.FREQ, DataColItem.eDataFormat.F3TYPE, DataColItem.eUnit.Hertz, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX01_ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14)); //25
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX01_ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX02_ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX02_ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX03_ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX03_ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX04_ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX04_ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX05_ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX05_ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX06_ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX06_ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX07_ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX07_ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX08_ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX08_ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX09_ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX09_ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX10_ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX10_ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX11_ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX11_ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX12_ZRE, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.AUX12_ZIM, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.ohm, CoMath.eSiUnit.NONE, 14));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.TEMP, DataColItem.eDataFormat.F2TYPE, DataColItem.eUnit.celsius, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.EOC, DataColItem.eDataFormat.EXPONENTIAL, DataColItem.eUnit.volt, CoMath.eSiUnit.NONE, 14, true));
            DataColList.Add(new DataColItem(true, DataColItem.eColumnId.IRNG, DataColItem.eDataFormat.STRING, DataColItem.eUnit.none, CoMath.eSiUnit.NONE, 14));

            foreach (DataColItem dcitem in DataColList)
                dcitem.SetData(_languageIndex);
        }
        
        public List<DataColItem> GetEnabledDataColList()
        {
            return DataColList.Where(x => x.Enable == true).ToList();
        }

        public string[] GetEnabledDataColArr()
        {
            return DataColList.Where(x => x.Enable == true).Select(y => y.ToString()).ToArray();
        }

        public string[] GetDataColArr()
        {
            return DataColList.Select(y => y.ToString()).ToArray();
        }
    }

    [Serializable]
    public class DataColItem
    {
        public enum eColumnId
        {
            INDEX, TESTTIME, CYCNO, CYCTIME, AMPS, VOLT, POWER, LOAD,
            CAPACITY, ENERGY,  
            AUX1, AUX2, AUX3, AUX4, AUX5, AUX6, AUX7, AUX8, AUX9, AUX10, AUX11, AUX12, 
            FREQ, ZRE, ZIM, 
            AUX01_ZRE, AUX01_ZIM, AUX02_ZRE, AUX02_ZIM, 
            AUX03_ZRE, AUX03_ZIM, AUX04_ZRE, AUX04_ZIM, 
            AUX05_ZRE, AUX05_ZIM, AUX06_ZRE, AUX06_ZIM, 
            AUX07_ZRE, AUX07_ZIM, AUX08_ZRE, AUX08_ZIM, 
            AUX09_ZRE, AUX09_ZIM, AUX10_ZRE, AUX10_ZIM, 
            AUX11_ZRE, AUX11_ZIM, AUX12_ZRE, AUX12_ZIM, TEMP, EOC, IRNG,
        };

        public enum eUnit { none, second, volt, ampere, celsius, fahrenheit, ampere_hour, ohm, coulomb, ampere_hour_per_gram, coulomb_per_gram, Hertz, percent, watt, watt_hour, degree };
        public string[] strUnit = { "", "s", "V", "A", CoStringSymbol.GetSpecialSymbol("'C"), CoStringSymbol.GetSpecialSymbol("'F"), "Ah", CoStringSymbol.GetSpecialSymbol("ohm"), "C", "Ah/g", "C/g", "Hz", "%", "W", "Wh", "deg" };
    
        public enum eDataFormat { STRING, NUMBER, EXPONENTIAL, F2TYPE, F3TYPE, F4TYPE, F5TYPE };

        private eColumnId _colId;
        private int _languageIndex = 0;
                
        public bool Enable { get; set; }
        public eColumnId ColumnID { get { return _colId; } }
        public eDataFormat DataFormat { get; set; }
        public string UserName { get; set; }
        public eSiUnit SIUnit { get; set; }
        public uint ColumnWidth { get; set; }
        public eUnit Unit { get; set; }
        public bool AllowEdit { get; set; }

        public DataColItem(bool enable, eColumnId colid, eDataFormat dataFormat, eUnit unit, eSiUnit siunit = eSiUnit.NONE, uint columnWidth = 14, bool allowEdit = false)
        {
            Enable = enable;
            UserName = string.Empty; 
            SIUnit = siunit;
            Unit = unit;
            ColumnWidth = columnWidth;
            _colId = colid;
            AllowEdit = allowEdit;

            DataFormat = dataFormat;
        }

        public void SetData(int langidx)
        {
            _languageIndex = langidx;            
        }

        public string GetColName(bool unit = true)
        {
            int index = _languageIndex;            

            string result = UserName;

            if(result == string.Empty)
            {
                result = CoConvColumn.COLUMN_ARRAY[(int)_colId, index].Trim();
            }

            if (unit)
            {
                if (Unit != eUnit.none)
                    result = string.Format("{0}({1}{2})", result, CoMath.StrSiUnitArray[(int)SIUnit], strUnit[(int)Unit]);
            }

            return result;
        }



        public override string ToString()
        {
            return GetColName();        
        }
    }

}
