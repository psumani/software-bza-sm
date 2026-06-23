using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM.Dataview
{
    class ZMF_File
    {
        public string sfilename;
        public string sVersion;
        public FileStream fs;
        public stResHeader tmphead;
        public DataHeaderValues dhv;
        public int len_head;
        public int len_data;
        public int datacount;
        public bool bopen;
        public bool bUnitC = false;

        double _PrevCurr = 0.0;
        double _PrevPow = 0.0;
        double _prevCapa = 0.0;
        double _prevEner = 0.0;

        double[] _PrevAuxPow;
        double[] _prevAuxEner;
        int _PrevCycNo = -1;
        TimeSpan _PrevCycTime = new TimeSpan(0);

        private List<stDefTestData> _rdList = new List<stDefTestData>();
        public List<UnitReportData> gdList = new List<UnitReportData>();
        
        static public string GetTimeSpanString(TimeSpan ts, int timeFormat)
        {
            string result = string.Empty;

            switch (timeFormat)
            {
                case 0:
                    result = string.Format(CultureInfo.InvariantCulture, "{0}:{1:D2}:{2:D2}:{3:D2}.{4:D3}", ts.Days, ts.Hours, ts.Minutes, ts.Seconds, ts.Milliseconds);
                    break;
                case 1:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:F5}", ts.TotalSeconds);
                    break;
                case 2:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:E3}", ts.TotalSeconds);
                    break;
                default:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:F5}", ts.TotalSeconds);
                    break;
            }

            return result;
        }


        public ZMF_File()
        {
            Initialize();
        }

        public void Analysis()
        {
            gdList.Clear();
            Analysis(out gdList);
        }

        public void Clear_rdList()
        {
            _rdList.Clear();
        }

        private void Analysis(out List<UnitReportData> tlist)
        {
            tlist = new List<UnitReportData>();

            foreach (stDefTestData urdb in _rdList)
            {
                UnitReportData urgd;
                AnalysisUnit(urdb, out urgd);
                tlist.Add(urgd);
            }
        }

        private void AnalysisUnit(stDefTestData rawdata, out UnitReportData urd)
        {
            int i;
            int bd, bdch;
            if (_PrevCycNo != rawdata.nCycle)
            {
                _prevCapa = 0.0;
                _prevEner = 0.0;
                _PrevCurr = rawdata.Idc;
                _PrevCycTime = new TimeSpan(0);
                _PrevCycNo = rawdata.nCycle;

                for (i= 0; i< MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    _PrevAuxPow[i] = 0.0;
                    _prevAuxEner[i] = 0.0;
                }
            }
            urd = new UnitReportData(rawdata);
            urd.Power = rawdata.Vdc * rawdata.Idc;
            urd.Load = (rawdata.Idc == 0) ? 0 : rawdata.Vdc / rawdata.Idc;
            double ener = (_PrevPow + urd.Power) / 2 * (TimeSpan.FromTicks((long)(rawdata.CycleTime * 10000000)) - _PrevCycTime).TotalHours;
            double capa = (_PrevCurr + rawdata.Idc) / 2 * (TimeSpan.FromTicks((long)(rawdata.CycleTime * 10000000))  - _PrevCycTime).TotalHours;

            double[] AuxEner = new double[MBZA_Constant.MAX_AUX_CHANNELS];

            _prevCapa = _prevCapa + Math.Abs(capa);
            _prevEner = _prevEner + Math.Abs(ener);
            for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
            {
                bd = i / 4;
                bdch = i % 4;
                urd.AuxVdc[i] = rawdata.mdata[bd].mdata[bdch].Vdc;
                urd.AuxVeoc[i] = rawdata.mdata[bd].mdata[bdch].Veoc;
                urd.AuxPower[i] = rawdata.mdata[bd].mdata[bdch].Vdc * rawdata.Idc;
                urd.AuxLoad[i] = (rawdata.Idc == 0) ? 0 : rawdata.mdata[bd].mdata[bdch].Vdc / rawdata.Idc;
                AuxEner[i] = (_PrevAuxPow[i] + urd.AuxPower[i]) / 2 * (TimeSpan.FromTicks((long)(rawdata.CycleTime * 10000000)) - _PrevCycTime).TotalHours;
                _prevAuxEner[i] = _prevAuxEner[i] + AuxEner[i];
                urd.AuxEnergy[i] = _prevAuxEner[i];
            }
            _PrevCurr = rawdata.Idc;
            _PrevPow = urd.Power;
            _PrevCycTime = TimeSpan.FromTicks((long)(rawdata.CycleTime * 10000000));

            
            urd.Capacity = _prevCapa + Math.Abs(capa);
            urd.Energy = _prevEner + Math.Abs(ener);
            if (bUnitC)
                urd.ConvertUnitC();

            urd.RefreshZ();

        }


        public void Initialize()
        {
            fs = null;
            sfilename = "";
            len_head = Marshal.SizeOf(typeof(stResHeader));
            dhv = new DataHeaderValues();
            len_data = Marshal.SizeOf(typeof(stDefTestData));
            tmphead = new stResHeader(0);
            bopen = false;
            datacount = 0;
            
            _PrevCurr = 0.0;
            _PrevPow = 0.0;
            _prevCapa = 0.0;
            _prevEner = 0.0;
            _PrevCycNo = -1;
            _PrevCycTime = new TimeSpan(0);
            _PrevAuxPow = new double[MBZA_Constant.MAX_AUX_CHANNELS];
            _prevAuxEner = new double[MBZA_Constant.MAX_AUX_CHANNELS];

            for(int i=0; i< MBZA_Constant.MAX_AUX_CHANNELS; i++)
            {
                _PrevAuxPow[i] = 0.0;
                _prevAuxEner[i] = 0.0;
            }
        }

        public void CloseFile()
        {
            if (fs != null)
            {
                fs.Close();
                fs = null;
            }
            bopen = false;
        }

        public long FileLength
        {
            get { return (bopen == false) ? 0 : fs.Length; }
        }

        public long FilePosition
        {
            get { return ((bopen == false) ? 0 : fs.Position); }
            set { fs.Position = value; }
        }

        public int Percent
        {
            get { return (bopen == false || fs.Length == 0) ? 0 : (int)((double)FilePosition / (double)FileLength * 100); }
        }

        public double PercentDouble
        {
            get { return (bopen == false || fs.Length == 0) ? 0 : ((double)FilePosition / (double)FileLength * 100); }
        }

        public void SetFilename(string filename)
        {
            sfilename = filename;
        }

        public void SetHead(stResHeader head)
        {
            tmphead = head;
        }

        public bool WriteHead()
        {
            return WriteHead(tmphead);
        }

        public bool ChangeMemo(string memo)
        {
            if (fs == null) return false;
            byte[] tbytes = Encoding.UTF8.GetBytes(memo);
            int cnt = tbytes.Count();
            if (cnt > DeviceConstants.MEMOSIZE) cnt = DeviceConstants.MEMOSIZE;
            Array.Clear(tmphead.mInfo.memo, 0, DeviceConstants.MEMOSIZE);
            Array.Copy(tbytes, tmphead.mInfo.memo, cnt);

            return WriteHead(tmphead);
        }

        public bool AppendMemo(string memo)
        {
            if (fs == null) return false;
            byte[] tbytes = Encoding.UTF8.GetBytes(memo);
            int cnt1 = tmphead.mInfo.memo.Count();
            int cnt2 = tbytes.Count();
            int cnt3 = DeviceConstants.MEMOSIZE - cnt1;

            tmphead.mInfo.memo[cnt1] = (byte)'/';
            cnt1++;
            tmphead.mInfo.memo[cnt1] = (byte)'/';
            cnt1++;

            if (cnt2 > cnt3)
            {
                cnt2 = cnt3;
            }
            Array.Copy(tbytes, 0, tmphead.mInfo.memo, cnt1, cnt2);
            return WriteHead(tmphead);
        }

        public DateTime GetStartDateTime()
        {
            if (bopen == false)
            {
                return DateTime.MaxValue;
            }
            DateTime StartDateTime = new DateTime(tmphead.mInfo.rtc_begin.tick * TimeSpan.TicksPerMillisecond);
            return StartDateTime;
        }

        public DateTime GetEndDateTiem()
        {
            if(bopen == false)
            {
                return DateTime.MaxValue;
            }
            DateTime EndDateTime = new DateTime(tmphead.mInfo.rtc_end.tick * TimeSpan.TicksPerMillisecond);
            return EndDateTime;
        }

        public string GetTestDuration()
        {
            if(tmphead.mInfo.rtc_begin.tick == tmphead.mInfo.rtc_end.tick)
            {
                return string.Format("{0} ~ ", GetStartDateTime().ToString("yyyy/MM/dd HH:mm:ss"));
            }
            return string.Format("{0} ~ {1}", GetStartDateTime().ToString("yyyy/MM/dd HH:mm:ss"), GetEndDateTiem().ToString("yyyy/MM/dd HH:mm:ss"));
        }


        public bool ReadHead()
        {
            return ReadHead(ref tmphead);
        }

        public bool ReadHead(ref stResHeader head)
        {
            if (bopen == false) return false;

            int nHeadsize = len_head;

            if (sVersion == "1.0.0.0")
            {
                nHeadsize = Marshal.SizeOf(typeof(stResHeader1000));
            }
            else if (sVersion == "1.1.0.0")
            {
                nHeadsize = Marshal.SizeOf(typeof(stResHeader1100));
            }

            byte[] buf = new byte[nHeadsize];
            fs.Seek(0, SeekOrigin.Begin);
            if (fs.Read(buf, 0, nHeadsize) != nHeadsize)
            {
                return false;
            }

            if (sVersion == "1.0.0.0")
            {
                stResHeader1000 hd1000 = new stResHeader1000(0);
                hd1000.ToWritePtr(buf);
                head.mInfo = hd1000.mInfo;
                head.systemInfo.mSIFCfg = hd1000.inf_sif;
                head.systemInfo.mZimCfg[0].info = hd1000.inf_sifch.info;
                head.systemInfo.mZimCfg[0].ranges.Gen.ID = hd1000.inf_sifch.ranges.ID;
                head.systemInfo.mZimCfg[0].ranges.Gen.iac_rng = hd1000.inf_sifch.ranges.iac_rng;
                head.systemInfo.mZimCfg[0].ranges.Gen.Idc_rnginf.Initialize();
                head.systemInfo.mZimCfg[0].ranges.Gen.mDummy = hd1000.inf_sifch.ranges.mDummy;
                head.systemInfo.mZimCfg[0].ranges.Gen.mEisIRngCalInfo = hd1000.inf_sifch.ranges.mEisIRngCalInfo;
                head.systemInfo.mZimCfg[0].ranges.Gen.mSafety = hd1000.inf_sifch.ranges.mSafety;
                head.systemInfo.mZimCfg[0].ranges.Gen.rtd_rng = hd1000.inf_sifch.ranges.rtd_rng;
                head.systemInfo.mZimCfg[0].ranges.Gen.vac_rng = hd1000.inf_sifch.ranges.vac_rng;
                head.systemInfo.mZimCfg[0].ranges.Gen.vdc_rng = hd1000.inf_sifch.ranges.vdc_rng;
                head.systemInfo.mZimCfg[1].ranges.Gen.Initialize(eZimType.UNKNOWN);
                head.systemInfo.mZimCfg[2].ranges.Gen.Initialize(eZimType.UNKNOWN);
                head.systemInfo.mZimCfg[3].ranges.Gen.Initialize(eZimType.UNKNOWN);
                head.tech = hd1000.tech;
            }
            else if (sVersion == "1.1.0.0")
            {
                stResHeader1100 hd1100 = new stResHeader1100(0);
                hd1100.ToWritePtr(buf);

                head.mInfo = hd1100.mInfo;
                head.systemInfo.mSIFCfg = hd1100.inf_sif;
                head.systemInfo.mZimCfg[0].info = hd1100.inf_sifch.info;
                head.systemInfo.mZimCfg[0].ranges.Gen.ID = hd1100.inf_sifch.ranges.ID;
                head.systemInfo.mZimCfg[0].ranges.Gen.iac_rng = hd1100.inf_sifch.ranges.iac_rng;
                head.systemInfo.mZimCfg[0].ranges.Gen.Idc_rnginf = hd1100.inf_sifch.ranges.Idc_rnginf;
                head.systemInfo.mZimCfg[0].ranges.Gen.mDummy = hd1100.inf_sifch.ranges.mDummy;
                head.systemInfo.mZimCfg[0].ranges.Gen.mEisIRngCalInfo = hd1100.inf_sifch.ranges.mEisIRngCalInfo;
                head.systemInfo.mZimCfg[0].ranges.Gen.mSafety = hd1100.inf_sifch.ranges.mSafety;
                head.systemInfo.mZimCfg[0].ranges.Gen.rtd_rng = hd1100.inf_sifch.ranges.rtd_rng;
                head.systemInfo.mZimCfg[0].ranges.Gen.vac_rng = hd1100.inf_sifch.ranges.vac_rng;
                head.systemInfo.mZimCfg[0].ranges.Gen.vdc_rng = hd1100.inf_sifch.ranges.vdc_rng;
                head.systemInfo.mZimCfg[1].ranges.Gen.Initialize(eZimType.UNKNOWN);
                head.systemInfo.mZimCfg[2].ranges.Gen.Initialize(eZimType.UNKNOWN);
                head.systemInfo.mZimCfg[3].ranges.Gen.Initialize(eZimType.UNKNOWN);
                head.tech = hd1100.tech;
            }
            else
            {
                head.ToWritePtr(buf);
            }
            
            return true;
        }

        public bool WriteHead(stResHeader head)
        {
            if (bopen == false) return false;
            fs.Seek(0, SeekOrigin.Begin);
            fs.Write(head.ToByteArray(), 0, len_head);
            return true;
        }
                
        public bool Create(string filename, stResHeader head)
        {
            try
            {
                CloseFile();

                sfilename = filename;

                fs = new FileStream(sfilename, FileMode.OpenOrCreate, FileAccess.ReadWrite, FileShare.ReadWrite);

                if (fs == null)
                {
                    return false;
                }
                sVersion = head.mInfo.GetVersion();
                datacount = 0;
                fs.SetLength(0);

                tmphead = head;

                bopen = true;

                if (WriteHead(head) == false) return false;

                dhv._FileName = filename;
                dhv._version = tmphead.mInfo.GetVersion();
                dhv._ResHead = tmphead;
                dhv._datacount = datacount;

                sfilename = filename;
            }
            catch (Exception e)
            {
                Debug.WriteLine(string.Format("{0}", e.Message));
                return false;
            }

            return true;
        }
        
        public int GetDatacount()
        {
            long size = fs.Length;
            int nHeadsize = len_head;
            int nDatasize = len_data;

            if (sVersion == "1.0.0.0")
            {
                nHeadsize = Marshal.SizeOf(typeof(stResHeader1000));
                nDatasize = Marshal.SizeOf(typeof(stDefTestData1000));
            }
            else if (sVersion == "1.1.0.0")
            {
                nHeadsize = Marshal.SizeOf(typeof(stResHeader1100));
                nDatasize = Marshal.SizeOf(typeof(stDefTestData1100));
            }

            size -= nHeadsize;
            if (size < 1) return 0;
            return (int)(size / nDatasize);
        }

        public void AppendData(stDefTestData[] data, int len)
        {
            fs.Seek(0, SeekOrigin.End);
            for (int i = 0; i < len; i++)
            {
                fs.Write(data[i].ToByteArray(), 0, len_data);
                datacount++;
            }
            fs.Flush();
        }

        public void AppendData(stDefTestData data)
        {
            fs.Seek(0, SeekOrigin.End);
            fs.Write(data.ToByteArray(), 0, len_data);
            datacount++;
            fs.Flush();
        }

        public bool Write(int index, stDefTestData data)
        {
            int pos = len_head + len_data * index;
            fs.Seek(pos, SeekOrigin.Begin);

            fs.Write(data.ToByteArray(), 0, len_data);

            fs.Flush();
            return true;
        }

        public int ReadDatas()
        {
            int result = -1;

            stDefTestData raw = new stDefTestData(0);

            bool bRead = read(ref raw);
            
            if (bRead)
            {
                _rdList.Add(raw);
                result = 0;
            }

            return result;

        }

        public bool read(ref stDefTestData data)
        {
            if (bopen == false) return false;

            int nDatasize = len_data;

            if (sVersion == "1.0.0.0")
            {
                nDatasize = Marshal.SizeOf(typeof(stDefTestData1000));
            }
            else if (sVersion == "1.1.0.0")
            {
                nDatasize = Marshal.SizeOf(typeof(stDefTestData1100));
            }
            else
            {
                nDatasize = Marshal.SizeOf(typeof(stDefTestData));
            }


            byte[] buf = new byte[nDatasize];

            if (fs.Read(buf, 0, nDatasize) == nDatasize)
            {
                if (sVersion == "1.0.0.0")
                {
                    stDefTestData1000 data1000 = new stDefTestData1000(0);
                    data1000.ToWritePtr(buf);
                    data.mType = data1000.mType;
                    data.TestTime = data1000.TestTime;
                    data.nCycle = data1000.nCycle;
                    data.CycleTime = data1000.CycleTime;
                    data.nTaskNo = data1000.nTaskNo;
                    data.TaskTime = data1000.TaskTime;
                    data.fFreq = data1000.fFreq;
                    data.real = data1000.real;
                    data.img = data1000.img;
                    data.Veoc = data1000.Veoc;
                    data.Vdc = data1000.Vdc;
                    data.Idc = data1000.Idc;
                    data.Temperature = data1000.Temperature;
                    data.iacrng = data1000.iacrng;
                    data.vdcrng = data1000.vdcrng;
                    data.Idc = data1000.Idc;
                }
                else if (sVersion == "1.1.0.0")
                {
                    stDefTestData1100 data1100 = new stDefTestData1100(0);
                    data1100.ToWritePtr(buf);
                    data.mType = data1100.mType;
                    data.TestTime = data1100.TestTime;
                    data.nCycle = data1100.nCycle;
                    data.CycleTime = data1100.CycleTime;
                    data.nTaskNo = data1100.nTaskNo;
                    data.TaskTime = data1100.TaskTime;
                    data.fFreq = data1100.fFreq;
                    data.real = data1100.real;
                    data.img = data1100.img;
                    data.Veoc = data1100.Veoc;
                    data.Vdc = data1100.Vdc;
                    data.Idc = data1100.Idc;
                    data.Temperature = data1100.Temperature;
                    data.iacrng = data1100.iacrng;
                    data.vdcrng = data1100.vdcrng;
                    data.Idc = data1100.Idc;
                }
                else
                {
                    data.ToWritePtr(buf);
                }
                return true;
            }
            return false;
        }

        public bool read(int index, ref stDefTestData data)
        {
            if (index >= datacount) return false;

            int nDatasize = len_data;
            int nHeadsize = len_head;

            if (sVersion == "1.0.0.0")
            {
                nHeadsize = Marshal.SizeOf(typeof(stResHeader1000));
                nDatasize = Marshal.SizeOf(typeof(stDefTestData1000));
            }
            else if (sVersion == "1.1.0.0")
            {
                nHeadsize = Marshal.SizeOf(typeof(stResHeader1100));
                nDatasize = Marshal.SizeOf(typeof(stDefTestData1100));
            }

            byte[] buf = new byte[nDatasize];

            int pos = nHeadsize + nDatasize * index;

            fs.Seek(pos, SeekOrigin.Begin);

            if (fs.Read(buf, 0, nDatasize) == nDatasize)
            {
                if (sVersion == "1.0.0.0")
                {
                    stDefTestData1000 data1000 = new stDefTestData1000(0);
                    data1000.ToWritePtr(buf);
                    data.mType = data1000.mType;
                    data.TestTime = data1000.TestTime;
                    data.nCycle = data1000.nCycle;
                    data.CycleTime = data1000.CycleTime;
                    data.nTaskNo = data1000.nTaskNo;
                    data.TaskTime = data1000.TaskTime;
                    data.fFreq = data1000.fFreq;
                    data.real = data1000.real;
                    data.img = data1000.img;
                    data.Veoc = data1000.Veoc;
                    data.Vdc = data1000.Vdc;
                    data.Idc = data1000.Idc;
                    data.Temperature = data1000.Temperature;
                    data.iacrng = data1000.iacrng;
                    data.vdcrng = data1000.vdcrng;
                    data.Idc = data1000.Idc;
                }
                else if (sVersion == "1.1.0.0")
                {
                    stDefTestData1100 data1100 = new stDefTestData1100(0);
                    data1100.ToWritePtr(buf);
                    data.mType = data1100.mType;
                    data.TestTime = data1100.TestTime;
                    data.nCycle = data1100.nCycle;
                    data.CycleTime = data1100.CycleTime;
                    data.nTaskNo = data1100.nTaskNo;
                    data.TaskTime = data1100.TaskTime;
                    data.fFreq = data1100.fFreq;
                    data.real = data1100.real;
                    data.img = data1100.img;
                    data.Veoc = data1100.Veoc;
                    data.Vdc = data1100.Vdc;
                    data.Idc = data1100.Idc;
                    data.Temperature = data1100.Temperature;
                    data.iacrng = data1100.iacrng;
                    data.vdcrng = data1100.vdcrng;
                    data.Idc = data1100.Idc;
                }
                else
                {
                    data.ToWritePtr(buf);
                }
                return true;
            }
            return false;
        }

        public int read(int index, ref stDefTestData[] data, int Count)
        {

            if (index >= datacount) return 0;

            int nDatasize = len_data;
            int nHeadsize = len_head;

            if (sVersion == "1.0.0.0")
            {
                nHeadsize = Marshal.SizeOf(typeof(stResHeader1000));
                nDatasize = Marshal.SizeOf(typeof(stDefTestData1000));
            }
            else if (sVersion == "1.1.0.0")
            {
                nHeadsize = Marshal.SizeOf(typeof(stResHeader1100));
                nDatasize = Marshal.SizeOf(typeof(stDefTestData1100));
            }

            int readbyte = 0;
            int readcount = 0;
            byte[] buf = new byte[nDatasize];

            int pos = nHeadsize + nDatasize * index;

            fs.Seek(pos, SeekOrigin.Begin);

            for (int i = 0; i < Count; i++)
            {
                readbyte = fs.Read(buf, 0, nDatasize);

                if (nDatasize != readbyte)
                {
                    return 0;
                }
                if (sVersion == "1.0.0.0")
                {
                    stDefTestData1000 data1000 = new stDefTestData1000(0);
                    data1000.ToWritePtr(buf);
                    data[i].mType = data1000.mType;
                    data[i].TestTime = data1000.TestTime;
                    data[i].nCycle = data1000.nCycle;
                    data[i].CycleTime = data1000.CycleTime;
                    data[i].nTaskNo = data1000.nTaskNo;
                    data[i].TaskTime = data1000.TaskTime;
                    data[i].fFreq = data1000.fFreq;
                    data[i].real = data1000.real;
                    data[i].img = data1000.img;
                    data[i].Veoc = data1000.Veoc;
                    data[i].Vdc = data1000.Vdc;
                    data[i].Idc = data1000.Idc;
                    data[i].Temperature = data1000.Temperature;
                    data[i].iacrng = data1000.iacrng;
                    data[i].vdcrng = data1000.vdcrng;
                    data[i].Idc = data1000.Idc;
                }
                else if (sVersion == "1.1.0.0")
                {
                    stDefTestData1100 data1100 = new stDefTestData1100(0);
                    data1100.ToWritePtr(buf);
                    data[i].mType = data1100.mType;
                    data[i].TestTime = data1100.TestTime;
                    data[i].nCycle = data1100.nCycle;
                    data[i].CycleTime = data1100.CycleTime;
                    data[i].nTaskNo = data1100.nTaskNo;
                    data[i].TaskTime = data1100.TaskTime;
                    data[i].fFreq = data1100.fFreq;
                    data[i].real = data1100.real;
                    data[i].img = data1100.img;
                    data[i].Veoc = data1100.Veoc;
                    data[i].Vdc = data1100.Vdc;
                    data[i].Idc = data1100.Idc;
                    data[i].Temperature = data1100.Temperature;
                    data[i].iacrng = data1100.iacrng;
                    data[i].vdcrng = data1100.vdcrng;
                    data[i].Idc = data1100.Idc;
                }
                else
                {
                    data[i].ToWritePtr(buf);
                }
              
                readcount++;
            }

            return readcount;
        }

        public string GetVersion()
        {
            if (bopen == false) return "";

            stVersion version = new stVersion(0);
            int isize = Marshal.SizeOf(typeof(stVersion));
            byte[] buf = new byte[isize];
            fs.Seek(0, SeekOrigin.Begin);
            if (fs.Read(buf, 0, isize) != isize)
            {
                return "";
            }
            version.ToWritePtr(buf);
            return string.Format("{0}.{1}.{2}.{3}", version.Major, version.Minor, version.Revision, version.Build);
        }

        public bool Open(string filename)
        {
            try
            {
                CloseFile();
                sfilename = filename;
                if (File.Exists(sfilename) == false)
                {
                    return false;
                }
                fs = new FileStream(sfilename, FileMode.Open, FileAccess.ReadWrite, FileShare.ReadWrite);

                if (fs == null)
                {
                    return false;
                }

                bopen = true;
                sVersion = GetVersion();
                ReadHead();
                
                datacount = this.GetDatacount();
                dhv._FileName = filename;
                dhv._version = tmphead.mInfo.GetVersion();
                dhv._ResHead = tmphead;
                dhv._datacount = datacount;
            }
            catch (Exception e)
            {
                Debug.WriteLine(string.Format("{0}", e.Message));
                return false;
            }

            return true;
        }
    }
}
