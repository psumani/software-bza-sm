using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.MBZA.ZIM;
using ZiveLab.MBZA.ZIM.Packets;

namespace ZiveLab.MBZA
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

        public FileResult()
        {
            Initialize();
        }

        public void Initialize()
        {
            fs = null;
            sfilename = "";
            len_head = Marshal.SizeOf(typeof(stResHeader));
            len_data = Marshal.SizeOf(typeof(stDefTestData));
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

        public void WriteHead()
        {
            WriteHead(tmphead);
        }

        public bool ChangeMemo(string memo)
        {
            if (fs == null) return false;
            byte[] tbytes = Encoding.UTF8.GetBytes(memo);
            int cnt = tbytes.Count();
            if (cnt > DeviceConstants.MEMOSIZE) cnt = DeviceConstants.MEMOSIZE;
            Array.Clear(tmphead.mInfo.memo, 0, DeviceConstants.MEMOSIZE);
            Array.Copy(tbytes, tmphead.mInfo.memo, cnt);
            WriteHead(tmphead);
            return true;
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

            WriteHead(tmphead);
            return true;
        }

        public void ReadHead()
        {
            ReadHead(ref tmphead);
        }
        public void ReadHead(ref stResHeader head)
        {
            byte[] buf = new byte[len_head];
            fs.Seek(0, SeekOrigin.Begin);
            fs.Read(buf, 0, len_head);
            head.ToWritePtr(buf);
        }

        public void WriteHead(stResHeader head)
        {
            fs.Seek(0, SeekOrigin.Begin);
            fs.Write(head.ToByteArray(), 0, len_head);
        }

        public bool Start(string filename)
        {
            try
            {
                CloseFile();
                sfilename = filename;
                
                fs = new FileStream(sfilename, FileMode.OpenOrCreate, FileAccess.ReadWrite);

                if (fs == null)
                {
                    return false;
                }
                //tmphead.rtc_begin.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
                tmphead.mInfo.rtc_begin.tick = DateTime.Now.Ticks;
                tmphead.mInfo.rtc_end.tick = DateTime.Now.Ticks;
                datacount = 0;
                fs.SetLength(0);
                WriteHead();
                
                bStart = true;
                bopen = true;
                bwrite = true;
            }
            catch (Exception e)
            {
                Debug.WriteLine(string.Format("{0}", e.Message));
                return false;
            }

            return true;
        }

        public bool Create(string filename)
        {
            try
            {
                CloseFile();
                sfilename = filename;
                
                fs = new FileStream(sfilename, FileMode.OpenOrCreate, FileAccess.ReadWrite);
                
                if (fs == null)
                {
                    return false;
                }
                fs.SetLength(0);
                datacount = 0;
                WriteHead();
                
                bStart = false;
                bopen = true;
                bwrite = true;
            }
            catch (Exception e)
            {
                Debug.WriteLine(string.Format("{0}", e.Message));
                return false;
            }

            return true;
        }

        public bool Start(string filename, st_rtc rtc)
        {
            try
            {
                CloseFile();
                sfilename = filename;

                fs = new FileStream(sfilename, FileMode.OpenOrCreate, FileAccess.ReadWrite);

                if (fs == null)
                {
                    return false;
                }
                datacount = 0;
                fs.SetLength(0);
                //tmphead.rtc_begin.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
                tmphead.mInfo.rtc_begin = rtc;
                tmphead.mInfo.rtc_end = rtc;
                WriteHead();
                bStart = true;
                bopen = true;
                bwrite = true;
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

                fs = new FileStream(sfilename, FileMode.OpenOrCreate, FileAccess.ReadWrite);
                
                if (fs == null)
                {
                    return false;
                }
                datacount = 0;
                fs.SetLength(0);
                //tmphead.rtc_begin.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
                head.mInfo.rtc_begin = rtc;
                head.mInfo.rtc_end = rtc;
                tmphead = head;
                WriteHead(head);
               
                bStart = true;
                bopen = true;
                bwrite = true;
                sfilename = filename;
            }
            catch (Exception e)
            {
                Debug.WriteLine(string.Format("{0}", e.Message));
                return false;
            }

            return true;
        }

        public bool Stop(ushort Error)
        {
            if (bStart == false) return false;
            tmphead.mInfo.rtc_end.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
            tmphead.mInfo.Error = Error;
            WriteHead();
            CloseFile();
            return true;
        }

        public bool Stop(ushort Error, st_rtc rtc)
        {
            if (bStart == false) return false;
            //tmphead.rtc_end.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
            tmphead.mInfo.rtc_end = rtc;
            tmphead.mInfo.Error = Error;
            WriteHead();
            CloseFile();
            return true;
        }

        public int GetDatacount()
        {

            long size = fs.Length;
            size -= len_head;
            if (size < 1) return 0;
            return (int)(size / len_data);
        }

        public void AppendData(stDefTestData[] data, int len)
        {
            fs.Seek(0, SeekOrigin.End);
            for (int i = 0; i < len; i++)
            {
                fs.Write(data[i].ToByteArray(), 0, len_data);
                datacount++;
            }
        }

        public void AppendData(stDefTestData data)
        {
            fs.Seek(0, SeekOrigin.End);
            fs.Write(data.ToByteArray(), 0, len_data);
            datacount++;
        }

        public bool Write(int index, stDefTestData data)
        {
            int pos = len_head + len_data * index;
            fs.Seek(pos, SeekOrigin.Begin);

            fs.Write(data.ToByteArray(), 0, len_data);
            return true;
        }

        public bool read(ref stDefTestData data)
        {
            byte[] buf = new byte[len_data];
            
            if (fs.Read(buf, 0, len_data) == len_data)
            {
                data.ToWritePtr(buf);
                return true;
            }
            return false;
        }

        public bool read(int index, ref stDefTestData data)
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

        public int read(int index, ref stDefTestData[] data, int Count)
        {
            int total = len_data * Count;

            if (index >= datacount) return 0;

            int readbyte = 0;
            int readcount = 0;
            byte[] buf = new byte[len_data];

            int pos = len_head + len_data * index;

            fs.Seek(pos, SeekOrigin.Begin);

            for (int i = 0; i < Count; i++)
            {
                readbyte = fs.Read(buf, 0, len_data);

                if (len_data != readbyte)
                {
                    return 0;
                }
                data[i].ToWritePtr(buf);
                readcount++;
            }
            
            return readcount;
        }

        public bool Open(string filename, bool write = false)
        {
            try
            {
                CloseFile();
                sfilename = filename;
                if (File.Exists(sfilename) == false)
                {
                    return false;
                }
                if (write == false) fs = new FileStream(sfilename, FileMode.Open, FileAccess.Read);
                else fs = new FileStream(sfilename, FileMode.Open, FileAccess.ReadWrite);

                if (fs == null)
                {
                    return false;
                }
                datacount = this.GetDatacount();
                ReadHead();
                bStart = false;
                bwrite = write;
                bopen = true;
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
