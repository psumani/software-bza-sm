using System;
using System.Collections.Generic;
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
    public class FileCondition
    {
        public stTech mtech;
        public FileCondition()
        {
            mtech = new stTech(enTechType.TECH_EIS);
        }

        public bool Save(string filename, stTech ttech)
        {
            FileStream fs = null;
            try
            {
                if (File.Exists(filename))
                {
                    fs = new FileStream(filename, FileMode.Open, FileAccess.ReadWrite,FileShare.ReadWrite);
                }
                else
                {
                    fs = new FileStream(filename, FileMode.CreateNew, FileAccess.ReadWrite, FileShare.ReadWrite);
                }

                if (fs == null) return false;
                int len = Marshal.SizeOf(ttech);
                byte[] arr = ttech.ToByteArray();

                mtech.ToWritePtr(arr);
                fs.Write(arr, 0, len);
                fs.Close();
                fs = null;
            }
            catch (Exception e)
            {
                if(fs != null)
                {
                    fs.Close();
                    fs = null;
                }

                MessageBox.Show(e.Message);
                return false;
            }

            return true;
        }

        public bool OpenFile(string filename)
        {

            FileStream fs;

            try
            {
                if (File.Exists(filename))
                {
                    fs = new FileStream(filename, FileMode.Open, FileAccess.ReadWrite,FileShare.ReadWrite);

                    if (fs == null) return false;

                    int len = Marshal.SizeOf(mtech);
                    byte[] tBytes = new byte[len];

                    Array.Clear(tBytes, 0, len);

                    if (fs.Read(tBytes, 0, len) != len) return false;

                    fs.Close();
                    fs = null;

                    mtech.ToWritePtr(tBytes);
                }
                else return false;
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
                return false;
            }
            return true;
        }

        public bool OpenFile(string filename, ref stTech ttech)
        {

            FileStream fs = null;

            try
            {
                if (File.Exists(filename))
                {
                    fs = new FileStream(filename, FileMode.Open, FileAccess.ReadWrite, FileShare.ReadWrite);

                    if (fs == null) return false;

                    int len = Marshal.SizeOf(ttech);
                    byte[] tBytes = new byte[len];

                    Array.Clear(tBytes, 0, len);

                    if (fs.Read(tBytes, 0, len) != len) return false;

                    fs.Close();
                    fs = null;

                    ttech.ToWritePtr(tBytes);
                    mtech.ToWritePtr(tBytes);
                }
                else return false;
            }
            catch (Exception e)
            {
                if (fs != null)
                {
                    fs.Close();
                    fs = null;
                }
                MessageBox.Show(e.Message);
                return false;
            }
            if (fs != null)
            {
                fs.Close();
                fs = null;
            }
            return true;
        }
    }

    public class sFileInfo
    {
        private string _rootName;
        private string _fileName;
        private int _Size;

        public string FilePath { get { return Path.GetDirectoryName(_fileName); } }
        public string FileName { get { return _fileName; } }
        public string Extention { get { return Path.GetExtension(_fileName); } }
        public int Size { get { return _Size; } }
        public int StartPageNum { get; set; }
        public string RootDir { set { _rootName = value; } }

        public sFileInfo(string rootDir, string filename)
        {
            _rootName = rootDir;
            _fileName = filename;

            _Size = (int)(new FileInfo(filename).Length);
        }

        public override string ToString()
        {
            return Path.Combine(_rootName, Path.GetFileName(_fileName));
        }
    }
}
