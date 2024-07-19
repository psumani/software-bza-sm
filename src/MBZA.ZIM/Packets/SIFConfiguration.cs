using System;
using System.Runtime.InteropServices;

namespace ZiveLab.ZM.ZIM.Packets
{
    public struct stConnTargetCfg // rename to SIFConfiguration
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public byte[] IpAddress;
        public int Port;
 
        public stConnTargetCfg(byte init)
        {
            IpAddress = new byte[4];

            IpAddress[0] = 169;
            IpAddress[1] = 254;
            IpAddress[2] = 17;
            IpAddress[3] = 2;

            Port = 2000;

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
            this = (stConnTargetCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stConnTargetCfg));
            pinnedArr.Free();
        }
    }
    

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stDevInf_1
    {
        public stConnCfg mConnCfg;
        public stSystemConfig_1 mSysCfg;
        public stDevInf_1(byte init)
        {
            mSysCfg = new stSystemConfig_1(0);
            mConnCfg = new stConnCfg(0);
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
            this = (stDevInf_1)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDevInf_1));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stDevInf
    {
        public stConnCfg mConnCfg;
        public stSystemConfig mSysCfg;
        public stDevInf(byte init)
        {
            mSysCfg = new stSystemConfig(0);
            mConnCfg = new stConnCfg(0);
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
            this = (stDevInf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDevInf));
            pinnedArr.Free();
        }
    }

}
