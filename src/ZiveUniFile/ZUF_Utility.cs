using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;
using System.Xml.Serialization;
using ZiveUniFile;

namespace ZiveUniFile.Utilities
{
    public class ZUF_Utility
    {
        string Filename;
        FileStream fs;
        int Pos;
        bool bCreate;

        public stFileHeader mFileHeader;

        stFlexTitleGroup tGroupTitle;
        stFlexDataGroup tGroupData;
        Dictionary<byte, stFlexTitleGroup> GrpHeadList;
        Dictionary<byte, List<stFlexDataGroup>> GrpDataList;

        
        public ZUF_Utility()
        {

            Filename = "";
            mFileHeader = new stFileHeader();
            GrpHeadList = new Dictionary<byte, stFlexTitleGroup>();
            GrpDataList = new Dictionary<byte, List<stFlexDataGroup>>();
            tGroupTitle = new stFlexTitleGroup(0,"");
            tGroupData = new stFlexDataGroup(0,0);
            bCreate = false;
            fs = null;
            Pos = 0;
        }

        public bool ZUF_FilePRoc(string filename, bool create)
        {

            Filename = filename;
            mFileHeader.Initialize();
            GrpHeadList.Clear();
            GrpDataList.Clear();
            tGroupTitle.DeleteAllItem();
            tGroupData.Initialize(0, 0);
            bCreate = create;

            GrpHeadList = new Dictionary<byte, stFlexTitleGroup>();
            GrpDataList = new Dictionary<byte, List<stFlexDataGroup>>();
            tGroupTitle = new stFlexTitleGroup(0, "");
            tGroupData = new stFlexDataGroup(0, 0);

            if (fs != null) fs.Close();
            Pos = 0;

            try
            {
                if (bCreate)
                {
                    if (File.Exists(filename))
                    {
                        File.Delete(filename);
                    }
                    fs = new FileStream(filename, FileMode.CreateNew, FileAccess.Write);
                    WriteFileHead();
                }
                else
                {
                    if (File.Exists(filename))
                    {
                        fs = new FileStream(filename, FileMode.Open, FileAccess.ReadWrite);
                    }
                }

            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
                return false;
            }
            return true;
        }
        
        public long ReadGroupTitleColsData(byte index, long position, ref List<stFlexTitleGroup> output)
        {
            long pos = position;

            if (fs == null) return 0;
            if (fs.Seek(pos, SeekOrigin.Begin) != pos) return 0;

            stFlexDataHeadDesc header = new stFlexDataHeadDesc();

            int HeadrSize = Marshal.SizeOf(header);
            byte[] tBytes = new byte[HeadrSize];

            Array.Clear(tBytes, 0, HeadrSize);
            if (fs.Read(tBytes, 0, HeadrSize) != HeadrSize) return 0;

            header.ToWritePtr(tBytes);
            pos += header.Size;
            int DataSize = header.Size - HeadrSize;

            if (DataSize < 1) return HeadrSize;

            if (GrpHeadList.ContainsKey(index) == true)
            {
                Trace.WriteLine("duplicate index discovery");
                return pos;
            }

            Array.Resize<byte>(ref tBytes, header.Size);
            if (fs.Read(tBytes, HeadrSize, DataSize) != DataSize) return 0;

            stFlexTitleGroup GroupTitle = new stFlexTitleGroup(index, "");
            GroupTitle.ToWritePtr(tBytes);

            output.Add(GroupTitle);

            return (long)header.Size;
        }

        public long ReadGroupTitleRowData(byte index, long position, ref List<stFlexTitleGroup> output)
        {
            long pos = position;

            if (fs == null) return 0;
            if (fs.Seek(pos, SeekOrigin.Begin) != Pos) return 0;

            stFlexDataHeadDesc header = new stFlexDataHeadDesc();

            int HeadrSize = Marshal.SizeOf(header);
            byte[] tBytes = new byte[HeadrSize];

            Array.Clear(tBytes, 0, HeadrSize);
            if (fs.Read(tBytes, 0, HeadrSize) != HeadrSize) return 0;

            header.ToWritePtr(tBytes);
            pos += header.Size;
            int DataSize = header.Size - HeadrSize;

            if (DataSize < 1) return HeadrSize;

            Array.Resize<byte>(ref tBytes, header.Size);
            if (fs.Read(tBytes, HeadrSize, DataSize) != DataSize) return 0;

            stFlexTitleGroup GroupTitle = new stFlexTitleGroup(index, "");
            GroupTitle.ToWritePtr(tBytes);
            output.Add(GroupTitle);

            return (long)header.Size;
        }
        public long ReadTitleGroup(long position, ref List<stFlexTitleGroup> output)
        {
            long pos = position;
            long len = 0;
            if (fs == null) return 0;
            if (fs.Seek(pos, SeekOrigin.Begin) != pos) return 0;

            byte[] tBytes = new byte[2];
            if (fs.Read(tBytes, 0, 2) != 2) return 0;

            byte type = tBytes[0];
            byte index = tBytes[1];


            if (type == (byte)eGroupRowType.Information)
            {
                len = ReadGroupTitleColsData(index, pos, ref output);
            }
            else if (type == (byte)eGroupRowType.DataHead)
            {
                len = ReadGroupTitleRowData(index, pos, ref output);
            }

            return len;
        }
        

        public bool SaveFormatToXml(string sFullPath, stFileHeader mHeader, List<stFlexTitleGroup> Input)
        {
            XmlSerializer writer = new XmlSerializer(mHeader.GetType());
            StreamWriter fx = new StreamWriter(sFullPath);

            try
            {
                writer.Serialize(fx, mHeader);
            }
            catch (Exception ex)
            {
                fx.Close();
                Trace.WriteLine(ex.Message);
                return false;
            }

            writer = new XmlSerializer(Input.GetType());
            try
            {
                writer.Serialize(fx, Input);
            }
            catch (Exception ex)
            {
                fx.Close();
                Trace.WriteLine(ex.Message);
                return false;
            }
            fx.Close();
            return true;
        }

        public bool LoadFormatFromXml(string sFullPath, ref stFileHeader mHeader, ref List<stFlexTitleGroup> output)
        {
            XmlSerializer Reader = new XmlSerializer(mHeader.GetType());
            StreamReader file = new StreamReader(sFullPath);
            output.Clear();
            try
            {
                mHeader = (stFileHeader)Reader.Deserialize(file);
            }
            catch (Exception ex)
            {
                file.Close();
                Trace.WriteLine(ex.Message);
                return false;
            }

            Reader = new XmlSerializer(output.GetType());
            output.Clear();
            try
            {
                output = (List<stFlexTitleGroup>)Reader.Deserialize(file);
            }
            catch (Exception ex)
            {
                file.Close();
                Trace.WriteLine(ex.Message);
                return false;
            }
            file.Close();
            return true;
        }
        public bool SaveFormatToZufcfg(string sFullPath, stFileHeader mHeader, List<stFlexTitleGroup> Input)
        {
            FileStream File_Zufcfg;
            bool bret = true;
            try
            {
                if (File.Exists(sFullPath))
                {
                    File.Delete(sFullPath);
                }
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
                return false;
            }

            File_Zufcfg = new FileStream(sFullPath, FileMode.CreateNew, FileAccess.ReadWrite);
            if (File_Zufcfg == null)
            {
                Trace.WriteLine("Error - new FileStream");
                return false;
            }

            try
            {
                int len = Marshal.SizeOf(mHeader);
                int pos = 0;
                File_Zufcfg.Write(mHeader.ToByteArray(), 0, len);
                pos += len;
                byte[] arr;
                for(int i=0; i< Input.Count; i++)
                {
                    arr = Input[i].ToByteArray();
                    len = arr.Count();
                    if(Input[i].Header.Size != len)
                    {
                        Trace.WriteLine("Error - No match group size.");
                    }
                    File_Zufcfg.Write(arr, pos, len);
                    pos += len;
                }
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
                bret = false;
            }
            if (File_Zufcfg != null) File_Zufcfg.Close();

            return bret;
        }
        public bool LoadFormatFromZuf(string sFullPath, ref stFileHeader mHeader, ref List<stFlexTitleGroup> output)
        {
            FileStream File_Zufcfg = null;
            stFlexTitleGroup mGrp;
            int len = 0;
            int len1 = 0;
            int pos = 0;
            byte[] arr;
            if (File.Exists(sFullPath))
            {
                File_Zufcfg = new FileStream(sFullPath, FileMode.Open, FileAccess.ReadWrite);
                if (File_Zufcfg == null)
                {
                    Trace.WriteLine("Error - new FileStream");
                    return false;
                }
            }
            else
            {
                MessageBox.Show("Not found a file.");
                return false;
            }

            try
            {

                len = Marshal.SizeOf(mHeader);
                pos = 0;
                arr = new byte[len];
                len1 = File_Zufcfg.Read(arr, pos, len);
                if (len != len1)
                {
                    Trace.WriteLine("Error - No match read size.");
                    if (File_Zufcfg != null) File_Zufcfg.Close();
                    return false;
                }
                mHeader.ToWritePtr(arr);
                pos += len;

                for (int i = 0; i < mHeader.GroupCount; i++)
                {
                    mGrp = new stFlexTitleGroup();
                    len = Marshal.SizeOf(mGrp.Header);
                    arr = new byte[len];
                    len1 = File_Zufcfg.Read(arr, pos, len);
                    if (len != len1)
                    {
                        Trace.WriteLine("Error - No match read size.");
                        if (File_Zufcfg != null) File_Zufcfg.Close();
                        return false;
                    }
                    mGrp.Header.ToWritePtr(arr);

                    len = mGrp.Header.Size;
                    arr = new byte[len];
                    len1 = File_Zufcfg.Read(arr, pos, len);
                    if (len != len1)
                    {
                        Trace.WriteLine("Error - No match read size.");
                        if (File_Zufcfg != null) File_Zufcfg.Close();
                        return false;
                    }

                    if (mGrp.Header.Type == (byte)eGroupRowType.Information)
                    {
                        len = (int)ReadGroupTitleColsData(mGrp.Header.Index, (long)pos, ref output);
                    }
                    else if (mGrp.Header.Type == (byte)eGroupRowType.DataHead)
                    {
                        len = (int)ReadGroupTitleRowData(mGrp.Header.Index, (long)pos, ref output);
                    }
                    else
                    {
                        len = mGrp.Header.Size;
                        len1 = len;
                    }
                    if (len != len1)
                    {
                        Trace.WriteLine("Error - No match read size.");
                        if (File_Zufcfg != null) File_Zufcfg.Close();
                        return false;
                    }
                    pos += len;
                }


            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
                return false;
            }
            return true;
        }

        public bool LoadFormatFromZufcfg(string sFullPath, ref stFileHeader mHeader, ref List<stFlexTitleGroup> output)
        {
            FileStream File_Zufcfg = null;
            stFlexTitleGroup mGrp;
            int len = 0;
            int len1 = 0;
            int pos = 0;
            byte[] arr;
            if (File.Exists(sFullPath))
            {
                File_Zufcfg = new FileStream(sFullPath, FileMode.Open, FileAccess.ReadWrite);
                if (File_Zufcfg == null)
                {
                    Trace.WriteLine("Error - new FileStream");
                    return false;
                }
            }
            else return false;

            try
            {
                
                len = Marshal.SizeOf(mHeader);
                pos = 0;
                arr = new byte[len];
                len1 = File_Zufcfg.Read(arr, pos, len);
                if(len != len1)
                {
                    Trace.WriteLine("Error - No match read size.");
                    if (File_Zufcfg != null) File_Zufcfg.Close();
                    return false;
                }
                mHeader.ToWritePtr(arr);
                pos += len;

                for(int i=0; i<mHeader.GroupCount; i++)
                {
                    mGrp = new stFlexTitleGroup();
                    len = Marshal.SizeOf(mGrp.Header);
                    arr = new byte[len];
                    len1 = File_Zufcfg.Read(arr, pos, len);
                    if (len != len1)
                    {
                        Trace.WriteLine("Error - No match read size.");
                        if (File_Zufcfg != null) File_Zufcfg.Close();
                        return false;
                    }
                    mGrp.Header.ToWritePtr(arr);

                    len = mGrp.Header.Size;
                    arr = new byte[len];
                    len1 = File_Zufcfg.Read(arr, pos, len);
                    if (len != len1)
                    {
                        Trace.WriteLine("Error - No match read size.");
                        if (File_Zufcfg != null) File_Zufcfg.Close();
                        return false;
                    }

                    if (mGrp.Header.Type == (byte)eGroupRowType.Information)
                    {
                        len = (int)ReadGroupTitleColsData(mGrp.Header.Index, (long)pos, ref output);
                    }
                    else if (mGrp.Header.Type == (byte)eGroupRowType.DataHead)
                    {
                        len = (int)ReadGroupTitleRowData(mGrp.Header.Index, (long)pos, ref output);
                    }
                    if (len != len1)
                    {
                        Trace.WriteLine("Error - No match read size.");
                        if (File_Zufcfg != null) File_Zufcfg.Close();
                        return false;
                    }
                    pos += len;
                }

                
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
                return false;
            }
            return true;
        }


        public void CloseFile()
        {
            if (fs != null)
            {
                fs.Close();
                fs = null;
            }
        }
        public bool CreateFile(string filename)
        {
            CloseFile();
            try
            {
                if (File.Exists(filename))
                {
                    File.Delete(filename);
                }
                fs = new FileStream(filename, FileMode.CreateNew, FileAccess.Write);
                Pos = 0;
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
                return false;
            }

            Filename = filename;
            mFileHeader = new stFileHeader();
            GrpHeadList = new Dictionary<byte, stFlexTitleGroup>();
            GrpDataList = new Dictionary<byte, List<stFlexDataGroup>>();

            bCreate = true;

            return true;
        }

        public bool OpenFile(string filename)
        {
            CloseFile();
            try
            {
                if (File.Exists(filename))
                {
                    fs = new FileStream(filename, FileMode.Open, FileAccess.ReadWrite);
                    Pos = 0;
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

        public void Initialize()
        {
            if (bCreate)
            {
                CreateFile(Filename);
            }
            else
            {
                if(OpenFile(Filename) == true)
                {
                    ReadAllInfo();
                }
            }
        }

        public long ReadHeader()
        {
            if (fs == null) return 0;

            int Size = Marshal.SizeOf(mFileHeader);
            byte[] tBytes = new byte[Size];

            if (fs.Read(tBytes, 0, Size) != Size) return 0;
       
            mFileHeader.ToWritePtr(tBytes);
            return (long)Size;
        }

        public long ReadGroupData(long position)
        {
            long pos = position;
            long len = 0;
            if (fs == null) return 0;
            if (fs.Seek(pos, SeekOrigin.Begin) != Pos) return 0;

            byte[] tBytes = new byte[2];
            if (fs.Read(tBytes, 0, 2) != 2) return 0;

            byte type = tBytes[0];
            byte index = tBytes[1];


            if (type == (byte)eGroupRowType.Information)
            {
                len = ReadGroupTitleColsData(index, pos);
            }
            else if (type == (byte)eGroupRowType.DataHead)
            {
                len = ReadGroupTitleRowData(index, pos);
            }
            else
            {
                len = ReadGroupRowData(index, pos);
            }
            return len;
        }

        public long ReadGroupTitleColsData(byte index, long position)
        {
            long pos = position;

            if (fs == null) return 0;
            if (fs.Seek(pos, SeekOrigin.Begin) != Pos) return 0;

            stFlexDataHeadDesc header = new stFlexDataHeadDesc();

            int HeadrSize = Marshal.SizeOf(header);
            byte[] tBytes = new byte[HeadrSize];

            Array.Clear(tBytes, 0, HeadrSize);
            if (fs.Read(tBytes, 0, HeadrSize) != HeadrSize) return 0;

            header.ToWritePtr(tBytes);
            pos += header.Size;
            int DataSize = header.Size - HeadrSize;

            if (DataSize < 1) return HeadrSize;

            if (GrpHeadList.ContainsKey(index) == true)
            {
                Trace.WriteLine("duplicate index discovery");
                return pos;
            }

            Array.Resize<byte>(ref tBytes, header.Size);
            if (fs.Read(tBytes, HeadrSize, DataSize) != DataSize) return 0;

            stFlexTitleGroup GroupTitle = new stFlexTitleGroup(index, "");
            GroupTitle.ToWritePtr(tBytes);
            GrpHeadList.Add(index, GroupTitle);

            return (long)header.Size;
        }

        public long ReadGroupTitleRowData(byte index, long position)
        {
            long pos = position;

            if (fs == null) return 0;
            if (fs.Seek(pos, SeekOrigin.Begin) != Pos) return 0;

            stFlexDataHeadDesc header = new stFlexDataHeadDesc();

            int HeadrSize = Marshal.SizeOf(header);
            byte[] tBytes = new byte[HeadrSize];

            Array.Clear(tBytes, 0, HeadrSize);
            if (fs.Read(tBytes, 0, HeadrSize) != HeadrSize) return 0;

            header.ToWritePtr(tBytes);
            pos += header.Size;
            int DataSize = header.Size - HeadrSize;

            if (DataSize < 1) return HeadrSize;

            if (GrpHeadList.ContainsKey(index) == true)
            {
                Trace.WriteLine("duplicate index discovery");
                return pos;
            }

            Array.Resize<byte>(ref tBytes, header.Size);
            if (fs.Read(tBytes, HeadrSize, DataSize) != DataSize) return 0;

            stFlexTitleGroup GroupTitle = new stFlexTitleGroup(index, "");
            GroupTitle.ToWritePtr(tBytes);
            GrpHeadList.Add(index, GroupTitle);

            return (long)header.Size;
        }

        public long ReadGroupRowData(byte index, long position)
        {
            long pos = position;

            if (fs == null) return 0;
            if (fs.Seek(pos, SeekOrigin.Begin) != Pos) return 0;
            if (GrpHeadList.ContainsKey(index) == false)
            {
                Trace.WriteLine("not found group title information");
                return 0;
            }
            if (GrpDataList.ContainsKey(index) == false)
            {
                Trace.WriteLine("not found data list information");
                return 0;
            }

            int len = GrpHeadList[index].Header.DataRowSize;
            byte[] tBytes = new byte[len];
            if (fs.Read(tBytes, 0, len) != len) return 0;

            stFlexDataGroup GroupTitle = new stFlexDataGroup(index, GrpHeadList[index].Header.Count);
            GroupTitle.ToWritePtr(GrpHeadList[index], tBytes);

            GrpDataList[index].Add(GroupTitle);
            pos += len;
          
            return pos;
        }

        public bool ReadAllInfo(ref long ProgSize, ref long MaxSize )
        {
            long len;
            ProgSize = 0;
            MaxSize = fs.Length;
            len = ReadHeader();
            if (len == 0) return false;
            ProgSize += len;

            while(MaxSize > ProgSize)
            {
                len  = ReadGroupData(ProgSize);
                if (len == 0) return false;
                ProgSize += len;
            }
            return true;
        }

        public bool ReadAllInfo()
        {
            long len;
            long pos;
            pos = 0;

            len = ReadHeader();
            if (len == 0) return false;
            pos += len;

            while (fs.Length > pos)
            {
                len = ReadGroupData(pos);
                if (len == 0) return false;
                pos += len;
            }
            return true;
        }

        public ushort GetDataRowSize(byte itemcnt, stFlexHeadItem[] item)
        {
            ushort size = 0;
            for(byte i=0; i< itemcnt; i++)
            {
                size += item[i].DataSize;
            }
            return size;
        }
        public byte GetNewGroupIndex()
        {
            byte index;
            if (GrpHeadList.Count < 1) index = 0;
            else index = (byte)(GrpHeadList.Keys.Max() + 1);
            return index;
        }
        public byte CreateTempTitleGroup(string GrpLabel)
        {
            byte index = GetNewGroupIndex();
            tGroupTitle = new stFlexTitleGroup(index, GrpLabel);
            
            return index;
        }

        public byte CreateTempTitleGroup(string GrpLabel, stFlexHeadItem[] item)
        {
            byte index = GetNewGroupIndex();
            tGroupTitle = new stFlexTitleGroup(index, GrpLabel);
            for (byte i = 0; i < (byte)item.Length; i++) tGroupTitle.SetItem(i, item[i]);

            return index;
        }

        public bool AddTempGroup()
        {
            tGroupTitle.Header.Index  = GetNewGroupIndex();
            if (GrpHeadList.ContainsKey(tGroupTitle.Header.Index) == true || GrpDataList.ContainsKey(tGroupTitle.Header.Index) == true)
            {
                return false;
            }

            List<stFlexDataGroup> mGrpListData = new List<stFlexDataGroup>();

            GrpHeadList.Add(tGroupTitle.Header.Index, tGroupTitle);
            GrpDataList.Add(tGroupTitle.Header.Index, mGrpListData);

            return true;
        }

        public bool AddGroup(string GrpLabel, byte itemcnt, stFlexHeadItem[] item)
        {
            byte GrpIndex = GetNewGroupIndex();
            if (GrpHeadList.ContainsKey(GrpIndex) == true || GrpDataList.ContainsKey(GrpIndex) == true)
            {
                return false;
            }
            stFlexTitleGroup mGrpTitle = new stFlexTitleGroup(GrpIndex, GrpLabel);
            mGrpTitle.AddItem(item);

            List<stFlexDataGroup> mGrpListData = new List<stFlexDataGroup>();

            GrpHeadList.Add(GrpIndex, mGrpTitle);
            GrpDataList.Add(GrpIndex, mGrpListData);

            return true;
        }

        public bool AddGroup(stFlexTitleGroup grptitle)
        {
            byte GrpIndex = GetNewGroupIndex();
       
            List<stFlexDataGroup> mGrpListData = new List<stFlexDataGroup>();
            grptitle.Header.Index = GrpIndex;
            GrpHeadList.Add(GrpIndex, grptitle);
            GrpDataList.Add(GrpIndex, mGrpListData);

            return true;
        }

        public bool AddIGroupItem(byte GrpIndex, stFlexHeadItem item)
        {
            if(GrpHeadList.ContainsKey(GrpIndex) == false || GrpDataList.ContainsKey(GrpIndex) == false)
            {
                return false;
            }
            
            GrpHeadList[GrpIndex].AddItem(item);

            GrpDataList[GrpIndex].Clear();
            
            return true;
        }



        // Write 
        public bool WriteFileHead()
        {
            if (fs == null) return false;
            int len = Marshal.SizeOf(mFileHeader);
            fs.Seek(0, SeekOrigin.End);
            fs.Write(mFileHeader.ToByteArray(), 0, len);
            return true;
        }


        public bool WriteGroupTitleData(stFlexTitleGroup Group)
        {
            if (fs == null) return false;
            fs.Seek(0, SeekOrigin.End);

            if (GrpHeadList.ContainsKey(Group.Header.Index) == true)
            {
                Trace.WriteLine("duplicate index discovery");
                return false;
            }
            int len = Marshal.SizeOf(Group);
            byte[] arr = Group.ToByteArray();
            GrpHeadList.Add(Group.Header.Index, Group);

            fs.Write(arr, 0, len);
            return true;
        }

        public bool WriteGroupValueData(stFlexDataGroup Group)
        {
            if (fs == null) return false;
            fs.Seek(0, SeekOrigin.End);

            if (GrpHeadList.ContainsKey(Group.Header.Index) == true)
            {
                Trace.WriteLine("duplicate index discovery");
                return false;
            }
            int len = Marshal.SizeOf(Group);
            byte[] arr = Group.ToByteArray();
            fs.Write(arr, 0, len);

            if(GrpDataList.ContainsKey(Group.Header.Index) == false)
            {
                List<stFlexDataGroup> mGrpListData = new List<stFlexDataGroup>();
                GrpDataList.Add(Group.Header.Index, mGrpListData);
            }
            GrpDataList[Group.Header.Index].Add(Group);

            return true;
        }
    }
    
}
