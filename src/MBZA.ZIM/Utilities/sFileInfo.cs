using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZiveLab.ZM.ZIM.Utilities
{
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
