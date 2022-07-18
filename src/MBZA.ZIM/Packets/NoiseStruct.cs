using System;
using System.Runtime.InteropServices;

namespace ZiveLab.ZM.ZIM.Packets
{
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_Zive_SNR_Item
    {
        public double Frequency;
        public double Dc;
        public double Power;
        public st_Zive_SNR_Item(byte init)
        {
            Frequency = 0;
            Dc = 0.0;
            Power = 0;
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
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
            this = (st_Zive_SNR_Item)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_Zive_SNR_Item));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_Zive_SNR
    {
        public st_Zive_SNR_Item Current;
        public st_Zive_SNR_Item Voltage;
        public st_Zive_SNR(byte init)
        {
            Current = new st_Zive_SNR_Item(0);
            Voltage = new st_Zive_SNR_Item(0);
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
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
            this = (st_Zive_SNR)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_Zive_SNR));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_Zive_Value_Item
    {
        public double Current;
        public double Voltage;

        public st_Zive_Value_Item(byte init)
        {
            Current = 0.0;
            Voltage = 0.0;
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
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
            this = (st_Zive_Value_Item)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_Zive_Value_Item));
            pinnedArr.Free();
        }
    }
}
