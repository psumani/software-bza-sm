using C1.C1Excel;
using System;
using System.Collections.Generic;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM.Dataview
{
    public class DataFileExcelWriter
    {
        static public string[] _ColArray = new string[]
        {
            "Index         ",
            "Test_Time(s)  ",
            "Cycle_No.     ",
            "Cycle_Time(s) ",
            "Current(A)    ",
            "Voltage(V)    ",
            "Power(W)      ",
            "Load(Ohm)     ",
            "Capacity(Ah)      ",
            "Energy(Wh)      ",
            "A01_V(V)      ", //10
            "A02_V(V)      ",
            "A03_V(V)      ",
            "A04_V(V)      ",
            "A05_V(V)      ",
            "A06_V(V)      ",
            "A07_V(V)      ",
            "A08_V(V)      ",
            "A09_V(V)      ",
            "A10_V(V)      ",
            "A11_V(V)      ",
            "A12_V(V)      ", //21
            "Frequency(Hz) ",
            "Zre(ohm)      ",
            "Zim(ohm)      ",
            "A01_Zre(ohm)  ",//25
            "A01_Zim(ohm)  ",
            "A02_Zre(ohm)  ",
            "A02_Zim(ohm)  ",
            "A03_Zre(ohm)  ",
            "A03_Zim(ohm)  ",
            "A04_Zre(ohm)  ",
            "A04_Zim(ohm)  ",
            "A05_Zre(ohm)  ",
            "A05_Zim(ohm)  ",
            "A06_Zre(ohm)  ",
            "A06_Zim(ohm)  ",
            "A07_Zre(ohm)  ",
            "A07_Zim(ohm)  ",
            "A08_Zre(ohm)  ",
            "A08_Zim(ohm)  ",
            "A09_Zre(ohm)  ",
            "A09_Zim(ohm)  ",
            "A10_Zre(ohm)  ",
            "A10_Zim(ohm)  ",
            "A11_Zre(ohm)  ",
            "A11_Zim(ohm)  ",
            "A12_Zre(ohm)  ",
            "A12_Zim(ohm)  ",//48
            "Temp.('C)     ",
            "OCP(V)        ",
            "Range         ",
        };

        static public string[] _ColArray_Kor = new string[]
        {
            "인덱스          ",
            "시험_시간(s)    ",
            "사이클_번호     ",
            "사이클_시간(s)  ",
            "전류(A)         ",
            "전압(V)         ",
            "파워(W)         ",
            "부하(Ohm)       ",
            "누적_용량(Ah)   ",
            "누적_에너지(Wh) ",
            "A01_전압(V)     ",
            "A02_전압(V)     ",
            "A03_전압(V)     ",
            "A04_전압(V)     ",
            "A05_전압(V)     ",
            "A06_전압(V)     ",
            "A07_전압(V)     ",
            "A08_전압(V)     ",
            "A09_전압(V)     ",
            "A10_전압(V)     ",
            "A11_전압(V)     ",
            "A12_전압(V)     ",
            "주파수(Hz)      ",
            "Zre(ohm)        ",
            "Zim(ohm)        ",
            "A01_Zre(ohm)    ",
            "A01_Zim(ohm)    ",
            "A02_Zre(ohm)    ",
            "A02_Zim(ohm)    ",
            "A03_Zre(ohm)    ",
            "A03_Zim(ohm)    ",
            "A04_Zre(ohm)    ",
            "A04_Zim(ohm)    ",
            "A05_Zre(ohm)    ",
            "A05_Zim(ohm)    ",
            "A06_Zre(ohm)    ",
            "A06_Zim(ohm)    ",
            "A07_Zre(ohm)    ",
            "A07_Zim(ohm)    ",
            "A08_Zre(ohm)    ",
            "A08_Zim(ohm)    ",
            "A09_Zre(ohm)    ",
            "A09_Zim(ohm)    ",
            "A10_Zre(ohm)    ",
            "A10_Zim(ohm)    ",
            "A11_Zre(ohm)    ",
            "A11_Zim(ohm)    ",
            "A12_Zre(ohm)    ",
            "A12_Zim(ohm)    ",
            "온도('C)        ",
            "OCP(V)          ",
            "전류_범위       ",
        };

        static public string[] _ColArrayEx = new string[]
        {
            "Index         ",
            "Test_Time(s)  ",
            "Cycle_No.     ",
            "Cycle_Time(s) ",
            "Current(A)    ",
            "Voltage(V)    ",
            "Power(W)      ",
            "Load(Ohm)     ",
            "Capacity(C)       ",
            "Energy(Wh)      ",
            "A01_V(V)      ",
            "A02_V(V)      ",
            "A03_V(V)      ",
            "A04_V(V)      ",
            "A05_V(V)      ",
            "A06_V(V)      ",
            "A07_V(V)      ",
            "A08_V(V)      ",
            "A09_V(V)      ",
            "A10_V(V)      ",
            "A11_V(V)      ",
            "A12_V(V)      ",
            "Frequency(Hz) ",
            "Zre(ohm)      ",
            "Zim(ohm)      ",
            "A01_Zre(ohm)  ",
            "A01_Zim(ohm)  ",
            "A02_Zre(ohm)  ",
            "A02_Zim(ohm)  ",
            "A03_Zre(ohm)  ",
            "A03_Zim(ohm)  ",
            "A04_Zre(ohm)  ",
            "A04_Zim(ohm)  ",
            "A05_Zre(ohm)  ",
            "A05_Zim(ohm)  ",
            "A06_Zre(ohm)  ",
            "A06_Zim(ohm)  ",
            "A07_Zre(ohm)  ",
            "A07_Zim(ohm)  ",
            "A08_Zre(ohm)  ",
            "A08_Zim(ohm)  ",
            "A09_Zre(ohm)  ",
            "A09_Zim(ohm)  ",
            "A10_Zre(ohm)  ",
            "A10_Zim(ohm)  ",
            "A11_Zre(ohm)  ",
            "A11_Zim(ohm)  ",
            "A12_Zre(ohm)  ",
            "A12_Zim(ohm)  ",
            "Temp.('C)     ",
            "OCP(V)        ",
            "Range         ",
        };

        static public string[] _ColArrayEx_Kor = new string[]
        {
            "인덱스          ",
            "시험_시간(s)    ",
            "사이클_번호     ",
            "사이클_시간(s)  ",
            "전류(A)         ",
            "전압(V)         ",
            "파워(W)         ",
            "부하(Ohm)       ",
            "누적_용량(C)    ",
            "누적_에너지(Wh) ",
            "A01_전압(V)     ",
            "A02_전압(V)     ",
            "A03_전압(V)     ",
            "A04_전압(V)     ",
            "A05_전압(V)     ",
            "A06_전압(V)     ",
            "A07_전압(V)     ",
            "A08_전압(V)     ",
            "A09_전압(V)     ",
            "A10_전압(V)     ",
            "A11_전압(V)     ",
            "A12_전압(V)     ",
            "주파수(Hz)      ",
            "Zre(ohm)        ",
            "Zim(ohm)        ",
            "Zre(ohm)        ",
            "Zim(ohm)        ",
            "A01_Zre(ohm)    ",
            "A01_Zim(ohm)    ",
            "A02_Zre(ohm)    ",
            "A02_Zim(ohm)    ",
            "A03_Zre(ohm)    ",
            "A03_Zim(ohm)    ",
            "A04_Zre(ohm)    ",
            "A04_Zim(ohm)    ",
            "A05_Zre(ohm)    ",
            "A05_Zim(ohm)    ",
            "A06_Zre(ohm)    ",
            "A06_Zim(ohm)    ",
            "A07_Zre(ohm)    ",
            "A07_Zim(ohm)    ",
            "A08_Zre(ohm)    ",
            "A08_Zim(ohm)    ",
            "A09_Zre(ohm)    ",
            "A09_Zim(ohm)    ",
            "A10_Zre(ohm)    ",
            "A10_Zim(ohm)    ",
            "A11_Zre(ohm)    ",
            "A11_Zim(ohm)    ",
            "A12_Zre(ohm)    ",
            "A12_Zim(ohm)    ",
            "온도('C)        ",
            "OCP(V)          ",
            "전류_범위       ",
        };

        private string _FileName;
        private eExcelFormat _ExcelFormat;

        private C1XLBook _XLBook;

        private bool _newSheet;
        private XLSheet _XLDataSheet;
        private int _SheetIndex;
        private int _DataRowIndex;
        private DataConvSet mDataConvSet;
        private int _Sheet;        

        private List<string> _ColList = new List<string>();

        public bool NewSheet { get { return _newSheet; } }

        public DataFileExcelWriter(DataConvSet tDataConvSet)
        {
            mDataConvSet = tDataConvSet;
        }

        public DataFileExcelWriter(DataConvSet tDataConvSet, int langidx)
        {
            mDataConvSet = tDataConvSet;
            SetLanguage(mDataConvSet.UnitC, langidx);
        }

        private void SetLanguage(bool unitC, int langidx)
        {
            string[] _Column = DataFileExcelWriter._ColArray;
            switch (langidx)
            {
                case 0:
                    _Column = unitC ? DataFileExcelWriter._ColArrayEx : DataFileExcelWriter._ColArray;
                    break;
                case 1:
                    _Column = unitC ? DataFileExcelWriter._ColArrayEx_Kor : DataFileExcelWriter._ColArray_Kor;
                    break;
            }
            
            _ColList.Clear();
            _ColList.AddRange(_Column);
        }

        public void SetCol(string[] col)
        {
            _ColList.Clear();

            for (int i = 0; i < col.Length; i++)
            {
                _ColList.Add(col[i]);
            }
        }
        
        public bool Create(string filename, eExcelFormat eef)
        {
            try
            {
                _FileName = filename;
                _ExcelFormat = eef;

                _XLBook = new C1XLBook();

                switch (eef)
                {
                    case eExcelFormat.Excel2003:
                        _XLBook.CompatibilityMode = CompatibilityMode.Excel2003;
                        break;
                    case eExcelFormat.Excel2007:
                        _XLBook.CompatibilityMode = CompatibilityMode.Excel2007;
                        break;
                    default:
                        _XLBook.CompatibilityMode = CompatibilityMode.NoLimits;
                        break;
                }

                _newSheet = true;
                _SheetIndex = 1;
                _Sheet = 0;
                _DataRowIndex = 0;
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }

        public bool WriteHeader(DataHeaderValues _DataHeaderValues)
        {
            try
            {
                XLSheet xlSheet;
                int rowidx = 0;

                if (_XLBook.Sheets.Count > 0)
                    xlSheet = _XLBook.Sheets[0];
                else
                    xlSheet = _XLBook.Sheets.Add();

                xlSheet.Name = Properties.Resources.Information;

                string sReportname = Properties.Resources.Data_Report;
                string sDatafile, sVersion, sTestduration, sLaststatus, sDatacount, sTester, sBatId, sMemo, sSchfile, sCh, sSifCh, sSifSerial, sSifFwVer, sSifType, sZimSerial, sZimType, sZimBoardType, sZimFwVer;

                sDatafile = _DataHeaderValues._FileName;
                sVersion = _DataHeaderValues._ResHead.mInfo.GetVersion();
                sTestduration = _DataHeaderValues._ResHead.mInfo.GetTestDuration();
                sDatacount = _DataHeaderValues._datacount.ToString();
                sLaststatus = ((enStatError)_DataHeaderValues._ResHead.mInfo.Error).GetDescription();
                sTester = _DataHeaderValues._ResHead.mInfo.GetUser();
                sBatId = _DataHeaderValues._ResHead.mInfo.GetBattId();
                sMemo = _DataHeaderValues._ResHead.mInfo.GetMemo();
                sSchfile = _DataHeaderValues._ResHead.GetTechFilename();
                sCh = _DataHeaderValues._ResHead.mInfo.GetChannel();
                sSifCh = _DataHeaderValues._ResHead.mInfo.GetSifBoardNo();

                sSifSerial = _DataHeaderValues._ResHead.systemInfo.mSIFCfg.GetSerialNumber();
                sSifFwVer = _DataHeaderValues._ResHead.systemInfo.mSIFCfg.GetFirmwareVer();
                sSifType = string.Format("{0}({1})", _DataHeaderValues._ResHead.systemInfo.mSIFCfg.GetProductTypeString(), _DataHeaderValues._ResHead.systemInfo.mSIFCfg.GetTypeString());
                sZimSerial = _DataHeaderValues._ResHead.systemInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetSerialNumber();
                sZimType = _DataHeaderValues._ResHead.systemInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetZimTypeString();
                sZimBoardType = _DataHeaderValues._ResHead.systemInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetBoardTypeString();
                sZimFwVer = _DataHeaderValues._ResHead.systemInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetFirmwareVer();

                xlSheet[rowidx++, 0].Value = sReportname;
                xlSheet[rowidx++, 0].Value = "";
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Test_Data_File, sDatafile);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Schedule_File_Name, sSchfile);
                xlSheet[rowidx++, 0].Value = "";
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.ChInfo, string.Format("{0}/ {2}/ SIF(v{1}):{3}-{4}", sCh, sSifFwVer, sSifType, sSifSerial, sSifCh));
                if (_DataHeaderValues._ResHead.systemInfo.mSIFCfg.GetDeviceType() == eDeviceType.MCBZA)
                {
                    for (int i = 1; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                    {
                        if (_DataHeaderValues._ResHead.systemInfo.ChkZIM[i] == 1)
                        {
                            xlSheet[rowidx++, 0].Value = string.Format("  * {0}[{1}] : {2}", Properties.Resources.AuxBoardInfo, i, string.Format("{0}(v{1})/ {2}",
                                _DataHeaderValues._ResHead.systemInfo.mZimCfg[i].GetZimTypeString(), _DataHeaderValues._ResHead.systemInfo.mZimCfg[i].GetFirmwareVer(), _DataHeaderValues._ResHead.systemInfo.mZimCfg[i].GetSerialNumber()));
                        }
                    }
                }
                xlSheet[rowidx++, 0].Value = "";
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Product_No_d, sBatId);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Test_Duration, sTestduration);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Test_LastStatus, sLaststatus);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Data_Count, sDatacount);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Tester, sTester);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Memo, sMemo);
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }
        
        public int AddNewInfoSheet(string name)
        {
            XLSheet xlSheet = null;

            try
            {
                if (_XLBook.Sheets.Count > _Sheet)
                    xlSheet = _XLBook.Sheets[_Sheet];
                else
                    xlSheet = _XLBook.Sheets.Add();

                xlSheet.Name = name;

                _DataRowIndex = 0;
                _Sheet++;
            }
            catch (Exception)
            {
            }

            return _Sheet - 1;
        }

        public bool WriteInfor(int sheet, string sfilename, stResHeader hd, long datacount)
        {
            try
            {
                XLSheet xlSheet = _XLBook.Sheets[sheet];

                int rowidx = 0;
                string sReportname = Properties.Resources.Data_Report;
                string sDatafile, sVersion, sTestduration, sLaststatus, sDatacount, sTester, sBatId, sMemo, sSchfile, sCh, sSifCh, sSifSerial, sSifFwVer, sSifType, sZimSerial, sZimType, sZimBoardType, sZimFwVer;

                sDatafile = sfilename;
                sVersion = hd.mInfo.GetVersion();
                sTestduration = hd.mInfo.GetTestDuration();
                sDatacount = datacount.ToString();
                sLaststatus = ((enStatError)hd.mInfo.Error).GetDescription();
                sTester = hd.mInfo.GetUser();
                sBatId = hd.mInfo.GetBattId();
                sMemo = hd.mInfo.GetMemo();
                sSchfile = hd.GetTechFilename();
                sCh = hd.mInfo.GetChannel();
                sSifCh = hd.mInfo.GetSifBoardNo();

                sSifSerial = hd.systemInfo.mSIFCfg.GetSerialNumber();
                sSifFwVer = hd.systemInfo.mSIFCfg.GetFirmwareVer();
                sSifType = string.Format("{0}({1})", hd.systemInfo.mSIFCfg.GetProductTypeString(), hd.systemInfo.mSIFCfg.GetTypeString());
                sZimSerial = hd.systemInfo.mZimCfg[hd.mInfo.sifch].GetSerialNumber();
                sZimType = hd.systemInfo.mZimCfg[hd.mInfo.sifch].GetZimTypeString();
                sZimBoardType = hd.systemInfo.mZimCfg[hd.mInfo.sifch].GetBoardTypeString();
                sZimFwVer = hd.systemInfo.mZimCfg[hd.mInfo.sifch].GetFirmwareVer();

                xlSheet[rowidx++, 0].Value = sReportname;
                xlSheet[rowidx++, 0].Value = "";
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Test_Data_File, sDatafile);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Schedule_File_Name, sSchfile);
                xlSheet[rowidx++, 0].Value = "";
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.ChInfo, string.Format("{0}/ {2}/ SIF(v{1}):{3}-{4}", sCh, sSifFwVer, sSifType, sSifSerial, sSifCh));
                if (hd.systemInfo.mSIFCfg.GetDeviceType() == eDeviceType.MCBZA)
                {
                    for (int i = 1; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                    {
                        if (hd.systemInfo.ChkZIM[i] == 1)
                        {
                            xlSheet[rowidx++, 0].Value = string.Format("  * {0}[{1}] : {2}", Properties.Resources.AuxBoardInfo, i, string.Format("{0}(v{1})/ {2}/ SIF(v{1}):{3}-{4}", hd.systemInfo.mZimCfg[i].GetZimTypeString(), hd.systemInfo.mZimCfg[i].GetFirmwareVer(), hd.systemInfo.mZimCfg[i].GetSerialNumber()));
                        }
                    }
                }
                xlSheet[rowidx++, 0].Value = "";
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Product_No_d, sBatId);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Test_Duration, sTestduration);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Test_LastStatus, sLaststatus);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Data_Count, sDatacount);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Tester, sTester);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Memo, sMemo);
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }

        public void CreateNewSheetWriteColumn(DataConvSet dataConvSet)
        {
            _XLDataSheet = _XLBook.Sheets.Add();

            _XLDataSheet.DefaultColumnWidth = 1500;
            _XLDataSheet.Name = string.Format("{0}_{1}", Properties.Resources.Data, _XLBook.Sheets.Count);
        }
        public bool WriteData(object[] dataArray, int timeformat)
        {
            try
            {
                if (_newSheet)
                {
                    _DataRowIndex = 0;
                    if (_XLBook.Sheets.Count > _SheetIndex)
                    {
                        _XLDataSheet = _XLBook.Sheets[_SheetIndex];
                    }
                    else
                    {
                        _XLDataSheet = _XLBook.Sheets.Add();
                    }

                    _XLDataSheet.DefaultColumnWidth = 1500;
                    _XLDataSheet.Name = string.Format("{1}_{0}", _SheetIndex, Properties.Resources.Data);

                    for (int i = 0; i < _ColList.Count; i++)
                    {
                        _XLDataSheet[_DataRowIndex, i].Value = _ColList[i];
                    }

                    _DataRowIndex++;

                    _newSheet = false;
                }

                string data = string.Empty;

                for (int i = 0; i < dataArray.Length; i++)
                {
                    if (dataArray[i] is double)
                    {
                        if (i != 9)
                        {
                            _XLDataSheet[_DataRowIndex, i].Style = new XLStyle(_XLBook);
                            _XLDataSheet[_DataRowIndex, i].Style.Format = "0.0000E+0";
                        }
                        else
                        {
                            _XLDataSheet[_DataRowIndex, i].Style = new XLStyle(_XLBook);
                            _XLDataSheet[_DataRowIndex, i].Style.Format = "0.00";
                        }
                    }

                    if (dataArray[i] is TimeSpan)
                    {
                        TimeSpan ts = (TimeSpan)dataArray[i];

                        _XLDataSheet[_DataRowIndex, i].Style = new XLStyle(_XLBook);

                        switch (timeformat)
                        {
                            case 0:
                                _XLDataSheet[_DataRowIndex, i].Style.Format = "@";
                                dataArray[i] = CoTypeString.TimeToStringII(ts);
                                break;
                            case 1:
                                _XLDataSheet[_DataRowIndex, i].Style.Format = "0.####";
                                dataArray[i] = ts.TotalSeconds;
                                break;
                            case 2:
                                _XLDataSheet[_DataRowIndex, i].Style.Format = "0.000E+0";
                                dataArray[i] = ts.TotalSeconds;
                                break;
                        }
                    }

                    _XLDataSheet[_DataRowIndex, i].Value = dataArray[i];
                }

                _DataRowIndex++;

                if (_ExcelFormat == eExcelFormat.Excel2003)
                {
                    if (_DataRowIndex > 60000)
                    {
                        _newSheet = true;
                        _SheetIndex++;
                    }
                }
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }
        public bool WriteData(object[] dataArray, int timeformat,int MaxAuxCount)
        {
            int auxidx = 0;
            int icol = 0;
            try
            {
                if (_newSheet)
                {
                    _DataRowIndex = 0;
                    if (_XLBook.Sheets.Count > _SheetIndex)
                    {
                        _XLDataSheet = _XLBook.Sheets[_SheetIndex];
                    }
                    else
                    {
                        _XLDataSheet = _XLBook.Sheets.Add();
                    }

                    _XLDataSheet.DefaultColumnWidth = 1500;
                    _XLDataSheet.Name = string.Format("{1}_{0}", _SheetIndex, Properties.Resources.Data);
                    icol = 0;
                    for (int i = 0; i < _ColList.Count; i++)
                    {
                        if(i >= 11 && i >= 22)
                        {
                            auxidx = i - 11;
                            if (auxidx >= MaxAuxCount) continue;
                        }
                        else if (i >= 26 && i >= 49)
                        {
                            auxidx = i - 26;
                            auxidx = auxidx / 2;
                            if (auxidx >= MaxAuxCount) continue;
                        }
                        _XLDataSheet[_DataRowIndex, icol].Value = _ColList[i];
                        icol++;
                    }

                    _DataRowIndex++;

                    _newSheet = false;
                }

                string data = string.Empty;
                icol = 0;
                for (int i = 0; i < dataArray.Length; i++)
                {
                    if (i >= 11 && i >= 22)
                    {
                        auxidx = i - 11;
                        if (auxidx >= MaxAuxCount) continue;
                    }
                    else if (i >= 26 && i >= 49)
                    {
                        auxidx = i - 26;
                        auxidx = auxidx / 2;
                        if (auxidx >= MaxAuxCount) continue;
                    }

                    if (dataArray[i] is double)
                    {
                        if (i != 9)
                        {
                            _XLDataSheet[_DataRowIndex, icol].Style = new XLStyle(_XLBook);
                            _XLDataSheet[_DataRowIndex, icol].Style.Format = "0.0000E+0";
                        }
                        else
                        {
                            _XLDataSheet[_DataRowIndex, icol].Style = new XLStyle(_XLBook);
                            _XLDataSheet[_DataRowIndex, icol].Style.Format = "0.00";
                        }
                    }

                    if (dataArray[i] is TimeSpan)
                    {
                        TimeSpan ts = (TimeSpan)dataArray[i];

                        _XLDataSheet[_DataRowIndex, icol].Style = new XLStyle(_XLBook);

                        switch (timeformat)
                        {
                            case 0:
                                _XLDataSheet[_DataRowIndex, icol].Style.Format = "@";
                                dataArray[i] = CoTypeString.TimeToStringII(ts);
                                break;
                            case 1:
                                _XLDataSheet[_DataRowIndex, icol].Style.Format = "0.####";
                                dataArray[i] = ts.TotalSeconds;
                                break;
                            case 2:
                                _XLDataSheet[_DataRowIndex, icol].Style.Format = "0.000E+0";
                                dataArray[i] = ts.TotalSeconds;
                                break;
                        }
                    }

                    _XLDataSheet[_DataRowIndex, icol].Value = dataArray[i];
                }
                
                _DataRowIndex++;

                if (_ExcelFormat == eExcelFormat.Excel2003)
                {
                    if (_DataRowIndex > 60000)
                    {
                        _newSheet = true;
                        _SheetIndex++;
                    }
                }
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }

        public bool WriteData(int index, UnitReportData urgd, int timeformat)
        {
            try
            {
                if (_newSheet)
                {
                    _DataRowIndex = 0;
                    if (_XLBook.Sheets.Count > _SheetIndex)
                    {
                        _XLDataSheet = _XLBook.Sheets[_SheetIndex];
                    }
                    else
                    {
                        _XLDataSheet = _XLBook.Sheets.Add();
                    }

                    _XLDataSheet.DefaultColumnWidth = 1500;
                    _XLDataSheet.Name = string.Format("{1}_{0}", _SheetIndex, Properties.Resources.Data);

                    for (int i = 0; i < _ColList.Count; i++)
                    {
                        _XLDataSheet[_DataRowIndex, i].Value = _ColList[i];
                    }
                    
                    _DataRowIndex++;

                    _newSheet = false;
                }

                string data = string.Empty;
                int col = 0;

                _XLDataSheet[_DataRowIndex, col++].Value = index + 1;
                SetTimeValue(_XLDataSheet[_DataRowIndex, col++], TimeSpan.FromSeconds(urgd.mRawData.TestTime), timeformat);
                _XLDataSheet[_DataRowIndex, col++].Value = urgd.mRawData.nCycle + 1;
                SetTimeValue(_XLDataSheet[_DataRowIndex, col++], TimeSpan.FromSeconds(urgd.mRawData.CycleTime), timeformat);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.Idc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.Power, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.Load, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.Capacity, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.Energy, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.Temperature, false);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[0].Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[1].Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[2].Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[3].Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[0].Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[1].Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[2].Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[3].Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[0].Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[1].Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[2].Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[3].Vdc, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.fFreq, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.real, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.img, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[0].Zre, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[0].Zim, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[1].Zre, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[1].Zim, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[2].Zre, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[2].Zim, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[3].Zre, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[3].Zim, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[0].Zre, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[0].Zim, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[1].Zre, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[1].Zim, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[2].Zre, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[2].Zim, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[3].Zre, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[3].Zim, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[0].Zre, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[0].Zim, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[1].Zre, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[1].Zim, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[2].Zre, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[2].Zim, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[3].Zre, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[3].Zim, true);
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.Veoc, true);
                _XLDataSheet[_DataRowIndex, col].Value = urgd.Range;
                _DataRowIndex++;

                if (_ExcelFormat == eExcelFormat.Excel2003)
                {
                    if (_DataRowIndex > 60000)
                    {
                        _newSheet = true;
                        _SheetIndex++;
                    }
                }

                
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }

        public bool WriteData(int index, UnitReportData urgd, int timeformat,int MaxAuxCount)
        {
            int auxidx = 0;
            int col = 0;
            try
            {
                if (_newSheet)
                {
                    _DataRowIndex = 0;
                    if (_XLBook.Sheets.Count > _SheetIndex)
                    {
                        _XLDataSheet = _XLBook.Sheets[_SheetIndex];
                    }
                    else
                    {
                        _XLDataSheet = _XLBook.Sheets.Add();
                    }

                    _XLDataSheet.DefaultColumnWidth = 1500;
                    _XLDataSheet.Name = string.Format("{1}_{0}", _SheetIndex, Properties.Resources.Data);
                    col = 0;
                    for (int i = 0; i < _ColList.Count; i++)
                    {
                        if (i >= 10 && i <= 21)
                        {
                            auxidx = i - 10;
                            if (auxidx >= MaxAuxCount) continue;
                        }
                        else
                        {
                            if (i >= 25 && i <= 48)
                            {
                                auxidx = i - 25;
                                auxidx = auxidx / 2;
                                if (auxidx >= MaxAuxCount) continue;

                            }
                        }
                        if (mDataConvSet.DataColList[i].Enable == false) continue;

                        _XLDataSheet[_DataRowIndex, col].Value = _ColList[i];
                        col++;
                    }

                    _DataRowIndex++;

                    _newSheet = false;
                }

                string data = string.Empty;
                col = 0;

                if (mDataConvSet.DataColList[0].Enable) _XLDataSheet[_DataRowIndex, col++].Value = index + 1;
                if (mDataConvSet.DataColList[1].Enable) SetTimeValue(_XLDataSheet[_DataRowIndex, col++], TimeSpan.FromSeconds(urgd.mRawData.TestTime), timeformat);
                if (mDataConvSet.DataColList[2].Enable) _XLDataSheet[_DataRowIndex, col++].Value = urgd.mRawData.nCycle + 1;
                if (mDataConvSet.DataColList[3].Enable) SetTimeValue(_XLDataSheet[_DataRowIndex, col++], TimeSpan.FromSeconds(urgd.mRawData.CycleTime), timeformat);
                if (mDataConvSet.DataColList[4].Enable) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.Idc, true);
                if (mDataConvSet.DataColList[5].Enable) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.Vdc, true);
                if (mDataConvSet.DataColList[6].Enable) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.Power, true);
                if (mDataConvSet.DataColList[7].Enable) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.Load, true);
                if (mDataConvSet.DataColList[8].Enable) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.Capacity, true);
                if (mDataConvSet.DataColList[9].Enable) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.Energy, true);
                if (mDataConvSet.DataColList[10].Enable && MaxAuxCount > 0) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[0].Vdc, true);
                if (mDataConvSet.DataColList[11].Enable && MaxAuxCount > 1) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[1].Vdc, true);
                if (mDataConvSet.DataColList[12].Enable && MaxAuxCount > 2) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[2].Vdc, true);
                if (mDataConvSet.DataColList[13].Enable && MaxAuxCount > 3) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[3].Vdc, true);
                if (mDataConvSet.DataColList[14].Enable && MaxAuxCount > 4) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[0].Vdc, true);
                if (mDataConvSet.DataColList[15].Enable && MaxAuxCount > 5) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[1].Vdc, true);
                if (mDataConvSet.DataColList[16].Enable && MaxAuxCount > 6) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[2].Vdc, true);
                if (mDataConvSet.DataColList[17].Enable && MaxAuxCount > 7) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[3].Vdc, true);
                if (mDataConvSet.DataColList[18].Enable && MaxAuxCount > 8) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[0].Vdc, true);
                if (mDataConvSet.DataColList[19].Enable && MaxAuxCount > 9) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[1].Vdc, true);
                if (mDataConvSet.DataColList[20].Enable && MaxAuxCount > 10) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[2].Vdc, true);
                if (mDataConvSet.DataColList[21].Enable && MaxAuxCount > 11) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[3].Vdc, true);
                if(mDataConvSet.DataColList[22].Enable)SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.fFreq, true);
                if(mDataConvSet.DataColList[23].Enable) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.real, true);
                if(mDataConvSet.DataColList[24].Enable) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.img, true);
                if (mDataConvSet.DataColList[25].Enable && MaxAuxCount > 0) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[0].Zre, true);
                if (mDataConvSet.DataColList[26].Enable && MaxAuxCount > 0) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[0].Zim, true);
                if (mDataConvSet.DataColList[27].Enable && MaxAuxCount > 1) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[1].Zre, true);
                if (mDataConvSet.DataColList[28].Enable && MaxAuxCount > 1) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[1].Zim, true);
                if (mDataConvSet.DataColList[29].Enable && MaxAuxCount > 2) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[2].Zre, true);
                if (mDataConvSet.DataColList[30].Enable && MaxAuxCount > 2) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[2].Zim, true);
                if (mDataConvSet.DataColList[31].Enable && MaxAuxCount > 3) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[3].Zre, true);
                if (mDataConvSet.DataColList[32].Enable && MaxAuxCount > 3) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[0].mdata[3].Zim, true);
                if (mDataConvSet.DataColList[33].Enable && MaxAuxCount > 4) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[0].Zre, true);
                if (mDataConvSet.DataColList[34].Enable && MaxAuxCount > 4) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[0].Zim, true);
                if (mDataConvSet.DataColList[35].Enable && MaxAuxCount > 5) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[1].Zre, true);
                if (mDataConvSet.DataColList[36].Enable && MaxAuxCount > 5) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[1].Zim, true);
                if (mDataConvSet.DataColList[37].Enable && MaxAuxCount > 6) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[2].Zre, true);
                if (mDataConvSet.DataColList[38].Enable && MaxAuxCount > 6) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[2].Zim, true);
                if (mDataConvSet.DataColList[39].Enable && MaxAuxCount > 7) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[3].Zre, true);
                if (mDataConvSet.DataColList[40].Enable && MaxAuxCount > 7) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[1].mdata[3].Zim, true);
                if (mDataConvSet.DataColList[41].Enable && MaxAuxCount > 8) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[0].Zre, true);
                if (mDataConvSet.DataColList[42].Enable && MaxAuxCount > 8) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[0].Zim, true);
                if (mDataConvSet.DataColList[43].Enable && MaxAuxCount > 9) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[1].Zre, true);
                if (mDataConvSet.DataColList[44].Enable && MaxAuxCount > 9) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[1].Zim, true);
                if (mDataConvSet.DataColList[45].Enable && MaxAuxCount > 10) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[2].Zre, true);
                if (mDataConvSet.DataColList[46].Enable && MaxAuxCount > 10) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[2].Zim, true);
                if (mDataConvSet.DataColList[47].Enable && MaxAuxCount > 11) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[3].Zre, true);
                if (mDataConvSet.DataColList[48].Enable && MaxAuxCount > 11) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.mdata[2].mdata[3].Zim, true);
                if (mDataConvSet.DataColList[49].Enable) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.Temperature, false);
                if(mDataConvSet.DataColList[50].Enable) SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.Veoc, true);
                if(mDataConvSet.DataColList[51].Enable)_XLDataSheet[_DataRowIndex, col].Value = urgd.Range;
                _DataRowIndex++;

                if (_ExcelFormat == eExcelFormat.Excel2003)
                {
                    if (_DataRowIndex > 60000)
                    {
                        _newSheet = true;
                        _SheetIndex++;
                    }
                }


            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }

        private void SetTimeValue(XLCell cell, TimeSpan ts, int timeformat)
        {
            switch (timeformat)
            {
                case 0:
                    cell.Style = new XLStyle(_XLBook);
                    cell.Style.Format = "@";
                    cell.Value = CoTypeString.TimeToStringII(ts);
                    break;
                case 1:
                    cell.Style = new XLStyle(_XLBook);
                    cell.Style.Format = "0.####";
                    cell.Value = ts.TotalSeconds;
                    break;
                case 2:
                    cell.Style = new XLStyle(_XLBook);
                    cell.Style.Format = "0.000E+0";
                    cell.Value = ts.TotalSeconds;
                    break;
            }
        }

        private void SetStringValue(XLCell cell, string value)
        {
            cell.Style = new XLStyle(_XLBook);
            cell.Style.Format = "@";
            cell.Value = value;
        }

        private void SetDoubleValue(XLCell cell, double value, bool exp)
        {
            cell.Style = new XLStyle(_XLBook);
            if(exp)
                cell.Style.Format = "0.0000E+0";
            else
                cell.Style.Format = "0.000";

            cell.Value = value;
        }

        public int AddNewDataSheet(string name)
        {
            XLSheet xlSheet = null;

            try
            {
                if (_XLBook.Sheets.Count > _Sheet)
                    xlSheet = _XLBook.Sheets[_Sheet];
                else
                    xlSheet = _XLBook.Sheets.Add();

                xlSheet.Name = name;
                xlSheet.DefaultColumnWidth = 1500;
                _DataRowIndex = 0;

                for (int i = 0; i < _ColList.Count; i++)
                {
                    xlSheet[_DataRowIndex, i].Value = _ColList[i];
                }

                _DataRowIndex++;
                _Sheet++;
            }
            catch (Exception)
            {
            }

            return _Sheet - 1;
        }

        public bool WriteData(int sheet, object[] dataArray, int timeformat)
        {
            try
            {
                XLSheet xlSheet = _XLBook.Sheets[sheet];
                string data = string.Empty;

                for (int i = 0; i < dataArray.Length; i++)
                {
                    if (dataArray[i] is double)
                    {
                        xlSheet[_DataRowIndex, i].Style = new XLStyle(_XLBook);
                        xlSheet[_DataRowIndex, i].Style.Format = "0.0000E+0";
                    }

                    if (dataArray[i] is TimeSpan)
                    {
                        TimeSpan ts = (TimeSpan)dataArray[i];

                        xlSheet[_DataRowIndex, i].Style = new XLStyle(_XLBook);

                        switch (timeformat)
                        {
                            case 0:
                                xlSheet[_DataRowIndex, i].Style.Format = "@";
                                dataArray[i] = CoTypeString.TimeToStringII(ts);
                                break;
                            case 1:
                                xlSheet[_DataRowIndex, i].Style.Format = "0.####";
                                dataArray[i] = ts.TotalSeconds;
                                break;
                            case 2:
                                xlSheet[_DataRowIndex, i].Style.Format = "0.000E+0";
                                dataArray[i] = ts.TotalSeconds;
                                break;
                        }
                    }

                    xlSheet[_DataRowIndex, i].Value = dataArray[i];
                }
                _DataRowIndex++;                
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }

        public bool Save(out string errmsg)
        {
            errmsg = string.Empty;

            try
            {
                
                _XLBook.Save(_FileName);               
            }
            catch (Exception ex)
            {
                errmsg = ex.Message;
                return false;
            }

            return true;
        }
    }
}
