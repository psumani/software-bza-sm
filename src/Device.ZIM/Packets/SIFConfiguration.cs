using System;
using System.Runtime.InteropServices;

namespace ZiveLab.Device.ZIM.Packets
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
}
