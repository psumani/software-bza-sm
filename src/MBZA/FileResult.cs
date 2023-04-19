using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
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
            byte[] buf = new byte[len_head];
            fs.Seek(0, SeekOrigin.Begin);
            if(fs.Read(buf, 0, len_head) != len_head)
            {
                return false;
            }
            head.ToWritePtr(buf);
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
                datacount = this.GetDatacount();

                bStart = false;
                bwrite = true;
                bopen = true;

                ReadHead();
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
