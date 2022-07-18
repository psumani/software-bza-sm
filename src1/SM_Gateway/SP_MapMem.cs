using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.IO.MemoryMappedFiles;
using System.Runtime.InteropServices;
using SMLib;
using SP_Struct;
using SM_Enum;

namespace SM_Comm
{

    public class SP_MapMem
    {
        public SP_CmdMapHeader[] mSP_CmdMapHeader;
        MemoryMappedFile[] mMapMem;
        MemoryMappedViewAccessor[] mMapView;
        public const int ChannelMapSize = 0x1100;
        MemoryMappedFile mDeviceMap;
        MemoryMappedViewAccessor mDeviceView;

        public SP_MapMem(ref DeviceInfo mDeviceInfo)
        {
            int i;
 
            string sMapName;

            this.mMapMem = new MemoryMappedFile[8];
            this.mMapView = new MemoryMappedViewAccessor[8];
            this.mSP_CmdMapHeader = new SP_CmdMapHeader[8];

            this.mMapMem.Initialize();
            this.mMapView.Initialize();
            this.mSP_CmdMapHeader.Initialize();

            sMapName = mDeviceInfo.mInfo.sSerial + "Infomation";
            try
            {
                this.mDeviceMap = MemoryMappedFile.OpenExisting(sMapName, MemoryMappedFileRights.ReadWrite);
            }
            catch (FileNotFoundException)
            {
                this.mDeviceMap = MemoryMappedFile.CreateNew(sMapName, Marshal.SizeOf(mDeviceInfo), MemoryMappedFileAccess.ReadWrite);
            }

            this.mDeviceView = this.mDeviceMap.CreateViewAccessor(0, Marshal.SizeOf(mDeviceInfo));
            this.mDeviceView.WriteArray<byte>(0, mDeviceInfo.ToByteArray(), 0, Marshal.SizeOf(mDeviceInfo));

            for (i = 0; i < 8; i++)
            {
                sMapName = string.Format("DevCh_{0}_{1}",mDeviceInfo.mInfo.sSerial,i);
                try
                {
                    this.mMapMem[i] = MemoryMappedFile.OpenExisting(sMapName, MemoryMappedFileRights.ReadWrite);
                }
                catch
                {
                    try
                    {
                        this.mMapMem[i] = MemoryMappedFile.CreateNew(sMapName, ChannelMapSize, MemoryMappedFileAccess.ReadWrite);
                    }
                    catch
                    {
                        continue;
                    }
                }
                try
                {
                    this.mMapView[i] = this.mMapMem[i].CreateViewAccessor(0, ChannelMapSize, MemoryMappedFileAccess.ReadWrite);
                }
                catch
                {
                    continue;
                }
                mSP_CmdMapHeader[i] = new SP_CmdMapHeader((IntPtr)0);
            }
        }

        public void WriteDeviceinfo(ref DeviceInfo mDeviceInfo)
        {
            this.mDeviceView.WriteArray<byte>(0, mDeviceInfo.ToByteArray(), 0, Marshal.SizeOf(mDeviceInfo));
        }

        public void WriteDeviceinfoHeader(ref DeviceInfo mDeviceInfo)
        {

            this.mDeviceView.WriteArray<byte>(0, mDeviceInfo.mInfo.ToByteArray(), 0, Marshal.SizeOf(typeof(DeviceHeader)));
        }

        public void WriteDeviceinfoChannel(ref DeviceInfo mDeviceInfo, int nCh)
        {
            int pos = Marshal.SizeOf(typeof(DeviceHeader)) + Marshal.SizeOf(typeof(ChannelInfo)) * nCh;
            this.mDeviceView.WriteArray<byte>(pos, mDeviceInfo.mChannelInfo[nCh].ToByteArray(), 0, Marshal.SizeOf(typeof(ChannelInfo)));
        }

        public void WriteDeviceinfoChannelExist(ref DeviceInfo mDeviceInfo, int nCh)
        {
            int pos = Marshal.SizeOf(typeof(DeviceHeader))
                + Marshal.SizeOf(typeof(ChannelInfo)) * nCh;
            this.mDeviceView.Write<bool>(pos, ref mDeviceInfo.mChannelInfo[nCh].bExist);
        }

        public void Dispose() 
        {
            int i;

            this.mDeviceView.Dispose();
            this.mDeviceMap.Dispose();
            for (i = 0; i < 8; i++)
            {
                this.mMapView[i].Dispose();
                this.mMapMem[i].Dispose();
            }
        }

        public bool CheckCommandStart(int nCh, bool refresh)
        {
            if (refresh == true)
            {
                this.mMapView[nCh].Read<SP_CmdMapHeader>(0, out this.mSP_CmdMapHeader[nCh]);
            }
            if (this.mSP_CmdMapHeader[nCh].handle == 0) return false;
            if (this.mSP_CmdMapHeader[nCh].mStat.Result > 0) return false;
            if (this.mSP_CmdMapHeader[nCh].mStat.Proc != (byte)enProc.Start) return false;

            this.mSP_CmdMapHeader[nCh].mStat.Proc = (byte)enProc.Proc;
            this.mSP_CmdMapHeader[nCh].mStat.Result = (byte)enResult.FLAG_OK;
            this.mMapView[nCh].Write<SP_CmdMapStatus>(Marshal.SizeOf(this.mSP_CmdMapHeader[nCh].handle)
                                                        , ref this.mSP_CmdMapHeader[nCh].mStat);
           
            return true;
        }

        public void RefreshHead(int nCh)
        {
            this.mMapView[nCh].Read<SP_CmdMapHeader>(0, out this.mSP_CmdMapHeader[nCh]);
        }

        public void SetClearHandle(int nCh)
        {
            if (this.mSP_CmdMapHeader[nCh].handle == 0) return;
            this.mSP_CmdMapHeader[nCh].handle = 0;
            this.mMapView[nCh].Write<uint>(0, ref this.mSP_CmdMapHeader[nCh].handle);
        }

        public void SetFinish(int nCh, byte result)
        {
            this.mSP_CmdMapHeader[nCh].mStat.Result = result;
            if (this.mSP_CmdMapHeader[nCh].mStat.Result < 3)
            {
                this.mSP_CmdMapHeader[nCh].mStat.Result = result;
            }
            this.mMapView[nCh].Write<SP_CmdMapStatus>(Marshal.SizeOf(this.mSP_CmdMapHeader[nCh].handle)
                                                                , ref this.mSP_CmdMapHeader[nCh].mStat);
            this.mSP_CmdMapHeader[nCh].mStat.Proc = (byte)enProc.Finish;
            this.mMapView[nCh].Write<SP_CmdMapStatus>(Marshal.SizeOf(this.mSP_CmdMapHeader[nCh].handle)
                                                                , ref this.mSP_CmdMapHeader[nCh].mStat);
        }

        public void SetStop(int nCh)
        {
            this.mSP_CmdMapHeader[nCh].handle = 0xFF;
            this.mMapView[nCh].Write<uint>(0, ref this.mSP_CmdMapHeader[nCh].handle);
        }


        public void WriteData(int nCh,int destoffset, ref byte[] srcdata,int srcoffset,int nLen)
        {
            int nPos;
            nPos = Marshal.SizeOf(this.mSP_CmdMapHeader[nCh]) + destoffset;
            this.mMapView[nCh].WriteArray(nPos, srcdata, srcoffset, nLen);
        }

        public void ReadData(int nCh, int srcoffset, ref byte[] destdata, int destoffset, int nLen)
        {
            int nPos;
            nPos = Marshal.SizeOf(this.mSP_CmdMapHeader[nCh]) + srcoffset;
            this.mMapView[nCh].ReadArray(nPos, destdata, destoffset, nLen);
        }

    }
}
