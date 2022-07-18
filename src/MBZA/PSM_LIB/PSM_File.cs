using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Windows.Forms;
using System.Xml.Serialization;

namespace SMLib
{
    public class SM_FileUtility
    {
        /* path info
        Path.GetExtension(path);
        Path.GetFileName(path);
        Path.GetFileNameWithoutExtension(path);
        Path.GetPathRoot(path);
        Path.GetDirectoryName(path);
        */

        public static string PathsCombine(params string[] paths) {
            if (paths == null) {
                return null;
            }
            string ResultPath = paths[0];
            for (int i = 1; i < paths.Length; i++) {
                ResultPath = Path.Combine(ResultPath, paths[i]);
            }
            return ResultPath;
        }

        public static void DirectoryChkAndCreate(string Filepath) 
        {
            if (!System.IO.Directory.Exists(Filepath))
            {
                System.IO.Directory.CreateDirectory(Filepath);
            }
        }

        public static bool FileDelete(string filename) 
        {
            if(System.IO.File.Exists(filename) == false) 
            {
                return false;
            }
            System.IO.File.Delete(filename);
            return true;
        }

        public static bool FileExist(string filename) 
        {
            return System.IO.File.Exists(filename);
        }

        public static bool FileCopy(string sourceFile,string destFile,bool overwrite) 
        {
            if(System.IO.File.Exists(sourceFile) == false) 
            {
                return false;
            }

            if(overwrite == false)
            {
                if(System.IO.File.Exists(destFile) == true) 
                {
                    return false;
                }
            }
            System.IO.File.Copy(sourceFile, destFile, overwrite);
            return true;
        }
    }

    public class SM_Config_File<T>
    {
        public void SaveObjToXml(string filename, T obj)
        {
            XmlSerializer serializer =  XmlSerializer.FromTypes(new[] { typeof(T) })[0];
            using (TextWriter writer = new StreamWriter(filename))
            {
                serializer.Serialize(writer, obj);
                writer.Close();
            }
        }

        public T LoadXmlToObj(string filename, T obj)
        {
            T ret;

            if (System.IO.File.Exists(filename) == false)
            {
                SaveObjToXml(filename, obj);
                return obj;
            }
            XmlSerializer deserializer = XmlSerializer.FromTypes(new[] { typeof(T) })[0];
            TextReader reader = new StreamReader(filename);
            try
            {
                ret = (T)deserializer.Deserialize(reader);
                reader.Close();
            }
            catch
            {
                reader.Close();
                return obj;
            }
            return ret;
        }
    }

    public class SM_File
    {
        public bool bopen;

        private string sFilename;
        private string sFilepath;
        private string sFullFilename;

        private Int64 RecordSize;
        private List<int> HeaderList;
        private List<int> FooterList;
        private FileStream fs;

        public SM_File()
        {
            this.bopen = false;

            this.HeaderList = new List<int>();
            this.FooterList = new List<int>();
            this.fs = null;
            this.RecordSize = 0;
            this.sFilepath = "";
            this.sFilename = "";
            this.sFullFilename = "";
        }

        #region ***File Process
        public void SetRecordSize(int recordsize)
        {
            this.RecordSize = recordsize;
        }

        public void AddHeaderSize(int headersize)
        {
            this.HeaderList.Add(headersize);
        }

        public int GetHeaderSize(int index)
        {
            return this.HeaderList[index];
        }

        public int GetHeaderCount(int index)
        {
            return this.HeaderList.Count();
        }

        public void AddFooterSize(int Footersize)
        {
            this.FooterList.Add(Footersize);
        }

        public int GetFootSize(int index)
        {
            return this.FooterList[index];
        }

        public int GetFooterCount(int index)
        {
            return this.FooterList.Count();
        }

        public Int64 GetTotalHeaderSize()
        {
            Int64 totalheadersize = 0;
            foreach (int number in this.HeaderList)
	        {
	           totalheadersize += number;
	        }
            return totalheadersize;
        }

        public Int64 GetHeaderPosition(int index)
        {
            int i;
            Int64 pos = 0;

            if (index == 0) return 0;
            if (HeaderList.Count() <= index) return -1;
            for (i = 0; i < index; i++)
            {
                pos += HeaderList[i];
            }
            return pos;
        }

        public Int64 GetTotalFooterSize()
        {
            Int64 totalfootersize = 0;
            foreach (int number in this.FooterList)
	        {
	           totalfootersize += number;
	        }
            return totalfootersize;
        }

        public Int64 GetFooterPosition(int index)
        {
            int i;
            Int64 pos = 0;
            Int64 nFileRecordsSize;
            Int64 nTotalHeaderSize;

            nTotalHeaderSize = this.GetTotalHeaderSize();
            nFileRecordsSize = this.GetTotalRecordSize();

            pos = nTotalHeaderSize + nFileRecordsSize;

            if (index == 0) return 0;
            if (FooterList.Count() <= index) return -1;
            for (i = 0; i < index; i++)
            {
                pos += FooterList[i];
            }
            return pos;
        }

        public Int64 GetRecordPosition(int index)
        {
            Int64 pos = 0;
            Int64 nTotalHeaderSize;

            nTotalHeaderSize = this.GetTotalHeaderSize();
            pos = index * this.RecordSize + nTotalHeaderSize;
            return pos;
        }

        public Int64 GetTotalRecordSize()
        {
            Int64 nFileRecordsSize;
            Int64 nTotalHeaderSize;
            Int64 nTotalFooterSize;

            if (this.fs == null) return -1;

            nTotalHeaderSize = this.GetTotalHeaderSize();
            nTotalFooterSize = this.GetTotalFooterSize();

            if (this.fs.Length < (nTotalHeaderSize + nTotalFooterSize)) return -1;
            nFileRecordsSize = this.fs.Length - (nTotalHeaderSize + nTotalFooterSize);
            return nFileRecordsSize;
        }

        public Int64 GetRecordCount() // -1 = error
        {
            Int64 nRecordSize = this.RecordSize;
            Int64 nFileRecordsSize;
            Int64 nTotalHeaderSize;
            Int64 nTotalFooterSize;
            Int64 recordcount;

            if (this.fs == null) return -1;

            nTotalHeaderSize = this.GetTotalHeaderSize();
            nTotalFooterSize = this.GetTotalFooterSize();
            if (this.fs.Length < (nTotalHeaderSize + nTotalFooterSize)) return -1;

            nFileRecordsSize = this.fs.Length - (nTotalHeaderSize + nTotalFooterSize);
            if(nFileRecordsSize == 0) return 0;
            if (nFileRecordsSize < this.RecordSize) return -1;
            if (nFileRecordsSize % this.RecordSize > 0) return -1;

            recordcount = nFileRecordsSize / this.RecordSize;

            return recordcount;
        }

        public void close()
        {
            if (this.fs != null)
            {
                this.fs.Dispose();
                this.fs = null;
            }
            this.bopen = false;
        }

        public bool Create(bool msg)
        {
            string sPath;
            sPath = Path.GetDirectoryName(this.sFullFilename);

            SM_FileUtility.DirectoryChkAndCreate(sPath);

            this.close();

            if (SM_FileUtility.FileExist(this.sFullFilename) == true)
            {
                if (msg == true)
                {
                    if (MessageBox.Show("Same file already exists. \n\n Do you want to replace it?",
                                "SM File", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        SM_FileUtility.FileDelete(this.sFullFilename);
                    }
                    else return false;

                }
                else 
                {
                    SM_FileUtility.FileDelete(this.sFullFilename);
                }
            }

            try
            {
                this.fs = new FileStream(this.sFullFilename, FileMode.CreateNew, FileAccess.ReadWrite,FileShare.ReadWrite);
            }
            catch(IOException e)
            {
                MessageBox.Show(e.ToString(), "SM File", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            this.bopen = true;
            return true;
        }

        public bool Open(FileAccess fileaccess)
        {
            this.close();

            if (SM_FileUtility.FileExist(this.sFullFilename) == false) return false;
            try
            {
                this.fs = new FileStream(this.sFullFilename, FileMode.Open, fileaccess,FileShare.ReadWrite);
            }
            catch (IOException e)
            {
                MessageBox.Show(e.ToString(), "SM File", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            this.bopen = true;
            return true;
        }

        public byte[] HeaderRead(int index, int nSize)
        {
            int size;
            Int64 pos;
            byte[] data;

            if (this.fs.CanRead == false)
            {
                return null;
            }

            if (index >= this.HeaderList.Count())
            {
                return null;
            }

            size = this.HeaderList[index];
            if (size < 1 || size != nSize)
            {
                return null;
            }
            
            pos = this.GetHeaderPosition(index);
            if (pos < 0 || (pos + size) > this.fs.Length) return null;

            data = new byte[size];
            this.fs.Seek(pos, SeekOrigin.Begin);
            this.fs.Read(data, 0, size);

            return data;
        }

        public byte[] HeaderReadAll(int nSize)
        {
            int size;
            byte[] data;

            if (this.fs.CanRead == false)
            {
                return null;
            }

            size = (int)this.GetTotalHeaderSize();
            if (size > this.fs.Length || size != nSize)
            {
                return null;
            }

            data = new byte[size];
            this.fs.Seek(0, SeekOrigin.Begin);
            this.fs.Read(data, 0, size);

            return data;
        }

        public bool HeaderWrite(int index, byte[] data, int nSize)
        {
            int size;
            Int64 pos;

            if (this.fs.CanWrite == false)
            {
                return false;
            }

            if (index >= this.HeaderList.Count())
            {
                return false;
            }
            size = this.HeaderList[index];
            if (size < 1 || nSize != size)
            {
                return false;
            }

            pos = this.GetHeaderPosition(index);

            if (pos < 0 || pos > this.fs.Length)
            {
                return false;
            }

            this.fs.Seek(pos, SeekOrigin.Begin);
            this.fs.Write(data, 0, nSize);
          
            return true;
        }

        public bool HeaderWriteAll(byte[] data, int nSize)
        {
            int size;

            if (this.fs.CanWrite == false)
            {
                return false;
            }

            size = (int)this.GetTotalHeaderSize();
            if (size < 1 || nSize != size)
            {
                return false;
            }

            this.fs.Seek(0, SeekOrigin.Begin);
            this.fs.Write(data, 0, nSize);

            return true;
        }

        public byte[] RecordRead(int index, int nCount, int nSize)
        {
            int size;
            Int64 pos;
            byte[] data;

            if (this.fs.CanRead == false)
            {
                return null;
            }

            if (index >= this.GetRecordCount())
            {
                return null;
            }

            size = nCount * (int)this.RecordSize;
            if (size < 1 || size != nSize)
            {
                return null;
            }

            pos = this.GetRecordPosition(index);
            if (pos < 0 || (pos + size) > this.fs.Length) return null;

            data = new byte[size];
            this.fs.Seek(pos, SeekOrigin.Begin);
            this.fs.Read(data, 0, size);

            return data;
        }

        public bool RecordWrite(int index, byte[] data, int nCount, int nSize)
        {
            int size;
            Int64 pos;

            if (this.fs.CanWrite == false)
            {
                return false;
            }

            size = nCount * (int)this.RecordSize;
            if (size < 1 || nSize != size)
            {
                return false;
            }


            pos = this.GetRecordPosition(index);

            if (pos < 0 || pos > this.fs.Length)
            {
                return false;
            }

            this.fs.Seek(pos, SeekOrigin.Begin);
            this.fs.Write(data, 0, nSize);

            return true;
        }


        #endregion

        #region ***Properties
        public string FileName
        {
            get { return sFilename; }
            set 
            {
                this.sFilename = value;
                this.sFullFilename = SM_FileUtility.PathsCombine(this.sFilepath, this.sFilename);
            }
        }

        public string FilePath
        {
            get { return this.sFilepath; }
            set 
            {
                this.sFilepath = value;
                this.sFullFilename = SM_FileUtility.PathsCombine(this.sFilepath, this.sFilename);
            }
        }

        public string FullFilename
        {
            get { return sFullFilename; }
            set 
            {
                this.sFullFilename = value;
                this.sFilepath = Path.GetDirectoryName(this.sFullFilename);
                this.sFilename = Path.GetFileName(this.sFullFilename);
            }
        }

    #endregion

    }
}
