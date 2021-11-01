using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;

namespace ZiveUniFile
{
    public static class DefineList
    {
        public const ushort DEF_FILE_CODE = 0x1000;
        public const ushort DEF_FILE_VERSION = 1000;
    }

    public static class EnumUtil

    {
        public static string GetDescription(Enum en)
        {
            string str = "";
            Type type = en.GetType();
            MemberInfo[] memInfo = type.GetMember(en.ToString());

            if (memInfo != null && memInfo.Length > 0)

            {
                object[] attrs = memInfo[0].GetCustomAttributes(typeof(DescriptionAttribute), false);
                if (attrs != null && attrs.Length > 0)

                {
                    str = ((DescriptionAttribute)attrs[0]).Description;
                }
            }
            return str;
        }
    }

    public class ZUF_NodeTag
    {
        public int GroupIndex;
        public int ItemIndex;

        public ZUF_NodeTag(int ngrp, int nitem)
        {
            GroupIndex = ngrp;
            ItemIndex = nitem;
        }

        public void SetTag(int ngrp, int nitem)
        {
            GroupIndex = ngrp;
            ItemIndex = nitem;
        }
    }

    public enum eGroupRowType : byte
    {
        [Description("Information")] // 1 Row .... View style item, value
        Information = 0,
        [Description("Data Head")]
        DataHead,
        [Description("Data Row")]
        DataRow,
    };

    public enum eDataItemType : byte
    {
        [Description("")]
        Custom = 0,

        [Description("[s]")]
        Test_Time,
        [Description("[s]")]
        Batch_Time,
        [Description("[s]")]
        Cycle_Time,
        [Description("[s]")]
        Step_Time,

        [Description("")]
        Batch_Step_No = 10,
        [Description("")]
        Cycle_No,
        [Description("")]
        Step_No,
        [Description("")]
        STair_Step_No,

        [Description("[A]")]
        Current = 20,
        [Description("[A]")]
        Idc,
        [Description("[A]")]
        lac,

        [Description("[V]")]
        Voltage = 30,
        [Description("[V]")]
        Vdc,
        [Description("[V]")]
        Vac,

        [Description("[Hz]")]
        Frequency = 100,
        [Description("[ohm]")]
        Zreal,
        [Description("[ohm]")]
        Zimg,
        [Description("[ohm]")]
        Zmag,
        [Description("[deg]")]
        Zph,

    };


    public enum eDataType : byte
    {
        [Description("null")]
        _null,
        [Description("double")]
        _double,
        [Description("float")]
        _float,
        [Description("long")]
        _long,
        [Description("int")]
        _int,
        [Description("short")]
        _short,
        [Description("ulong")]
        _ulong,
        [Description("uint")]
        _uint,
        [Description("ushort")]
        _ushort,
        [Description("char")]
        _char,
        [Description("byte")]
        _byte,
        [Description("time")]
        _time,
        [Description("date")]
        _date,
        [Description("datetime")]
        _datetime,
        [Description("string")]
        _string,
        [Description("byte_array")]
        _byte_array,
    };


    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stFlexLabel
    {
        public byte Size;
        public byte[] Characters;
        public stFlexLabel(string characters)
        {
            Size = 0;
            
            byte[] tmp = Encoding.Default.GetBytes(characters.ToCharArray());
            Characters = new byte[tmp.Length];
            Array.Copy(tmp, Characters, tmp.Length);
            Size = (byte)(tmp.Length + 1);
        }
        public stFlexLabel(byte[] characters)
        {
             Characters = new byte[characters.Length];
             Array.Copy(characters, Characters, characters.Length);
             Size = (byte)(characters.Length + 1);
        }
        public void SetLabel(string characters)
        {
            byte[] tmp = Encoding.Default.GetBytes(characters.ToCharArray());
            Characters = new byte[tmp.Length];
            Array.Copy(tmp, Characters, tmp.Length);
            Size = (byte)(tmp.Length + 1);
        }
        public void SetLabel(byte[] characters)
        {
            int size = characters.Length;
            Characters = new byte[characters.Length];
            Array.Copy(characters, Characters, characters.Length);
            Size = (byte)(characters.Length + 1);
        }
        public string GetLabel()
        {
            return Encoding.Default.GetString(Characters);
        }
        public byte[] GetBytesLabel()
        {
            return Characters;
        }
        public byte[] ToByteArray()
        {
            byte[] arr;
            arr = new byte[Size];
            arr[0] = Size;
            Array.Copy(Characters, 0, arr, 1, Size - 1);
            return arr;
        }

        public byte ToWritePtr(byte[] Arr)
        {
            Size = Arr[0];
            if (Size < 1) Size = 1;
            Characters = new byte[Size-1];
            Array.Clear(Characters,0, Size - 1);
            if (Arr.Length >= Size) Array.Copy(Arr, 1, Characters, 0, Size - 1);
            return Size;
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stFlexData
    {
        public byte Size;
        public byte[] Data;
        public stFlexData(byte[] data)
        {
            Data = new byte[data.Length];
            Array.Clear(Data, 0, data.Length);
            Array.Copy(data, Data, data.Length);
            Size = (byte)(data.Length + 1);
        }
        public stFlexData(object data)
        {
            Type type = data.GetType();
            byte[] tmp;

            if (type == typeof(double)) tmp = BitConverter.GetBytes((double)data);
            else if (type == typeof(float)) tmp = BitConverter.GetBytes((float)data);
            else if (type == typeof(long)) tmp = BitConverter.GetBytes((long)data);
            else if (type == typeof(int)) tmp = BitConverter.GetBytes((int)data);
            else if (type == typeof(short)) tmp = BitConverter.GetBytes((short)data);
            else if (type == typeof(ulong)) tmp = BitConverter.GetBytes((ulong)data);
            else if (type == typeof(uint)) tmp = BitConverter.GetBytes((uint)data);
            else if (type == typeof(ushort)) tmp = BitConverter.GetBytes((ushort)data);
            else if (type == typeof(byte)) tmp = BitConverter.GetBytes((byte)data);
            else if (type == typeof(char)) tmp = BitConverter.GetBytes((char)data);
            else if (type == typeof(string)) tmp = Encoding.Default.GetBytes(((string)data).ToCharArray());
            else if (type == typeof(byte[])) tmp = (byte[])data;
            else tmp = new byte[0];
            Data = new byte[tmp.Length];
            Array.Clear(Data, 0, tmp.Length);
            Array.Copy(tmp, Data, tmp.Length);
            Size = (byte)(tmp.Length + 1);
        }
        public void SetData(byte[] data)
        {
            Data = new byte[data.Length];
            Array.Clear(Data, 0, data.Length);
            Array.Copy(data, Data, data.Length);
            Size = (byte)(data.Length + 1);
        }
        public void SetData(object data)
        {
            Type type = data.GetType();
            byte[] tmp;

            if (type == typeof(double)) tmp = BitConverter.GetBytes((double)data);
            else if (type == typeof(float)) tmp = BitConverter.GetBytes((float)data);
            else if (type == typeof(long)) tmp = BitConverter.GetBytes((long)data);
            else if (type == typeof(int)) tmp = BitConverter.GetBytes((int)data);
            else if (type == typeof(short)) tmp = BitConverter.GetBytes((short)data);
            else if (type == typeof(ulong)) tmp = BitConverter.GetBytes((ulong)data);
            else if (type == typeof(uint)) tmp = BitConverter.GetBytes((uint)data);
            else if (type == typeof(ushort)) tmp = BitConverter.GetBytes((ushort)data);
            else if (type == typeof(byte)) tmp = BitConverter.GetBytes((byte)data);
            else if (type == typeof(char)) tmp = BitConverter.GetBytes((char)data);
            else if (type == typeof(string)) tmp = Encoding.Default.GetBytes(((string)data).ToCharArray());
            else if (type == typeof(byte[])) tmp = (byte[])data;
            else tmp = new byte[0];
            Data = new byte[tmp.Length];
            Array.Clear(Data, 0, tmp.Length);
            Array.Copy(tmp, Data, tmp.Length);
            Size = (byte)(tmp.Length + 1);
        }

        public object GetData(Type type)
        {
            object tmp;

            if (type == typeof(double)) tmp = BitConverter.ToDouble(Data, 0);
            else if (type == typeof(float)) tmp = BitConverter.ToSingle(Data, 0);
            else if (type == typeof(long)) tmp = BitConverter.ToInt64(Data, 0);
            else if (type == typeof(int)) tmp = BitConverter.ToInt32(Data, 0);
            else if (type == typeof(short)) tmp = BitConverter.ToInt16(Data, 0);
            else if (type == typeof(ulong)) tmp = BitConverter.ToUInt64(Data, 0);
            else if (type == typeof(uint)) tmp = BitConverter.ToUInt32(Data, 0);
            else if (type == typeof(ushort)) tmp = BitConverter.ToUInt16(Data, 0);
            else if (type == typeof(byte)) tmp = Data[0];
            else if (type == typeof(char)) tmp = BitConverter.ToChar(Data, 0);
            else if (type == typeof(string)) tmp = BitConverter.ToString(Data, 0);
            else if (type == typeof(byte[])) tmp = Data;
            else tmp = (byte)0;
            return tmp;
        }

        public object GetData(eDataType type)
        {
            object tmp;

            if (type == eDataType._double) tmp = BitConverter.ToDouble(Data, 0);
            else if (type == eDataType._float) tmp = BitConverter.ToSingle(Data, 0);
            else if (type == eDataType._long) tmp = BitConverter.ToInt64(Data, 0);
            else if (type == eDataType._int) tmp = BitConverter.ToInt32(Data, 0);
            else if (type == eDataType._short) tmp = BitConverter.ToInt16(Data, 0);
            else if (type == eDataType._ulong) tmp = BitConverter.ToUInt64(Data, 0);
            else if (type == eDataType._uint) tmp = BitConverter.ToUInt32(Data, 0);
            else if (type == eDataType._ushort) tmp = BitConverter.ToUInt16(Data, 0);
            else if (type == eDataType._byte) tmp = Data[0];
            else if (type == eDataType._char) tmp = BitConverter.ToChar(Data, 0);
            else if (type == eDataType._string) tmp = BitConverter.ToString(Data, 0);
            else if (type == eDataType._byte_array) tmp = Data;
            else tmp = (byte)0;
            return tmp;
        }

        public int GetSize()
        {
            return Data.Length+1;
        }

        public byte[] GetData()
        {
            return Data;
        }

        public byte[] ToByteArray()
        {
            byte[] arr;
            arr = new byte[Size];
            arr[0] = Size;
            Array.Copy(Data, 0, arr, 1, Size - 1);
            return arr;
        }

        public byte ToWritePtr(byte[] Arr)
        {
            Size = Arr[0];
            if (Size < 1) Size = 1;
            Data = new byte[Size - 1];
            Array.Clear(Data, 0, Size - 1);
            if (Arr.Length >= Size) Array.Copy(Arr, 1, Data, 0, Size - 1);
            return Size;
        }
    }
    /*
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stFlexInfo
    {
        public ushort Size;
        public byte Datatype;
        public byte DataSize;
        public stFlexLabel Label;
        public stFlexLabel Unit;
        public stFlexData Data;
        public stFlexInfo(bool init = true)
        {
            byte tmp = 0;
            Label = new stFlexLabel(new byte[0]);
            Unit = new stFlexLabel(new byte[0]);
            Datatype = (byte)eDataType.bval;
            DataSize = 1;
            Size = 0;
            Data = new stFlexData(tmp, DataSize);
            DataSize = (byte)Marshal.SizeOf(Data);
            Size = (ushort)Marshal.SizeOf(this);
        }
        public stFlexInfo(string label)
        {
            byte tmp = 0;
            Label = new stFlexLabel(label);
            Unit = new stFlexLabel(new byte[0]);
            Datatype = (byte)eDataType.bval;
            DataSize = 1;
            Size = 0;
            Data = new stFlexData(tmp, DataSize);
            DataSize = (byte)Marshal.SizeOf(Data);
            Size = (ushort)Marshal.SizeOf(this);
        }
        public stFlexInfo(string label, string unit)
        {
            byte tmp = 0;
            Label = new stFlexLabel(label);
            Unit = new stFlexLabel(unit);
            Datatype = (byte)eDataType.bval;
            DataSize = 1;
            Size = 0;
            Data = new stFlexData(tmp, DataSize);
            DataSize = (byte)Marshal.SizeOf(Data);
            Size = (ushort)Marshal.SizeOf(this);
        }
        public stFlexInfo(string label, string unit, object data)
        {
            Label = new stFlexLabel(label);
            Unit = new stFlexLabel(unit);
            DataSize = (byte)Marshal.SizeOf(data);
            Data = new stFlexData(data, DataSize);
            Datatype = (byte)eDataType.unval;
            Size = 4;
            Datatype = GetDataType(data);
            Size = (ushort)Marshal.SizeOf(this);
            
        }

        public byte GetDataType(object obj)
        {
            Type type = obj.GetType();
            byte dtype;

            if (type == typeof(double)) dtype = (byte)eDataType.dbval;
            else if (type == typeof(float)) dtype = (byte)eDataType.fval;
            else if (type == typeof(long)) dtype = (byte)eDataType.lval;
            else if (type == typeof(int)) dtype = (byte)eDataType.ival;
            else if (type == typeof(short)) dtype = (byte)eDataType.sval;
            else if (type == typeof(ulong)) dtype = (byte)eDataType.ulval;
            else if (type == typeof(uint)) dtype = (byte)eDataType.uival; 
            else if (type == typeof(ushort)) dtype = (byte)eDataType.usval;
            else if (type == typeof(byte)) dtype = (byte)eDataType.bval;
            else if (type == typeof(char)) dtype = (byte)eDataType.cval;
            else if (type == typeof(string)) dtype = (byte)eDataType.sval;
            else if (type == typeof(byte[])) dtype = (byte)eDataType.arrval;
            else dtype = (byte)eDataType.unval;
            return dtype;
        }

        public void SetLabel(string label)
        {
            Label.SetLabel(label);
            Size = (ushort)Marshal.SizeOf(this);
        }
        public void SetUnit(string unit)
        {
            Unit.SetLabel(unit);
            Size = (ushort)Marshal.SizeOf(this);
        }

        public ushort GetSize()
        {
            return (ushort)Marshal.SizeOf(this);
        }

        public void SetLabelUnit(string label, string unit)
        {
            Label.SetLabel(label);
            Unit.SetLabel(unit);
            Size = (ushort)Marshal.SizeOf(this);
        }
    
        public void SetupData(object data)
        {
            Datatype = GetDataType(data);
            DataSize = (byte)Marshal.SizeOf(Data);
            Data.SetData(data, DataSize);
            Size = (ushort)Marshal.SizeOf(this);
        }
        public byte GetDataType()
        {
            return Datatype;
        }
        public byte GetDataSize()
        {
            return DataSize;
        }
      
        public byte[] ToByteArray()
        {
            int size = Marshal.SizeOf(this);

            byte[] arr;
            arr = new byte[size];

            IntPtr Ptr = Marshal.AllocHGlobal(size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public int ToWritePtr(byte[] Arr)
        {
            int len = 0;
            int pos = 0;
            byte[] arr = new byte[1];

            len = Marshal.SizeOf(typeof(ushort));
            Size = BitConverter.ToUInt16(Arr, pos);
            pos += len;

            Datatype = Arr[pos];
            pos++;

            DataSize = Arr[pos];
            pos++;

            //write label
            len = Arr[pos];
            Array.Resize<byte>(ref arr, len);
            Array.Copy(Arr, pos, arr, 0, len);
            pos += Label.ToWritePtr(arr);

            //write unit
            len = Arr[pos];
            Array.Resize<byte>(ref arr, len);
            Array.Copy(Arr, pos, arr, 0, len);
            pos += Unit.ToWritePtr(arr);

            //write data
            len = Marshal.SizeOf(Arr) - pos;
            Array.Resize<byte>(ref arr, len);
            Array.Copy(Arr, pos, arr, 0, len);
            pos += Data.ToWritePtr(arr);

            Trace.Assert(Size != pos, "checked no match size[stFlexTitle_WritePtr]");

            return pos;
        }
    }
    */
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stFlexDataHeadDesc
    {
        public byte     Type;
        public byte     Index;
        public ushort    Size;
        public ushort    DataRowSize;
        public byte      Count;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 2)]
        public byte[]    nouse;
        public stFlexDataHeadDesc(byte index, byte type = (byte)eGroupRowType.DataHead)
        {
            Index = index;
            Type = type;
            Size = 0;
            
            Count = 0;
            DataRowSize = 0;

            nouse = new byte[2];
            nouse[0] = 0;
            nouse[1] = 0;

            Size = (ushort)Marshal.SizeOf(this);
        }

        public byte GetGroupIndex()
        {
            return Index;
        }

        public byte[] ToByteArray()
        {
            int isize = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[isize];
            IntPtr Ptr = Marshal.AllocHGlobal(isize);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, isize);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stFlexDataHeadDesc)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stFlexDataHeadDesc));
            pinnedArr.Free();
        }
    }
    
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stFlexDataRowDesc
    {
        public byte Type;
        public byte Index;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte []nouse;
        public stFlexDataRowDesc(byte index)
        {
            Index = index;
            Type = (byte)eGroupRowType.DataRow;
            nouse = new byte[3];
            nouse[0] = 0;
            nouse[1] = 0;
            nouse[2] = 0;
        }
        public byte[] ToByteArray()
        {
            int isize = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[isize];
            IntPtr Ptr = Marshal.AllocHGlobal(isize);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, isize);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stFlexDataRowDesc)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stFlexDataRowDesc));
            pinnedArr.Free();
        }
    }


    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stFlexHeadItem
    {
        public ushort Size;
        public byte Type;
        public byte Datatype;
        public byte DataSize;
        private stFlexLabel Label;
        private stFlexLabel Unit;
        public stFlexHeadItem(bool init = true)
        {
            Label = new stFlexLabel(new byte[0]);
            Unit = new stFlexLabel(new byte[0]);

            Type = 0;
            Datatype = (byte)eDataType._byte;
            DataSize = 1;
            Size = (ushort)(5 + Label.Size + Unit.Size);
        }
        public stFlexHeadItem(string label)
        {
            Label = new stFlexLabel(label);
            Unit = new stFlexLabel(new byte[0]);
            Datatype = (byte)eDataType._byte;
            DataSize = 1;
            Size = 0;
            Type = 0;
            Size = (ushort)(5 + Label.Size + Unit.Size);
        }
        public stFlexHeadItem(string label, string unit)
        {
            Label = new stFlexLabel(label);
            Unit = new stFlexLabel(unit);
            Datatype = (byte)eDataType._byte;
            DataSize = 1;
            Size = 0;
            Type = 0;
            Size = (ushort)(5 + Label.Size + Unit.Size);
        }
        public stFlexHeadItem(string label, string unit, eDataType datatype, byte datasize, byte datacode)
        {
            Label = new stFlexLabel(label);
            Unit = new stFlexLabel(unit);
            DataSize = datasize;
            Type = datacode;
            Datatype = (byte)datatype;
            Size = (ushort)(5 + Label.Size + Unit.Size);
        }
        public eDataType GetDataType(object obj)
        {
            Type type = obj.GetType();
            eDataType dtype;

            if (type == typeof(double)) dtype = eDataType._double;
            else if (type == typeof(float)) dtype = eDataType._float;
            else if (type == typeof(long)) dtype =  eDataType._long;
            else if (type == typeof(int)) dtype =  eDataType._int;
            else if (type == typeof(short)) dtype =  eDataType._short;
            else if (type == typeof(ulong)) dtype =  eDataType._ulong;
            else if (type == typeof(uint)) dtype =  eDataType._uint; 
            else if (type == typeof(ushort)) dtype =  eDataType._ushort;
            else if (type == typeof(byte)) dtype =  eDataType._byte;
            else if (type == typeof(char)) dtype =  eDataType._char;
            else if (type == typeof(string)) dtype =  eDataType._string;
            else if (type == typeof(byte[])) dtype = eDataType._byte_array;
            else dtype =  eDataType._null;
            return dtype;
        }
      
        public byte GetDataSize(eDataType dtype)
        {
            byte size = 0;

            if(dtype == eDataType._double) size = (byte)Marshal.SizeOf(typeof(double));
            else if (dtype == eDataType._float) size = (byte)Marshal.SizeOf(typeof(float));
            else if (dtype == eDataType._long) size = (byte)Marshal.SizeOf(typeof(long));
            else if (dtype == eDataType._int) size = (byte)Marshal.SizeOf(typeof(int));
            else if (dtype == eDataType._short) size = (byte)Marshal.SizeOf(typeof(short));
            else if (dtype == eDataType._ulong) size = (byte)Marshal.SizeOf(typeof(ulong));
            else if (dtype == eDataType._uint) size = (byte)Marshal.SizeOf(typeof(uint));
            else if (dtype == eDataType._ushort) size = (byte)Marshal.SizeOf(typeof(ushort));
            else if (dtype == eDataType._byte) size = (byte)Marshal.SizeOf(typeof(byte));
            else size = DataSize;
            return size;
        }

        public void SetLabel(string label)
        {
            Label.SetLabel(label);
            Size = (ushort)(5 + Label.Size + Unit.Size);
        }
        public void SetUnit(string unit)
        {
            Unit.SetLabel(unit);
            Size = (ushort)(5 + Label.Size + Unit.Size);
        }
        public void SetLabelUnit(string label, string unit)
        {
            Label.SetLabel(label);
            Unit.SetLabel(unit);
            Size = (ushort)(5 + Label.Size + Unit.Size);
        }
        public string GetLabel()
        {
            return Label.GetLabel();
        }
        public string GetUnit()
        {
            return Unit.GetLabel();
        }
        public void SetDataType(eDataType datatype)
        {
            Datatype = (byte)datatype;
        }
        public void SetupData(eDataType datatype, byte datasize, byte datacode)
        {
            Datatype = (byte)datatype;
            DataSize = datasize;
            Type = datacode;
        }
        
      
        public byte[] ToByteArray()
        {
            byte[] arr;
            byte[] tmp;
            int pos = 0;
            arr = new byte[Size];
            tmp = BitConverter.GetBytes(Size);
            Array.Copy(tmp,0, arr,pos, tmp.Length);
            pos += tmp.Length;
            arr[pos] = Type;
            pos++;
            arr[pos] = Datatype;
            pos++;
            arr[pos] = DataSize;
            pos++;
            tmp = Label.ToByteArray();
            Array.Copy(tmp, 0, arr, pos, tmp.Length);
            pos += tmp.Length;
            tmp = Unit.ToByteArray();
            Array.Copy(tmp, 0, arr, pos, tmp.Length);
            pos += tmp.Length;
            Trace.Assert(Size == pos, "************* No match size of stFlexHeadItem.");
            return arr;
        }

        public int ToWritePtr(byte[] Arr)
        {
            int len = 0;
            int len1 = 0;
            int pos = 0;
            byte[] arr = new byte[1];

            len = Marshal.SizeOf(Size);
            Size = BitConverter.ToUInt16(Arr, pos);
            pos += len;
            Type = Arr[pos];
            pos++;
            Datatype = Arr[pos];
            pos++;
            DataSize = Arr[pos];
            pos++;
           
            //write label
            len = Arr[pos];
            Array.Resize<byte>(ref arr, len);
            Array.Copy(Arr, pos, arr, 0, len);
            len1 = Label.ToWritePtr(arr);
            Trace.Assert(len == len1, "************* No match size of stFlexTitle_WritePtr.");
            pos += len1;

            //write unit
            len = Arr[pos];

            Array.Resize<byte>(ref arr, len);
            Array.Copy(Arr, pos, arr, 0, len);
            len1 = Unit.ToWritePtr(arr);
            Trace.Assert(len == len1, "************* No match size of stFlexTitle_WritePtr.");
            pos += len1;

            Trace.Assert(Size == pos, "checked no match size[stFlexTitle_WritePtr]");

            return pos;
        }
    }
    

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stFlexDataGroup
    {
        public stFlexDataRowDesc Header;
        public stFlexData[] Data;
        public stFlexDataGroup(byte groupindex, byte count)
        {
            Header = new stFlexDataRowDesc(groupindex);
            Data = new stFlexData[count];
        }
        public void Initialize(byte groupindex, byte count)
        {
            Header = new stFlexDataRowDesc(groupindex);
            Array.Resize<stFlexData>(ref Data, count);
        }

        public void ResizeItemcount(byte count)
        {
            Array.Resize<stFlexData>(ref Data, count);
        }

        public bool SetItem(ushort itemindex, object itemdata)
        {
            if (itemindex >= (ushort)Data.Length)
            {
                return false;
            }
            Data[itemindex] = new stFlexData(itemdata);
            return true;
        }
        public bool SetItem(ushort itemindex, byte[] itemdata)
        {
            if (itemindex >= (ushort)Data.Length)
            {
                return false;
            }
            Data[itemindex] = new stFlexData(itemdata);
            return true;
        }
        public int GetItemSize(ushort itemindex)
        {
            if (itemindex >= (ushort)Data.Length)
            {
                return 0;
            }
            return Data[itemindex].GetSize();
        }
        public int GetSize()
        {
            int size = Marshal.SizeOf(Header);
            int i;
            for(i=0; i< Data.Length; i++)
            {
                size += Data[i].GetSize();
            }
            return size; 
        }
        public byte[] ToByteArray()
        {
            int size = GetSize();
            int pos = 0;
            byte[] arr;
            byte[] tmp;
            int i;

            arr = new byte[size];

            tmp = Header.ToByteArray();
            Array.Copy(tmp,0, arr,pos, tmp.Length);
            pos += tmp.Length;

            for (i = 0; i < Data.Length; i++)
            {
                tmp = Data[i].ToByteArray();
                Trace.Assert(tmp.Length == Data[i].Size, "checked no match size[stFlexDataGroup_stFlexData]");
                Array.Copy(tmp, 0, arr, pos, tmp.Length);
                pos += tmp.Length;
            }
            Trace.Assert(size == pos, "checked no match size[stFlexDataGroup]");
            return arr;
        }

        public byte[] ToByteArray(ushort itemindex)
        {
            return Data[itemindex].ToByteArray();
        }

        public byte[] ToByteArray(stFlexDataHeadDesc title)
        {
            byte i = 0;
            byte icnt = (byte)Data.Length;
            byte[] Arr = new byte[title.DataRowSize];
            byte[] arr;
            int pos = 0;
            int len = 0;

            if (title.Count != icnt)
            {
                Trace.WriteLine("Checked no match item count.");
                return null;
            }

            len = Marshal.SizeOf(Header);
            arr = Header.ToByteArray();
            Array.Copy(arr, 0, Arr, pos, len);
            pos += len;

            for (i=0; i< icnt; i++)
            {
                len = Data[i].Data.Length;
                if (len != title.Size)
                {
                    Trace.WriteLine("Checked no match item size.");
                    return null;
                }
                if ((pos + len) > title.DataRowSize)
                {
                    Trace.WriteLine("Checked over row size.");
                    return null;
                }
                Array.Copy(Data[i].Data, 0, Arr, pos, len);
                pos += len;
            }

            return Arr;
        }

        public int ToWritePtr(stFlexTitleGroup title, byte[] Arr)
        {
            byte i = 0;
            byte[] arr;
            int pos = 0;
            int len = 0;
            int len1 = 0;

            len = Marshal.SizeOf(Header);
            arr = new byte[len];

            Array.Copy(Arr, pos, arr, 0, len);
            Header.ToWritePtr(arr);
            pos += len;

            Array.Resize<stFlexData>(ref Data, title.Header.Count);
            for(i=0; i< title.Header.Count; i++)
            {
                len = title.Items[i].DataSize;
                Array.Resize<byte>(ref arr, len);
                Array.Copy(Arr, pos, arr, 0, len);
                len1 = Data[i].ToWritePtr(arr);
                Trace.Assert(len == len1, "checked no match size[stFlexDataGroup]");
                pos += len1;
             
            }
            return pos;
        }
    }

    
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stFlexTitleGroup
    {
        public stFlexDataHeadDesc Header;
        public stFlexLabel GroupLabel;
        public stFlexHeadItem[] Items;

        public stFlexTitleGroup(byte groupindex, string grouplabel)
        {
            Header = new stFlexDataHeadDesc(groupindex);
            GroupLabel = new stFlexLabel(grouplabel);
            Items = null;
            Header.Count = 0;
            Header.DataRowSize = 0;
            Header.Size = (ushort)(Marshal.SizeOf(Header) + GroupLabel.Size);
        }

        public stFlexTitleGroup(byte groupindex, string grouplabel, stFlexHeadItem[] items)
        {
            int i;
            Header = new stFlexDataHeadDesc(groupindex);
            GroupLabel = new stFlexLabel(grouplabel);

            Header.Count = (byte)items.Length;
            Items = new stFlexHeadItem[Header.Count];

            Array.Copy(items, Items, Header.Count);
            Header.DataRowSize = GetDataRowSize();

            Header.Size = (ushort)(Marshal.SizeOf(Header) + GroupLabel.Size);
            for(i=0; i< Items.Length; i++)
            {
                Header.Size += Items[i].Size;
            }
        }

        public ushort GetDataRowSize()
        {
            ushort size = 0;
            if(Items == null) return size;
            for (byte i = 0; i < (byte)Items.Length; i++)
            {
                size += (ushort)(Items[i].DataSize + 1);
            }
            return size;
        }

        public ushort GetGroupSize()
        {
            int i;
            ushort size = (ushort)(Marshal.SizeOf(Header) + GroupLabel.Size);
            if (Items != null)
            {
                for (i = 0; i < Items.Length; i++)
                {
                    size += Items[i].Size;
                }
            }
            Header.Size = size;
            return size;
        }

        public byte GetItemCount()
        {
            if (Items == null) return 0;
            return (byte)Items.Length;
        }

        public void SetGroupLabel(string grouplabel)
        {
            GroupLabel.SetLabel(grouplabel);
            Header.Size = GetGroupSize();
        }

        public string GetGroupLabel()
        {
            return GroupLabel.GetLabel();
        }

        public void AddItem(string itemlabel, string itemunit, eDataType datatype, byte datasize, byte datacode)
        {
            Array.Resize<stFlexHeadItem>(ref Items, Header.Count+1);
            Items[Header.Count] = new stFlexHeadItem(itemlabel, itemunit, datatype, datasize, datacode);
            Header.Count++;
            Header.DataRowSize = GetDataRowSize();
            Header.Size = GetGroupSize();
        }

        public void AddItem(stFlexHeadItem headitem)
        {
            Array.Resize<stFlexHeadItem>(ref Items, Header.Count + 1);
            Items[Header.Count] = headitem;
            Header.Count++;
            Header.DataRowSize = GetDataRowSize(); 
            Header.Size = GetGroupSize();
        }

        public void AddItem(stFlexHeadItem[] headitems)
        {
            Array.Resize<stFlexHeadItem>(ref Items, Header.Count + headitems.Length);
            Array.Copy(headitems, 0, Items, Header.Count, headitems.Length);

            Header.Count = (byte)Items.Length;
            Header.DataRowSize = GetDataRowSize();
            Header.Size = GetGroupSize();
        }

        public bool InsertItem(byte index, string itemlabel, string itemunit, eDataType datatype, byte datasize, byte datacode)
        {
            if (Header.Count < index) return false;
            int nbk = Header.Count - index;
            Array.Resize<stFlexHeadItem>(ref Items, Header.Count + 1);

            if (nbk > 0)
            {
                stFlexHeadItem[] items = new stFlexHeadItem[nbk];
                Array.Copy(Items, index, items, 0, nbk);
                Array.Copy(items, 0, Items, index+1, nbk);
            }
            Items[index] = new stFlexHeadItem(itemlabel, itemunit, datatype, datasize, datacode);
            Header.Count++;
            Header.DataRowSize = GetDataRowSize();
            Header.Size = GetGroupSize();
            return true;
        }

        public bool InsertItem(byte index, stFlexHeadItem headitem)
        {
            if (Header.Count < index) return false;
            int nbk = Header.Count - index;
            Array.Resize<stFlexHeadItem>(ref Items, Header.Count + 1);

            if (nbk > 0)
            {
                stFlexHeadItem[] items = new stFlexHeadItem[nbk];
                Array.Copy(Items, index, items, 0, nbk);
                Array.Copy(items, 0, Items, index + 1, nbk);
            }
            Items[index] = headitem;
            Header.Count++;
            Header.DataRowSize = GetDataRowSize();
            Header.Size = GetGroupSize();
            return true;
        }

        public void DeleteAllItem()
        {
            Items = null;
            Header.Count = 0;
            Header.DataRowSize = 0;
            Header.Size = (ushort)(Marshal.SizeOf(Header) + GroupLabel.Size);
        }

        public bool DeleteItem(byte index)
        {
            if (Header.Count <= index) return false;
            Header.Count--;
            int nbk = Header.Count - index;
            
            if (nbk > 0)
            {
                Array.Copy(Items, index + 1, Items, index, nbk);
            }
            Array.Resize<stFlexHeadItem>(ref Items, Header.Count);

            Header.DataRowSize = GetDataRowSize();
            Header.Size = GetGroupSize();
            return true;
        }

        public bool SetItem(byte index, string itemlabel)
        {
            if(Header.Count <= index) return false;
            Items[index].SetLabel(itemlabel);

            Header.Size = GetGroupSize();
            return true;
        }
        public bool SetItem(byte index, string itemlabel, string itemunit)
        {
            if (Header.Count <= index) return false;
            Items[index].SetLabelUnit(itemlabel, itemunit);
            Header.Size = GetGroupSize();
            return true;
        }
        public bool SetItem(byte index, eDataType datatype, byte datasize, byte datacode)
        {
            if (Header.Count <= index) return false;
            int oldsize = Items[index].DataSize;
            Items[index].SetupData(datatype, datasize, datacode);
            Header.DataRowSize = GetDataRowSize();
            Header.Size = GetGroupSize();
            return true;
        }

        public bool SetItem(byte index, string itemlabel, string itemunit, eDataType datatype, byte datasize, byte datacode)
        {
            if (Header.Count <= index) return false;
            int oldsize = Items[index].DataSize;
            Items[index].SetLabelUnit(itemlabel, itemunit);
            Items[index].SetupData(datatype, datasize, datacode);
            Header.DataRowSize = GetDataRowSize();
            Header.Size = GetGroupSize();
            return true;
        }

        public bool SetItem(byte index, stFlexHeadItem headitem)
        {
            if (Header.Count <= index) return false;
            Items[index] = headitem;
            Header.DataRowSize = GetDataRowSize();
            Header.Size = GetGroupSize();
            return true;
        }


        public byte[] ToByteArray()
        {
            int pos = 0;
            int size = Header.Size;
            int i;
            byte[] arr = new byte[size];
            byte[] tmp;

            tmp = Header.ToByteArray();
            Array.Copy(tmp,0, arr,pos, tmp.Length);
            pos += tmp.Length;

            tmp = GroupLabel.ToByteArray();
            Array.Copy(tmp, 0, arr, pos, tmp.Length);
            pos += tmp.Length;

            for(i=0; i< Items.Length; i++)
            {
                tmp = Items[i].ToByteArray();
                Array.Copy(tmp, 0, arr, pos, tmp.Length);
                pos += tmp.Length;
            }
            Trace.Assert(size == pos, "checked no match size[stFlexTitleGroup]");
            return arr;
        }

        public int ToWritePtr(byte[] Arr)
        {
            //Header write
            int pos = 0;
            int len = Marshal.SizeOf(Header);
            int len1;
            byte[] arr = new byte[len];

            Array.Copy(Arr, 0, arr, 0, len);
            Header.ToWritePtr(arr);
            pos += len;

            //Write Group label
            len = Arr[pos];
            Array.Resize<byte>(ref arr, len);
            Array.Copy(Arr, pos, arr, 0, len);
            pos += GroupLabel.ToWritePtr(arr);

            // Item title write
            Items = new stFlexHeadItem[Header.Count];
            for (byte i = 0; i < Header.Count; i++)
            {
                len = Arr[pos];
                Array.Resize<byte>(ref arr, len);
                Array.Copy(Arr, pos, arr, 0, len);
                len1 = (ushort)Items[i].ToWritePtr(arr);
                pos += len;
                Trace.Assert(len1 == len, "checked no match size[stFlexTitleGroup]");
            }
            Trace.Assert(Header.Size == len, "checked no match size[stFlexTitleGroup]");
            return pos;
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stFileHeader
    {
        public ushort Size;
        public ushort FileCode;
        public ushort FileVersion;
        public ushort GroupCount;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 10)]
        public ushort[] Nouse;
        public stFileHeader(bool init = true)
        {
            Size = 0;
            FileCode = DefineList.DEF_FILE_CODE;
            FileVersion = DefineList.DEF_FILE_VERSION;
            GroupCount = 0;
            Nouse = new ushort[10];
            for(int i=0; i<10; i++)
            {
                Nouse[i] = 0;
            }
            Size = (ushort)Marshal.SizeOf(this);
        }

        public stFileHeader(ushort filecode, ushort fileversion)
        {
            Size = 0;
            FileCode = filecode;
            FileVersion = fileversion;
            Nouse = new ushort[10];
            for (int i = 0; i < 10; i++)
            {
                Nouse[i] = 0;
            }
            GroupCount = 0;
            Size = (ushort)Marshal.SizeOf(this);
        }

        public void Initialize()
        {
            Size = 0;
            GroupCount = 0;
            FileCode = DefineList.DEF_FILE_CODE;
            FileVersion = DefineList.DEF_FILE_VERSION;
            Size = (ushort)Marshal.SizeOf(this);
        }

        public void Initialize(ushort filecode, ushort fileversion)
        {
            Size = 0;
            FileCode = filecode;
            FileVersion = fileversion;
            GroupCount = 0;
            Size = (ushort)Marshal.SizeOf(this);
        }

        public byte[] ToByteArray()
        {
            Size = (ushort)Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stFileHeader)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stFileHeader));
            pinnedArr.Free();
        }
    }

}
