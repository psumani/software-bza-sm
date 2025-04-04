using C1.C1Excel;
using System;
using System.Collections.Generic;

namespace ZiveLab.ZM.Dataview
{
    public class DataFileExcelWriter
    {
        static public string[] _ColArray = new string[]
        {
            "Index           ",
            "Test_Time(s)    ",
            "Cycle_No.       ",
            "Cycle_Time(s)   ",
            "Step_No.        ",
            "Step_Time(s)    ",
            "Current(A)      ",
            "Voltage(V)      ",
            "Power(W)        ",
            "Load(Ohm)       ",
            "SumQ(Ah)        ",
            "SumE(Wh)        ",
            "Temp.('C)       ",
            "AuxV1(V)        ",
            "AuxV2(V)        ",
            "AuxV3(V)        ",
            "AuxV4(V)        ",
            "AuxV5(V)        ",
            "AuxV6(V)        ",
            "AuxV7(V)        ",
            "AuxV8(V)        ",
            "AuxV9(V)        ",
            "AuxV10(V)       ",
            "AuxV11(V)       ",
            "AuxV12(V)       ",
            "OCP(V)          ",
            "Range           ",
            "Frequency(Hz)    ",
            "Zre(ohm)         ",
            "Zim(ohm)         ",
            "Aux1_Zre(ohm)    ",
            "Aux1_Zim(ohm)    ",
            "Aux2_Zre(ohm)    ",
            "Aux2_Zim(ohm)    ",
            "Aux3_Zre(ohm)    ",
            "Aux3_Zim(ohm)    ",
            "Aux4_Zre(ohm)    ",
            "Aux4_Zim(ohm)    ",
            "Aux5_Zre(ohm)    ",
            "Aux5_Zim(ohm)    ",
            "Aux6_Zre(ohm)    ",
            "Aux6_Zim(ohm)    ",
            "Aux7_Zre(ohm)    ",
            "Aux7_Zim(ohm)    ",
            "Aux8_Zre(ohm)    ",
            "Aux8_Zim(ohm)    ",
            "Aux9_Zre(ohm)    ",
            "Aux9_Zim(ohm)    ",
            "Aux10_Zre(ohm)   ",
            "Aux10_Zim(ohm)   ",
            "Aux11_Zre(ohm)   ",
            "Aux11_Zim(ohm)   ",
            "Aux12_Zre(ohm)   ",
            "Aux12_Zim(ohm)   "
        };

        static public string[] _ColArray_Kor = new string[]
        {
            "인덱스           ",
            "시험_시간(s)     ",
            "사이클_번호      ",
            "사이클_시간(s)   ",
            "단계_번호        ",
            "단계_시간(s)     ",
            "전류(A)          ",
            "전압(V)          ",
            "파워(W)          ",
            "부하(Ohm)        ",
            "누적_용량(Ah)    ",
            "누적_에너지(Wh)  ",
            "온도('C)         ",
            "보조전압1(V)     ",
            "보조전압2(V)     ",
            "보조전압3(V)     ",
            "보조전압4(V)     ",
            "보조전압5(V)     ",
            "보조전압6(V)     ",
            "보조전압7(V)     ",
            "보조전압8(V)     ",
            "보조전압9(V)     ",
            "보조전압10(V)    ",
            "보조전압11(V)    ",
            "보조전압12(V)    ",
            "OCP(V)           ",
            "전류_범위        ",
            "주파수(Hz)       ",
            "Zre(ohm)         ",
            "Zim(ohm)         ",
            "보조1_Zre(ohm)   ",
            "보조1_Zim(ohm)   ",
            "보조2_Zre(ohm)   ",
            "보조2_Zim(ohm)   ",
            "보조3_Zre(ohm)   ",
            "보조3_Zim(ohm)   ",
            "보조4_Zre(ohm)   ",
            "보조4_Zim(ohm)   ",
            "보조5_Zre(ohm)   ",
            "보조5_Zim(ohm)   ",
            "보조6_Zre(ohm)   ",
            "보조6_Zim(ohm)   ",
            "보조7_Zre(ohm)   ",
            "보조7_Zim(ohm)   ",
            "보조8_Zre(ohm)   ",
            "보조8_Zim(ohm)   ",
            "보조9_Zre(ohm)   ",
            "보조9_Zim(ohm)   ",
            "보조10_Zre(ohm)  ",
            "보조10_Zim(ohm)  ",
            "보조11_Zre(ohm)  ",
            "보조11_Zim(ohm)  ",
            "보조12_Zre(ohm)  ",
            "보조12_Zim(ohm)  "
        };

        static public string[] _ColArrayEx = new string[]
        {
            "Index           ",
            "Test_Time(s)    ",
            "Cycle_No.       ",
            "Cycle_Time(s)   ",
            "Step_No.        ",
            "Step_Time(s)    ",
            "Current(A)      ",
            "Voltage(V)      ",
            "Power(W)        ",
            "Load(Ohm)       ",
            "SumQ(C)        ",
            "SumE(Wh)        ",
            "Temp.('C)       ",
            "AuxV1(V)        ",
            "AuxV2(V)        ",
            "AuxV3(V)        ",
            "AuxV4(V)        ",
            "AuxV5(V)        ",
            "AuxV6(V)        ",
            "AuxV7(V)        ",
            "AuxV8(V)        ",
            "AuxV9(V)        ",
            "AuxV10(V)       ",
            "AuxV11(V)       ",
            "AuxV12(V)       ",
            "OCP(V)          ",
            "Range           ",
            "Frequency(Hz)    ",
            "Zre(ohm)         ",
            "Zim(ohm)         ",
            "Aux1_Zre(ohm)    ",
            "Aux1_Zim(ohm)    ",
            "Aux2_Zre(ohm)    ",
            "Aux2_Zim(ohm)    ",
            "Aux3_Zre(ohm)    ",
            "Aux3_Zim(ohm)    ",
            "Aux4_Zre(ohm)    ",
            "Aux4_Zim(ohm)    ",
            "Aux5_Zre(ohm)    ",
            "Aux5_Zim(ohm)    ",
            "Aux6_Zre(ohm)    ",
            "Aux6_Zim(ohm)    ",
            "Aux7_Zre(ohm)    ",
            "Aux7_Zim(ohm)    ",
            "Aux8_Zre(ohm)    ",
            "Aux8_Zim(ohm)    ",
            "Aux9_Zre(ohm)    ",
            "Aux9_Zim(ohm)    ",
            "Aux10_Zre(ohm)   ",
            "Aux10_Zim(ohm)   ",
            "Aux11_Zre(ohm)   ",
            "Aux11_Zim(ohm)   ",
            "Aux12_Zre(ohm)   ",
            "Aux12_Zim(ohm)   "
        };

        static public string[] _ColArrayEx_Kor = new string[]
        {
            "인덱스           ",
            "시험_시간(s)     ",
            "사이클_번호      ",
            "사이클_시간(s)   ",
            "단계_번호        ",
            "단계_시간(s)     ",
            "전류(A)          ",
            "전압(V)          ",
            "파워(W)          ",
            "부하(Ohm)        ",
            "누적_용량(C)    ",
            "누적_에너지(Wh)  ",
            "온도('C)         ",
            "보조전압1(V)     ",
            "보조전압2(V)     ",
            "보조전압3(V)     ",
            "보조전압4(V)     ",
            "보조전압5(V)     ",
            "보조전압6(V)     ",
            "보조전압7(V)     ",
            "보조전압8(V)     ",
            "보조전압9(V)     ",
            "보조전압10(V)    ",
            "보조전압11(V)    ",
            "보조전압12(V)    ",
            "OCP(V)           ",
            "전류_범위        ",
            "주파수(Hz)       ",
            "Zre(ohm)         ",
            "Zim(ohm)         ",
            "보조1_Zre(ohm)   ",
            "보조1_Zim(ohm)   ",
            "보조2_Zre(ohm)   ",
            "보조2_Zim(ohm)   ",
            "보조3_Zre(ohm)   ",
            "보조3_Zim(ohm)   ",
            "보조4_Zre(ohm)   ",
            "보조4_Zim(ohm)   ",
            "보조5_Zre(ohm)   ",
            "보조5_Zim(ohm)   ",
            "보조6_Zre(ohm)   ",
            "보조6_Zim(ohm)   ",
            "보조7_Zre(ohm)   ",
            "보조7_Zim(ohm)   ",
            "보조8_Zre(ohm)   ",
            "보조8_Zim(ohm)   ",
            "보조9_Zre(ohm)   ",
            "보조9_Zim(ohm)   ",
            "보조10_Zre(ohm)  ",
            "보조10_Zim(ohm)  ",
            "보조11_Zre(ohm)  ",
            "보조11_Zim(ohm)  ",
            "보조12_Zre(ohm)  ",
            "보조12_Zim(ohm)  "
        };

        private string _FileName;
        private eExcelFormat _ExcelFormat;

        private C1XLBook _XLBook;

        private bool _newSheet;
        private XLSheet _XLDataSheet;
        private int _SheetIndex;
        private int _DataRowIndex;

        private int _Sheet;        

        private List<string> _ColList = new List<string>();

        public bool NewSheet { get { return _newSheet; } }

        public DataFileExcelWriter()
        {
        }

        public DataFileExcelWriter(bool unitC, int langidx)
        {
            SetLanguage(unitC, langidx);
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

                sSifSerial = _DataHeaderValues._ResHead.sysInfo.mSIFCfg.GetSerialNumber();
                sSifFwVer = _DataHeaderValues._ResHead.sysInfo.mSIFCfg.GetFirmwareVer();
                sSifType = string.Format("{0}({1})", _DataHeaderValues._ResHead.sysInfo.mSIFCfg.GetProductTypeString(), _DataHeaderValues._ResHead.sysInfo.mSIFCfg.GetDeviceTypeString());
                sZimSerial = _DataHeaderValues._ResHead.sysInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetSerialNumber();
                sZimType = _DataHeaderValues._ResHead.sysInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetZimTypeString();
                sZimBoardType = _DataHeaderValues._ResHead.sysInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetBoardTypeString();
                sZimFwVer = _DataHeaderValues._ResHead.sysInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetFirmwareVer();

                xlSheet[rowidx++, 0].Value = sReportname;
                xlSheet[rowidx++, 0].Value = "";
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Test_Data_File, sDatafile);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Schedule_File_Name, sSchfile);
                xlSheet[rowidx++, 0].Value = "";
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.ChInfo, string.Format("{0}/ {2}/ SIF(v{1}):{3}-{4}", sCh, sSifFwVer, sSifType, sSifSerial, sSifCh));
                if (_DataHeaderValues._ResHead.sysInfo.mSIFCfg.GetDeviceType() == eDeviceType.MCBZA)
                {
                    for (int i = 1; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                    {
                        if (_DataHeaderValues._ResHead.sysInfo.ChkZIM[i] == 1)
                        {
                            xlSheet[rowidx++, 0].Value = string.Format("  * {0}[{1}] : {2}", Properties.Resources.AuxBoardInfo, i, string.Format("{0}(v{1})/ {2}/ SIF(v{1}):{3}-{4}",
                                _DataHeaderValues._ResHead.sysInfo.mZimCfg[i].GetZimTypeString(), _DataHeaderValues._ResHead.sysInfo.mZimCfg[i].GetFirmwareVer(), _DataHeaderValues._ResHead.sysInfo.mZimCfg[i].GetSerialNumber()));
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

                sSifSerial = hd.sysInfo.mSIFCfg.GetSerialNumber();
                sSifFwVer = hd.sysInfo.mSIFCfg.GetFirmwareVer();
                sSifType = string.Format("{0}({1})", hd.sysInfo.mSIFCfg.GetProductTypeString(), hd.sysInfo.mSIFCfg.GetDeviceTypeString());
                sZimSerial = hd.sysInfo.mZimCfg[hd.mInfo.sifch].GetSerialNumber();
                sZimType = hd.sysInfo.mZimCfg[hd.mInfo.sifch].GetZimTypeString();
                sZimBoardType = hd.sysInfo.mZimCfg[hd.mInfo.sifch].GetBoardTypeString();
                sZimFwVer = hd.sysInfo.mZimCfg[hd.mInfo.sifch].GetFirmwareVer();

                xlSheet[rowidx++, 0].Value = sReportname;
                xlSheet[rowidx++, 0].Value = "";
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Test_Data_File, sDatafile);
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.Schedule_File_Name, sSchfile);
                xlSheet[rowidx++, 0].Value = "";
                xlSheet[rowidx++, 0].Value = string.Format("  * {0} : {1}", Properties.Resources.ChInfo, string.Format("{0}/ {2}/ SIF(v{1}):{3}-{4}", sCh, sSifFwVer, sSifType, sSifSerial, sSifCh));
                if (hd.sysInfo.mSIFCfg.GetDeviceType() == eDeviceType.MCBZA)
                {
                    for (int i = 1; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                    {
                        if (hd.sysInfo.ChkZIM[i] == 1)
                        {
                            xlSheet[rowidx++, 0].Value = string.Format("  * {0}[{1}] : {2}", Properties.Resources.AuxBoardInfo, i, string.Format("{0}(v{1})/ {2}/ SIF(v{1}):{3}-{4}", hd.sysInfo.mZimCfg[i].GetZimTypeString(), hd.sysInfo.mZimCfg[i].GetFirmwareVer(), hd.sysInfo.mZimCfg[i].GetSerialNumber()));
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
                _XLDataSheet[_DataRowIndex, col++].Value = urgd.mRawData.nTaskNo + 1;
                SetTimeValue(_XLDataSheet[_DataRowIndex, col++], TimeSpan.FromSeconds(urgd.mRawData.TaskTime), timeformat);
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
                SetDoubleValue(_XLDataSheet[_DataRowIndex, col++], urgd.mRawData.Veoc, true);
                _XLDataSheet[_DataRowIndex, col].Value = urgd.Range;
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
