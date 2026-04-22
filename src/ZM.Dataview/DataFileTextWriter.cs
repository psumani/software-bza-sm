using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Globalization;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Utilities;
using static ZiveLab.ZM.Dataview.DataColItem;

namespace ZiveLab.ZM.Dataview
{
    public class DataFileTextWriter
    {
        public string[] _ColLine = new string[]
        {
            "----------------", 
            "----------------", 
            "----------------", 
            "----------------", 
            "----------------", 
            "----------------", 
            "----------------", 
            "----------------", 
            "----------------", 
            "----------------", 
            "----------------", 
            "----------------", 
            "----------------", 
            "----------------", 
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------",
            "----------------"
        };

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
            "SumQ(Ah)      ",
            "SumE(Wh)      ",
            "A01_V(V)      ",
            "A02_V(V)      ",
            "A03_V(V)      ",
            "A04_V(V)      " ,
            "A05_V(V)      ",
            "A06_V(V)      " ,
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
            "SumQ(C)       ",
            "SumE(Wh)      ",
            "A01_V(V)      ",
            "A02_V(V)      ",
            "A03_V(V)      ",
            "A04_V(V)      " ,
            "A05_V(V)      ",
            "A06_V(V)      " ,
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
                
        public string[] _DelimiterArray = new string[]
        {
            "\t",
            ",",
            " ",
        };

        private StreamWriter _StreamWriter;
        private string _Delimeter;

        private string[] _Column = DataFileTextWriter._ColArray;

        private List<string> _ColList = new List<string>();

        private bool _UnitC = false;

        public string LastErrorMessage = string.Empty;

        public string[] Column
        {
            set { _Column = value; }
        }
        
        public DataFileTextWriter(bool unitC)
        {
            _UnitC = unitC;
        }

        public bool Create(string filename, eDelimiter delimiter, out string errmsg)
        {
            errmsg = string.Empty;

            try
            {
                if (!Directory.Exists(Path.GetDirectoryName(filename)))
                    Directory.CreateDirectory(Path.GetDirectoryName(filename));

                FileStream fs = File.Open(filename, FileMode.Create, FileAccess.Write, FileShare.Read);
                _StreamWriter = new StreamWriter(fs, Encoding.Default);

                _Delimeter = _DelimiterArray[(int)delimiter];
            }
            catch (Exception ex)
            {
                errmsg = ex.Message;
                return false;
            }

            return true;
        }

        public int Create(string filename, eDelimiter delimiter)
        {
            try
            {
                if (!Directory.Exists(Path.GetDirectoryName(filename)))
                    Directory.CreateDirectory(Path.GetDirectoryName(filename));

                FileStream fs = File.Open(filename, FileMode.Create, FileAccess.Write, FileShare.Read);
                _StreamWriter = new StreamWriter(fs, Encoding.Default);

                _Delimeter = _DelimiterArray[(int)delimiter];
            }
            catch (Exception ex)
            {
                LastErrorMessage = ex.Message;
                return Define.ERR_TXTFILEWRITER_CREATE;
            }

            return Define.NO_ERROR;
        }
        
        private string[] CreateInforArray(DataHeaderValues _DataHeaderValues)
        {
            List<string> list = new List<string>();

            string sReportname, sDatafile, sVersion, sTestduration, sLaststatus, sDatacount, sTester, sBatId, sMemo, sSchfile, sCh, sSifCh, sSifSerial, sSifFwVer, sSifType, sZimSerial, sZimType, sZimBoardType, sZimFwVer;

            sReportname = string.Empty;
            sReportname = Properties.Resources.Data_Report;

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

            int bytelength = CoTypeString.GetStringByteLength(sReportname);
            string line = string.Empty;
            line = line.PadRight(bytelength, '-');

            list.Add(line);
            list.Add(sReportname);
            list.Add(line);
            list.Add("");

            list.Add(string.Format("  * {0} : {1}", Properties.Resources.Test_Data_File, sDatafile));
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.Schedule_File_Name, sSchfile));
            list.Add("");
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.ChInfo, string.Format("{0}/ {2}/ SIF(v{1}):{3}-{4}", sCh, sSifFwVer, sSifType, sSifSerial, sSifCh)));
            if(_DataHeaderValues._ResHead.systemInfo.mSIFCfg.GetDeviceType() == eDeviceType.MCBZA)
            {
                for (int i = 1; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                {
                    if (_DataHeaderValues._ResHead.systemInfo.ChkZIM[i] == 1)
                    {
                        list.Add(string.Format("  * {0}[{1}] : {2}", Properties.Resources.AuxBoardInfo, i, 
                            string.Format("{0}(v{1})/ {2}", 
                            _DataHeaderValues._ResHead.systemInfo.mZimCfg[i].GetZimTypeString(), _DataHeaderValues._ResHead.systemInfo.mZimCfg[i].GetFirmwareVer(),
                            _DataHeaderValues._ResHead.systemInfo.mZimCfg[i].GetSerialNumber())));
                    }
                }
            }
            list.Add("");
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.Product_No_d, sBatId));
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.Test_Duration, sTestduration));
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.Test_LastStatus, sLaststatus));
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.Data_Count, sDatacount));
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.Tester, sTester));
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.Memo, sMemo));
            list.Add("");

            return list.ToArray();
        }

        /*
        public bool WriteHeader(string sfilename, stResHeader hd, int datacount)
        {
            try
            { 
                string sReportname, sDatafile, sVersion, sTestduration, sLaststatus, sDatacount, sTester, sBatId, sMemo, sSchfile, sCh, sSifCh, sSifSerial, sSifFwVer, sSifType, sZimSerial, sZimType, sZimBoardType, sZimFwVer;
                sReportname = string.Empty;

                sReportname = Properties.Resources.Data_Report;
                

                int bytelength = CoTypeString.GetStringByteLength(sReportname);
                string line = string.Empty;
                for (int i = 0; i < sReportname.Length; i++)
                {
                    line += "=";
                }

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

                line = line.PadRight(bytelength, '-');

                _StreamWriter.WriteLine(line);
                _StreamWriter.WriteLine(sReportname);
                _StreamWriter.WriteLine(line);
                _StreamWriter.WriteLine("");
                _StreamWriter.WriteLine(string.Format("  * {0} : {1}", Properties.Resources.Test_Data_File, sDatafile));
                _StreamWriter.WriteLine(string.Format("  * {0} : {1}", Properties.Resources.Schedule_File_Name, sSchfile));
                _StreamWriter.WriteLine("");
                _StreamWriter.WriteLine(string.Format("  * {0} : {1}", Properties.Resources.ChInfo, string.Format("{0}/ {2}/ SIF(v{1}):{3}-{4}", sCh, sSifFwVer, sSifType, sSifSerial, sSifCh)));
                if (hd.systemInfo.mSIFCfg.GetDeviceType() == eDeviceType.MCBZA)
                {
                    for (int i = 1; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                    {
                        if (hd.systemInfo.ChkZIM[i] == 1)
                        {
                            _StreamWriter.WriteLine(string.Format("  * {0}[{1}] : {2}", Properties.Resources.AuxBoardInfo, i, string.Format("{0}(v{1})/ {2}/ SIF(v{1}):{3}-{4}", hd.systemInfo.mZimCfg[i].GetZimTypeString(), hd.systemInfo.mZimCfg[i].GetFirmwareVer(), hd.systemInfo.mZimCfg[i].GetSerialNumber())));
                        }
                    }
                }
                _StreamWriter.WriteLine("");
                _StreamWriter.WriteLine(string.Format("  * {0} : {1}", Properties.Resources.Product_No_d, sBatId));
                _StreamWriter.WriteLine(string.Format("  * {0} : {1}", Properties.Resources.Test_Duration, sTestduration));
                _StreamWriter.WriteLine(string.Format("  * {0} : {1}", Properties.Resources.Test_LastStatus, sLaststatus));
                _StreamWriter.WriteLine(string.Format("  * {0} : {1}", Properties.Resources.Data_Count, sDatacount));
                _StreamWriter.WriteLine(string.Format("  * {0} : {1}", Properties.Resources.Tester, sTester));
                _StreamWriter.WriteLine(string.Format("  * {0} : {1}", Properties.Resources.Memo, sMemo));
                _StreamWriter.WriteLine("");

                string column = string.Empty;
                string colline = string.Empty;

                for (int i = 0; i < _ColumnGeneral.Length; i++)
                {
                    if (i < _ColumnGeneral.Length - 1)
                    {
                        column += string.Format("{0}{1}", _ColumnGeneral[i], _Delimeter);
                        colline += string.Format("{0}{1}", _ColGeneralLine[i], _Delimeter);
                    }
                    else
                    {
                        column += string.Format("{0}", _ColumnGeneral[i]);
                        colline += string.Format("{0}", _ColGeneralLine[i]);
                    }
                }
             
                if (_Delimeter != ",")
                    _StreamWriter.WriteLine(colline);
                _StreamWriter.WriteLine(column);
                if (_Delimeter != ",")
                    _StreamWriter.WriteLine(colline);
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }        
        */

        public int WriteHeader(DataHeaderValues _DataHeaderValues)
        {
            try
            {
                string[] inforArr = CreateInforArray(_DataHeaderValues);

                foreach (string info in inforArr)
                {
                    _StreamWriter.WriteLine(info);
                }

                _StreamWriter.WriteLine(string.Empty);
            }
            catch (Exception ex)
            {
                LastErrorMessage = ex.Message;

                return Define.ERR_TXTFILEWRITER_WRHEADER;
            }

            return Define.NO_ERROR;
        }

        public int WriteColumn(int pad)
        {
            try
            {

                string sColumn = string.Empty;
                string temp;
                int totalWidth = pad;
               
                string colline = string.Empty;
                string line = string.Empty;
                line = line.PadRight(totalWidth, '-');

                for (int i = 0; i < _Column.Length; i++)
                {
                    int ofslength = Math.Abs(CoTypeString.GetStringByteLength(_Column[i]) - _Column[i].Length);
                    temp = _Delimeter == "," ? _Column[i] : _Column[i].PadRight(totalWidth - ofslength);
                    sColumn += string.Format("{0}{1}", temp, _Delimeter);
                    colline += string.Format("{0}{1}", line, _Delimeter);
                }


                if (_Delimeter != ",")
                    _StreamWriter.WriteLine(colline);
                _StreamWriter.WriteLine(sColumn);
                if (_Delimeter != ",")
                    _StreamWriter.WriteLine(colline);


            }
            catch (Exception)
            {
                return Define.ERR_TXTFILEWRITER_WRCOLUMN;
            }

            return Define.NO_ERROR;
        }
        public int WriteColumnZSharp(DataConvSet dcs, int pad)
        {
            try
            {
                string column = string.Empty;
                string colline = string.Empty;
                string temp;

                string[] genColArr = dcs.GetEnabledDataColArr();
                int totalWidth = pad;
                string line = string.Empty;
                line = line.PadRight(totalWidth, '-');

                for (int i = 0; i < genColArr.Length; i++)
                {
                    if (i == (int)eColumnId.TESTTIME || i == (int)eColumnId.CYCTIME || i == (int)eColumnId.AMPS || i == (int)eColumnId.VOLT ||
                        i == (int)eColumnId.POWER || i == (int)eColumnId.LOAD || i == (int)eColumnId.CAPACITY || i == (int)eColumnId.ENERGY ||
                        i == (int)eColumnId.TEMP || i == (int)eColumnId.EOC || i == (int)eColumnId.IRNG) continue;

                    if (i < genColArr.Length - 1)
                    {
                        int ofslength = Math.Abs(CoTypeString.GetStringByteLength(genColArr[i]) - genColArr[i].Length);
                        temp = _Delimeter == "," ? genColArr[i] : genColArr[i].PadRight(totalWidth - ofslength);

                        column += string.Format("{0}{1}", temp, _Delimeter);
                        colline += string.Format("{0}{1}", line, _Delimeter);
                    }
                    else
                    {
                        int ofslength = Math.Abs(CoTypeString.GetStringByteLength(genColArr[i]) - genColArr[i].Length);
                        temp = _Delimeter == "," ? genColArr[i] : genColArr[i].PadRight(totalWidth - ofslength);

                        column += string.Format("{0}", temp);
                        colline += string.Format("{0}", line);
                    }
                }


                if (_Delimeter != ",")
                    _StreamWriter.WriteLine(colline);
                _StreamWriter.WriteLine(column);
                if (_Delimeter != ",")
                    _StreamWriter.WriteLine(colline);


            }
            catch (Exception)
            {
                return Define.ERR_TXTFILEWRITER_WRCOLUMN;
            }

            return Define.NO_ERROR;
        }

        public int WriteColumnZSharp(DataConvSet dcs, int pad,int Target)
        {
            try
            {
                string column = string.Empty;
                string colline = string.Empty;
                string temp;

                string[] genColArr = dcs.GetEnabledDataColArr();
                int totalWidth = pad;
                string line = string.Empty;
                line = line.PadRight(totalWidth, '-');

                for (int i = 0; i < genColArr.Length; i++)
                {
                    if (i == (int)eColumnId.FREQ ||
                        (Target == 0 && (i == (int)eColumnId.ZRE || i == (int)eColumnId.ZIM)) ||
                        (Target == 1 && (i == (int)eColumnId.AUX01_ZRE || i == (int)eColumnId.AUX01_ZIM)) ||
                        (Target == 2 && (i == (int)eColumnId.AUX02_ZRE || i == (int)eColumnId.AUX02_ZIM)) ||
                        (Target == 3 && (i == (int)eColumnId.AUX03_ZRE || i == (int)eColumnId.AUX03_ZIM)) ||
                        (Target == 4 && (i == (int)eColumnId.AUX04_ZRE || i == (int)eColumnId.AUX04_ZIM)) ||
                        (Target == 5 && (i == (int)eColumnId.AUX05_ZRE || i == (int)eColumnId.AUX05_ZIM)) ||
                        (Target == 6 && (i == (int)eColumnId.AUX06_ZRE || i == (int)eColumnId.AUX06_ZIM)) ||
                        (Target == 7 && (i == (int)eColumnId.AUX07_ZRE || i == (int)eColumnId.AUX07_ZIM)) ||
                        (Target == 8 && (i == (int)eColumnId.AUX08_ZRE || i == (int)eColumnId.AUX08_ZIM)) ||
                        (Target == 9 && (i == (int)eColumnId.AUX09_ZRE || i == (int)eColumnId.AUX09_ZIM)) ||
                        (Target == 10 && (i == (int)eColumnId.AUX10_ZRE || i == (int)eColumnId.AUX10_ZIM)) ||
                        (Target == 11 && (i == (int)eColumnId.AUX11_ZRE || i == (int)eColumnId.AUX11_ZIM)) ||
                        (Target == 12 && (i == (int)eColumnId.AUX12_ZRE || i == (int)eColumnId.AUX12_ZIM)))
                    {

                        if (i < genColArr.Length - 1)
                        {
                            int ofslength = Math.Abs(CoTypeString.GetStringByteLength(genColArr[i]) - genColArr[i].Length);
                            temp = _Delimeter == "," ? genColArr[i] : genColArr[i].PadRight(totalWidth - ofslength);

                            column += string.Format("{0}{1}", temp, _Delimeter);
                            colline += string.Format("{0}{1}", line, _Delimeter);
                        }
                        else
                        {
                            int ofslength = Math.Abs(CoTypeString.GetStringByteLength(genColArr[i]) - genColArr[i].Length);
                            temp = _Delimeter == "," ? genColArr[i] : genColArr[i].PadRight(totalWidth - ofslength);

                            column += string.Format("{0}", temp);
                            colline += string.Format("{0}", line);
                        }
                    }
                }

                if (_Delimeter != ",")
                    _StreamWriter.WriteLine(colline);
                _StreamWriter.WriteLine(column);
                if (_Delimeter != ",")
                    _StreamWriter.WriteLine(colline);


            }
            catch (Exception)
            {
                return Define.ERR_TXTFILEWRITER_WRCOLUMN;
            }

            return Define.NO_ERROR;
        }

        public int WriteColumn(DataConvSet dcs, int pad, int MaxAuxCount)
        {
            int auxidx = 0;
            try
            {
                string column = string.Empty;
                string colline = string.Empty;
                string temp;

                string[] genColArr = dcs.GetDataColArr();
                int totalWidth = pad;
                string line = string.Empty;
                line = line.PadRight(totalWidth, '-');

                for (int i = 0; i < genColArr.Length; i++)
                {
                    if((int)eColumnId.AUX1 <= i && i<= (int)eColumnId.AUX12) 
                    {
                        auxidx = i - (int)eColumnId.AUX1;
                        if (auxidx >= MaxAuxCount) continue;
                    }
                    if ((int)eColumnId.AUX01_ZRE <= i && i <= (int)eColumnId.AUX12_ZIM)
                    {
                        auxidx = i - (int)eColumnId.AUX01_ZRE;
                        auxidx = auxidx / 2;
                        if (auxidx >= MaxAuxCount) continue;
                    }
                    if (dcs.DataColList[i].Enable == false) continue;
                    if (i < genColArr.Length - 1)
                    {
                        int ofslength = Math.Abs(CoTypeString.GetStringByteLength(genColArr[i]) - genColArr[i].Length);
                        temp = _Delimeter == "," ? genColArr[i] : genColArr[i].PadRight(totalWidth - ofslength);

                        column += string.Format("{0}{1}", temp, _Delimeter);
                        colline += string.Format("{0}{1}", line, _Delimeter);
                    }
                    else
                    {
                        int ofslength = Math.Abs(CoTypeString.GetStringByteLength(genColArr[i]) - genColArr[i].Length);
                        temp = _Delimeter == "," ? genColArr[i] : genColArr[i].PadRight(totalWidth - ofslength);

                        column += string.Format("{0}", temp);
                        colline += string.Format("{0}", line);
                    }
                }


                if (_Delimeter != ",")
                    _StreamWriter.WriteLine(colline);
                _StreamWriter.WriteLine(column);
                if (_Delimeter != ",")
                    _StreamWriter.WriteLine(colline);


            }
            catch (Exception)
            {
                return Define.ERR_TXTFILEWRITER_WRCOLUMN;
            }

            return Define.NO_ERROR;
        }

        public int WriteColumn(DataConvSet dcs, int pad)
        {
            try
            {
                string column = string.Empty;
                string colline = string.Empty;
                string temp;

                string[] genColArr = dcs.GetEnabledDataColArr();
                int totalWidth = pad;
                string line = string.Empty;
                line = line.PadRight(totalWidth, '-');

                for (int i = 0; i < genColArr.Length; i++)
                {
                    if (i < genColArr.Length - 1)
                    {
                        int ofslength = Math.Abs(CoTypeString.GetStringByteLength(genColArr[i]) - genColArr[i].Length);
                        temp = _Delimeter == "," ? genColArr[i] : genColArr[i].PadRight(totalWidth - ofslength);

                        column += string.Format("{0}{1}", temp, _Delimeter);
                        colline += string.Format("{0}{1}", line, _Delimeter);
                    }
                    else
                    {
                        int ofslength = Math.Abs(CoTypeString.GetStringByteLength(genColArr[i]) - genColArr[i].Length);
                        temp = _Delimeter == "," ? genColArr[i] : genColArr[i].PadRight(totalWidth - ofslength);

                        column += string.Format("{0}", temp);
                        colline += string.Format("{0}", line);
                    }
                }


                if (_Delimeter != ",")
                    _StreamWriter.WriteLine(colline);
                _StreamWriter.WriteLine(column);
                if (_Delimeter != ",")
                    _StreamWriter.WriteLine(colline);


            }
            catch (Exception)
            {
                return Define.ERR_TXTFILEWRITER_WRCOLUMN;
            }

            return Define.NO_ERROR;
        }
        
        static private List<double> _vData = new List<double>();

        private string DoubleToString(double val, CoMath.eSiUnit unit, DataColItem.eDataFormat format, bool unitC = false)
        {
            string result = string.Empty;

            double convval = CoMath.UnitConv(val, unit);

            if (unitC)
                convval *= 3600;

            switch(format)
            {
                case DataColItem.eDataFormat.STRING:
                    break;

                case DataColItem.eDataFormat.NUMBER:
                    result = string.Format(CultureInfo.InvariantCulture, "{0}", convval);
                    break;

                case DataColItem.eDataFormat.EXPONENTIAL:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:E5}", convval);
                    break;

                case DataColItem.eDataFormat.F2TYPE:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:F2}", convval);
                    break;

                case DataColItem.eDataFormat.F3TYPE:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:F3}", convval);
                    break;

                case DataColItem.eDataFormat.F4TYPE:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:F4}", convval);
                    break;

                case DataColItem.eDataFormat.F5TYPE:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:F5}", convval);
                    break;
            }

            return result;
        }

        private string TimeToString(TimeSpan ts, DataColItem.eDataFormat format)
        {
            string result = string.Empty;

            switch (format)
            {
                case DataColItem.eDataFormat.STRING:
                    result = string.Format(CultureInfo.InvariantCulture, "{0}:{1:D2}:{2:D2}:{3:D2}.{4:D3}", ts.Days, ts.Hours, ts.Minutes, ts.Seconds, ts.Milliseconds);
                    break;
                case DataColItem.eDataFormat.NUMBER:
                    result = string.Format(CultureInfo.InvariantCulture, "{0}", ts.TotalSeconds);
                    break;
                case DataColItem.eDataFormat.EXPONENTIAL:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:E3}", ts.TotalSeconds);
                    break;
                case DataColItem.eDataFormat.F2TYPE:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:F2}", ts.TotalSeconds);
                    break;
                case DataColItem.eDataFormat.F3TYPE:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:F3}", ts.TotalSeconds);
                    break;
                case DataColItem.eDataFormat.F4TYPE:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:F4}", ts.TotalSeconds);
                    break;
                case DataColItem.eDataFormat.F5TYPE:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:F5}", ts.TotalSeconds);
                    break;
            }

            return result;
        }

        public int ZSharpWriteData(int dataidx, object unitData, eDelimiter delimiter, int pad, Dictionary<int, object> irstep)
        {
            try
            {
                string data = string.Empty;
                string unit = string.Empty;

                if (unitData is UnitReportData)
                {
                    UnitReportData urgd = (UnitReportData)unitData;

                    List<string> list = new List<string>();

                    list.Add((dataidx + 1).ToString(CultureInfo.InvariantCulture));
                    list.Add((urgd.mRawData.nCycle + 1).ToString(CultureInfo.InvariantCulture));
                    list.Add(DoubleToString(urgd.mRawData.fFreq, CoMath.eSiUnit.NONE, DataColItem.eDataFormat.EXPONENTIAL));
                    list.Add(DoubleToString(urgd.mRawData.real, CoMath.eSiUnit.NONE, DataColItem.eDataFormat.EXPONENTIAL));
                    list.Add(DoubleToString(urgd.mRawData.img, CoMath.eSiUnit.NONE, DataColItem.eDataFormat.EXPONENTIAL));
                    for(int bd = 0; bd<MBZA_Constant.MAX_AUX_BOARD; bd++)
                    {
                        for (int bdch = 0; bdch < MBZA_Constant.MAX_AUX_CHANNEL; bdch++)
                        {
                            list.Add(DoubleToString(urgd.mRawData.mdata[bd].mdata[bdch].Zre, CoMath.eSiUnit.NONE, DataColItem.eDataFormat.EXPONENTIAL));
                            list.Add(DoubleToString(urgd.mRawData.mdata[bd].mdata[bdch].Zim, CoMath.eSiUnit.NONE, DataColItem.eDataFormat.EXPONENTIAL));
                        }
                    }
                    
                    int totalWidth = pad;

                    for (int i = 0; i < list.Count; i++)
                    {
                        unit = delimiter == eDelimiter.Comma ? list[i] : list[i].PadRight(totalWidth);
                        if (i < list.Count - 1)
                            data += string.Format("{0}{1}", unit, _Delimeter);
                        else
                            data += string.Format("{0}", unit);
                    }
                }

                _StreamWriter.WriteLine(data);
            }
            catch (Exception ex)
            {
                LastErrorMessage = ex.Message;

                return Define.ERR_TXTFILEWRITER_WRDATA;
            }

            return Define.NO_ERROR;
        }

        public int ZSharpWriteData(int dataidx, object unitData, eDelimiter delimiter, int pad, Dictionary<int, object> irstep,int Target)
        {
            int bd;
            int bdch;
            try
            {
                string data = string.Empty;
                string unit = string.Empty;

                if (unitData is UnitReportData)
                {
                    UnitReportData urgd = (UnitReportData)unitData;

                    List<string> list = new List<string>();
                    
                    list.Add(DoubleToString(urgd.mRawData.fFreq, CoMath.eSiUnit.NONE, DataColItem.eDataFormat.EXPONENTIAL));
                    if (Target <= 0)
                    {
                        list.Add(DoubleToString(urgd.mRawData.real, CoMath.eSiUnit.NONE, DataColItem.eDataFormat.EXPONENTIAL));
                        list.Add(DoubleToString(urgd.mRawData.img, CoMath.eSiUnit.NONE, DataColItem.eDataFormat.EXPONENTIAL));
                    }
                    else
                    {
                        bd = (Target-1) / MBZA_Constant.MAX_AUX_CHANNEL;
                        bdch = (Target-1) % MBZA_Constant.MAX_AUX_CHANNEL;

                        list.Add(DoubleToString(urgd.mRawData.mdata[bd].mdata[bdch].Zre, CoMath.eSiUnit.NONE, DataColItem.eDataFormat.EXPONENTIAL));
                        list.Add(DoubleToString(urgd.mRawData.mdata[bd].mdata[bdch].Zim, CoMath.eSiUnit.NONE, DataColItem.eDataFormat.EXPONENTIAL));
                    }

                    int totalWidth = pad;

                    for (int i = 0; i < list.Count; i++)
                    {
                        unit = delimiter == eDelimiter.Comma ? list[i] : list[i].PadRight(totalWidth);
                        if (i < list.Count - 1)
                            data += string.Format("{0}{1}", unit, _Delimeter);
                        else
                            data += string.Format("{0}", unit);
                    }
                }

                _StreamWriter.WriteLine(data);
            }
            catch (Exception ex)
            {
                LastErrorMessage = ex.Message;

                return Define.ERR_TXTFILEWRITER_WRDATA;
            }

            return Define.NO_ERROR;
        }


        public int WriteData(int dataidx, object unitData, DataConvSet dataConvSet, eDelimiter delimiter, int pad, Dictionary<int, object> irstep)
        {
            int zidx = 0;
            int itype = 0;
            int auxidx = 0;
            int bd = 0;
            int bdch = 0;
            try
            {
                string data = string.Empty;
                string unit = string.Empty;
                                
                if (unitData is UnitReportData)
                {
                    UnitReportData urgd = (UnitReportData)unitData;                    
                    
                    List<string> list = new List<string>();

                    foreach(DataColItem dci in dataConvSet.DataColList)
                    {
                        if (dci.Enable)
                        {
                            switch (dci.ColumnID)
                            {
                                case DataColItem.eColumnId.INDEX:
                                    list.Add((dataidx + 1).ToString(CultureInfo.InvariantCulture));
                                    break;

                                case DataColItem.eColumnId.TESTTIME:
                                    list.Add(ZMF_File.GetTimeSpanString(TimeSpan.FromSeconds(urgd.mRawData.TestTime), dataConvSet.TimeFormat));
                                    break;

                                case DataColItem.eColumnId.CYCNO:
                                    list.Add((urgd.mRawData.nCycle + 1).ToString(CultureInfo.InvariantCulture));
                                    break;

                                case DataColItem.eColumnId.CYCTIME:
                                    list.Add(ZMF_File.GetTimeSpanString(TimeSpan.FromSeconds(urgd.mRawData.CycleTime), dataConvSet.TimeFormat));
                                    break;

                                case DataColItem.eColumnId.AMPS:
                                    list.Add(DoubleToString(urgd.mRawData.Idc, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.VOLT:
                                    list.Add(DoubleToString(urgd.mRawData.Vdc, dci.SIUnit, dci.DataFormat));
                                    break;
                                case DataColItem.eColumnId.POWER:
                                    list.Add(DoubleToString(urgd.Power, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.LOAD:
                                    list.Add(DoubleToString(urgd.Load, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.CAPACITY:
                                    list.Add(DoubleToString(urgd.Capacity, dci.SIUnit, dci.DataFormat, dataConvSet.UnitC));
                                    break;

                                case DataColItem.eColumnId.ENERGY:
                                    list.Add(DoubleToString(urgd.Energy, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.TEMP:
                                    list.Add(DoubleToString(urgd.mRawData.Temperature, dci.SIUnit, dci.DataFormat));
                                    break;
                                case DataColItem.eColumnId.AUX1:
                                case DataColItem.eColumnId.AUX2:
                                case DataColItem.eColumnId.AUX3:
                                case DataColItem.eColumnId.AUX4:
                                case DataColItem.eColumnId.AUX5:
                                case DataColItem.eColumnId.AUX6:
                                case DataColItem.eColumnId.AUX7:
                                case DataColItem.eColumnId.AUX8:
                                case DataColItem.eColumnId.AUX9:
                                case DataColItem.eColumnId.AUX10:
                                case DataColItem.eColumnId.AUX11:
                                case DataColItem.eColumnId.AUX12:
                                    auxidx = dci.ColumnID - DataColItem.eColumnId.AUX1;
                                    bd = auxidx / 4;
                                    bdch = auxidx % 4;
                                    list.Add(DoubleToString(urgd.mRawData.mdata[bd].mdata[bdch].Vdc, dci.SIUnit, dci.DataFormat));
                                    break;
                                case DataColItem.eColumnId.EOC:
                                    list.Add(DoubleToString(urgd.mRawData.Veoc, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.IRNG:
                                    list.Add(urgd.Range);
                                    break;
                                case DataColItem.eColumnId.FREQ:
                                    list.Add(DoubleToString(urgd.mRawData.fFreq, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.ZRE:
                                    list.Add(DoubleToString(urgd.mRawData.real, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.ZIM:
                                    list.Add(DoubleToString(urgd.mRawData.img, dci.SIUnit, dci.DataFormat));
                                    break;
                                case DataColItem.eColumnId.AUX01_ZRE:
                                case DataColItem.eColumnId.AUX01_ZIM:
                                case DataColItem.eColumnId.AUX02_ZRE:
                                case DataColItem.eColumnId.AUX02_ZIM:
                                case DataColItem.eColumnId.AUX03_ZRE:
                                case DataColItem.eColumnId.AUX03_ZIM:
                                case DataColItem.eColumnId.AUX04_ZRE:
                                case DataColItem.eColumnId.AUX04_ZIM:
                                case DataColItem.eColumnId.AUX05_ZRE:
                                case DataColItem.eColumnId.AUX05_ZIM:
                                case DataColItem.eColumnId.AUX06_ZRE:
                                case DataColItem.eColumnId.AUX06_ZIM:
                                case DataColItem.eColumnId.AUX07_ZRE:
                                case DataColItem.eColumnId.AUX07_ZIM:
                                case DataColItem.eColumnId.AUX08_ZRE:
                                case DataColItem.eColumnId.AUX08_ZIM:
                                case DataColItem.eColumnId.AUX09_ZRE:
                                case DataColItem.eColumnId.AUX09_ZIM:
                                case DataColItem.eColumnId.AUX10_ZRE:
                                case DataColItem.eColumnId.AUX10_ZIM:
                                case DataColItem.eColumnId.AUX11_ZRE:
                                case DataColItem.eColumnId.AUX11_ZIM:
                                case DataColItem.eColumnId.AUX12_ZRE:
                                case DataColItem.eColumnId.AUX12_ZIM:
                                    zidx = dci.ColumnID - DataColItem.eColumnId.AUX01_ZRE;
                                    itype = zidx % 2;
                                    auxidx = zidx / 2;
                                    bd = auxidx / 4;
                                    bdch = auxidx % 4;

                                    if (itype == 0)
                                    {
                                        list.Add(DoubleToString(urgd.mRawData.mdata[bd].mdata[bdch].Zre, dci.SIUnit, dci.DataFormat));
                                    }
                                    else
                                    {
                                        list.Add(DoubleToString(urgd.mRawData.mdata[bd].mdata[bdch].Zim, dci.SIUnit, dci.DataFormat));
                                    }

                                    break;
                            }
                        }
                    }                                        
                    
                    int totalWidth = pad;

                    for (int i = 0; i < list.Count; i++)
                    {
                        unit = delimiter == eDelimiter.Comma ? list[i] : list[i].PadRight(totalWidth);
                        if (i < list.Count - 1)
                            data += string.Format("{0}{1}", unit, _Delimeter);
                        else
                            data += string.Format("{0}", unit);
                    }
                }

                _StreamWriter.WriteLine(data);
            }
            catch (Exception ex)
            {
                LastErrorMessage = ex.Message;

                return Define.ERR_TXTFILEWRITER_WRDATA;
            }

            return Define.NO_ERROR;
        }

        public int WriteData(int dataidx, object unitData, DataConvSet dataConvSet, eDelimiter delimiter, int pad, Dictionary<int, object> irstep, int MaxAuxCount)
        {
            int zidx = 0;
            int itype = 0;
            int auxidx = 0;
            int bd = 0;
            int bdch = 0;
            try
            {
                string data = string.Empty;
                string unit = string.Empty;

                if (unitData is UnitReportData)
                {
                    UnitReportData urgd = (UnitReportData)unitData;

                    List<string> list = new List<string>();

                    foreach (DataColItem dci in dataConvSet.DataColList)
                    {
                        if (dci.Enable)
                        {
                            switch (dci.ColumnID)
                            {
                                case DataColItem.eColumnId.INDEX:
                                    list.Add((dataidx + 1).ToString(CultureInfo.InvariantCulture));
                                    break;

                                case DataColItem.eColumnId.TESTTIME:
                                    list.Add(ZMF_File.GetTimeSpanString(TimeSpan.FromSeconds(urgd.mRawData.TestTime), dataConvSet.TimeFormat));
                                    break;

                                case DataColItem.eColumnId.CYCNO:
                                    list.Add((urgd.mRawData.nCycle + 1).ToString(CultureInfo.InvariantCulture));
                                    break;

                                case DataColItem.eColumnId.CYCTIME:
                                    list.Add(ZMF_File.GetTimeSpanString(TimeSpan.FromSeconds(urgd.mRawData.CycleTime), dataConvSet.TimeFormat));
                                    break;

                                case DataColItem.eColumnId.AMPS:
                                    list.Add(DoubleToString(urgd.mRawData.Idc, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.VOLT:
                                    list.Add(DoubleToString(urgd.mRawData.Vdc, dci.SIUnit, dci.DataFormat));
                                    break;
                                case DataColItem.eColumnId.POWER:
                                    list.Add(DoubleToString(urgd.Power, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.LOAD:
                                    list.Add(DoubleToString(urgd.Load, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.CAPACITY:
                                    list.Add(DoubleToString(urgd.Capacity, dci.SIUnit, dci.DataFormat, dataConvSet.UnitC));
                                    break;

                                case DataColItem.eColumnId.ENERGY:
                                    list.Add(DoubleToString(urgd.Energy, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.TEMP:
                                    list.Add(DoubleToString(urgd.mRawData.Temperature, dci.SIUnit, dci.DataFormat));
                                    break;
                                case DataColItem.eColumnId.AUX1:
                                case DataColItem.eColumnId.AUX2:
                                case DataColItem.eColumnId.AUX3:
                                case DataColItem.eColumnId.AUX4:
                                case DataColItem.eColumnId.AUX5:
                                case DataColItem.eColumnId.AUX6:
                                case DataColItem.eColumnId.AUX7:
                                case DataColItem.eColumnId.AUX8:
                                case DataColItem.eColumnId.AUX9:
                                case DataColItem.eColumnId.AUX10:
                                case DataColItem.eColumnId.AUX11:
                                case DataColItem.eColumnId.AUX12:
                                    auxidx = dci.ColumnID - DataColItem.eColumnId.AUX1;
                                    if (auxidx >= MaxAuxCount) continue;
                                    bd = auxidx / 4;
                                    bdch = auxidx % 4;
                                    list.Add(DoubleToString(urgd.mRawData.mdata[bd].mdata[bdch].Vdc, dci.SIUnit, dci.DataFormat));
                                    break;
                                case DataColItem.eColumnId.EOC:
                                    list.Add(DoubleToString(urgd.mRawData.Veoc, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.IRNG:
                                    list.Add(urgd.Range);
                                    break;
                                case DataColItem.eColumnId.FREQ:
                                    list.Add(DoubleToString(urgd.mRawData.fFreq, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.ZRE:
                                    list.Add(DoubleToString(urgd.mRawData.real, dci.SIUnit, dci.DataFormat));
                                    break;

                                case DataColItem.eColumnId.ZIM:
                                    list.Add(DoubleToString(urgd.mRawData.img, dci.SIUnit, dci.DataFormat));
                                    break;
                                case DataColItem.eColumnId.AUX01_ZRE:
                                case DataColItem.eColumnId.AUX01_ZIM:
                                case DataColItem.eColumnId.AUX02_ZRE:
                                case DataColItem.eColumnId.AUX02_ZIM:
                                case DataColItem.eColumnId.AUX03_ZRE:
                                case DataColItem.eColumnId.AUX03_ZIM:
                                case DataColItem.eColumnId.AUX04_ZRE:
                                case DataColItem.eColumnId.AUX04_ZIM:
                                case DataColItem.eColumnId.AUX05_ZRE:
                                case DataColItem.eColumnId.AUX05_ZIM:
                                case DataColItem.eColumnId.AUX06_ZRE:
                                case DataColItem.eColumnId.AUX06_ZIM:
                                case DataColItem.eColumnId.AUX07_ZRE:
                                case DataColItem.eColumnId.AUX07_ZIM:
                                case DataColItem.eColumnId.AUX08_ZRE:
                                case DataColItem.eColumnId.AUX08_ZIM:
                                case DataColItem.eColumnId.AUX09_ZRE:
                                case DataColItem.eColumnId.AUX09_ZIM:
                                case DataColItem.eColumnId.AUX10_ZRE:
                                case DataColItem.eColumnId.AUX10_ZIM:
                                case DataColItem.eColumnId.AUX11_ZRE:
                                case DataColItem.eColumnId.AUX11_ZIM:
                                case DataColItem.eColumnId.AUX12_ZRE:
                                case DataColItem.eColumnId.AUX12_ZIM:
                                    zidx = dci.ColumnID - DataColItem.eColumnId.AUX01_ZRE;
                                    itype = zidx % 2;
                                    auxidx = zidx / 2;
                                    if (auxidx >= MaxAuxCount) continue;
                                    bd = auxidx / 4;
                                    bdch = auxidx % 4;

                                    if (itype == 0)
                                    {
                                        list.Add(DoubleToString(urgd.mRawData.mdata[bd].mdata[bdch].Zre, dci.SIUnit, dci.DataFormat));
                                    }
                                    else
                                    {
                                        list.Add(DoubleToString(urgd.mRawData.mdata[bd].mdata[bdch].Zim, dci.SIUnit, dci.DataFormat));
                                    }

                                    break;
                            }
                        }
                    }

                    int totalWidth = pad;

                    for (int i = 0; i < list.Count; i++)
                    {
                        unit = delimiter == eDelimiter.Comma ? list[i] : list[i].PadRight(totalWidth);
                        if (i < list.Count - 1)
                            data += string.Format("{0}{1}", unit, _Delimeter);
                        else
                            data += string.Format("{0}", unit);
                    }
                }

                _StreamWriter.WriteLine(data);
            }
            catch (Exception ex)
            {
                LastErrorMessage = ex.Message;

                return Define.ERR_TXTFILEWRITER_WRDATA;
            }

            return Define.NO_ERROR;
        }

        public void ColLanguage(int unitofQ, int langidx)
        {
            switch (langidx)
            {
                case 0:
                    _Column = unitofQ == 0 ? DataFileTextWriter._ColArray : DataFileTextWriter._ColArrayEx;
                    break;
                case 1:
                    _Column = unitofQ == 0 ? DataFileTextWriter._ColArray_Kor : DataFileTextWriter._ColArrayEx_Kor;
                    break;
            }
        }

        public void ColLanguage(bool unitC, int langidx)
        {
            switch (langidx)
            {
                case 0:
                    _Column = unitC ? DataFileTextWriter._ColArrayEx : DataFileTextWriter._ColArray;
                    break;
                case 1:
                    _Column = unitC ? DataFileTextWriter._ColArrayEx_Kor : DataFileTextWriter._ColArray_Kor;
                    break;
            }
        }

        public void ColZSharp(int Target)
        {
            _Column = new string[3];

            _Column[0] = "Frequency(Hz) ";
            if(Target == 0)
            {
                _Column[1] = "Zre(ohm)      ";
                _Column[2] = "Zim(ohm)      ";
            }
            else
            {
                _Column[1] = string.Format("A{0:00}_Zre(ohm)      ", Target);
                _Column[2] = string.Format("A{0:00}_Zim(ohm)      ", Target);
            }
        }
        

        public bool WriteData(string[] dataArray,int pad)
        {
            try
            {
                string data = string.Empty;

                for (int i = 0; i < dataArray.Length; i++)
                {
                    //string[] colArr = _UnitC ? _ColArrayEx : _ColArray;

                    string unit = SubStringWidthPad(dataArray[i], pad); // colArr[i].Length);
                    if (i < dataArray.Length - 1)
                        data += string.Format("{0}{1}", unit, _Delimeter);
                    else
                        data += string.Format("{0}", unit);
                }

                _StreamWriter.WriteLine(data);
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }

        public bool WriteLine(int count)
        {
            try
            {
                for (int i = 0; i < count; i++)
                    _StreamWriter.WriteLine("");
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }

        public void Close()
        {
            if (_StreamWriter != null)
            {
                _StreamWriter.Flush();
                _StreamWriter.Close();
            }
        }

        private string SubStringWidthPad(string str, int len)
        {
            int inCnt = Encoding.Default.GetByteCount(str);
            if (inCnt > len)
            {
                int i = 0;
                for (i = str.Length - 1; inCnt > len; i--)
                {
                    if (str[i] > 0x7f)
                    {
                        inCnt -= 2;
                    }
                    else
                    {
                        inCnt -= 1;
                    }
                }

                str = str.Substring(0, i + 1);
                inCnt = Encoding.Default.GetByteCount(str);
            }

            str = str.PadRight(str.Length + len - inCnt);
            return str;
        }

        private string SubStringWidthPad(string str, int len, char paddingChar)
        {
            int inCnt = Encoding.Default.GetByteCount(str);
            if (inCnt > len)
            {
                int i = 0;
                for (i = str.Length - 1; inCnt > len; i--)
                {
                    if (str[i] > 0x7f)
                    {
                        inCnt -= 2;
                    }
                    else
                    {
                        inCnt -= 1;
                    }
                }

                str = str.Substring(0, i + 1);
                inCnt = Encoding.Default.GetByteCount(str);
            }

            str = str.PadRight(str.Length + len - inCnt, paddingChar);
            return str;
        }
    }
}
