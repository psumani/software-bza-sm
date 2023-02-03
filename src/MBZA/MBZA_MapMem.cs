using System;
using System.Text;
using System.Runtime.InteropServices;
using ZiveLab.ZM.ZIM.Interface;
using System.ComponentModel;
using System.Threading;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM
{
    public enum enResult
    {
        [Description("None.")]
        FLAG_NONE = 0,
        [Description("Write.")]
        FLAG_WRITE = 1,
        [Description("Request.")]
        FLAG_REQUEST = 2,
        [Description("Ok.")]
        FLAG_OK = 3,
        [Description("Fail.")]
        FLAG_FAIL = 4,
        [Description("Busy.")]
        FLAG_BUSY = 5,
        [Description("Out of memory.")]
        FLAG_OUTMEM = 6,
        [Description("Channel is running.")]
        FLAG_RUNNING = 7,
        [Description("Check-sum failed.")]
        FLAG_ERRCHKSUM = 8,
        [Description("Not found channel.")]
        FLAG_NOTFOUND = 9,
        [Description("Write packet is failed.")]
        STAT_CMD_ERRWR = 20,
        [Description("Read packet is failed.")]
        STAT_CMD_ERRRD = 21,
        [Description("Time out.")]
        STAT_CMD_TMOUT = 22,
        [Description("Bad command.")]
        STAT_CMD_BAD = 23,
        [Description("Not supported.")]
        STAT_CMD_NOSUPPORT = 24
    }

    public enum enTarget
    {
        Thread = 0,
        Sif,
        Zim,
    }

    public enum enProc
    {
        none,
        Start,
        Proc,
        Finish
    }

    public enum enFlag
    {
        Cmd,
        Write,
        Read,
    }

    
    public enum enCmdSif
    {
        ResetFPGA = 1000,
        UploadFirmware,
        EnableCommTimeOut,
        SetCmdMode,
        SetChannel,
        ConnectPromOfZIM,
        EreasePromOfZIM,
        ReadPromOfZIM,
        ProgramPromOfZIM,
        DisconnectPromOfZIM,
        CheckFPGA,
        GetDeviceinfo,
        SaveDeviceInfo,
    }

    public enum enCmdZim
    {
        SetAutoVdc = 2000,
        SetCalibmode,
        SaveRangeInfo,
        WriteROM,
        GetDO,
        GetADCVDC,
        GetADCAC,
        GetADCRTD,
        SetDO,
        SetDDSSIG,
        Start,
        Stop,
        LoadDataStart,
        LoadDataStop,
        UploadTech,
        UploadCalibTech,
        UploadResHead,
        RefreshResHead,
    }


    [StructLayout(LayoutKind.Sequential)]
    public struct MBZA_SifStatus
    {
        public UInt16 Stop;
        public UInt16 Proc;
        public UInt16 Result;
        
        
        public MBZA_SifStatus(byte init)
        {
            Stop = 1;
            Proc = 0;
            Result = 0;
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];

            IntPtr Ptr = Marshal.UnsafeAddrOfPinnedArrayElement(arr, 0);
            Marshal.StructureToPtr(this, Ptr, false);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (MBZA_SifStatus)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(MBZA_SifStatus));
            pinnedArr.Free();
        }
    }
    
    [StructLayout(LayoutKind.Sequential)]
    public struct MBZA_SifCommand
    {
        public short target;
        public short flag;
        public short cmd;
        public int ch;
        public int addr;
        public int wrlen;
        public int rdlen;
        public MBZA_SifCommand(byte init)
        {
            target = 0;
            flag = 0;
            cmd = 0;
            addr = 0;
            ch = 0;
            wrlen = 0;
            rdlen = 0;
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];

            IntPtr Ptr = Marshal.UnsafeAddrOfPinnedArrayElement(arr, 0);
            Marshal.StructureToPtr(this, Ptr, false);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (MBZA_SifCommand)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(MBZA_SifCommand));
            pinnedArr.Free();
        }
    }
    
    [StructLayout(LayoutKind.Sequential)]
    public struct MBZA_SifCmdMap
    {
        public MBZA_SifStatus mStat;
        public MBZA_SifCommand mCommand;

        public MBZA_SifCmdMap(int init = 0)
        {
          
            mStat = new MBZA_SifStatus(0);
            mCommand = new MBZA_SifCommand(0);
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];

            IntPtr Ptr = Marshal.UnsafeAddrOfPinnedArrayElement(arr, 0);
            Marshal.StructureToPtr(this, Ptr, false);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (MBZA_SifCmdMap)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(MBZA_SifCmdMap));
            pinnedArr.Free();
        }
    }
    

    public class MBZA_MapMem
    {
        public MBZA_SifCmdMap mHeader;
        public byte[] pData;

        public MBZA_MapMem()
        {
            mHeader = new MBZA_SifCmdMap(0);
            pData = new byte[MBZA_Constant.ChannelMapSize];
            Array.Clear(pData, 0, MBZA_Constant.ChannelMapSize);
        }

        public enProc GetProc()
        {
            return (enProc)mHeader.mStat.Proc;
        }

        public void SetProc(enProc value)
        {
            mHeader.mStat.Proc = (UInt16)value;
        }

        public UInt16 GetStop()
        {
            return mHeader.mStat.Stop;
        }

        public void SetStop(UInt16 value)
        {
            mHeader.mStat.Stop = value;
        }

        public enResult GetResult()
        {
            return (enResult)mHeader.mStat.Result;
        }

        public void SetResult(enResult Value)
        {
            mHeader.mStat.Result = (UInt16)Value;
        }

        public void WriteData(byte[] srcdata, int nLen)
        {
            Array.Clear(pData, 0, MBZA_Constant.ChannelMapSize);
            Array.Copy(srcdata, 0, pData, 0, nLen);
        }

        public void ReadData(ref byte[] destdata, int nLen)
        {
            Array.Copy(pData, 0, destdata, 0, nLen);
        }

        
    }

    public static class MBZA_MapUtil
    {
        public static int SetCommand(string sSerial,MBZA_SifCommand cmd, ref byte[] data)
        {
            int starttick;
            var obj = gBZA.SifLnkLst[sSerial].MBZAIF.mMapMem;
            try
            {
                if (obj.mHeader.mStat.Stop == 1)
                {
                    obj.mHeader.mStat.Result = (UInt16)enResult.FLAG_NONE;
                    obj.mHeader.mStat.Proc = (UInt16)enProc.none;
                    return -1;
                }
                if (obj.mHeader.mStat.Proc == (UInt16)enProc.Start
                        || obj.mHeader.mStat.Proc == (UInt16)enProc.Proc)
                {
                    if (obj.mHeader.mStat.Result != (UInt16)enResult.FLAG_NONE)
                    {
                        obj.mHeader.mStat.Result = (UInt16)enResult.FLAG_NONE;
                        obj.mHeader.mStat.Proc = (UInt16)enProc.none;
                    }
                    return 0;
                }

                obj.mHeader.mCommand = cmd;
                //Array.Clear(obj.pData, 0, MBZA_Constants.ChannelMapSize);

                if (obj.mHeader.mCommand.wrlen > 0)
                {
                    if (data == null)
                    {
                        obj.mHeader.mStat.Result = (UInt16)enResult.FLAG_NONE;
                        obj.mHeader.mStat.Proc = (UInt16)enProc.none;
                        return -1;
                    }
                    obj.WriteData(data, obj.mHeader.mCommand.wrlen);
                }
                obj.mHeader.mStat.Result = (UInt16)enResult.FLAG_NONE;
                obj.mHeader.mStat.Proc = (UInt16)enProc.Start;

                starttick = Environment.TickCount;

                while (true)
                {
                    if (obj.mHeader.mStat.Proc == (UInt16)enProc.Finish)
                    {
                        break;
                    }
                    if ((Environment.TickCount - starttick) > 8000)
                    {
                        obj.mHeader.mStat.Result = (UInt16)enResult.FLAG_NONE;
                        obj.mHeader.mStat.Proc = (UInt16)enProc.none;
                        return 0;
                    }
                    Thread.Sleep(1);
                }

                if (obj.mHeader.mStat.Result != (UInt16)enResult.FLAG_OK)
                {
                    obj.mHeader.mStat.Result = (UInt16)enResult.FLAG_NONE;
                    obj.mHeader.mStat.Proc = (UInt16)enProc.none;
                    return 0;
                }

                if (obj.mHeader.mCommand.flag == (UInt16)enFlag.Read)
                {
                    obj.ReadData(ref data, obj.mHeader.mCommand.rdlen);
                }

            }
            catch
            {
                obj.mHeader.mStat.Result = (UInt16)enResult.FLAG_NONE;
                obj.mHeader.mStat.Proc = (UInt16)enProc.none;
                return -1;
            }

            obj.mHeader.mStat.Result = (UInt16)enResult.FLAG_NONE;
            obj.mHeader.mStat.Proc = (UInt16)enProc.none;

            return 1;
        }

        public static bool TransCommand(string sSerial, MBZA_SifCommand cmd, byte[] data)
        {
            int res;
            int err;

            err = 0;
            while (true)
            {
                res = SetCommand(sSerial, cmd, ref data);
                Thread.Sleep(1);
                if (res < 0)
                {
                    return false;
                }
                else if (res > 0)
                {
                    break;
                }
                err++;
                if (err > 0)
                {
                    return false;
                }

            }
            return true;
        }

        public static bool TransReadCommand(string sSerial, MBZA_SifCommand cmd, ref byte[] data)
        {
            int res;
            int err;

            err = 0;
            while (true)
            {
                res = SetCommand(sSerial, cmd, ref data);
                if (res < 0)
                {
                    return false;
                }
                else if (res > 0)
                {
                    break;
                }
                err++;
                if (err > 10)
                {
                    return false;
                }
                Thread.Sleep(1);
            }
            return true;
        }

        public static bool UploadSifFirmware(string sSerial, string sfilename)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.UploadFirmware;
            cmd.ch = -1;
            cmd.addr = 0;

            byte[] data = Encoding.ASCII.GetBytes(sfilename);

            cmd.wrlen = data.Length;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, data);
        }
        
        public static bool EnableCommTimeOut(string sSerial, int iEnable)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.EnableCommTimeOut;
            cmd.ch = -1;
            cmd.addr = 0;

            byte[] data = BitConverter.GetBytes(iEnable);

            cmd.wrlen = data.Length;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, data);
        }

        public static bool SetCmdMode(string sSerial, int iEnable)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.SetCmdMode;
            cmd.ch = -1;
            cmd.addr = 0;

            byte[] data = BitConverter.GetBytes(iEnable);

            cmd.wrlen = data.Length;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, data);
        }

        public static bool SetCmdMode(string sSerial,int nCh, int iEnable)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.SetCmdMode;
            cmd.ch = nCh;
            cmd.addr = 0;

            byte[] data = BitConverter.GetBytes(iEnable);

            cmd.wrlen = data.Length;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, data);
        }

        public static bool SetChannel(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.SetChannel;
            cmd.ch = ch;
            cmd.addr = 0;

            byte[] data = BitConverter.GetBytes(ch);

            cmd.wrlen = data.Length;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, data);
        }

        public static bool ProgramPromOfZIM(string sSerial, int ch, int address, byte[] buff)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.ProgramPromOfZIM;
            cmd.ch = ch;
            cmd.addr = address;
            cmd.wrlen = buff.Length;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, buff);
        }

        public static bool SetAutoVdc(string sSerial, int ch, bool bAuto)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.SetAutoVdc;
            cmd.ch = ch;
            cmd.addr = bAuto ? 1 : 0;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool SetCalibMode(string sSerial, int ch, bool bCalib)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.SetCalibmode;
            cmd.ch = ch;
            cmd.addr = bCalib ? 1 : 0;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool GetDoOfZIM(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.GetDO;
            cmd.ch = ch;
            cmd.addr = -1;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool GetAdcVdcOfZIM(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.GetADCVDC;
            cmd.ch = ch;
            cmd.addr = -1;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }
        
        public static bool GetAdcAcOfZIM(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.GetADCAC;
            cmd.ch = ch;
            cmd.addr = -1;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool GetAdcRtdOfZIM(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.GetADCRTD;
            cmd.ch = ch;
            cmd.addr = -1;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool SetDDSsigOfZIM(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.SetDDSSIG;
            cmd.ch = ch;
            cmd.addr = -1;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool SetDoOfZIM(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.SetDO;
            cmd.ch = ch;
            cmd.addr = -1;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool ReadPromOfZIM(string sSerial, int ch, int address, ref byte[] buff, int nLen)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Read;
            cmd.cmd = (short)enCmdSif.ReadPromOfZIM;
            cmd.ch = ch;
            cmd.addr = address;
            cmd.wrlen = 0;
            cmd.rdlen = nLen;
            return TransReadCommand(sSerial, cmd, ref buff);
        }

        public static bool ResetFPGA(string sSerial, int ch, bool bReset)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.ResetFPGA;
            cmd.ch = ch;
            cmd.addr = -1;

            byte[] data = BitConverter.GetBytes(bReset);

            cmd.wrlen = data.Length;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, data);
        }

        public static bool ConnectPromOfZIM(string sSerial, int ch, int addr)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.ConnectPromOfZIM;
            cmd.ch = ch;
            cmd.addr = addr;
            
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool EreasePromOfZIM(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.EreasePromOfZIM;
            cmd.ch = ch;
            cmd.addr = -1;

            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool DisconnectPromOfZIM(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.DisconnectPromOfZIM;
            cmd.ch = ch;
            cmd.addr = -1;

            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool VheckFPGAOfZIM(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.CheckFPGA;
            cmd.ch = ch;
            cmd.addr = -1;

            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        
        public static bool GetDeviceinfo(string sSerial)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.GetDeviceinfo;
            cmd.ch = -1;
            cmd.addr = -1;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool Save_Range_info(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.SaveRangeInfo;
            cmd.ch = ch;
            cmd.addr = 0;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool SaveDeviceinfo(string sSerial)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Sif;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdSif.SaveDeviceInfo;
            cmd.ch = -1;
            cmd.addr = 0;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool WriteROM(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.WriteROM;
            cmd.ch = ch;
            cmd.addr = 0;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool CtrlStart(string sSerial, int ch, bool calib)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.Start;
            cmd.ch = ch;
            cmd.addr = 0;

            byte[] data = BitConverter.GetBytes(calib);

            cmd.wrlen = data.Length;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, data);
        }
        public static bool CtrlStop(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.Stop;
            cmd.ch = ch;
            cmd.addr = 0;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool LoadDataStart(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.LoadDataStart;
            cmd.ch = ch;
            cmd.addr = 0;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool LoadDataStop(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.LoadDataStop;
            cmd.ch = ch;
            cmd.addr = 0;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }
        
        public static bool UploadTechnique(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.UploadTech;
            cmd.ch = ch;
            cmd.addr = 0;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool UploadCalibTechnique(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.UploadCalibTech;
            cmd.ch = ch;
            cmd.addr = 0;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool UploadResheadinfo(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.UploadResHead;
            cmd.ch = ch;
            cmd.addr = 0;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }

        public static bool RefreshResheadinfo(string sSerial, int ch)
        {
            MBZA_SifCommand cmd;

            cmd.target = (short)enTarget.Zim;
            cmd.flag = (short)enFlag.Cmd;
            cmd.cmd = (short)enCmdZim.RefreshResHead;
            cmd.ch = ch;
            cmd.addr = 0;
            cmd.wrlen = 0;
            cmd.rdlen = 0;
            return TransCommand(sSerial, cmd, null);
        }
    }
}
