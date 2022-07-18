using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SMLib;
using System.Runtime.InteropServices;
using SP_Struct;
using System.IO;
using SP_OldSystem;

namespace SP_File
{
    class SP_SystemFile : SM_File
    {
        public bool bSuccess;
        public SP_SystemFile(ref DeviceInfo mDeviceInfo,string filename, FileMode mode,FileAccess access)
        {
            int i;
//            byte[] pData;
            bSuccess = false;
            this.AddHeaderSize(Marshal.SizeOf(mDeviceInfo.mInfo));
            this.SetRecordSize(Marshal.SizeOf(mDeviceInfo.mChannelInfo[0]));

            this.FullFilename = filename;
            if (mode == FileMode.Create)
            {
                if (SM_FileUtility.FileExist(this.FullFilename) == true)
                {
                    SM_FileUtility.FileDelete(this.FullFilename);
                }
                else
                {
                    this.close();
                    return;
                }

                if (this.Create(false) == false)
                {
                    this.close();
                    return;
                }

                if (this.HeaderWrite(0, mDeviceInfo.mInfo.ToByteArray(), Marshal.SizeOf(mDeviceInfo.mInfo)) == false)
                {
                    this.close();
                    return;
                }
                for (i = 0; i < SM_Define.SM_Main_Define.DEF_MAX_DEV_CH; i++)
                {
                    if (this.RecordWrite(i, mDeviceInfo.mChannelInfo[i].ToByteArray(), 1, Marshal.SizeOf(mDeviceInfo.mChannelInfo[0])) == false)
                    {
                        continue;
                    }
                }
                this.close();

            }
            else
            {
                if (this.Open(access) == false)
                {
                    this.close();
                    return;
                }
/*
                pData = this.HeaderRead(0, Marshal.SizeOf(mDeviceInfo.mInfo));

                if (pData == null)
                {
                    this.close();
                    return;
                }
                mDeviceInfo.mInfo.ToWritePtr(pData);

                for (i = 0; i < SM_Define.SM_Main_Define.DEF_MAX_DEV_CH; i++)
                {
                    pData = this.RecordRead(i, 1, Marshal.SizeOf(mDeviceInfo.mChannelInfo[0]));

                    if (pData == null)
                    {
                        continue;
                    }
                    mDeviceInfo.mChannelInfo[i].ToWritePtr(pData);
                }
                this.close();*/
            }
            bSuccess = true;
        }
    }

    class SP_OldSystemFile : SM_File
    {
        public bool bSuccess;
        public SP_OldSystemFile(ref stDefSystem_0[] mOldSystem, string filename, FileMode mode, FileAccess access)
        {
            int i;
            byte[] pData;
            bSuccess = false;

            this.SetRecordSize(Marshal.SizeOf(mOldSystem[0]));

            this.FullFilename = filename;
            if (mode == FileMode.Create)
            {
                if (this.Create(false) == false)
                {
                    this.close();
                    return;
                }
                for (i = 0; i < SM_Define.SM_Main_Define.DEF_MAX_DEV_CH; i++)
                {
                    if (this.RecordWrite(i, mOldSystem[i].ToByteArray(), 1, Marshal.SizeOf(mOldSystem[0])) == false)
                    {
                        continue;
                    }
                }
                this.close();

            }
            else
            {
                if (this.Open(access) == false)
                {
                    this.close();
                    return;
                }
                for (i = 0; i < SM_Define.SM_Main_Define.DEF_MAX_DEV_CH; i++)
                {
                    pData = this.RecordRead(i, 1, Marshal.SizeOf(mOldSystem[0]));

                    if (pData == null)
                    {
                        continue;
                    }

                    mOldSystem[i].ToWritePtr(pData);
                }
                this.close();
            }
            bSuccess = true;
        }
    }

}
