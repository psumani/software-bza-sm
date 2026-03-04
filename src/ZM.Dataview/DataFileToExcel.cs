using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Threading;
using WriteLargeExcelFileEfficiently;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM.Dataview
{
    public class DataFileToExcel
    {
        private DataConvSet tDataConvSet;
        private DataHeaderValues _DataHeaderValues;

        private List<object> _dataList;

        private List<DataColItem> _enColItemList;
        private string[] _inforArray;
        private string[,] _rowcolData;
        private int _cycleCount;

        private List<UnitToExcelDataInfor> _unitDataInforList;
        
        public DataFileToExcel(DataConvSet dataConvSet, DataHeaderValues _dhv, List<object> dataList, int MaxAuxCount)
        {
            tDataConvSet = dataConvSet;
            _DataHeaderValues = _dhv;

            _dataList = dataList;

            CreateInforArray();
            DataGenerate(MaxAuxCount);
        }

        public DataFileToExcel(DataConvSet dataConvSet, DataHeaderValues _dhv, List<object> dataList)
        {
            tDataConvSet = dataConvSet;
            _DataHeaderValues = _dhv;

            _dataList = dataList;

            CreateInforArray();
            DataGenerate();
        }

        public DataFileToExcel(DataConvSet dataConvSet, List<UnitToExcelDataInfor> udiList)
        {
            tDataConvSet = dataConvSet;
            _unitDataInforList = udiList;
            //CreateInforArray();
            //DataGenerate();
        }

        private void DataGenerate(int MaxAuxCount)
        {
            int row = 0;
            int colbase = 0;
            int zidx = 0;
            int itype = 0;
            int auxidx = 0;
            int bd = 0;
            int bdch = 0;

            _enColItemList = new List<DataColItem>();
            for (int i = 0; i < tDataConvSet.DataColList.Count; i++)
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
                if (tDataConvSet.DataColList[i].Enable == false) continue;

                _enColItemList.Add(tDataConvSet.DataColList[i]);
            }

            //_enColItemList = tDataConvSet.DataColList.Where(x => x.Enable == true).ToList();

            List<UnitReportData> urgdList = _dataList.Select(x => (UnitReportData)x).ToList();
            Dictionary<int, List<UnitReportData>> urgdListDict = GetByCycle(urgdList);

            _cycleCount = urgdListDict.Count;

            if (tDataConvSet.CycleColumnArrange)
            {
                int maxrow = CoCollection.GetMaxListCount<UnitReportData>(urgdListDict);  //리스트의 크기가 가장 큰 값을 찾음.

                _rowcolData = new string[maxrow, _enColItemList.Count * urgdListDict.Count];
            }
            else
            {
                _rowcolData = new string[urgdList.Count, _enColItemList.Count];
            }

            

            foreach (List<UnitReportData> urgdlistbyCycle in urgdListDict.Values)
            {
                foreach (UnitReportData urgd in urgdlistbyCycle)
                {
                    int col = colbase * _enColItemList.Count;

                    foreach (DataColItem dci in tDataConvSet.DataColList)
                    {
                        if (dci.Enable)
                        {
                            switch (dci.ColumnID)
                            {
                                case DataColItem.eColumnId.INDEX:
                                    _rowcolData[row, col++] = (row + 1).ToString();
                                    break;

                                case DataColItem.eColumnId.TESTTIME:
                                    _rowcolData[row, col++] = ZMF_File.GetTimeSpanString(TimeSpan.FromSeconds(urgd.mRawData.TestTime), tDataConvSet.TimeFormat);
                                    break;

                                case DataColItem.eColumnId.CYCNO:
                                    _rowcolData[row, col++] = (urgd.mRawData.nCycle + 1).ToString();
                                    break;

                                case DataColItem.eColumnId.CYCTIME:
                                    _rowcolData[row, col++] = ZMF_File.GetTimeSpanString(TimeSpan.FromSeconds(urgd.mRawData.CycleTime), tDataConvSet.TimeFormat);
                                    break;

                                case DataColItem.eColumnId.AMPS:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.Idc, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.VOLT:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.Vdc, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.POWER:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.Power, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.LOAD:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.Load, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.CAPACITY:
                                    double chgq = tDataConvSet.UnitC ? urgd.Capacity * 3600 : urgd.Capacity;
                                    _rowcolData[row, col++] = CoMath.UnitConv(chgq, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.ENERGY:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.Energy, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.TEMP:
                                    _rowcolData[row, col++] = urgd.mRawData.Temperature.ToString();
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
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.mdata[bd].mdata[bdch].Vdc, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.EOC:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.Veoc, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.IRNG:
                                    _rowcolData[row, col++] = urgd.Range;
                                    break;

                                case DataColItem.eColumnId.FREQ:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.fFreq, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.ZRE:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.real, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.ZIM:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.img, dci.SIUnit).ToString();
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

                                    if (zidx == 0)
                                    {
                                        _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.mdata[bd].mdata[bdch].Zre, dci.SIUnit).ToString();
                                    }
                                    else
                                    {
                                        _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.mdata[bd].mdata[bdch].Zim, dci.SIUnit).ToString();
                                    }

                                    break;
                            }
                        }
                    }

                    row++;
                }

                if (tDataConvSet.CycleColumnArrange)
                {
                    row = 0;
                    colbase++;
                }
            }

        }

        private void DataGenerate()
        {

            _enColItemList = tDataConvSet.DataColList.Where(x => x.Enable == true).ToList();
                        
            List<UnitReportData> urgdList = _dataList.Select(x => (UnitReportData)x).ToList();
            Dictionary<int, List<UnitReportData>> urgdListDict = GetByCycle(urgdList);

            _cycleCount = urgdListDict.Count;

            if (tDataConvSet.CycleColumnArrange)
            {
                int maxrow = CoCollection.GetMaxListCount<UnitReportData>(urgdListDict);  //리스트의 크기가 가장 큰 값을 찾음.

                _rowcolData = new string[maxrow, _enColItemList.Count * urgdListDict.Count];
            }
            else
            {
                _rowcolData = new string[urgdList.Count, _enColItemList.Count];
            }

            int row = 0;
            int colbase = 0;
            int zidx = 0;
            int itype = 0;
            int auxidx = 0;
            int bd = 0;
            int bdch = 0;

            foreach (List<UnitReportData> urgdlistbyCycle in urgdListDict.Values)
            {
                foreach (UnitReportData urgd in urgdlistbyCycle)
                {
                    int col = colbase * _enColItemList.Count;

                    foreach (DataColItem dci in tDataConvSet.DataColList)
                    {
                        if (dci.Enable)
                        {
                            switch (dci.ColumnID)
                            {
                                case DataColItem.eColumnId.INDEX:
                                    _rowcolData[row, col++] = (row + 1).ToString();
                                    break;

                                case DataColItem.eColumnId.TESTTIME:
                                    _rowcolData[row, col++] = ZMF_File.GetTimeSpanString(TimeSpan.FromSeconds(urgd.mRawData.TestTime), tDataConvSet.TimeFormat);
                                    break;

                                case DataColItem.eColumnId.CYCNO:
                                    _rowcolData[row, col++] = (urgd.mRawData.nCycle + 1).ToString();
                                    break;

                                case DataColItem.eColumnId.CYCTIME:
                                    _rowcolData[row, col++] = ZMF_File.GetTimeSpanString(TimeSpan.FromSeconds(urgd.mRawData.CycleTime), tDataConvSet.TimeFormat);
                                    break;

                                case DataColItem.eColumnId.AMPS:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.Idc, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.VOLT:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.Vdc, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.POWER:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.Power, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.LOAD:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.Load, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.CAPACITY:
                                    double chgq = tDataConvSet.UnitC ? urgd.Capacity * 3600 : urgd.Capacity;
                                    _rowcolData[row, col++] = CoMath.UnitConv(chgq, dci.SIUnit).ToString();
                                    break;
                                    
                                case DataColItem.eColumnId.ENERGY:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.Energy, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.TEMP:
                                    _rowcolData[row, col++] = urgd.mRawData.Temperature.ToString();
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
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.mdata[bd].mdata[bdch].Vdc, dci.SIUnit).ToString();
                                    break;
                                    
                                case DataColItem.eColumnId.EOC:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.Veoc, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.IRNG:
                                    _rowcolData[row, col++] = urgd.Range;
                                    break;

                                case DataColItem.eColumnId.FREQ:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.fFreq, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.ZRE:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.real, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.ZIM:
                                    _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.img, dci.SIUnit).ToString();
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

                                    if (zidx == 0)
                                    {
                                        _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.mdata[bd].mdata[bdch].Zre, dci.SIUnit).ToString();
                                    }
                                    else
                                    {
                                        _rowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.mdata[bd].mdata[bdch].Zim, dci.SIUnit).ToString();
                                    }

                                    break;
                            }
                        }
                    }

                    row++;
                }

                if(tDataConvSet.CycleColumnArrange)
                {
                    row = 0;
                    colbase++;
                }
            }
                 
        }

        private Dictionary<int, List<UnitReportData>> GetByCycle(List<UnitReportData> urgdList)
        {
            Dictionary<int, List<UnitReportData>> urgdListDict = new Dictionary<int, List<UnitReportData>>();

            foreach (UnitReportData urgd in urgdList)
            {
                if (!urgdListDict.ContainsKey(urgd.mRawData.nCycle))
                {
                    urgdListDict.Add(urgd.mRawData.nCycle, new List<UnitReportData>());
                }

                urgdListDict[urgd.mRawData.nCycle].Add(urgd);
            }

            return urgdListDict;
        }

        private void CreateInforArray()
        {
            List<string> list = new List<string>();
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
            list.Add(sReportname);
            list.Add("");
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.Test_Data_File, sDatafile));
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.Schedule_File_Name, sSchfile));
            list.Add("");
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.ChInfo, string.Format("{0}/ {2}/ SIF(v{1}):{3}-{4}", sCh, sSifFwVer, sSifType, sSifSerial, sSifCh)));
            if (_DataHeaderValues._ResHead.systemInfo.mSIFCfg.GetDeviceType() == eDeviceType.MCBZA)
            {
                for (int i = 1; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                {
                    if (_DataHeaderValues._ResHead.systemInfo.ChkZIM[i] == 1)
                    {
                        list.Add(string.Format("  * {0}[{1}] : {2}", Properties.Resources.AuxBoardInfo, i, string.Format("{0}(v{1})/ {2}", _DataHeaderValues._ResHead.systemInfo.mZimCfg[i].GetZimTypeString(), _DataHeaderValues._ResHead.systemInfo.mZimCfg[i].GetFirmwareVer(), _DataHeaderValues._ResHead.systemInfo.mZimCfg[i].GetSerialNumber())));
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
            
            _inforArray = list.ToArray();
        }

        public void Run(string filename, BackgroundWorker worker, StatusString status)
        {
            using (var document = SpreadsheetDocument.Create(filename, SpreadsheetDocumentType.Workbook))
            {
                uint sheetId = 1;

                var workBookPart = document.AddWorkbookPart();

                var openXmlExportHelper = new OpenXmlWriterHelper();
                openXmlExportHelper.SaveCustomStylesheet(workBookPart);

                var workbook = workBookPart.Workbook = new Workbook();
                var sheets = workbook.AppendChild<Sheets>(new Sheets());

                #region Write Information Sheet

                var worksheetPart = workBookPart.AddNewPart<WorksheetPart>();
                var sheet = new Sheet() { Id = workBookPart.GetIdOfPart(worksheetPart), SheetId = sheetId++, Name = Properties.Resources.Information };
                sheets.Append(sheet);                

                using (var writer = OpenXmlWriter.Create(worksheetPart))
                {
                    writer.WriteStartElement(new Worksheet());
                    writer.WriteStartElement(new SheetData());

                    for (int i = 0; i < _inforArray.Length; i++)
                    {
                        writer.WriteStartElement(new Row());

                        openXmlExportHelper.WriteCellValueSax(writer, _inforArray[i], CellValues.SharedString);

                        writer.WriteEndElement();
                    }

                    writer.WriteEndElement();
                    writer.WriteEndElement();
                    writer.Close();
                }

                #endregion

                #region write Data Sheet

                int dataSheetIndex = 1;

                worksheetPart = workBookPart.AddNewPart<WorksheetPart>();
                sheet = new Sheet() { Id = workBookPart.GetIdOfPart(worksheetPart), SheetId = sheetId++, Name = string.Format("{0}_{1}", "Data", dataSheetIndex++) };
                sheets.Append(sheet);

                using (var writer = OpenXmlWriter.Create(worksheetPart))
                {
                    Worksheet ws = new Worksheet();
                    SheetData sd = new SheetData();

                    // Set Column Width
                    Columns columns = new Columns();
                    //columns.Append(new Column() { Min = 1, Max = (uint)_enColItemList.Count, Width = 13, CustomWidth = true });

                    if (tDataConvSet.CycleColumnArrange)
                    {
                        for (int cycle = 0; cycle < _cycleCount; cycle++)
                        {
                            int colbase = cycle * _enColItemList.Count;

                            for (int i = 0; i < _enColItemList.Count; i++)
                            {
                                columns.Append(new Column() { Min = (uint)(colbase + i + 1), Max = (uint)(colbase + i + 1), Width = _enColItemList[i].ColumnWidth, CustomWidth = true });
                            }
                        }
                    }
                    else
                    {
                        for (int i = 0; i < _enColItemList.Count; i++)
                        {
                            columns.Append(new Column() { Min = (uint)(i + 1), Max = (uint)(i + 1), Width = _enColItemList[i].ColumnWidth, CustomWidth = true });
                        }
                    }
                    //////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    writer.WriteStartElement(ws);
                    writer.WriteElement(columns);
                    writer.WriteStartElement(sd);

                    // Set Column Row Height
                    Row columnRow = new Row();
                    columnRow.Height = 20;
                    columnRow.CustomHeight = true;

                    // Write Column Row
                    writer.WriteStartElement(columnRow);

                    if (tDataConvSet.CycleColumnArrange)
                    {
                        for (int cycle = 0; cycle < _cycleCount; cycle++)
                        {
                            for (int i = 0; i < _enColItemList.Count; i++)
                            {
                                openXmlExportHelper.WriteCellValueSax(writer, _enColItemList[i].ToString(), CellValues.String, 7);
                            }
                        }
                    }
                    else
                    {
                        for (int i = 0; i < _enColItemList.Count; i++)
                        {
                            openXmlExportHelper.WriteCellValueSax(writer, _enColItemList[i].ToString(), CellValues.String, 7);
                        }
                    }

                    writer.WriteEndElement(); //end of Row tag  

                    // Write Data
                    int rowcnt = _rowcolData.GetLength(0);
                    int colcnt = _rowcolData.GetLength(1);
                    double dp = 0;
                    
                    for(int row = 0; row < rowcnt; row++)
                    {
                        if (worker.CancellationPending)
                        {
                            writer.WriteEndElement();
                            writer.WriteEndElement();
                            writer.Close();

                            dp = (double)row / (double)rowcnt * 100;
                            status.SetStatus((int)dp, dp, eConvStatus.USERSTOPSAVED_II);
                            
                            return;
                        }

                        writer.WriteStartElement(new Row());

                        for (int col = 0; col < colcnt; col++)
                        {
                            int colidx = col % _enColItemList.Count;

                            if (_enColItemList[colidx].DataFormat == DataColItem.eDataFormat.STRING)
                            {
                                openXmlExportHelper.WriteCellValueSax(writer, _rowcolData[row, col], CellValues.String);
                            }
                            else if (_enColItemList[colidx].DataFormat == DataColItem.eDataFormat.EXPONENTIAL)
                            {
                                openXmlExportHelper.WriteCellValueSax(writer, _rowcolData[row, col], CellValues.Number, 3);
                            }
                            else if(_enColItemList[colidx].DataFormat == DataColItem.eDataFormat.F2TYPE)
                            {
                                openXmlExportHelper.WriteCellValueSax(writer, _rowcolData[row, col], CellValues.Number, 2);
                            }
                            else
                            {
                                openXmlExportHelper.WriteCellValueSax(writer, _rowcolData[row, col], CellValues.Number);
                            }
                        }

                        writer.WriteEndElement();

                        dp = (double)row / (double)rowcnt * 100;
                        status.SetStatus((int)dp, dp, eConvStatus.CONVERTING_II);

                        Thread.Sleep(0);
                    }

                    writer.WriteEndElement();
                    writer.WriteEndElement();
                    writer.Close();
                }

                #endregion

                openXmlExportHelper.CreateShareStringPart(workBookPart);
            }
        }

        public void Run(string filename, BackgroundWorker worker)
        {
            using (var document = SpreadsheetDocument.Create(filename, SpreadsheetDocumentType.Workbook))
            {
                uint sheetId = 1;

                var workBookPart = document.AddWorkbookPart();

                var openXmlExportHelper = new OpenXmlWriterHelper();
                openXmlExportHelper.SaveCustomStylesheet(workBookPart);

                var workbook = workBookPart.Workbook = new Workbook();
                var sheets = workbook.AppendChild<Sheets>(new Sheets());

                #region Write Information Sheet

                var worksheetPart = workBookPart.AddNewPart<WorksheetPart>();
                var sheet = new Sheet() { Id = workBookPart.GetIdOfPart(worksheetPart), SheetId = sheetId++, Name = Properties.Resources.Information };
                sheets.Append(sheet);

                using (var writer = OpenXmlWriter.Create(worksheetPart))
                {
                    writer.WriteStartElement(new Worksheet());
                    writer.WriteStartElement(new SheetData());

                    for (int i = 0; i < _inforArray.Length; i++)
                    {
                        writer.WriteStartElement(new Row());

                        openXmlExportHelper.WriteCellValueSax(writer, _inforArray[i], CellValues.SharedString);

                        writer.WriteEndElement();
                    }

                    writer.WriteEndElement();
                    writer.WriteEndElement();
                    writer.Close();
                }

                #endregion

                #region write Data Sheet

                int dataSheetIndex = 1;

                worksheetPart = workBookPart.AddNewPart<WorksheetPart>();
                sheet = new Sheet() { Id = workBookPart.GetIdOfPart(worksheetPart), SheetId = sheetId++, Name = string.Format("{0}_{1}", "Data", dataSheetIndex++) };
                sheets.Append(sheet);

                using (var writer = OpenXmlWriter.Create(worksheetPart))
                {
                    Worksheet ws = new Worksheet();
                    SheetData sd = new SheetData();

                    // Set Column Width
                    Columns columns = new Columns();
                    //columns.Append(new Column() { Min = 1, Max = (uint)_enColItemList.Count, Width = 13, CustomWidth = true });

                    if (tDataConvSet.CycleColumnArrange)
                    {
                        for (int cycle = 0; cycle < _cycleCount; cycle++)
                        {
                            int colbase = cycle * _enColItemList.Count;

                            for (int i = 0; i < _enColItemList.Count; i++)
                            {
                                columns.Append(new Column() { Min = (uint)(colbase + i + 1), Max = (uint)(colbase + i + 1), Width = _enColItemList[i].ColumnWidth, CustomWidth = true });
                            }
                        }
                    }
                    else
                    {
                        for (int i = 0; i < _enColItemList.Count; i++)
                        {
                            columns.Append(new Column() { Min = (uint)(i + 1), Max = (uint)(i + 1), Width = _enColItemList[i].ColumnWidth, CustomWidth = true });
                        }
                    }
                    //////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    writer.WriteStartElement(ws);
                    writer.WriteElement(columns);
                    writer.WriteStartElement(sd);

                    // Set Column Row Height
                    Row columnRow = new Row();
                    columnRow.Height = 20;
                    columnRow.CustomHeight = true;

                    // Write Column Row
                    writer.WriteStartElement(columnRow);

                    if (tDataConvSet.CycleColumnArrange)
                    {
                        for (int cycle = 0; cycle < _cycleCount; cycle++)
                        {
                            for (int i = 0; i < _enColItemList.Count; i++)
                            {
                                openXmlExportHelper.WriteCellValueSax(writer, _enColItemList[i].ToString(), CellValues.String, 7);
                            }
                        }
                    }
                    else
                    {
                        for (int i = 0; i < _enColItemList.Count; i++)
                        {
                            openXmlExportHelper.WriteCellValueSax(writer, _enColItemList[i].ToString(), CellValues.String, 7);
                        }
                    }

                    writer.WriteEndElement(); //end of Row tag  

                    // Write Data
                    int rowcnt = _rowcolData.GetLength(0);
                    int colcnt = _rowcolData.GetLength(1);
                    double dp = 0;

                    for (int row = 0; row < rowcnt; row++)
                    {
                        if (worker.CancellationPending)
                        {
                            writer.WriteEndElement();
                            writer.WriteEndElement();
                            writer.Close();

                            dp = (double)row / (double)rowcnt * 10000;
                            //status.SetStatus((int)dp, dp, eConvStatus.USERSTOPSAVED_II);
                            worker.ReportProgress((int)dp);

                            return;
                        }

                        writer.WriteStartElement(new Row());

                        for (int col = 0; col < colcnt; col++)
                        {
                            int colidx = col % _enColItemList.Count;

                            if(_enColItemList[colidx].DataFormat != DataColItem.eDataFormat.STRING)
                            {
                                string cellValue = _rowcolData[row, col];
                                double numericValue;

                                // NaN 값을 체크하고 대체
                                if (double.TryParse(cellValue, out numericValue) && double.IsNaN(numericValue))
                                {
                                    cellValue = "0"; // 또는 적절한 대체값 사용
                                    _rowcolData[row, col] = cellValue;
                                }
                            }

                            if (_enColItemList[colidx].DataFormat == DataColItem.eDataFormat.STRING)
                            {
                                openXmlExportHelper.WriteCellValueSax(writer, _rowcolData[row, col], CellValues.String);
                            }
                            else if (_enColItemList[colidx].DataFormat == DataColItem.eDataFormat.EXPONENTIAL)
                            {
                                openXmlExportHelper.WriteCellValueSax(writer, _rowcolData[row, col], CellValues.Number, 3);
                            }
                            else if (_enColItemList[colidx].DataFormat == DataColItem.eDataFormat.F2TYPE)
                            {
                                openXmlExportHelper.WriteCellValueSax(writer, _rowcolData[row, col], CellValues.Number, 2);
                            }
                            else
                            {
                                openXmlExportHelper.WriteCellValueSax(writer, _rowcolData[row, col], CellValues.Number);
                            }
                        }

                        writer.WriteEndElement();

                        dp = (double)row / (double)rowcnt * 10000;
                        //status.SetStatus((int)dp, dp, eConvStatus.CONVERTING_II);
                        worker.ReportProgress((int)dp);

                        Thread.Sleep(0);
                    }

                    writer.WriteEndElement();
                    writer.WriteEndElement();
                    writer.Close();
                }

                #endregion

                openXmlExportHelper.CreateShareStringPart(workBookPart);
            }
        }

        public void RunMulti(string filename, BackgroundWorker worker)
        {
            using (var document = SpreadsheetDocument.Create(filename, SpreadsheetDocumentType.Workbook))
            {
                uint sheetId = 1;

                var workBookPart = document.AddWorkbookPart();

                var openXmlExportHelper = new OpenXmlWriterHelper();
                openXmlExportHelper.SaveCustomStylesheet(workBookPart);

                var workbook = workBookPart.Workbook = new Workbook();
                var sheets = workbook.AppendChild<Sheets>(new Sheets());

                for (int dcnt = 0; dcnt < _unitDataInforList.Count; dcnt++)
                {
                    string[] inforArr = _unitDataInforList[dcnt].GetInforArray();
                    _unitDataInforList[dcnt].GenerateData(tDataConvSet);

                    #region Write Information Sheet
                    var worksheetPart = workBookPart.AddNewPart<WorksheetPart>();
                    var sheet = new Sheet() { Id = workBookPart.GetIdOfPart(worksheetPart), SheetId = sheetId++, Name = Properties.Resources.Information + $"_{dcnt + 1}" };
                    sheets.Append(sheet);

                    using (var writer = OpenXmlWriter.Create(worksheetPart))
                    {
                        writer.WriteStartElement(new Worksheet());
                        writer.WriteStartElement(new SheetData());

                        for (int i = 0; i < inforArr.Length; i++)
                        {
                            writer.WriteStartElement(new Row());

                            openXmlExportHelper.WriteCellValueSax(writer, inforArr[i], CellValues.SharedString);

                            writer.WriteEndElement();
                        }

                        writer.WriteEndElement();
                        writer.WriteEndElement();
                        writer.Close();
                    }

                    #endregion

                    #region write Data Sheet

                    int dataSheetIndex = 1;

                    worksheetPart = workBookPart.AddNewPart<WorksheetPart>();
                    sheet = new Sheet() { Id = workBookPart.GetIdOfPart(worksheetPart), SheetId = sheetId++, Name = $"Data{dcnt+1}_{dataSheetIndex++}"};
                    sheets.Append(sheet);

                    using (var writer = OpenXmlWriter.Create(worksheetPart))
                    {
                        Worksheet ws = new Worksheet();
                        SheetData sd = new SheetData();

                        // Set Column Width
                        Columns columns = new Columns();
                        //columns.Append(new Column() { Min = 1, Max = (uint)_enColItemList.Count, Width = 13, CustomWidth = true });

                        if (tDataConvSet.CycleColumnArrange)
                        {
                            for (int cycle = 0; cycle < _unitDataInforList[dcnt].CycleCount; cycle++)
                            {
                                int colbase = cycle * _unitDataInforList[dcnt].EnColItemList.Count;

                                for (int i = 0; i < _unitDataInforList[dcnt].EnColItemList.Count; i++)
                                {
                                    columns.Append(new Column() { Min = (uint)(colbase + i + 1), Max = (uint)(colbase + i + 1), Width = _unitDataInforList[dcnt].EnColItemList[i].ColumnWidth, CustomWidth = true });
                                }
                            }
                        }
                        else
                        {
                            for (int i = 0; i < _unitDataInforList[dcnt].EnColItemList.Count; i++)
                            {
                                columns.Append(new Column() { Min = (uint)(i + 1), Max = (uint)(i + 1), Width = _unitDataInforList[dcnt].EnColItemList[i].ColumnWidth, CustomWidth = true });
                            }
                        }
                        //////////////////////////////////////////////////////////////////////////////////////////////////////////////

                        writer.WriteStartElement(ws);
                        writer.WriteElement(columns);
                        writer.WriteStartElement(sd);

                        // Set Column Row Height
                        Row columnRow = new Row();
                        columnRow.Height = 20;
                        columnRow.CustomHeight = true;

                        // Write Column Row
                        writer.WriteStartElement(columnRow);

                        if (tDataConvSet.CycleColumnArrange)
                        {
                            for (int cycle = 0; cycle < _unitDataInforList[dcnt].CycleCount; cycle++)
                            {
                                for (int i = 0; i < _unitDataInforList[dcnt].EnColItemList.Count; i++)
                                {
                                    openXmlExportHelper.WriteCellValueSax(writer, _unitDataInforList[dcnt].EnColItemList[i].ToString(), CellValues.String, 7);
                                }
                            }
                        }
                        else
                        {
                            for (int i = 0; i < _unitDataInforList[dcnt].EnColItemList.Count; i++)
                            {
                                openXmlExportHelper.WriteCellValueSax(writer, _unitDataInforList[dcnt].EnColItemList[i].ToString(), CellValues.String, 7);
                            }
                        }

                        writer.WriteEndElement(); //end of Row tag  

                        // Write Data
                        int rowcnt = _unitDataInforList[dcnt].RowcolData.GetLength(0);
                        int colcnt = _unitDataInforList[dcnt].RowcolData.GetLength(1);
                        double dp = 0;

                        for (int row = 0; row < rowcnt; row++)
                        {
                            if (worker.CancellationPending)
                            {
                                writer.WriteEndElement();
                                writer.WriteEndElement();
                                writer.Close();

                                dp = (double)row / (double)rowcnt * 1000;
                                //status.SetStatus((int)dp, dp, eConvStatus.USERSTOPSAVED_II);
                                worker.ReportProgress((int)dp, new object[] { Properties.Resources.Converting_ddd, _unitDataInforList.Count, dcnt });

                                return;
                            }

                            writer.WriteStartElement(new Row());

                            for (int col = 0; col < colcnt; col++)
                            {
                                int colidx = col % _unitDataInforList[dcnt].EnColItemList.Count;

                                if (_unitDataInforList[dcnt].EnColItemList[colidx].DataFormat != DataColItem.eDataFormat.STRING)
                                {
                                    string cellValue = _unitDataInforList[dcnt].RowcolData[row, col];
                                    double numericValue;

                                    // NaN 값을 체크하고 대체
                                    if (double.TryParse(cellValue, out numericValue) && double.IsNaN(numericValue))
                                    {
                                        cellValue = "0"; // 또는 적절한 대체값 사용
                                        _unitDataInforList[dcnt].RowcolData[row, col] = cellValue;
                                    }
                                }

                                if (_unitDataInforList[dcnt].EnColItemList[colidx].DataFormat == DataColItem.eDataFormat.STRING)
                                {
                                    openXmlExportHelper.WriteCellValueSax(writer, _unitDataInforList[dcnt].RowcolData[row, col], CellValues.String);
                                }
                                else if (_unitDataInforList[dcnt].EnColItemList[colidx].DataFormat == DataColItem.eDataFormat.EXPONENTIAL)
                                {
                                    openXmlExportHelper.WriteCellValueSax(writer, _unitDataInforList[dcnt].RowcolData[row, col], CellValues.Number, 3);
                                }
                                else if (_unitDataInforList[dcnt].EnColItemList[colidx].DataFormat == DataColItem.eDataFormat.F2TYPE)
                                {
                                    openXmlExportHelper.WriteCellValueSax(writer, _unitDataInforList[dcnt].RowcolData[row, col], CellValues.Number, 2);
                                }
                                else
                                {
                                    openXmlExportHelper.WriteCellValueSax(writer, _unitDataInforList[dcnt].RowcolData[row, col], CellValues.Number);
                                }
                            }

                            writer.WriteEndElement();

                            dp = (double)row / (double)rowcnt * 1000;
                            //status.SetStatus((int)dp, dp, eConvStatus.CONVERTING_II);
                            worker.ReportProgress((int)dp, new object[] { Properties.Resources.Converting_ddd, _unitDataInforList.Count, dcnt });

                            Thread.Sleep(0);
                        }


                        writer.WriteEndElement();
                        writer.WriteEndElement();
                        writer.Close();
                    }

                    #endregion
                }

                openXmlExportHelper.CreateShareStringPart(workBookPart);
            }
        }
        
    }

    public class UnitToExcelDataInfor
    {
        public stResHeader _ResHead { get; set; }
        public string _sfilename { get; set; }
        public long _datacount { get; set; }

        public List<object> DataList { get; set; }
        public List<DataColItem> EnColItemList { get; set; }
        public int CycleCount { get; set; }
        public string[,] RowcolData { get; set; }

        public UnitToExcelDataInfor(string sfilename, stResHeader ResHead, long datacount, List<object> dataList)
        {
            _ResHead = ResHead;
            _sfilename = sfilename;
            _datacount = datacount;
            DataList = dataList;
        }

        public string[] GetInforArray()
        {
            List<string> list = new List<string>();

            string sReportname = Properties.Resources.Data_Report;
            string sDatafile, sVersion, sTestduration, sLaststatus, sDatacount, sTester, sBatId, sMemo, sSchfile, sCh, sSifCh, sSifSerial, sSifFwVer, sSifType, sZimSerial, sZimType, sZimBoardType, sZimFwVer;

            sDatafile = _sfilename;
            sVersion = _ResHead.mInfo.GetVersion();
            sTestduration = _ResHead.mInfo.GetTestDuration();
            sDatacount = _datacount.ToString();
            sLaststatus = ((enStatError)_ResHead.mInfo.Error).GetDescription();
            sTester = _ResHead.mInfo.GetUser();
            sBatId = _ResHead.mInfo.GetBattId();
            sMemo = _ResHead.mInfo.GetMemo();
            sSchfile = _ResHead.GetTechFilename();
            sCh = _ResHead.mInfo.GetChannel();
            sSifCh = _ResHead.mInfo.GetSifBoardNo();

            sSifSerial = _ResHead.systemInfo.mSIFCfg.GetSerialNumber();
            sSifFwVer = _ResHead.systemInfo.mSIFCfg.GetFirmwareVer();
            sSifType = string.Format("{0}({1})", _ResHead.systemInfo.mSIFCfg.GetProductTypeString(), _ResHead.systemInfo.mSIFCfg.GetTypeString());
            sZimSerial = _ResHead.systemInfo.mZimCfg[_ResHead.mInfo.sifch].GetSerialNumber();
            sZimType = _ResHead.systemInfo.mZimCfg[_ResHead.mInfo.sifch].GetZimTypeString();
            sZimBoardType = _ResHead.systemInfo.mZimCfg[_ResHead.mInfo.sifch].GetBoardTypeString();
            sZimFwVer = _ResHead.systemInfo.mZimCfg[_ResHead.mInfo.sifch].GetFirmwareVer();
            list.Add(sReportname);
            list.Add("");
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.Test_Data_File, sDatafile));
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.Schedule_File_Name, sSchfile));
            list.Add("");
            list.Add(string.Format("  * {0} : {1}", Properties.Resources.ChInfo, string.Format("{0}/ {2}/ SIF(v{1}):{3}-{4}", sCh, sSifFwVer, sSifType, sSifSerial, sSifCh)));
            if (_ResHead.systemInfo.mSIFCfg.GetDeviceType() == eDeviceType.MCBZA)
            {
                for (int i = 1; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                {
                    if (_ResHead.systemInfo.ChkZIM[i] == 1)
                    {
                        list.Add(string.Format("  * {0}[{1}] : {2}", Properties.Resources.AuxBoardInfo, i, string.Format("{0}(v{1})/ {2}", _ResHead.systemInfo.mZimCfg[i].GetZimTypeString(), _ResHead.systemInfo.mZimCfg[i].GetFirmwareVer(), _ResHead.systemInfo.mZimCfg[i].GetSerialNumber())));
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
            
            return list.ToArray();
        }


        private Dictionary<int, List<UnitReportData>> GetByCycle(List<UnitReportData> urgdList)
        {
            Dictionary<int, List<UnitReportData>> urgdListDict = new Dictionary<int, List<UnitReportData>>();

            foreach (UnitReportData urgd in urgdList)
            {
                if (!urgdListDict.ContainsKey(urgd.mRawData.nCycle))
                {
                    urgdListDict.Add(urgd.mRawData.nCycle, new List<UnitReportData>());
                }

                urgdListDict[urgd.mRawData.nCycle].Add(urgd);
            }

            return urgdListDict;
        }
        public int GetAuxCount(stResHeader _ResHead)
        {
            int cnt = 0;
            if ((eDeviceType)_ResHead.systemInfo.mSIFCfg.Type == eDeviceType.MCBZA)
            {
                cnt = (_ResHead.systemInfo.ChkZIM[1] == 0) ? cnt : 4;
                cnt = (_ResHead.systemInfo.ChkZIM[2] == 0) ? cnt : 8;
                cnt = (_ResHead.systemInfo.ChkZIM[3] == 0) ? cnt : 12;

            }
            return cnt;
        }

        public void GenerateData(DataConvSet dataConvSet)
        {
            int MaxAuxCount = GetAuxCount(_ResHead);
            int row = 0;
            int colbase = 0;
            int zidx = 0;
            int itype = 0;
            int auxidx = 0;
            int bd = 0;
            int bdch = 0;
            EnColItemList = new List<DataColItem>();

            for (int i = 0; i < dataConvSet.DataColList.Count; i++)
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
                if (dataConvSet.DataColList[i].Enable == false) continue;

                EnColItemList.Add(dataConvSet.DataColList[i]);
            }

            //EnColItemList = dataConvSet.DataColList.Where(x => x.Enable == true).ToList();
            List<UnitReportData> urgdList = DataList.Select(x => (UnitReportData)x).ToList();
            Dictionary<int, List<UnitReportData>> urgdListDict = GetByCycle(urgdList);

            CycleCount = urgdListDict.Count;

            if (dataConvSet.CycleColumnArrange)
            {
                int maxrow = CoCollection.GetMaxListCount<UnitReportData>(urgdListDict);  //리스트의 크기가 가장 큰 값을 찾음.

                RowcolData = new string[maxrow, EnColItemList.Count * urgdListDict.Count];
            }
            else
            {
                RowcolData = new string[urgdList.Count, EnColItemList.Count];
            }

            

            foreach (List<UnitReportData> urgdlistbyCycle in urgdListDict.Values)
            {
                foreach (UnitReportData urgd in urgdlistbyCycle)
                {
                    int col = colbase * EnColItemList.Count;

                    foreach (DataColItem dci in dataConvSet.DataColList)
                    {
                        if (dci.Enable)
                        {
                            switch (dci.ColumnID)
                            {
                                case DataColItem.eColumnId.INDEX:
                                    RowcolData[row, col++] = (row + 1).ToString();
                                    break;

                                case DataColItem.eColumnId.TESTTIME:
                                    RowcolData[row, col++] = ZMF_File.GetTimeSpanString(TimeSpan.FromSeconds(urgd.mRawData.TestTime), dataConvSet.TimeFormat);
                                    break;

                                case DataColItem.eColumnId.CYCNO:
                                    RowcolData[row, col++] = (urgd.mRawData.nCycle + 1).ToString();
                                    break;

                                case DataColItem.eColumnId.CYCTIME:
                                    RowcolData[row, col++] = ZMF_File.GetTimeSpanString(TimeSpan.FromSeconds(urgd.mRawData.CycleTime), dataConvSet.TimeFormat);
                                    break;

                                case DataColItem.eColumnId.AMPS:
                                    RowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.Idc, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.VOLT:
                                    RowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.Vdc, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.POWER:
                                    RowcolData[row, col++] = CoMath.UnitConv(urgd.Power, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.LOAD:
                                    RowcolData[row, col++] = CoMath.UnitConv(urgd.Load, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.CAPACITY:
                                    double chgq = dataConvSet.UnitC ? urgd.Capacity * 3600 : urgd.Capacity;
                                    RowcolData[row, col++] = CoMath.UnitConv(chgq, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.ENERGY:
                                    RowcolData[row, col++] = CoMath.UnitConv(urgd.Energy, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.TEMP:
                                    RowcolData[row, col++] = urgd.mRawData.Temperature.ToString();
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
                                    RowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.mdata[bd].mdata[bdch].Vdc, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.EOC:
                                    RowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.Veoc, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.IRNG:
                                    RowcolData[row, col++] = urgd.Range;
                                    break;

                                case DataColItem.eColumnId.FREQ:
                                    RowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.fFreq, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.ZRE:
                                    RowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.real, dci.SIUnit).ToString();
                                    break;

                                case DataColItem.eColumnId.ZIM:
                                    RowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.img, dci.SIUnit).ToString();
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

                                    if (zidx == 0)
                                    {
                                        RowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.mdata[bd].mdata[bdch].Zre, dci.SIUnit).ToString();
                                    }
                                    else
                                    {
                                        RowcolData[row, col++] = CoMath.UnitConv(urgd.mRawData.mdata[bd].mdata[bdch].Zim, dci.SIUnit).ToString();
                                    }

                                    break;
                            }
                        }
                    }

                    row++;
                }

                if (dataConvSet.CycleColumnArrange)
                {
                    row = 0;
                    colbase++;
                }
            }
        }
       
    }
}
