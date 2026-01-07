
using System;
using System.ComponentModel;
using System.Numerics;
using System.Runtime.InteropServices;
using System.Text;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM.Dataview
{

    #region ZMF 1.0.0.0 Format
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_rnginf1000
    {
        public byte ID;
        public st_zim_Safety_inf mSafety;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_IAC_RNGCNT)]
        public st_zim_adci_rnginf[] iac_rng;
        public st_zim_adcv_rnginf vac_rng;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_VDC_RNGCNT)]
        public st_zim_adcv_rnginf[] vdc_rng;
        public st_zim_adct_rnginf rtd_rng;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_IAC_CTRL_RNGCNT)]
        public st_zim_Eis_Cal_info[] mEisIRngCalInfo; // not use
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_IAC_CTRL_RNGCNT)]
        public st_zim_dummy[] mDummy;
        public st_zim_rnginf1000(eZimType mtype)
        {
            ID = DeviceConstants.ID_RANGEINFO;
            mSafety = new st_zim_Safety_inf(0);

            iac_rng = new st_zim_adci_rnginf[DeviceConstants.MAX_IAC_RNGCNT];
            iac_rng[0] = new st_zim_adci_rnginf(DeviceConstants.ADC_IAC_RNG1_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG1_MAX, DeviceConstants.ADC_IAC_RNG1_MIN);
            iac_rng[1] = new st_zim_adci_rnginf(DeviceConstants.ADC_IAC_RNG2_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG2_MAX, DeviceConstants.ADC_IAC_RNG2_MIN);
            iac_rng[2] = new st_zim_adci_rnginf(DeviceConstants.ADC_IAC_RNG3_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG3_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);
            iac_rng[3] = new st_zim_adci_rnginf(DeviceConstants.ADC_IAC_RNG4_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG4_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);

            vac_rng = new st_zim_adcv_rnginf(DeviceConstants.ADC_VAC_RNG_RMAX, DeviceConstants.ADC_VAC_RNG_MAX, DeviceConstants.ADC_VAC_RNG_MIN);

            vdc_rng = new st_zim_adcv_rnginf[DeviceConstants.MAX_VDC_RNGCNT];

            if (mtype == eZimType.BZA500)
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX1, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX1, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA500_POWER;
            }
            else if (mtype == eZimType.BZA100)
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX2, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX2, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA100_POWER;
            }
            else if (mtype == eZimType.BZA60)
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX3, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX3, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA60_POWER;
            }
            else
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX0, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX0, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA1000_POWER;
            }

            rtd_rng = new st_zim_adct_rnginf(DeviceConstants.ADC_RTD_CONST_MAX, DeviceConstants.ADC_RTD_CONST_MIN);
            rtd_rng.factor = DeviceConstants.ADC_RTD_CONST_PT1000;

            mEisIRngCalInfo = new st_zim_Eis_Cal_info[DeviceConstants.MAX_IAC_CTRL_RNGCNT];

            mEisIRngCalInfo[0] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[1] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[2] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[3] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[4] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[5] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[6] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[7] = new st_zim_Eis_Cal_info(0);

            mDummy = new st_zim_dummy[DeviceConstants.MAX_IAC_CTRL_RNGCNT];
        }



        public void Initialize(eZimType mtype)
        {
            int i;
            ID = DeviceConstants.ID_RANGEINFO;
            iac_rng[0].Initialize(DeviceConstants.ADC_IAC_RNG1_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG1_MAX, DeviceConstants.ADC_IAC_RNG1_MIN);
            iac_rng[1].Initialize(DeviceConstants.ADC_IAC_RNG2_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG2_MAX, DeviceConstants.ADC_IAC_RNG2_MIN);
            iac_rng[2].Initialize(DeviceConstants.ADC_IAC_RNG3_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG3_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);
            iac_rng[3].Initialize(DeviceConstants.ADC_IAC_RNG4_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG4_MAX, DeviceConstants.ADC_IAC_RNG4_MIN);
            vac_rng.Initialize(DeviceConstants.ADC_VAC_RNG_RMAX, DeviceConstants.ADC_VAC_RNG_MAX, DeviceConstants.ADC_VAC_RNG_MIN);

            if (mtype == eZimType.BZA500)
            {
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX1, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX1, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA500_POWER;
            }
            else if (mtype == eZimType.BZA100)
            {
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX2, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX2, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA100_POWER;
            }
            else if (mtype == eZimType.BZA60)
            {
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX3, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX3, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA60_POWER;
            }
            else
            {
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX0, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX0, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA1000_POWER;
            }

            rtd_rng.Initialize(DeviceConstants.ADC_RTD_CONST_MAX, DeviceConstants.ADC_RTD_CONST_MIN);
            rtd_rng.factor = DeviceConstants.ADC_RTD_CONST_PT1000;
            for (i = 0; i < DeviceConstants.MAX_IAC_CTRL_RNGCNT; i++)
            {
                mEisIRngCalInfo[i].Initialize();
            }

            mDummy[0].Ls = 0.000000064476;
            mDummy[1].Ls = 0.000000064476;
            mDummy[2].Ls = 0.000000112196;
            mDummy[3].Ls = 0.000000112196;
            mDummy[4].Ls = 0.000000084638;
            mDummy[5].Ls = 0.000000084638;
            mDummy[6].Ls = 0.00000008;
            mDummy[7].Ls = 0.00000008;

            mDummy[0].R = 0.009987261;
            mDummy[1].R = 0.009987261;
            mDummy[2].R = 0.099952;
            mDummy[3].R = 0.099952;
            mDummy[4].R = 0.997961;
            mDummy[5].R = 0.997961;
            mDummy[6].R = 9.999115;
            mDummy[7].R = 9.999115;
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
            this = (st_zim_rnginf1000)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_rnginf1000));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stZimCfg1000
    {
        public stZimInfo info;
        public st_zim_rnginf1000 ranges;
        public stZimCfg1000(eZimType type)
        {
            info = new stZimInfo(type);
            ranges = new st_zim_rnginf1000(type);
        }

        public void Initilize(eZimType type)
        {
            info.Initialize(type);
            ranges.Initialize(type);
        }

        public string UintToByteString(uint nVal)
        {
            int i;
            byte tmp;
            byte[] mChar = new byte[8];
            Array.Clear(mChar, 0, 8);

            for (i = 0; i < 8; i++)
            {
                tmp = (byte)((nVal >> (i * 4)) & (uint)0xf);
                mChar[7 - i] = (byte)(0x30 + tmp);
            }
            return Encoding.Default.GetString(mChar); ;
        }

        public string UshortToByteString(ushort nVal)
        {
            char[] mChar = new char[5];
            Array.Clear(mChar, 0, 5);
            mChar = string.Format("{0:0000}", nVal).ToCharArray();
            return string.Format("{0}.{1}.{2}.{3}", mChar[0], mChar[1], mChar[2], mChar[3]);
        }

        public string GetSerialNumber()
        {
            int i = info.cModel[0] - 0x30;
            string str;

            str = string.Format("{0}{1}{2}", Extensions.GetEnumDescription((eZimSnID)i), (char)info.cModel[1], UintToByteString(info.nSerial));
            return str;
        }

        public string GetBoardVer()
        {
            return UshortToByteString(info.ZimBDVersion);
        }

        public string GetBoardTypeString()
        {
            eZimBoardType mtype = (eZimBoardType)(info.cModel[0] - 0x30);
            return Extensions.GetEnumDescription(mtype);
        }

        public string GetZimTypeString()
        {
            eZimType mtype = (eZimType)(info.cModel[0] - 0x30);
            return Extensions.GetEnumDescription(mtype);
        }

        public eZimBoardType GetBoardType()
        {
            return (eZimBoardType)(info.cModel[0] - 0x30);
        }

        public eZimType GetZIMType()
        {
            return (eZimType)(info.cModel[0] - 0x30);
        }


        public string GetFirmwareVer()
        {
            return UshortToByteString(info.ZimFWVersion);
        }

        public bool SetFirmwareVer(string str)
        {
            string sTmp;
            if (str.Length == 7)
            {
                sTmp = str.Replace(".", "");
            }
            else
            {
                sTmp = str;
            }

            if (sTmp.Length == 4)
            {
                info.ZimFWVersion = Convert.ToUInt16(sTmp);
            }
            else
            {
                return false;
            }
            return true;
        }

        public bool SetBoardVer(string str)
        {
            string sTmp;
            if (str.Length == 7)
            {
                sTmp = str.Replace(".", "");
            }
            else
            {
                sTmp = str;
            }

            if (sTmp.Length == 4)
            {
                info.ZimBDVersion = Convert.ToUInt16(sTmp);
            }
            else
            {
                return false;
            }
            return true;
        }

        public bool SetSerialNumber(byte type, string str)
        {
            string sTmp;
            int index = 0;

            uint tmp;
            int i;
            sTmp = str.Replace(" ", "");

            if (sTmp.Length != 9 && sTmp.Length != 12) return false;
            if (sTmp.Length == 12) index = 3;

            char[] mChar = sTmp.ToCharArray();

            info.cModel[0] = (byte)(type + 0x30);
            info.cModel[1] = (byte)(mChar[index] & 0xFF);
            index++;

            tmp = 0;

            for (i = 0; i < 8; i++)
            {
                tmp += (uint)((mChar[index] & 0xFF) - 0x30) << ((7 - i) * 4);
                index++;
            }
            info.nSerial = tmp;
            return true;
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
            this = (stZimCfg1000)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stZimCfg1000));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stResHeader1000
    {
        public stResHeaderInfo mInfo;
        public stSIFCfg inf_sif;
        public stZimCfg1000 inf_sifch;
        public stTech tech;

        public stResHeader1000(int init)
        {
            mInfo = new stResHeaderInfo(0);

            inf_sif = new stSIFCfg(0);
            inf_sifch = new stZimCfg1000(0);

            tech = new stTech(0);
        }

        public void SetTechFile(string name)
        {
            mInfo.SetTechFile(name);
        }

        public void SetTechFile(byte[] name)
        {
            mInfo.SetTechFile(name);
        }

        public void SetBattId(byte[] id)
        {
            mInfo.SetBattId(id);
        }

        public void SetUser(byte[] name)
        {
            mInfo.SetUser(name);
        }

        public void SetMemo(byte[] desc)
        {
            mInfo.SetMemo(desc);
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
            this = (stResHeader1000)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stResHeader1000));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stDefTestData1000
    {
        public ushort mType;
        public double TestTime;
        public int nCycle;
        public double CycleTime;
        public int nTaskNo;
        public double TaskTime;
        public double fFreq;
        public double real;
        public double img;
        public double Veoc;
        public double Vdc;
        public double Idc;
        public double Temperature;
        public double iacrng;
        public double vdcrng;

        public stDefTestData1000(int init)
        {
            mType = 0;
            TestTime = 0.0;
            nCycle = 0;
            CycleTime = 0.0;
            nTaskNo = 0;
            TaskTime = 0.0;

            iacrng = 0;
            vdcrng = 0;
            Veoc = 0.0;
            Vdc = 0.0;
            Idc = 0.0;
            Temperature = 0.0;

            fFreq = 0.0;
            real = 0.0;
            img = 0.0;
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
            this = (stDefTestData1000)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefTestData1000));
            pinnedArr.Free();
        }
    }
    #endregion

    #region ZMF 1.1.0.0 Format
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_rnginf1100
    {
        public byte ID;
        public st_zim_Safety_inf mSafety;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_IAC_RNGCNT)]
        public st_zim_adci_rnginf[] iac_rng;
        public st_zim_adcv_rnginf vac_rng;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_VDC_RNGCNT)]
        public st_zim_adcv_rnginf[] vdc_rng;
        public st_zim_adct_rnginf rtd_rng;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_IAC_CTRL_RNGCNT)]
        public st_zim_Eis_Cal_info[] mEisIRngCalInfo; // not use
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_IAC_CTRL_RNGCNT)]
        public st_zim_dummy[] mDummy;
        public st_zim_Idc_rnginf Idc_rnginf;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 20)]
        public double[] nouse;

        public st_zim_rnginf1100(eZimType mtype)
        {
            ID = DeviceConstants.ID_RANGEINFO;
            mSafety = new st_zim_Safety_inf(0);

            Idc_rnginf = new st_zim_Idc_rnginf(0);

            iac_rng = new st_zim_adci_rnginf[DeviceConstants.MAX_IAC_RNGCNT];
            iac_rng[0] = new st_zim_adci_rnginf(DeviceConstants.ADC_IAC_RNG1_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG1_MAX, DeviceConstants.ADC_IAC_RNG1_MIN);
            iac_rng[1] = new st_zim_adci_rnginf(DeviceConstants.ADC_IAC_RNG2_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG2_MAX, DeviceConstants.ADC_IAC_RNG2_MIN);
            iac_rng[2] = new st_zim_adci_rnginf(DeviceConstants.ADC_IAC_RNG3_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG3_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);
            iac_rng[3] = new st_zim_adci_rnginf(DeviceConstants.ADC_IAC_RNG4_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG4_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);

            vac_rng = new st_zim_adcv_rnginf(DeviceConstants.ADC_VAC_RNG_RMAX, DeviceConstants.ADC_VAC_RNG_MAX, DeviceConstants.ADC_VAC_RNG_MIN);

            vdc_rng = new st_zim_adcv_rnginf[DeviceConstants.MAX_VDC_RNGCNT];

            if (mtype == eZimType.BZA500)
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX1, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX1, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA500_POWER;
            }
            else if (mtype == eZimType.BZA100)
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX2, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX2, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA100_POWER;
            }
            else if (mtype == eZimType.BZA60)
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX3, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX3, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA60_POWER;
            }
            else
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX0, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX0, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA1000_POWER;
            }

            rtd_rng = new st_zim_adct_rnginf(DeviceConstants.ADC_RTD_CONST_MAX, DeviceConstants.ADC_RTD_CONST_MIN);
            rtd_rng.factor = DeviceConstants.ADC_RTD_CONST_PT1000;

            mEisIRngCalInfo = new st_zim_Eis_Cal_info[DeviceConstants.MAX_IAC_CTRL_RNGCNT];

            mEisIRngCalInfo[0] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[1] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[2] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[3] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[4] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[5] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[6] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[7] = new st_zim_Eis_Cal_info(0);

            mDummy = new st_zim_dummy[DeviceConstants.MAX_IAC_CTRL_RNGCNT];

            nouse = new double[20];
            for (int i = 0; i < 20; i++)
                nouse[i] = 0.0;
        }

        public void Initialize(eZimType mtype)
        {
            int i;
            ID = DeviceConstants.ID_RANGEINFO;
            iac_rng[0].Initialize(DeviceConstants.ADC_IAC_RNG1_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG1_MAX, DeviceConstants.ADC_IAC_RNG1_MIN);
            iac_rng[1].Initialize(DeviceConstants.ADC_IAC_RNG2_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG2_MAX, DeviceConstants.ADC_IAC_RNG2_MIN);
            iac_rng[2].Initialize(DeviceConstants.ADC_IAC_RNG3_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG3_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);
            iac_rng[3].Initialize(DeviceConstants.ADC_IAC_RNG4_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG4_MAX, DeviceConstants.ADC_IAC_RNG4_MIN);
            vac_rng.Initialize(DeviceConstants.ADC_VAC_RNG_RMAX, DeviceConstants.ADC_VAC_RNG_MAX, DeviceConstants.ADC_VAC_RNG_MIN);

            if (mtype == eZimType.BZA500)
            {
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX1, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX1, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA500_POWER;
            }
            else if (mtype == eZimType.BZA100)
            {
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX2, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX2, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA100_POWER;
            }
            else if (mtype == eZimType.BZA60)
            {
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX3, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX3, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA60_POWER;
            }
            else
            {
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX0, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX0, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA1000_POWER;
            }

            rtd_rng.Initialize(DeviceConstants.ADC_RTD_CONST_MAX, DeviceConstants.ADC_RTD_CONST_MIN);
            rtd_rng.factor = DeviceConstants.ADC_RTD_CONST_PT1000;
            for (i = 0; i < DeviceConstants.MAX_IAC_CTRL_RNGCNT; i++)
            {
                mEisIRngCalInfo[i].Initialize();
            }

            Idc_rnginf.Initialize();

            mDummy[0].Ls = 0.000000064476;
            mDummy[1].Ls = 0.000000064476;
            mDummy[2].Ls = 0.000000112196;
            mDummy[3].Ls = 0.000000112196;
            mDummy[4].Ls = 0.000000084638;
            mDummy[5].Ls = 0.000000084638;
            mDummy[6].Ls = 0.00000008;
            mDummy[7].Ls = 0.00000008;

            mDummy[0].R = 0.009987261;
            mDummy[1].R = 0.009987261;
            mDummy[2].R = 0.099952;
            mDummy[3].R = 0.099952;
            mDummy[4].R = 0.997961;
            mDummy[5].R = 0.997961;
            mDummy[6].R = 9.999115;
            mDummy[7].R = 9.999115;

            for (i = 0; i < 20; i++)
                nouse[i] = 0.0;
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
            this = (st_zim_rnginf1100)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_rnginf1100));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stZimCfg1100
    {
        public stZimInfo info;
        public st_zim_rnginf1100 ranges;
        public stZimCfg1100(eZimType type)
        {
            info = new stZimInfo(type);
            ranges = new st_zim_rnginf1100(type);
        }

        public void Initilize(eZimType type)
        {
            info.Initialize(type);
            ranges.Initialize(type);
        }

        public string UintToByteString(uint nVal)
        {
            int i;
            byte tmp;
            byte[] mChar = new byte[8];
            Array.Clear(mChar, 0, 8);

            for (i = 0; i < 8; i++)
            {
                tmp = (byte)((nVal >> (i * 4)) & (uint)0xf);
                mChar[7 - i] = (byte)(0x30 + tmp);
            }
            return Encoding.Default.GetString(mChar); ;
        }

        public string UshortToByteString(ushort nVal)
        {
            char[] mChar = new char[5];
            Array.Clear(mChar, 0, 5);
            mChar = string.Format("{0:0000}", nVal).ToCharArray();
            return string.Format("{0}.{1}.{2}.{3}", mChar[0], mChar[1], mChar[2], mChar[3]);
        }

        public string GetSerialNumber()
        {
            int i = info.cModel[0] - 0x30;
            string str;

            str = string.Format("{0}{1}{2}", Extensions.GetEnumDescription((eZimSnID)i), (char)info.cModel[1], UintToByteString(info.nSerial));
            return str;
        }

        public string GetBoardVer()
        {
            return UshortToByteString(info.ZimBDVersion);
        }

        public string GetBoardTypeString()
        {
            eZimBoardType mtype = (eZimBoardType)(info.cModel[0] - 0x30);
            return Extensions.GetEnumDescription(mtype);
        }

        public string GetZimTypeString()
        {
            eZimType mtype = (eZimType)(info.cModel[0] - 0x30);
            return Extensions.GetEnumDescription(mtype);
        }

        public eZimBoardType GetBoardType()
        {
            return (eZimBoardType)(info.cModel[0] - 0x30);
        }

        public eZimType GetZIMType()
        {
            return (eZimType)(info.cModel[0] - 0x30);
        }


        public string GetFirmwareVer()
        {
            return UshortToByteString(info.ZimFWVersion);
        }

        public bool SetFirmwareVer(string str)
        {
            string sTmp;
            if (str.Length == 7)
            {
                sTmp = str.Replace(".", "");
            }
            else
            {
                sTmp = str;
            }

            if (sTmp.Length == 4)
            {
                info.ZimFWVersion = Convert.ToUInt16(sTmp);
            }
            else
            {
                return false;
            }
            return true;
        }

        public bool SetBoardVer(string str)
        {
            string sTmp;
            if (str.Length == 7)
            {
                sTmp = str.Replace(".", "");
            }
            else
            {
                sTmp = str;
            }

            if (sTmp.Length == 4)
            {
                info.ZimBDVersion = Convert.ToUInt16(sTmp);
            }
            else
            {
                return false;
            }
            return true;
        }

        public bool SetSerialNumber(byte type, string str)
        {
            string sTmp;
            int index = 0;

            uint tmp;
            int i;
            sTmp = str.Replace(" ", "");

            if (sTmp.Length != 9 && sTmp.Length != 12) return false;
            if (sTmp.Length == 12) index = 3;

            char[] mChar = sTmp.ToCharArray();

            info.cModel[0] = (byte)(type + 0x30);
            info.cModel[1] = (byte)(mChar[index] & 0xFF);
            index++;

            tmp = 0;

            for (i = 0; i < 8; i++)
            {
                tmp += (uint)((mChar[index] & 0xFF) - 0x30) << ((7 - i) * 4);
                index++;
            }
            info.nSerial = tmp;
            return true;
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
            this = (stZimCfg1100)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stZimCfg1100));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stResHeader1100
    {
        public stResHeaderInfo mInfo;
        public stSIFCfg inf_sif;
        public stZimCfg1100 inf_sifch;
        public stTech tech;

        public stResHeader1100(int init)
        {
            mInfo = new stResHeaderInfo(0);

            inf_sif = new stSIFCfg(0);
            inf_sifch = new stZimCfg1100(0);

            tech = new stTech(0);
        }

        public void SetTechFile(string name)
        {
            mInfo.SetTechFile(name);
        }

        public void SetTechFile(byte[] name)
        {
            mInfo.SetTechFile(name);
        }

        public void SetBattId(byte[] id)
        {
            mInfo.SetBattId(id);
        }

        public void SetUser(byte[] name)
        {
            mInfo.SetUser(name);
        }

        public void SetMemo(byte[] desc)
        {
            mInfo.SetMemo(desc);
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
            this = (stResHeader1100)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stResHeader1100));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stDefTestData1100
    {
        public ushort mType;
        public double TestTime;
        public int nCycle;
        public double CycleTime;
        public int nTaskNo;
        public double TaskTime;
        public double fFreq;
        public double real;
        public double img;
        public double Veoc;
        public double Vdc;
        public double Idc;
        public double Temperature;
        public double iacrng;
        public double vdcrng;

        public stDefTestData1100(int init)
        {
            mType = 0;
            TestTime = 0.0;
            nCycle = 0;
            CycleTime = 0.0;
            nTaskNo = 0;
            TaskTime = 0.0;

            iacrng = 0;
            vdcrng = 0;
            Veoc = 0.0;
            Vdc = 0.0;
            Idc = 0.0;
            Temperature = 0.0;

            fFreq = 0.0;
            real = 0.0;
            img = 0.0;
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
            this = (stDefTestData1100)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefTestData1100));
            pinnedArr.Free();
        }
    }

    #endregion

    #region ZM_Current(1.2.0.0) format
    

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_TestDataItems
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public st_zim_TestDataItem[] mdata;

        public st_zim_TestDataItems(byte init)
        {
            mdata = new st_zim_TestDataItem[4];
            for (int i = 0; i < 4; i++)
            {
                mdata[i] = new st_zim_TestDataItem(0);
            }
        }

        public void initialize()
        {
            for (int i = 0; i < 4; i++)
            {
                mdata[i].initialize();
            }
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
            this = (st_zim_TestDataItems)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_TestDataItems));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stDefTestData
    {
        public ushort mType;
        public double TestTime;
        public int nCycle;
        public double CycleTime;
        public int nTaskNo;
        public double TaskTime;
        public double fFreq;
        public double real;
        public double img;
        public double Veoc;
        public double Vdc;
        public double Idc;
        public double Temperature;
        public double iacrng;
        public double vdcrng;

        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public st_zim_TestDataItems[] mdata;

        public stDefTestData(int init)
        {
            mType = 0;
            TestTime = 0.0;
            nCycle = 0;
            CycleTime = 0.0;
            nTaskNo = 0;
            TaskTime = 0.0;

            iacrng = 0;
            vdcrng = 0;
            Veoc = 0.0;
            Vdc = 0.0;
            Idc = 0.0;
            Temperature = 0.0;

            fFreq = 0.0;
            real = 0.0;
            img = 0.0;

            mdata = new st_zim_TestDataItems[3];
            for (int i = 0; i < 3; i++)
            {
                mdata[i] = new st_zim_TestDataItems(0);
            }
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
            this = (stDefTestData)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefTestData));
            pinnedArr.Free();
        }
    }
    # endregion ZM_Current(1.2.0.0) format

    #region EDitor_Define

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stItemZ
    {
        public double Frequency;
        public double Zre;
        public double Zim;
        public double Zmag;
        public double ZPhase;
        public double Yre;
        public double Yim;
        public double Ymag;
        public double YPhase;
        public double Rs_RC;
        public double Cs_RC;
        public double Rp_RC;
        public double Cp_RC;
        public double Rs_RL;
        public double Ls_RL;
        public double AbsQ_RL;
        public stItemZ(int binit)
        {
            Frequency = 0.0;
            Zre = 0.0;
            Zim = 0.0;
            Zmag = 0.0;
            ZPhase = 0.0;
            Yre = 0.0;
            Yim = 0.0;
            Ymag = 0.0;
            YPhase = 0.0;
            Rs_RC = 0.0;
            Cs_RC = 0.0;
            Rp_RC = 0.0;
            Cp_RC = 0.0;
            Rs_RL = 0.0;
            Ls_RL = 0.0;
            AbsQ_RL = 0.0;
        }
        public stItemZ(double fFreq, double real, double img)
        {
            Frequency = fFreq;
            Zre = real;
            Zim = img;
            Complex Z = new Complex(real, img);
            Zmag = Z.Magnitude;
            ZPhase = Z.Phase * 180 / Math.PI;
            if (Zre == 0 || Zim == 0)
            {
                Yre = 0;
                Yim = 0;
            }
            else
            {
                Yre = Zre / (Math.Pow(Zre, 2) + Math.Pow(Zim, 2));
                Yim = -1 * Zim / (Math.Pow(Zre, 2) + Math.Pow(Zim, 2));
            }

            Complex Y = new Complex(Yre, Yim);
            Ymag = Y.Magnitude;
            YPhase = Y.Phase * 180 / Math.PI;

            Rs_RC = Zre;
            Cs_RC = 1.0 / (2.0 * Math.PI * Frequency * -1 * Zim);
            Rp_RC = 1.0 / Yre;
            Cp_RC = Yim / (2.0 * Math.PI * Frequency);
            Rs_RL = Zre;
            Ls_RL = Zim / (2.0 * Math.PI * Frequency);
            AbsQ_RL = Math.Abs(Zim / Zre);
        }

        public void initialize(double fFreq, double real, double img)
        {
            Frequency = fFreq;
            Zre = real;
            Zim = img;
            if(Frequency == 0.0 || Zre == 0.0 || Zim == 0.0)
            {
                Zmag = 0.0;
                ZPhase = 0.0;
                Yre = 0;
                Yim = 0;
                Ymag = 0.0;
                YPhase = 0.0;

                Rs_RC = 0.0;
                Cs_RC = 0.0;
                Rp_RC = 0.0;
                Cp_RC = 0.0;
                Rs_RL = 0.0;
                Ls_RL = 0.0;
                AbsQ_RL = 0.0;
                return;
            }
            Complex Z = new Complex(real, img);
            Zmag = Z.Magnitude;
            ZPhase = Z.Phase * 180 / Math.PI;
            if (Zre == 0 || Zim == 0)
            {
                Yre = 0;
                Yim = 0;
            }
            else
            {
                Yre = Zre / (Math.Pow(Zre, 2) + Math.Pow(Zim, 2));
                Yim = -1 * Zim / (Math.Pow(Zre, 2) + Math.Pow(Zim, 2));
            }

            Complex Y = new Complex(Yre, Yim);
            Ymag = Y.Magnitude;
            YPhase = Y.Phase * 180 / Math.PI;

            Rs_RC = Zre;
            Cs_RC = 1.0 / (2.0 * Math.PI * Frequency * -1 * Zim);
            Rp_RC = 1.0 / Yre;
            Cp_RC = Yim / (2.0 * Math.PI * Frequency);
            Rs_RL = Zre;
            Ls_RL = Zim / (2.0 * Math.PI * Frequency);
            AbsQ_RL = Math.Abs(Zim / Zre);
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
            this = (stItemZ)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stItemZ));
            pinnedArr.Free();
        }
    }

    [Serializable]
    public class UnitReportData
    {
        public TimeSpan TestTime;
        public TimeSpan CycleTime;
        public TimeSpan StepTime;

        public bool Enable;
        public double Power;
        public double Load;
        public double Capacity;
        public double Energy;

        public double[] AuxVdc;
        public double []AuxPower;
        public double []AuxLoad;
        public double []AuxEnergy;
        
      
        public stItemZ MainZ;
        public stItemZ[] AuxZ;

        public string Range;
        public stDefTestData mRawData;

        public UnitReportData()
        {
            mRawData = new stDefTestData(0);
            TestTime = TimeSpan.Zero;
            CycleTime = TimeSpan.Zero;
            StepTime = TimeSpan.Zero;
            Power = 0.0;
            Load = 0.0;
            Capacity = 0.0;
            Energy = 0.0;
            MainZ = new stItemZ(0);
            AuxZ = new stItemZ[12];
            AuxPower = new double[12];
            AuxLoad = new double[12];
            AuxVdc = new double[12];
            AuxEnergy = new double[12];
            for (int i=0; i<12; i++)
            {
                AuxZ[i] = new stItemZ(0);
                AuxPower[i] = 0.0;
                AuxLoad[i] = 0.0;
                AuxEnergy[i] = 0.0;
                AuxVdc[i] = 0.0;
            }
        }

        public UnitReportData(stDefTestData rawdata)
        {
            mRawData = new stDefTestData(0);

            mRawData = rawdata;
            TestTime = TimeSpan.FromSeconds(mRawData.TestTime);
            CycleTime = TimeSpan.FromSeconds(mRawData.CycleTime);
            StepTime = TimeSpan.FromSeconds(mRawData.TaskTime);

            Power = 0.0;
            Load = 0.0;
            Capacity = 0.0;
            Energy = 0.0;
            MainZ = new stItemZ(0);
            AuxZ = new stItemZ[12];
            AuxPower = new double[12];
            AuxLoad = new double[12];
            AuxVdc = new double[12];
            AuxEnergy = new double[12];
            for (int i = 0; i < 12; i++)
            {
                AuxZ[i] = new stItemZ(0);
                AuxPower[i] = 0.0;
                AuxLoad[i] = 0.0;
                AuxEnergy[i] = 0.0;
                AuxVdc[i] = 0.0;
            }

            RefreshDataProc();
            Range = string.Format("{0:F3}|{1:F3}", CoTypeString.ToEngineeringNotation(mRawData.iacrng,"","A"), CoTypeString.ToEngineeringNotation(mRawData.vdcrng, "", "V"));
        }

        public int GetIacRng(string sRange)
        {
            int index = sRange.IndexOf("|");
            string siacrng = sRange.Substring(0, index);
            return Convert.ToInt32(siacrng);
        }

        public int GetVdcRng(string sRange)
        {
            int index = sRange.IndexOf("|");
            string svdcrng = sRange.Substring(index + 1);
            return Convert.ToInt32(svdcrng);
        }

        public void RefreshDataProc()
        {
            int bd, bdch;

            Power = mRawData.Vdc * mRawData.Idc;
            Load = (mRawData.Idc == 0.0) ? 0.0 : mRawData.Vdc / mRawData.Idc;
            MainZ.initialize(mRawData.fFreq, mRawData.real, mRawData.img);    
            for (int i = 0; i < 12; i++)
            {
                bd = i / 4;
                bdch = i % 4;
                AuxVdc[i] = mRawData.mdata[bd].mdata[bdch].Vdc;
                AuxPower[i] = mRawData.mdata[bd].mdata[bdch].Vdc * mRawData.Idc;
                AuxLoad[i] = (mRawData.Idc == 0.0) ? 0.0 : mRawData.mdata[bd].mdata[bdch].Vdc / mRawData.Idc;
                AuxZ[i].initialize(mRawData.fFreq, mRawData.mdata[bd].mdata[bdch].Zre, mRawData.mdata[bd].mdata[bdch].Zim);
            }
        }

        public void RefreshZ()
        {
            int bd, bdch;

            MainZ.initialize(mRawData.fFreq, mRawData.real, mRawData.img);
            for (int i = 0; i < 12; i++)
            {
                bd = i / 4;
                bdch = i % 4;
                AuxPower[i] = mRawData.mdata[bd].mdata[bdch].Vdc * mRawData.Idc;
                AuxLoad[i] = (mRawData.Idc == 0.0) ? 0.0 : mRawData.mdata[bd].mdata[bdch].Vdc / mRawData.Idc;
                AuxZ[i].initialize(mRawData.fFreq, mRawData.mdata[bd].mdata[bdch].Zre, mRawData.mdata[bd].mdata[bdch].Zim);
            }
        }


        public void RefreshRngIndex()
        {
            int index = Range.IndexOf("|");
            string siacrng = Range.Substring(0, index);
            string svdcrng = Range.Substring(index + 1);

            mRawData.iacrng = Convert.ToInt32(siacrng);
            mRawData.vdcrng = Convert.ToInt32(svdcrng);
        }

        public UnitReportData(GridRowData ggrd)
        {
            stDefTestData tRawData = new stDefTestData(0);
            tRawData = mRawData;

            tRawData.TestTime = CoTimespanUtil.CoTimespanToSeconds(ggrd.TestTime);
            tRawData.nCycle = ggrd.CycNo;
            tRawData.CycleTime = CoTimespanUtil.CoTimespanToSeconds(ggrd.CycTime);
            tRawData.nTaskNo = ggrd.StepNo;
            tRawData.TaskTime = CoTimespanUtil.CoTimespanToSeconds(ggrd.StepTime);
            tRawData.Idc = ggrd.Current;
            tRawData.Vdc = ggrd.Voltage;
            Power = ggrd.Power;
            Load = ggrd.Load;
            Capacity = ggrd.DchQ;
            Energy = ggrd.DchQ;
            tRawData.Temperature = ggrd.Temp;
            tRawData.mdata[0].mdata[0].Vdc = ggrd.AuxV1;
            tRawData.mdata[0].mdata[1].Vdc = ggrd.AuxV2;
            tRawData.mdata[0].mdata[2].Vdc = ggrd.AuxV3;
            tRawData.mdata[0].mdata[3].Vdc = ggrd.AuxV4;
            tRawData.mdata[1].mdata[0].Vdc = ggrd.AuxV5;
            tRawData.mdata[1].mdata[1].Vdc = ggrd.AuxV6;
            tRawData.mdata[1].mdata[2].Vdc = ggrd.AuxV7;
            tRawData.mdata[1].mdata[3].Vdc = ggrd.AuxV8;
            tRawData.mdata[2].mdata[0].Vdc = ggrd.AuxV9;
            tRawData.mdata[2].mdata[1].Vdc = ggrd.AuxV10;
            tRawData.mdata[2].mdata[2].Vdc = ggrd.AuxV11;
            tRawData.mdata[2].mdata[3].Vdc = ggrd.AuxV12;
            tRawData.Veoc = ggrd.Ocp;
            tRawData.iacrng = ggrd.iacrng;
            tRawData.vdcrng = ggrd.vdcrng;
            tRawData.fFreq = ggrd.Frequency;
            tRawData.real = ggrd.Zre;
            tRawData.img = ggrd.Zim;
            int bd, bdch;
            for(int i=0; i<12; i++)
            {
                bd = i / 4;
                bdch = i % 4;
                tRawData.mdata[bd].mdata[bdch].Zre = ggrd.AuxZ[i].Zre;
                tRawData.mdata[bd].mdata[bdch].Zim = ggrd.AuxZ[i].Zim;
            }

            mRawData = tRawData;

            TestTime = TimeSpan.FromSeconds(mRawData.TestTime);
            CycleTime = TimeSpan.FromSeconds(mRawData.CycleTime);
            StepTime = TimeSpan.FromSeconds(mRawData.TaskTime);

            RefreshDataProc();
            Range = string.Format("{0:F3}|{1:F3}", mRawData.iacrng, mRawData.vdcrng);
        }

        public void ConvertUnitC()
        {
            Capacity *= 3600;
        }

        public void ConvertUnitAhr()
        {
            Capacity /= 3600;
        }
        

        public override bool Equals(object obj)
        {
            return ((UnitReportData)obj).mRawData.Vdc == mRawData.Vdc;
        }

        public override int GetHashCode()
        {
            return mRawData.Vdc.GetHashCode();
        }
    }


    [Serializable]
    public class DataHeaderValues
    {
        public string _FileName;
        public string _version;
        public bool []_CheckAuxBoard;
        public int MaxAuxCh;
        public bool bDCOnly;
        public stResHeader _ResHead;
        public long _datacount;
        public DataHeaderValues()
        {
            _FileName = "";
            _version = "";
            MaxAuxCh = 0;
            bDCOnly = false;
            _CheckAuxBoard = new bool[3];
            _CheckAuxBoard[0] = false;
            _CheckAuxBoard[1] = false;
            _CheckAuxBoard[2] = false;
            _ResHead = new stResHeader(0);
            _datacount = 0;
        }
        public DataHeaderValues(string FileName, string version, stResHeader ResHead, long datacount)
        {
            _FileName = FileName;
            _version = version;
            _ResHead = ResHead;
            _datacount = datacount;
            RefreshInfo();
        }

        public void RefreshInfo()
        {

            if ((eDeviceType)_ResHead.systemInfo.mSIFCfg.Type == eDeviceType.MCBZA)
            {
                _CheckAuxBoard[0] = (_ResHead.systemInfo.ChkZIM[1] == 0) ? false : true;
                _CheckAuxBoard[1] = (_ResHead.systemInfo.ChkZIM[2] == 0) ? false : true;
                _CheckAuxBoard[2] = (_ResHead.systemInfo.ChkZIM[3] == 0) ? false : true;
                if (_CheckAuxBoard[2]) MaxAuxCh = 12;
                else if (_CheckAuxBoard[1]) MaxAuxCh = 8;
                else if (_CheckAuxBoard[0]) MaxAuxCh = 4;
                else MaxAuxCh = 0;
            }
            else
            {
                MaxAuxCh = 0;
            }
            if ((enTechType1)_ResHead.tech.type == enTechType1.TECH_DCH || (enTechType1)_ResHead.tech.type == enTechType1.TECH_MON)
            {
                bDCOnly = true;
            }
            else
            {
                bDCOnly = false;
            }
        }
    }

    public class GridEisDataUnit
    {
        public double Zre;
        public double Zim;
        public GridEisDataUnit()
        {
            Zre = 0.0;
            Zre = 0.0;
        }
    }

    public class GridRowData
    {
        public bool End;
        public Int64 Index;
        public TimeSpan TestTime;
        public Int32 CycNo;
        public TimeSpan CycTime;
        public Int32 StepNo;
        public TimeSpan StepTime;
        public double Current;
        public double Voltage;
        public double Power;
        public double Load;
        public double DchQ;
        public double DchE;
        public double Temp;
        public double AuxV1;
        public double AuxV2;
        public double AuxV3;
        public double AuxV4;
        public double AuxV5;
        public double AuxV6;
        public double AuxV7;
        public double AuxV8;
        public double AuxV9;
        public double AuxV10;
        public double AuxV11;
        public double AuxV12;
        public double Ocp;
        public string Range;
        public int iacrng;
        public int vdcrng;
        public double Frequency;
        public double Zre;
        public double Zim;
        public GridEisDataUnit[] AuxZ { get; set; }

        public int GetIacRng(string sRange)
        {
            int index = sRange.IndexOf("|");
            string siacrng = sRange.Substring(0, index);
            return Convert.ToInt32(siacrng);
        }

        public int GetVdcRng(string sRange)
        {
            int index = sRange.IndexOf("|");
            string svdcrng = sRange.Substring(index+1);
            return Convert.ToInt32(svdcrng);
        }

        public void RefreshRngIndex()
        {
            int index = Range.IndexOf("|");
            string siacrng = Range.Substring(0, index);
            string svdcrng = Range.Substring(index + 1);
            iacrng = Convert.ToInt32(siacrng);
            vdcrng = Convert.ToInt32(svdcrng);
        }
    }
    #endregion EDitor_Define
}