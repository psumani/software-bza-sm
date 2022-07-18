using System;
using System.Runtime.InteropServices;

namespace ZiveLab.ZM.ZIM.Utilities
{
    public static class PacketUtilities
    {
        public static byte[] ToByteArray(this object packet)
        {
            int size = Marshal.SizeOf(packet);
            byte[] buffer = new byte[size];
            IntPtr pBuffer = Marshal.AllocHGlobal(size);
            Marshal.StructureToPtr(packet, pBuffer, false);
            Marshal.Copy(pBuffer, buffer, 0, size);
            Marshal.FreeHGlobal(pBuffer);
            return buffer;
        }

        [ObsoleteAttribute("This method will soon be deprecated. Use ToByteArray instead.")]
        public static byte[] StructureToByteArray(this object packet)
        {
            int size = Marshal.SizeOf(packet);
            byte[] buffer = new byte[size];
            IntPtr pBuffer = Marshal.AllocHGlobal(size);
            Marshal.StructureToPtr(packet, pBuffer, false);
            Marshal.Copy(pBuffer, buffer, 0, size);
            Marshal.FreeHGlobal(pBuffer);
            return buffer;
        }

        public static T ToPacket<T>(this byte[] data)
        {
            T structure;
            int size = Marshal.SizeOf(typeof(T));
            IntPtr pBuffer = Marshal.AllocHGlobal(size);
            Marshal.Copy(data, 0, pBuffer, size);
            structure = (T)Marshal.PtrToStructure(pBuffer, typeof(T));
            Marshal.FreeHGlobal(pBuffer);
            return structure;
        }

        public static byte GetCheckSum(this byte[] data)
        {
            byte chksum = 0;

            for (int i = 0; i < data.Length - 1; i++)
            {
                chksum += data[i];
            }

            return chksum;
        }
    }
}
