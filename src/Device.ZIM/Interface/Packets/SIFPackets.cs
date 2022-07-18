using System;
using System.Runtime.InteropServices;

namespace ZiveLab.Device.ZIM.Interface
{
    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stPacketHeader
    {
        public byte ID;
        public short FrameCount;
        public short FrameNumber;
        public int DataLength;
        public byte Reserved01;
        public byte Error;
        
        public stPacketHeader(byte id, short frameCount, short frameNumber, int dataLength)
        {
            ID = id;
            FrameCount = frameCount;
            FrameNumber = frameNumber;
            DataLength = dataLength;
            Reserved01 = 0;
            Error = 0;
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stPacket
    {
        public stPacketHeader Header;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SIFConstants.DATA_LEN)]
        public byte[] Data;
        public byte CheckSum;
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stCmdHeader
    {
        public byte Command;
        public int Device;
        public int Slot;
        public int Address;
        public int Length;

        public stCmdHeader(byte command)
        {
            Command = command;
            Address = 0;
            Length = 0;
            Device = -1;
            Slot = -1;
        }

        public stCmdHeader(byte command, int address)
        {
            Command = command;
            Address = address;
            Length = 0;
            Device = -1;
            Slot = -1;
        }

        public stCmdHeader(byte command, int address, int length)
        {
            Command = command;
            Address = address;
            Length = length;
            Device = -1;
            Slot = -1;
        }

        public stCmdHeader(byte command, int device, int slot, int address, int length)
        {
            Command = command;
            Device = device;
            Slot = slot;
            Address = address;
            Length = length;
        }
    }
    
    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stNandProgInfo
    {
        public byte d0;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d0x;
        public byte d1;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d1x;
        public byte d2;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d2x;
        public byte d3;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d3x;
        public byte d4;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d4x;
        public byte d5;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d5x;
        public byte d6;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d6x;
        public byte d7;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d7x;
        public byte d8;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d8x;
        public byte d9;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d9x;
        public byte d10;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d10x;
        public byte d11;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d11x;
        public byte d12;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] d12x;

        public stNandProgInfo(byte icr, byte pagesize)
        {
            // ICR Setting
            d0 = icr;
            d0x = new byte[3] { 0x0, 0x0, 0x0 };
            d1 = icr;
            d1x = new byte[3] { 0x0, 0x0, 0x0 };
            d2 = icr;
            d2x = new byte[3] { 0x0, 0x0, 0x0 };
            d3 = icr;
            d3x = new byte[3] { 0x0, 0x0, 0x0 };

            // Page Size Setting
            d4 = (byte)(pagesize + 1);
            d4x = new byte[3] { 0x0, 0x0, 0x0 };
            d5 = (byte)(~(pagesize + 1));
            d5x = new byte[3];

            d6 = (byte)(pagesize + 1);
            d6x = new byte[3] { 0x0, 0x0, 0x0 };
            d7 = (byte)(~(pagesize + 1));
            d7x = new byte[3];

            d8 = (byte)(pagesize + 1);
            d8x = new byte[3] { 0x0, 0x0, 0x0 };
            d9 = (byte)(~(pagesize + 1));
            d9x = new byte[3];

            d10 = (byte)(pagesize + 1);
            d10x = new byte[3] { 0x0, 0x0, 0x0 };
            d11 = (byte)(~(pagesize + 1));
            d11x = new byte[3];

            // Bad Block Setting
            d12 = 0xAA;
            d12x = new byte[3] { 0x0, 0x0, 0x0 };
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stNandBuffer
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = (SIFConstants.NAND_MAIN_SIZE / SIFConstants.MLC_MAIN_SIZE) * SIFConstants.MLC_MAIN_SIZE)]
        public byte[] Main;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = (SIFConstants.NAND_MAIN_SIZE / SIFConstants.MLC_MAIN_SIZE) * SIFConstants.MLC_SPARE_SIZE)]
        public byte[] Spare;
    }

    
}
