using System;
using System.ComponentModel;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Drawing;
using System.Windows.Forms;
using C1.Win.C1FlexGrid;
using NationalInstruments.UI;
using System.Runtime.InteropServices;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization;
using System.Collections;
using System.Collections.Generic;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM.Dataview
{
    [Serializable]
    public class DataViewSet
    {
        public DataConvSet _dataConvSet;
        public GraphSetEx _GraphSetEx;
        public GraphSet _GraphSet;
        public DataViewSet()
        {
            _dataConvSet = new DataConvSet();
            _GraphSetEx = new GraphSetEx();
            _GraphSet = new GraphSet();
        }
    }

    public class BzaDataToExcel
    {
        public const int ExcelRowLimit = 1000000;

        SpreadsheetDocument _Document;
        private WorkbookPart _WorkbookPart;
        private SheetData _SheetData;
        private Sheets _Sheets;

        private uint _SheetID = 1;

        public string LastError;

        public BzaDataToExcel()
        {
        }

        public bool CreateExcelDocument(string filename)
        {
            try
            {
                _Document = SpreadsheetDocument.Create(filename, SpreadsheetDocumentType.Workbook);
                _WorkbookPart = _Document.AddWorkbookPart();
                _WorkbookPart.Workbook = new Workbook();
                _Sheets = _WorkbookPart.Workbook.AppendChild<Sheets>(new Sheets());
                _WorkbookPart.Workbook.Save();
            }
            catch (Exception ex)
            {
                LastError = ex.Message;
                return false;
            }

            return true;
        }

        public static Sheet GetSheetFromName(WorkbookPart workbookPart, string sheetName)
        {
            return workbookPart.Workbook.Sheets.Elements<Sheet>()
                .FirstOrDefault(s => s.Name.HasValue && s.Name.Value == sheetName);
        }

        private Dictionary<string, WorksheetPart> _SheetNameDict = new Dictionary<string, WorksheetPart>();

        public bool CreateExcelSheet(string sheetName)
        {
            if (GetSheetFromName(_WorkbookPart, sheetName) != null)
                return false;

            try
            {
                WorksheetPart worksheetPart = _WorkbookPart.AddNewPart<WorksheetPart>();
                worksheetPart.Worksheet = new Worksheet();

                Sheet sheet = new Sheet() { Id = _WorkbookPart.GetIdOfPart(worksheetPart), SheetId = _SheetID, Name = sheetName };
                _Sheets.Append(sheet);
                _SheetData = worksheetPart.Worksheet.AppendChild(new SheetData());

                _SheetID++;

                _SheetNameDict.Add(sheetName, worksheetPart);
            }
            catch (Exception ex)
            {
                LastError = ex.Message;
                return false;
            }

            return true;
        }

        public bool AppendRow(string sheetName, List<Cell> cellList)
        {
            if (_SheetNameDict.ContainsKey(sheetName))
            {
                SheetData sheetdata = (SheetData)_SheetNameDict[sheetName].Worksheet.FirstChild;

                DocumentFormat.OpenXml.Spreadsheet.Row row = new DocumentFormat.OpenXml.Spreadsheet.Row();

                foreach (Cell cell in cellList)
                {
                    row.Append(cell);
                }

                sheetdata.AppendChild(row);
            }
            else
                return false;

            return true;
        }

        public bool SaveExcelSheet(string sheetName)
        {
            try
            {
                if (_SheetNameDict.ContainsKey(sheetName))
                    _SheetNameDict[sheetName].Worksheet.Save();
            }
            catch (Exception ex)
            {
                LastError = ex.Message;
                return false;
            }

            return true;
        }

        public bool WriteInfor(string sheetName, string[] infoArr)
        {
            foreach (string info in infoArr)
            {
                DocumentFormat.OpenXml.Spreadsheet.Row row = new DocumentFormat.OpenXml.Spreadsheet.Row();
                row.Append(ConstructCell(info, CellValues.String));

                _SheetData.AppendChild(row);
            }

            return true;
        }

        public bool WriteColumn(string sheetName, string[] colArr)
        {
            List<Cell> cl = new List<Cell>();

            foreach (string col in colArr)
            {
                cl.Add(ConstructCell(col, CellValues.String));
            }

            return AppendRow(sheetName, cl);
        }

        public bool WriteData(string sheetName, string[] dataArr)
        {
            List<Cell> cl = new List<Cell>();

            foreach (string col in dataArr)
            {
                cl.Add(ConstructCell(col, CellValues.Number));
            }

            return AppendRow(sheetName, cl);
        }

        public bool WriteData(string sheetName, int dataIdx, UnitReportData urgd)
        {
            List<Cell> cl = new List<Cell>();

            cl.Add(ConstructCell(dataIdx.ToString(), CellValues.Number));
            cl.Add(ConstructCell(urgd.TestTime.TotalSeconds.ToString(), CellValues.Number));
            cl.Add(ConstructCell((urgd.mRawData.nCycle + 1).ToString(), CellValues.Number));
            cl.Add(ConstructCell(urgd.CycleTime.TotalSeconds.ToString(), CellValues.Number));
            cl.Add(ConstructCell((urgd.mRawData.nTaskNo + 1).ToString(), CellValues.Number));
            cl.Add(ConstructCell(urgd.StepTime.TotalSeconds.ToString(), CellValues.Number));
            cl.Add(ConstructCell(urgd.mRawData.Idc.ToString(), CellValues.Number));
            cl.Add(ConstructCell(urgd.mRawData.Vdc.ToString(), CellValues.Number));
            cl.Add(ConstructCell(urgd.mRawData.Temperature.ToString(), CellValues.Number));
            cl.Add(ConstructCell(urgd.mRawData.Veoc.ToString(), CellValues.Number));
            cl.Add(ConstructCell(urgd.Power.ToString(), CellValues.Number));
            cl.Add(ConstructCell(urgd.Load.ToString(), CellValues.Number));
            cl.Add(ConstructCell(urgd.Capacity.ToString(), CellValues.Number));
            cl.Add(ConstructCell(urgd.Energy.ToString(), CellValues.Number));
            cl.Add(ConstructCell(urgd.Range, CellValues.String));

            return AppendRow(sheetName, cl);
        }
        
        private string[] _Column;

        public string[] ColumnGeneral
        {
            get { return _Column; }
        }

        public void GenColLanguage(bool unitC, int langidx)
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

        private Cell ConstructCell(string value, CellValues dataType)
        {
            return new Cell()
            {
                CellValue = new CellValue(value),
                DataType = new EnumValue<CellValues>(dataType)
            };
        }
    }
    public class CoFile
    {
        static public string GetFileNameAuto(string root, string schname, int channel, string name, string extension)
        {
            string result = "";

            string date = DateTime.Now.ToString("yyyyMMdd");
            if (name == string.Empty)
                name = DateTime.Now.ToString("HHmmss");

            string tschname = schname.Replace(".", "_");

            result = string.Format(@"{0}\{1}\{2}\{3}_{4:D3}.{5}", root, tschname, date, name, channel + 1, extension);

            return result;
        }

        static public string GetFileName(string root, int channel, string name, string extension)
        {
            string result = "";

            if (name == string.Empty)
                name = DateTime.Now.ToString("HHmmss");

            result = string.Format(@"{0}\{1}_{2:D3}.{3}", root, name, channel + 1, extension);

            return result;
        }

        static public string GetAvailableFileName(string basename, string extension)
        {
            string name = string.Empty;
            int count = 1;

            if (extension.Contains("."))
                extension = extension.Replace(".", "");

            while (count < 10000)
            {
                name = string.Format("{0}{1}.{2}", basename, count, extension);

                if (File.Exists(name) == false)
                    break;

                count++;
            }

            return name;
        }

        static public string GetMergedFileName(List<string> fileList, string extention = "")
        {
            string result = string.Empty;

            IEnumerator ie = fileList.GetEnumerator();

            while (ie.MoveNext())
            {
                string filename = (string)ie.Current;

                result += string.Format("{0}+", Path.GetFileNameWithoutExtension(filename));
            }

            result = result.Remove(result.Length - 1);

            return result;
        }

        static public string ChangeExtention(string filename, string extention = "")
        {
            string result = string.Empty;

            result = Path.Combine(Path.GetDirectoryName(filename), Path.GetFileNameWithoutExtension(filename) + extention);

            return result;
        }

        static public string SubjoinNumFileName(string filename, string subjoin)
        {
            string result = string.Empty;

            for (int i = 0; i < 1000; i++)
            {
                result = Path.Combine(Path.GetDirectoryName(filename), Path.GetFileNameWithoutExtension(filename) + string.Format("{0}{1}", subjoin, i + 1) + Path.GetExtension(filename));

                if (!File.Exists(result))
                    break;
            }

            return result;
        }

        static public string SubjoinFileName(string filename, string subjoin)
        {
            string result = string.Empty;

            result = Path.Combine(Path.GetDirectoryName(filename), Path.GetFileNameWithoutExtension(filename) + subjoin + Path.GetExtension(filename));

            return result;
        }
    }
    public class DataViewEventArgs : EventArgs
    {
        public string SchFileName { get; set; }
        public string DataFileName { get; set; }

        public DataViewEventArgs(string schfilename, string datafilename)
        {
            DataFileName = datafilename;
            SchFileName = schfilename;
        }
        
    }

    public class Define
    {
        public const int NO_ERROR = 0;

        public const int ERR_EXCEPTION = -1;

        public const int ERR_PATHCOMBINE = 1000;
        public const int ERR_CREATEFOLDER = 1001;

        public const int ERR_TXTFILEWRITER_CREATE = 2000;
        public const int ERR_TXTFILEWRITER_WRHEADER = 2001;
        public const int ERR_TXTFILEWRITER_WRCOLUMN = 2002;
        public const int ERR_TXTFILEWRITER_WRDATA = 2003;

        public const int ERR_DATAFILEREADER_ENDOFSTREAM = 2050;
        public const int ERR_DATAFILEREADER_READ = 2051;

        public const int NOTICE_BGWORKER_USERSTOP = 10000;

        public static int GridRowHeight = 25;

        public const int ExcelRowLimit = 1000000;

        public static string[] Delimiter = new string[] { ".txt", ".csv", ".txt" };
    }

    public class CoTimespanUtil
    {
        static public TimeSpan CoSecondsToTimespan(double seconds)
        {
            return TimeSpan.FromSeconds(seconds);
        }
        static public double CoTimespanToSeconds(TimeSpan time)
        {
            return time.TotalSeconds;
        }
    }
    

    public class CoStringSymbol
    {
        static public string GetSpecialSymbol(string unit)
        {
            string result = string.Empty;

            switch (unit)
            {
                // Amp.
                case "kA":
                    result = "㎄";
                    break;
                case "A":
                    result = unit;
                    break;
                case "mA":
                    result = "㎃";
                    break;
                case "uA":
                    result = "㎂";
                    break;
                case "nA":
                    result = "㎁";
                    break;
                case "pA":
                    result = "㎀";
                    break;
                // Volt.
                case "kV":
                    result = "㎸";
                    break;
                case "V":
                    result = unit;
                    break;
                case "mV":
                    result = "㎷";
                    break;
                case "uV":
                    result = "㎶";
                    break;
                case "nV":
                    result = "㎵";
                    break;
                case "pV":
                    result = "㎴";
                    break;
                // Others
                case "'C":
                    result = "℃";
                    break;
                case "ohm":
                    result = "Ω";
                    break;
                case ">=":
                    result = "≥";
                    break;
                case "<=":
                    result = "≤";
                    break;
                case "cm^2":
                    result = "㎠";
                    break;
                case "Ah":
                    result = "Ah";
                    break;
                case "'F":
                    result = "℉";
                    break;
            }

            return result;
        }
    }

    public class CoSerialize
    {
        static public byte[] StructureToByteArray(object structure)
        {
            int size = Marshal.SizeOf(structure);
            byte[] buffer = new byte[size];
            IntPtr pBuffer = Marshal.AllocHGlobal(size);
            Marshal.StructureToPtr(structure, pBuffer, false);
            Marshal.Copy(pBuffer, buffer, 0, size);
            Marshal.FreeHGlobal(pBuffer);
            return buffer;
        }

        static public object ByteArrayToStructure(byte[] bydata, Type type)
        {
            object structure;
            int size = Marshal.SizeOf(type);
            IntPtr pBuffer = Marshal.AllocHGlobal(size);
            Marshal.Copy(bydata, 0, pBuffer, size);
            structure = Marshal.PtrToStructure(pBuffer, type);
            Marshal.FreeHGlobal(pBuffer);
            return structure;
        }

        static public T ByteArrToStruct<T>(byte[] data)
        {
            T structure;
            int size = Marshal.SizeOf(typeof(T));
            IntPtr pBuffer = Marshal.AllocHGlobal(size);
            Marshal.Copy(data, 0, pBuffer, size);
            structure = (T)Marshal.PtrToStructure(pBuffer, typeof(T));
            Marshal.FreeHGlobal(pBuffer);
            return structure;
        }

        static public T SerializeFromFile<T>(string filename)
        {
            T result = default(T);
            FileStream fs = null;

            try
            {
                fs = File.Open(filename, FileMode.Open, FileAccess.Read, FileShare.None);
                BinaryFormatter bf = new BinaryFormatter();
                result = (T)bf.Deserialize(fs);
            }
            catch (Exception)
            {
                return default(T);
            }
            finally
            {
                if (fs != null)
                    fs.Close();
            }

            return result;
        }

        static public bool SerializeToFile(string filename, object graph)
        {
            FileStream fs = null;

            try
            {
                fs = File.Open(filename, FileMode.Create, FileAccess.Write, FileShare.None);
                BinaryFormatter bf = new BinaryFormatter();
                bf.Serialize(fs, graph);
                fs.Flush(true);
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                if (fs != null)
                    fs.Close();
            }

            return true;
        }

        static public bool StructToFile(string filename, object structure, byte id = 0xA8)
        {
            FileStream fs = null;

            try
            {
                byte[] data = CoSerialize.StructureToByteArray(structure);
                fs = File.Open(filename, FileMode.Create, FileAccess.Write, FileShare.None);
                BinaryWriter bw = new BinaryWriter(fs);
                bw.Write(id);
                bw.Write(data, 0, data.Length);
                bw.Write(id);
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                if (fs != null)
                    fs.Close();
            }

            return true;
        }

        static public bool FileToStruct<T>(string filename, ref T t, byte id = 0xA8)
        {
            FileStream fs = null;

            try
            {
                int size = Marshal.SizeOf(typeof(T));

                fs = File.Open(filename, FileMode.Open, FileAccess.Read, FileShare.None);
                BinaryReader br = new BinaryReader(fs);
                byte start = br.ReadByte();
                if (start != id)
                    return false;
                byte[] data = new byte[size];
                if (br.Read(data, 0, size) != size)
                    return false;
                byte end = br.ReadByte();
                if (end != id)
                    return false;

                t = CoSerialize.ByteArrToStruct<T>(data);
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                if (fs != null)
                    fs.Close();
            }

            return true;
        }

        public static T Clone<T>(T source)
        {
            if (!typeof(T).IsSerializable)
            {
                throw new ArgumentException("The type must be serializable.", "source");
            }

            // Don't serialize a null object, simply return the default for that object
            if (Object.ReferenceEquals(source, null))
            {
                return default(T);
            }

            IFormatter formatter = new BinaryFormatter();
            Stream stream = new MemoryStream();
            using (stream)
            {
                formatter.Serialize(stream, source);
                stream.Seek(0, SeekOrigin.Begin);
                return (T)formatter.Deserialize(stream);
            }
        }

        public static byte[] StringToByteArrayFastest(string hex)
        {
            if (hex.Length % 2 == 1)
                throw new Exception("The binary key cannot have an odd number of digits");

            byte[] arr = new byte[hex.Length >> 1];

            for (int i = 0; i < hex.Length >> 1; ++i)
            {
                arr[i] = (byte)((GetHexVal(hex[i << 1]) << 4) + (GetHexVal(hex[(i << 1) + 1])));
            }

            return arr;
        }

        public static int GetHexVal(char hex)
        {
            int val = (int)hex;
            //For uppercase A-F letters:
            return val - (val < 58 ? 48 : 55);
            //For lowercase a-f letters:
            //return val - (val < 58 ? 48 : 87);
            //Or the two combined, but a bit slower:
            //return val - (val < 58 ? 48 : (val < 97 ? 55 : 87));
        }

        public static byte[] ToByteArray(object source)
        {
            var formatter = new BinaryFormatter();
            using (var stream = new MemoryStream())
            {
                formatter.Serialize(stream, source);
                return stream.ToArray();
            }
        }

        public static T ToObject<T>(byte[] source)
        {
            var formatter = new BinaryFormatter();
            using (var stream = new MemoryStream())
            {
                stream.Write(source, 0, source.Length);
                stream.Seek(0, SeekOrigin.Begin);
                T result = (T)formatter.Deserialize(stream);
                stream.Close();

                return result;
            }
        }

        public static T ToObject<T>(byte[] source, SerializationBinder sb)
        {
            var formatter = new BinaryFormatter();
            formatter.Binder = sb;
            using (var stream = new MemoryStream())
            {
                stream.Write(source, 0, source.Length);
                stream.Seek(0, SeekOrigin.Begin);
                T result = (T)formatter.Deserialize(stream);
                stream.Close();

                return result;
            }
        }

        public static T[] ToObjectArray<T>(byte[] source, int count)
        {
            T[] result = new T[count];

            try
            {
                var formatter = new BinaryFormatter();

                using (var stream = new MemoryStream(source))
                {
                    for (int i = 0; i < count; i++)
                    {
                        result[i] = (T)formatter.Deserialize(stream);
                    }

                    stream.Close();
                }
            }
            catch (Exception)
            {
                return null;
            }

            return result;
        }
        
        public static int GetSize(object serialclass)
        {
            int result = 0;

            BinaryFormatter bf = new BinaryFormatter();
            using (MemoryStream ms = new MemoryStream())
            {
                bf.Serialize(ms, serialclass);
                result = (int)ms.Length;
            }

            return result;
        }

    }
    public class DataviewCommon
    {
        public static DataViewSet LoadFromSetFile(string filename = "C:\\ZIVE DATA\\ZM\\Infor\\DataView.Set")
        {
            DataViewSet setinfo = null;

            try
            {
                if (File.Exists(filename) == false)
                {
                    setinfo = new DataViewSet();
                    SaveToSetFile(setinfo, filename);
                    return setinfo;
                }
                FileStream fs = File.Open(filename, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                BinaryFormatter bf = new BinaryFormatter();
                setinfo = (DataViewSet)bf.Deserialize(fs);

                fs.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }

            return setinfo;
        }
        public static void SaveToSetFile(DataViewSet setinfo, string filename = "C:\\ZIVE DATA\\ZM\\Infor\\DataView.Set")
        {
            
            try
            {
                FileStream fs;
                string sPath = Path.GetDirectoryName(filename);
                if (Directory.Exists(sPath) == false)
                {
                    Directory.CreateDirectory(sPath);
                }
                if (File.Exists(filename))
                {
                    fs = File.Open(filename, FileMode.Open, FileAccess.ReadWrite, FileShare.ReadWrite);
                }
                else
                {
                    fs = File.Open(filename, FileMode.Create, FileAccess.Write, FileShare.ReadWrite);
                }
                
                BinaryFormatter bf = new BinaryFormatter();
                bf.Serialize(fs, setinfo);

                fs.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        static public bool SaveDataExSetting(string filename, GraphSetEx dataset)
        {
            try
            {
                CoSerialize.SerializeToFile(filename, dataset);
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }


        static public bool SaveDataConvSetting(string filename, DataConvSet convset)
        {
            try
            {
                CoSerialize.SerializeToFile(filename, convset);
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }
        
        static public CultureInfo SetLanguage(Form form, int langIdx, Type type, ContextMenuStrip[] ctmsArr = null)
        {
            if (langIdx < 0)
                return null;

            CultureInfo info = null;

            switch (langIdx)
            {
                case 0:
                    info = new CultureInfo("en-US");
                    break;
                case 1:
                    info = new CultureInfo("ko-KR");
                    break;
                default:
                    info = new CultureInfo("en-US");
                    break;
            }

            if (info != null)
            {
                ComponentResourceManager resources = new ComponentResourceManager(type);

                resources.ApplyResources(form, "$this", info);

                ApplyControls(form.Controls, resources, info);

                if (ctmsArr != null)
                {
                    foreach (ContextMenuStrip ctms in ctmsArr)
                    {
                        ApplyContextMenu(ctms, resources, info);
                    }
                }
            }

            return info;
        }
        static public void ApplyControls(System.Windows.Forms.Control.ControlCollection controls, ComponentResourceManager resources, CultureInfo info)
        {
            foreach (System.Windows.Forms.Control control in controls)
            {
                //MenuStrip의 경우 처리
                if (control is MenuStrip || control is ContextMenuStrip)
                {
                    MenuStrip menuStrip = (MenuStrip)control;

                    foreach (ToolStripItem item in menuStrip.Items)
                    {
                        if (item is ToolStripMenuItem)
                        {
                            ToolStripMenuItem tsmi = (ToolStripMenuItem)item;

                            resources.ApplyResources(tsmi, tsmi.Name, info);

                            foreach (ToolStripItem sub in tsmi.DropDownItems)
                            {
                                if (sub is ToolStripMenuItem)
                                {
                                    resources.ApplyResources(sub, sub.Name, info);

                                    foreach (ToolStripItem subsub in ((ToolStripMenuItem)sub).DropDownItems)
                                    {
                                        if (subsub is ToolStripMenuItem)
                                        {
                                            resources.ApplyResources(subsub, subsub.Name, info);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                else
                {
                    resources.ApplyResources(control, control.Name, info);
                    ApplyControls(control.Controls, resources, info);
                }
            }
        }
        static public void ApplyContextMenu(ContextMenuStrip ctms, ComponentResourceManager resources, CultureInfo info)
        {
            resources.ApplyResources(ctms, ctms.Name, info);

            foreach (ToolStripItem item in ctms.Items)
            {
                resources.ApplyResources(item, item.Name, info);

                if (item is ToolStripMenuItem)
                {
                    ToolStripMenuItem tsmi = (ToolStripMenuItem)item;
                    foreach (ToolStripMenuItem sub in tsmi.DropDownItems)
                        resources.ApplyResources(sub, sub.Name, info);
                }
            }
        }

        static public Range GetGraphXaisRange(double[] data, double asmx, double asm, double asmxl, double asml, bool xaxis = false, bool log = false)
        {
            Range range = null;

            try
            {
                double max, min;
                double offset;

                double margin = xaxis ? asmx : asm;
                double llimit = xaxis ? asmxl : asml;

                if (data.Length > 0)
                {
                    max = CoMath.Max(data, double.NaN);
                    min = CoMath.Min(data, double.NaN);

                    if (max != double.NaN && min != double.NaN)
                    {
                        if (max > min)
                        {
                            offset = margin * (max - min);

                            double lmt1 = Math.Abs((max + min) / 2) * llimit;

                            if (offset < lmt1)
                            {
                                offset = lmt1;
                            }
                        }
                        else
                        {
                            offset = llimit * max;
                        }

                        min = min - offset;
                        max = max + offset;

                        if (min == max)
                        {
                            min -= margin;
                            max += margin;
                        }

                        if (log)
                            range = new Range(Math.Log10(min), Math.Log10(max));
                        else
                            range = new Range(min, max);
                    }
                }
            }
            catch (Exception)
            {
                return null;
            }

            return range;
        }
       
        public static void ReportProgress(BackgroundWorker worker, long size, long pos, ref int oldval, eConvStatus status, bool force = false)
        {
            int percent = (int)((double)pos / (double)size * 1000);

            if (force)
            {
                oldval = percent;

                worker.ReportProgress(percent, new object[] { (double)percent / 10, status });
            }
            else
            {
                if (oldval != percent)
                {
                    oldval = percent;

                    worker.ReportProgress(percent, new object[] { (double)percent / 10, status });
                }
            }
        }
        public static int CreateFolder(string path, out string errmsg)
        {
            try
            {
                errmsg = string.Empty;

                if (Directory.Exists(path) == false)
                    Directory.CreateDirectory(path);
            }
            catch (Exception ex)
            {
                errmsg = ex.Message;
                return Define.ERR_CREATEFOLDER;
            }

            return 0;
        }
        public static int PathCombine(string path1, string path2, out string opath, out string errmsg)
        {
            try
            {
                errmsg = string.Empty;

                opath = Path.Combine(path1, path2);
            }
            catch (Exception ex)
            {
                opath = string.Empty;
                errmsg = ex.Message;
                return Define.ERR_PATHCOMBINE;
            }

            return 0;
        }
        public static int IsInvalidFileNameChars(string[] filenames)
        {
            int count = 0;

            char[] invalid = Path.GetInvalidFileNameChars();

            foreach (string filename in filenames)
            {
                foreach (char c in invalid)
                {
                    if (filename.Contains(c))
                    {
                        count++;
                        break;
                    }
                }
            }

            return count;
        }
        static public string[] CreateInforArray(DataHeaderValues dhv)
        {
            List<string> list = new List<string>();

            string sReportname, sDatafile, sVersion, sTestduration, sLaststatus, sDatacount, sTester, sBatId, sMemo, sSchfile, sCh, sSifCh, sSifSerial, sSifFwVer, sSifType, sZimSerial, sZimType, sZimBoardType, sZimFwVer;

            sReportname = string.Empty;
            sReportname = Properties.Resources.Data_Report;

            sDatafile = dhv._FileName;
            sVersion = dhv._ResHead.mInfo.GetVersion();
            sTestduration = dhv._ResHead.mInfo.GetTestDuration();
            sDatacount = dhv._datacount.ToString();
            sLaststatus = ((enStatError)dhv._ResHead.mInfo.Error).GetDescription();
            sTester = dhv._ResHead.mInfo.GetUser();
            sBatId = dhv._ResHead.mInfo.GetBattId();
            sMemo = dhv._ResHead.mInfo.GetMemo();
            sSchfile = dhv._ResHead.GetTechFilename();
            sCh = dhv._ResHead.mInfo.GetChannel();
            sSifCh = dhv._ResHead.mInfo.GetSifBoardNo();

            sSifSerial = dhv._ResHead.systemInfo.mSIFCfg.GetSerialNumber();
            sSifFwVer = dhv._ResHead.systemInfo.mSIFCfg.GetFirmwareVer();
            sSifType = string.Format("{0}({1})", dhv._ResHead.systemInfo.mSIFCfg.GetProductTypeString(), dhv._ResHead.systemInfo.mSIFCfg.GetTypeString());
            sZimSerial = dhv._ResHead.systemInfo.mZimCfg[dhv._ResHead.mInfo.sifch].GetSerialNumber();
            sZimType = dhv._ResHead.systemInfo.mZimCfg[dhv._ResHead.mInfo.sifch].GetZimTypeString();
            sZimBoardType = dhv._ResHead.systemInfo.mZimCfg[dhv._ResHead.mInfo.sifch].GetBoardTypeString();
            sZimFwVer = dhv._ResHead.systemInfo.mZimCfg[dhv._ResHead.mInfo.sifch].GetFirmwareVer();

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
            if (dhv._ResHead.systemInfo.mSIFCfg.GetDeviceType() == eDeviceType.MCBZA)
            {
                for (int i = 1; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                {
                    if (dhv._ResHead.systemInfo.ChkZIM[i] == 1)
                    {
                        list.Add(string.Format("  * {0}[{1}] : {2}", Properties.Resources.AuxBoardInfo, i, string.Format("{0}(v{1})/ {2}/ SIF(v{1}):{3}-{4}", dhv._ResHead.systemInfo.mZimCfg[i].GetZimTypeString(), dhv._ResHead.systemInfo.mZimCfg[i].GetFirmwareVer(), dhv._ResHead.systemInfo.mZimCfg[i].GetSerialNumber())));
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
    }

    public class PlotNodeValue
    {
        public string Text { get; set; }
        public int Number { get; set; }
        public System.Drawing.Color BackColor { get; set; }
        public System.Drawing.Color ForeColor { get; set; }

        public PlotNodeValue(string text, System.Drawing.Color back, System.Drawing.Color fore)
        {
            Text = text;
            Number = -1;
            BackColor = back;
            ForeColor = fore;
        }

        public PlotNodeValue(string text, int number, System.Drawing.Color back, System.Drawing.Color fore)
        {
            Text = text;
            Number = number;
            BackColor = back;
            ForeColor = fore;
        }
    }

    public class FileNodeInfor
    {
        public string FileName;
        public string Version;
        public DataHeaderValues DataHeaderValue;
        public MakeGraphData MakeGraphData;

        public FileNodeInfor(DataHeaderValues dhv, MakeGraphData mgd)
        {
            FileName = dhv._FileName;
            Version = dhv._version;
            DataHeaderValue = dhv;
            MakeGraphData = mgd;
        }
    }

    public class LoadGraphFactor
    {
        public string File { get; set; }
        public Node FileNode { get; set; }
        public string XAxisName { get; set; }
        public string[] YAxesName { get; set; }
        public bool Reload { get; set; }

        public LoadGraphFactor(string file, Node filenode, string xaxisname, string[] yaxesname, bool reload = false)
        {
            File = file;
            FileNode = filenode;
            XAxisName = xaxisname;
            YAxesName = yaxesname;
            Reload = reload;
        }
    }
}
