using System;
using System.Runtime.InteropServices;

namespace ZiveLab.Device.ZIM.Packets
{
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_adc_rnginf
    {
        public double maximum;
        public double minimum;
        public double factor;
        public double gain;
        public double offset;
        public st_zim_adc_rnginf(double max, double min)
        {
            maximum = max;
            minimum = min;
            factor = (maximum - minimum) / 16777216.0;
            gain = 1.0;
            offset = 0.0;
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
            this = (st_zim_adc_rnginf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_adc_rnginf));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_Eis_Cal_info
    {
        public double n1;
        public double n2;
        public double n3;
        public double d1;
        public double d2;
        public double d3;
        public st_zim_Eis_Cal_info(byte init)
        {
            n1 = 0.0;
            n2 = 0.0;
            n3 = 0.0;
            d1 = 0.0;
            d2 = 0.0;
            d3 = 0.0;
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
            this = (st_zim_Eis_Cal_info)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_Eis_Cal_info));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_Eis_Comp_Ls
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_IAC_CTRL_RNGCNT)]
        public double []Ls;

        public st_zim_Eis_Comp_Ls(byte init)
        {
            Ls = new double[DeviceConstants.MAX_IAC_CTRL_RNGCNT];

            Ls[0] = 57.367e-9;
            Ls[1] = 57.367e-9;
            Ls[2] = 52.47e-9;
            Ls[3] = 52.47e-9;
            Ls[4] = 107.241e-9;
            Ls[5] = 107.241e-9;
            Ls[6] = 1.893e-6;
            Ls[7] = 1.893e-6;
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
            this = (st_zim_Eis_Comp_Ls)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_Eis_Comp_Ls));
            pinnedArr.Free();
        }
    }
    
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_Safety_inf
    {
        public double MaxPower;
        public st_zim_Safety_inf(byte init)
        {
            MaxPower = DeviceConstants.DEV_MAX_POWER;
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
            this = (st_zim_Safety_inf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_Safety_inf));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_rnginf1
    {
        public byte ID;
        public st_zim_Safety_inf mSafety;
        public st_zim_Eis_Cal_info mEisCalInfo;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_IAC_RNGCNT)]
        public st_zim_adc_rnginf[] iac_rng;
        public st_zim_adc_rnginf vac_rng;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_VDC_RNGCNT)]
        public st_zim_adc_rnginf[] vdc_rng;
        public st_zim_adc_rnginf rtd_rng;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_IAC_RNGCNT)]
        public st_zim_Eis_Cal_info[] mEisIRngCalInfo; // not use
        public st_zim_rnginf1(byte init)
        {
            ID = DeviceConstants.ID_RANGEINFO;
            mSafety = new st_zim_Safety_inf(0);
            mEisCalInfo = new st_zim_Eis_Cal_info(0);

            iac_rng = new st_zim_adc_rnginf[DeviceConstants.MAX_IAC_RNGCNT];
            iac_rng[0] = new st_zim_adc_rnginf(DeviceConstants.ADC_IAC_RNG0_MAX, DeviceConstants.ADC_IAC_RNG0_MIN);
            iac_rng[1] = new st_zim_adc_rnginf(DeviceConstants.ADC_IAC_RNG1_MAX, DeviceConstants.ADC_IAC_RNG1_MIN);
            iac_rng[2] = new st_zim_adc_rnginf(DeviceConstants.ADC_IAC_RNG2_MAX, DeviceConstants.ADC_IAC_RNG2_MIN);
            iac_rng[3] = new st_zim_adc_rnginf(DeviceConstants.ADC_IAC_RNG3_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);

            vac_rng = new st_zim_adc_rnginf(DeviceConstants.ADC_VAC_RNG_MAX, DeviceConstants.ADC_VAC_RNG_MIN);

            vdc_rng = new st_zim_adc_rnginf[DeviceConstants.MAX_VDC_RNGCNT];
            vdc_rng[0] = new st_zim_adc_rnginf(DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
            vdc_rng[1] = new st_zim_adc_rnginf(DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);

            rtd_rng = new st_zim_adc_rnginf(DeviceConstants.ADC_RTD_CONST_MAX, DeviceConstants.ADC_RTD_CONST_MIN);
            rtd_rng.factor = DeviceConstants.ADC_RTD_CONST_PT1000;

            mEisIRngCalInfo = new st_zim_Eis_Cal_info[DeviceConstants.MAX_IAC_RNGCNT];

            mEisIRngCalInfo[0] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[1] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[2] = new st_zim_Eis_Cal_info(0);
            mEisIRngCalInfo[3] = new st_zim_Eis_Cal_info(0);

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
            this = (st_zim_rnginf1)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_rnginf1));
            pinnedArr.Free();
        }
    }


    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_rnginf
    {
        public byte ID;
        public st_zim_Safety_inf mSafety;
        public st_zim_Eis_Cal_info mEisCalInfo;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_IAC_RNGCNT)]
        public st_zim_adc_rnginf[] iac_rng;
        public st_zim_adc_rnginf vac_rng;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_VDC_RNGCNT)]
        public st_zim_adc_rnginf[] vdc_rng;
        public st_zim_adc_rnginf rtd_rng;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_IAC_CTRL_RNGCNT)]
        public st_zim_Eis_Cal_info[] mEisIRngCalInfo; // not use
        public st_zim_Eis_Comp_Ls mEirIrngCompLs;
        public st_zim_rnginf(byte init)
        {
            ID = DeviceConstants.ID_RANGEINFO;
            mSafety = new st_zim_Safety_inf(0);
            mEisCalInfo = new st_zim_Eis_Cal_info(0);

            iac_rng = new st_zim_adc_rnginf[DeviceConstants.MAX_IAC_RNGCNT];
            iac_rng[0] = new st_zim_adc_rnginf(DeviceConstants.ADC_IAC_RNG0_MAX, DeviceConstants.ADC_IAC_RNG0_MIN);
            iac_rng[1] = new st_zim_adc_rnginf(DeviceConstants.ADC_IAC_RNG1_MAX, DeviceConstants.ADC_IAC_RNG1_MIN);
            iac_rng[2] = new st_zim_adc_rnginf(DeviceConstants.ADC_IAC_RNG2_MAX, DeviceConstants.ADC_IAC_RNG2_MIN);
            iac_rng[3] = new st_zim_adc_rnginf(DeviceConstants.ADC_IAC_RNG3_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);

            vac_rng = new st_zim_adc_rnginf(DeviceConstants.ADC_VAC_RNG_MAX, DeviceConstants.ADC_VAC_RNG_MIN);

            vdc_rng = new st_zim_adc_rnginf[DeviceConstants.MAX_VDC_RNGCNT];
            vdc_rng[0] = new st_zim_adc_rnginf(DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
            vdc_rng[1] = new st_zim_adc_rnginf(DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);

            rtd_rng = new st_zim_adc_rnginf(DeviceConstants.ADC_RTD_CONST_MAX, DeviceConstants.ADC_RTD_CONST_MIN);
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

            mEirIrngCompLs = new st_zim_Eis_Comp_Ls(0);
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
            this = (st_zim_rnginf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_rnginf));
            pinnedArr.Free();
        }
    }
}
