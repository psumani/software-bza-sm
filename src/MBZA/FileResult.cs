using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.Dataview;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM
{
    public class FileResult
    {
        public string sfilename;
        public FileStream fs;
        public stResHeader tmphead;
        public int len_head;
        public int len_data;
        public int datacount;
        public bool bStart;
        public bool bopen;
        public bool bwrite;
        public string sVersion;

        public FileResult()
        {
            Initialize();
        }

        public void Initialize()
        {
            fs = null;
            sfilename = "";
            len_head = Marshal.SizeOf(typeof(stResHeader));
            len_data = Marshal.SizeOf(typeof(ZIM.Packets.stDefTestData));
            tmphead = new stResHeader(0);
            bStart = false;
            bopen = false;
            bwrite = false;
            datacount = 0;
        }

        public void CloseFile()
        {
            if (fs != null)
            {
                fs.Close();
                fs = null;
            }
            bStart = false;
            bopen = false;
            bwrite = false;
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
            len_head = nHeadsize;

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
            if (bwrite == false) return false;
            fs.Seek(0, SeekOrigin.Begin);
            fs.Write(head.ToByteArray(), 0, len_head);
            return true;
        }

        public bool Start(string filename, int ch, string serial, int sifch)
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

                tmphead.mInfo.rtc_begin.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
                tmphead.mInfo.rtc_end.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
                tmphead.mInfo.Ch = ch;
                tmphead.mInfo.Serial = Encoding.UTF8.GetBytes(serial);
                tmphead.mInfo.sifch = sifch;
                datacount = 0;
                fs.SetLength(0);

                bopen = true;
                bwrite = true;

                if(WriteHead() == false)
                {
                    return false;
                }

                bStart = true;

            }
            catch (Exception e)
            {
                Debug.WriteLine(string.Format("{0}", e.Message));
                return false;
            }

            return true;
        }

        public bool Create(string filename, int ch, string serial, int sifch)
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
                fs.SetLength(0);
                datacount = 0;

                tmphead.mInfo.Ch = ch;
                tmphead.mInfo.Serial = Encoding.UTF8.GetBytes(serial);
                tmphead.mInfo.sifch = sifch;

                bopen = true;
                bwrite = true;

                if (WriteHead() == false) return false;
                
                bStart = false;
               
            }
            catch (Exception e)
            {
                Debug.WriteLine(string.Format("{0}", e.Message));
                return false;
            }

            return true;
        }

        public bool Start(string filename, st_rtc rtc,int ch, string serial, int sifch)
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
                datacount = 0;
                fs.SetLength(0);
                tmphead.mInfo.rtc_begin = rtc;
                tmphead.mInfo.rtc_end = rtc;
                tmphead.mInfo.Ch = ch;
                tmphead.mInfo.Serial = Encoding.UTF8.GetBytes(serial);
                tmphead.mInfo.sifch = sifch;
                bopen = true;
                bwrite = true;

                if (WriteHead() == false) return false;

                bStart = true;
               
            }
            catch (Exception e)
            {
                Debug.WriteLine(string.Format("{0}", e.Message));
                return false;
            }

            return true;
        }

        public void SetStart(bool val)
        {
            bStart = val;
        }
        
        public bool Start(string filename, stResHeader head, st_rtc rtc)
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
                datacount = 0;
                fs.SetLength(0);

                tmphead = head;

                tmphead.mInfo.rtc_begin = rtc;
                tmphead.mInfo.rtc_end = rtc;

                bopen = true;
                bwrite = true;

                if (WriteHead(head) == false) return false;
               
                bStart = true;
                
                sfilename = filename;
            }
            catch (Exception e)
            {
                Debug.WriteLine(string.Format("{0}", e.Message));
                return false;
            }

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
                datacount = 0;
                fs.SetLength(0);

                tmphead = head;

                bopen = true;
                bwrite = true;

                if (WriteHead(head) == false) return false;


                bStart = false;
                
                sfilename = filename;
            }
            catch (Exception e)
            {
                Debug.WriteLine(string.Format("{0}", e.Message));
                return false;
            }

            return true;
        }

        public bool StopContinue(ushort Error)
        {
            if (bStart == false) return false;
            bStart = false;
            tmphead.mInfo.rtc_end.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
            tmphead.mInfo.Error = Error;
            return WriteHead();
        }

        public bool Stop(ushort Error)
        {
            if (bStart == false) return false;
            bStart = false;
            tmphead.mInfo.rtc_end.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
            tmphead.mInfo.Error = Error;
            if (WriteHead() == false) return false;
            CloseFile();
            return true;
        }

        public bool Stop(ushort Error, st_rtc rtc)
        {
            if (bStart == false) return false;
            tmphead.mInfo.rtc_end = rtc;
            tmphead.mInfo.Error = Error;
            if (WriteHead() == false) return false;
            CloseFile();
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

        //public void AppendData(stDefTestData[] data, int len)
        //{
        //    fs.Seek(0, SeekOrigin.End);
        //    for (int i = 0; i < len; i++)
        //    {
        //        fs.Write(data[i].ToByteArray(), 0, len_data);
        //        datacount++;
        //    }
        //    fs.Flush();
        //}

        public void AppendData(ZIM.Packets.stDefTestData[] data, int len)
        {
            if (fs == null)
            {
                return;
            }

            fs.Seek(0, SeekOrigin.End);

            for (int i = 0; i < len; i++)
            {
                fs.Write(data[i].ToByteArray(), 0, len_data);
                datacount++;
            }

            fs.Flush();
        } // 예외방지


        public void AppendData(ZIM.Packets.stDefTestData data)
        {
            fs.Seek(0, SeekOrigin.End);
            fs.Write(data.ToByteArray(), 0, len_data);
            datacount++;
            fs.Flush();
        }

        public bool Write(int index, ZIM.Packets.stDefTestData data)
        {
            int pos = len_head + len_data * index;
            fs.Seek(pos, SeekOrigin.Begin);

            fs.Write(data.ToByteArray(), 0, len_data);

            fs.Flush();
            return true;
        }

        public bool read(ref ZIM.Packets.stDefTestData data)
        {
            byte[] buf = new byte[len_data];
            
            if (fs.Read(buf, 0, len_data) == len_data)
            {
                data.ToWritePtr(buf);
                return true;
            }
            return false;
        }

        public bool read(int index, ref ZIM.Packets.stDefTestData data)
        {
            byte[] buf = new byte[len_data];

            if (index >= datacount) return false;

            int pos = len_head + len_data * index;

            fs.Seek(pos, SeekOrigin.Begin);

            if (fs.Read(buf, 0, len_data) == len_data)
            {
                data.ToWritePtr(buf);
                return true;
            }
            return false;
        }

        public int read(int index, ref ZIM.Packets.stDefTestData[] data, int Count)
        {

            if (index >= datacount) return 0;

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
                nDatasize = Marshal.SizeOf(typeof(ZIM.Packets.stDefTestData));
            }

            int readbyte = 0;
            int readcount = 0;
            byte[] buf = new byte[nDatasize];

            int pos = len_head + nDatasize * index;

            fs.Seek(pos, SeekOrigin.Begin);

            for (int i = 0; i < Count; i++)
            {
                readbyte = fs.Read(buf, 0, nDatasize);

                if (nDatasize != readbyte)
                {
                    return 0;
                }
                else
                {
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
                }
                readcount++;
            }
            
            return readcount;
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
                fs = new FileStream(sfilename, FileMode.Open, FileAccess.ReadWrite,FileShare.ReadWrite);

                if (fs == null)
                {
                    return false;
                }

                bStart = false;
                bwrite = true;
                bopen = true;

                sVersion = GetVersion();
                ReadHead();
                
                datacount = this.GetDatacount();
            }
            catch (Exception e)
            {
                Debug.WriteLine(string.Format("{0}", e.Message));
                return false;
            }

            return true;
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
    }
}
