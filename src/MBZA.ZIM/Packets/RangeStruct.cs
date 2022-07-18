using System;
using System.ComponentModel;
using System.Runtime.InteropServices;

namespace ZiveLab.ZM.ZIM.Packets
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

        public void Initialize(double max, double min)
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

        #region ** Properties
        [ReadOnlyAttribute(true)]
        [DisplayName("Maximum"), DescriptionAttribute("View maximum value of range.")]
        public double PropMaximum
        {
            get { return maximum; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Minimum"), DescriptionAttribute("View minimum value of range.")]
        public double PropMinimum
        {
            get { return minimum; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Factor"), DescriptionAttribute("View factor value of range.")]
        public double PropFactor
        {
            get { return factor; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("Gain"), DescriptionAttribute("Edit gain value of range.")]
        public double PropGain
        {
            get { return gain; }
            set { gain = value; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("Offset"), DescriptionAttribute("Edit offset value of range 3.")]
        public double PropOffset
        {
            get { return offset; }
            set { offset = value; }
        }
        #endregion //#region ** Properties
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_vdc_rnginf
    {
        public double realmax;
        public double maximum;
        public double minimum;
        public double factor;
        public double gain;
        public double offset;
        public st_zim_vdc_rnginf(double rmax, double max, double min)
        {
            realmax = rmax;
            maximum = max;
            minimum = min;
            factor = (maximum - minimum) / 16777216.0;
            gain = 1.0;
            offset = 0.0;
        }

        public void Initialize(double rmax, double max, double min)
        {
            realmax = rmax;
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
            this = (st_zim_vdc_rnginf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_vdc_rnginf));
            pinnedArr.Free();
        }

        #region ** Properties
        [ReadOnlyAttribute(true)]
        [DisplayName("Real max.(V)"), DescriptionAttribute("View real maximum value of range.")]
        public double PropRealmax
        {
            get { return realmax; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Maximum(V)"), DescriptionAttribute("View maximum value of range.")]
        public double PropMaximum
        {
            get { return maximum; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Minimum(V)"), DescriptionAttribute("View minimum value of range.")]
        public double PropMinimum
        {
            get { return minimum; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Factor"), DescriptionAttribute("View factor value of range.")]
        public double PropFactor
        {
            get { return factor; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("Gain"), DescriptionAttribute("Edit gain value of range.")]
        public double PropGain
        {
            get { return gain; }
            set { gain = value; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("Offset"), DescriptionAttribute("Edit offset value of range 3.")]
        public double PropOffset
        {
            get { return offset; }
            set { offset = value; }
        }
        #endregion //#region ** Properties
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_adci_rnginf
    {
        public double realmax;
        public double controlgain;
        public double maximum;
        public double minimum;
        public double factor;
        public double gain1;
        public double gain2;
        public st_zim_adci_rnginf(double rmax, double ogain, double max, double min)
        {
            realmax = rmax;
            controlgain = ogain;
            maximum = max;
            minimum = min;
            factor = (maximum - minimum) / 16777216.0;
            gain1 = 1.0;
            gain2 = 1.0;
        }

        public void Initialize(double rmax, double ogain, double max, double min)
        {
            realmax = rmax;
            controlgain = ogain;
            maximum = max;
            minimum = min;
            factor = (maximum - minimum) / 16777216.0;
            gain1 = 1.0;
            gain2 = 1.0;
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
            this = (st_zim_adci_rnginf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_adci_rnginf));
            pinnedArr.Free();
        }

        #region ** Properties
        [ReadOnlyAttribute(true)]
        [DisplayName("RealMaximum(A)"), DescriptionAttribute("View real maximum value of range.")]
        public double PropRealmaximum
        {
            get { return realmax; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Control Gain"), DescriptionAttribute("View control gain of range.")]
        public double PropOutgain
        {
            get { return controlgain; }
        }
        
        [ReadOnlyAttribute(true)]
        [DisplayName("Maximum(A)"), DescriptionAttribute("View maximum value of range.")]
        public double PropMaximum
        {
            get { return maximum; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Minimum(A)"), DescriptionAttribute("View minimum value of range.")]
        public double PropMinimum
        {
            get { return minimum; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Factor(A)"), DescriptionAttribute("View factor value of range.")]
        public double PropFactor
        {
            get { return factor; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("Gain(x1.0)"), DescriptionAttribute("Edit gain(X1.0) value of range.")]
        public double PropGain
        {
            get { return gain1; }
            set { gain1 = value; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("Gain(x0.2)"), DescriptionAttribute("Edit gain(x0.2) value of range.")]
        public double PropOffset
        {
            get { return gain2; }
            set { gain2 = value; }
        }
        #endregion //#region ** Properties
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_adcv_rnginf
    {
        public double realmax;
        public double maximum;
        public double minimum;
        public double factor;
        public double gain;
        public double offset;
        public st_zim_adcv_rnginf(double rmax,double max, double min)
        {
            realmax = rmax;
            maximum = max;
            minimum = min;
            factor = (maximum - minimum) / 16777216.0;
            gain = 1.0;
            offset = 0.0;
        }

        public void Initialize(double rmax, double max, double min)
        {
            realmax = rmax;
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
            this = (st_zim_adcv_rnginf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_adcv_rnginf));
            pinnedArr.Free();
        }

        #region ** Properties
        [ReadOnlyAttribute(true)]
        [DisplayName("RealMaximum(V)"), DescriptionAttribute("View real maximum value of range.")]
        public double PropRealmaximum
        {
            get { return realmax; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Maximum(V)"), DescriptionAttribute("View maximum value of range.")]
        public double PropMaximum
        {
            get { return maximum; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Minimum(V)"), DescriptionAttribute("View minimum value of range.")]
        public double PropMinimum
        {
            get { return minimum; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Factor(V)"), DescriptionAttribute("View factor value of range.")]
        public double PropFactor
        {
            get { return factor; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("Gain"), DescriptionAttribute("Edit gain value of range.")]
        public double PropGain
        {
            get { return gain; }
            set { gain = value; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("Offset"), DescriptionAttribute("Edit offset value of range 3.")]
        public double PropOffset
        {
            get { return offset; }
            set { offset = value; }
        }
        #endregion //#region ** Properties
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_adct_rnginf
    {
        public double maximum;
        public double minimum;
        public double factor;
        public double gain;
        public double offset;
        public st_zim_adct_rnginf(double max, double min)
        {
            maximum = max;
            minimum = min;
            factor = (maximum - minimum) / 16777216.0;
            gain = 1.0;
            offset = 0.0;
        }

        public void Initialize(double max, double min)
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
            this = (st_zim_adct_rnginf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_adct_rnginf));
            pinnedArr.Free();
        }

        #region ** Properties
        [ReadOnlyAttribute(true)]
        [DisplayName("Maximum(°C)"), DescriptionAttribute("View maximum value of range.")]
        public double PropMaximum
        {
            get { return maximum; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Minimum(°C)"), DescriptionAttribute("View minimum value of range.")]
        public double PropMinimum
        {
            get { return minimum; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Factor(°C)"), DescriptionAttribute("View factor value of range.")]
        public double PropFactor
        {
            get { return factor; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("Gain"), DescriptionAttribute("Edit gain value of range.")]
        public double PropGain
        {
            get { return gain; }
            set { gain = value; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("Offset"), DescriptionAttribute("Edit offset value of range 3.")]
        public double PropOffset
        {
            get { return offset; }
            set { offset = value; }
        }
        #endregion //#region ** Properties
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

        public void Initialize()
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
        #region ** Properties
        [ReadOnlyAttribute(false)]
        [DisplayName("n1"), DescriptionAttribute("Edit n1 value of range.")]
        public double PropN1
        {
            get { return n1; }
            set { n1 = value; }
        }

        [ReadOnlyAttribute(false)]
        [DisplayName("n2"), DescriptionAttribute("Edit n2 value of range.")]
        public double PropN2
        {
            get { return n2; }
            set { n2 = value; }
        }

        [ReadOnlyAttribute(false)]
        [DisplayName("n3"), DescriptionAttribute("Edit n3 value of range.")]
        public double PropN3
        {
            get { return n3; }
            set { n3 = value; }
        }

        [ReadOnlyAttribute(false)]
        [DisplayName("d1"), DescriptionAttribute("Edit d1 value of range.")]
        public double PropD1
        {
            get { return d1; }
            set { d1 = value; }
        }

        [ReadOnlyAttribute(false)]
        [DisplayName("d2"), DescriptionAttribute("Edit d2 value of range.")]
        public double PropD2
        {
            get { return d2; }
            set { d2 = value; }
        }

        [ReadOnlyAttribute(false)]
        [DisplayName("d3"), DescriptionAttribute("Edit d3 value of range.")]
        public double PropD3
        {
            get { return d3; }
            set { d3 = value; }
        }
        #endregion //#region ** Properties
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_dummy
    {
        public double Ls;
        public double R;
        public double Nouse1;
        public double Nouse2;
        public st_zim_dummy(double init)
        {
            Ls = 0.0;
            R = 0.0;
            Nouse1 = 0.0;
            Nouse2 = 0.0;
        }

        #region ** Properties
        [ReadOnlyAttribute(false)]
        [DisplayName("Inducance(H)"), DescriptionAttribute("Edit inductance of range.")]
        public double PropInducance
        {
            get { return Ls; }
            set { Ls = value; }
        }

        [ReadOnlyAttribute(false)]
        [DisplayName("Resistor(Ω)"), DescriptionAttribute("Edit resistor of range.")]
        public double PropResistor
        {
            get { return R; }
            set { R = value; }
        }
        #endregion //#region ** Properties
    }
    
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_Safety_inf
    {
        public double MaxPower;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public double[] NoUse;
        public st_zim_Safety_inf(byte init)
        {
            MaxPower = DeviceConstants.DEV_MAX_POWER;
            NoUse = new double[4];
            NoUse[0] = 0.0;
            NoUse[1] = 0.0;
            NoUse[2] = 0.0;
            NoUse[3] = 0.0;
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
        #region ** Properties
        [ReadOnlyAttribute(false)]
        [DisplayName("Power limit(W)"), DescriptionAttribute("Edit power limit of ZIM(Channel) Board.")]
        public double PropPower
        {
            get { return MaxPower; }
            set { MaxPower = value; }
        }
       
        #endregion //#region ** Properties
    }
    

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_rnginf
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
        public st_zim_rnginf(eZimType mtype)
        {
            ID = DeviceConstants.ID_RANGEINFO;
            mSafety = new st_zim_Safety_inf(0);

            iac_rng = new st_zim_adci_rnginf[DeviceConstants.MAX_IAC_RNGCNT];
            iac_rng[0] = new st_zim_adci_rnginf(DeviceConstants.ADC_IAC_RNG1_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG1_MAX, DeviceConstants.ADC_IAC_RNG1_MIN);
            iac_rng[1] = new st_zim_adci_rnginf(DeviceConstants.ADC_IAC_RNG2_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG2_MAX, DeviceConstants.ADC_IAC_RNG2_MIN);
            iac_rng[2] = new st_zim_adci_rnginf(DeviceConstants.ADC_IAC_RNG3_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG3_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);
            iac_rng[3] = new st_zim_adci_rnginf(DeviceConstants.ADC_IAC_RNG4_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG4_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);

            vac_rng = new st_zim_adcv_rnginf(DeviceConstants.ADC_VAC_RNG_RMAX,DeviceConstants.ADC_VAC_RNG_MAX, DeviceConstants.ADC_VAC_RNG_MIN);

            vdc_rng = new st_zim_adcv_rnginf[DeviceConstants.MAX_VDC_RNGCNT];

            if (mtype == eZimType.BZA500)
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX1, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX1, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
            }
            else if (mtype == eZimType.BZA100)
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX2, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX2, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
            }
            else if (mtype == eZimType.BZA60)
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX3, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX3, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
            }
            else
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX0, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX0, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
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
            mSafety.MaxPower = DeviceConstants.DEV_MAX_POWER;
            iac_rng[0].Initialize(DeviceConstants.ADC_IAC_RNG1_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG1_MAX, DeviceConstants.ADC_IAC_RNG1_MIN);
            iac_rng[1].Initialize(DeviceConstants.ADC_IAC_RNG2_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG2_MAX, DeviceConstants.ADC_IAC_RNG2_MIN);
            iac_rng[2].Initialize(DeviceConstants.ADC_IAC_RNG3_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG3_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);
            iac_rng[3].Initialize(DeviceConstants.ADC_IAC_RNG4_RMAX, DeviceConstants.ADC_IAC_CONTROLGAIN0, DeviceConstants.ADC_IAC_RNG4_MAX, DeviceConstants.ADC_IAC_RNG4_MIN);
            vac_rng.Initialize(DeviceConstants.ADC_VAC_RNG_RMAX, DeviceConstants.ADC_VAC_RNG_MAX, DeviceConstants.ADC_VAC_RNG_MIN);

            if (mtype == eZimType.BZA500)
            {
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX1, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX1, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
            }
            else if (mtype == eZimType.BZA100)
            {
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX2, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX2, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
            }
            else if (mtype == eZimType.BZA60)
            {
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX3, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX3, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
            }
            else
            {
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX0, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX0, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
            }
            
            rtd_rng.Initialize(DeviceConstants.ADC_RTD_CONST_MAX, DeviceConstants.ADC_RTD_CONST_MIN);
            rtd_rng.factor = DeviceConstants.ADC_RTD_CONST_PT1000;
            for(i=0; i< DeviceConstants.MAX_IAC_CTRL_RNGCNT; i++)
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
            this = (st_zim_rnginf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_rnginf));
            pinnedArr.Free();
        }
    }
}
