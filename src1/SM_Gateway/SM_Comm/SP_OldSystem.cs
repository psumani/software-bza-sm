using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;
using SM_Define;
using SM_Enum;
using SP_Struct;

namespace SP_OldSystem
{
    [StructLayout(LayoutKind.Sequential)]
    public struct stDefSysInfo_0
    {
        public int iCheckROM;
        public int iLastTime;
        public int iVersion;
        public UInt16 usModel;
        public UInt16 usLicense;

        public stDefSysInfo_0(byte model)
        {
            iCheckROM = 0;
            iLastTime = 0;
            iVersion = 0;
            usModel = model;
            usLicense = 0;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stDefSysInfo_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefSysInfo_0));
            pinnedArr.Free();
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

    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefAuxDev_0 
    {
        public UInt16 nType;
        public float nDevMax;
        public float nDevMin;

        public stDefAuxDev_0(byte init)
        {
            nType = 0;
            nDevMax = 0.0f;
            nDevMin = 0.0f;
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
            this = (stDefAuxDev_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefAuxDev_0));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefSysConfig_0
    {
        public int BaseTime;
        public int DaqTick;
        public int DispTick;
        public int CalibTick;
        public UInt16 CalibSamples;
        public UInt16 PowerNoise;		// 50 / 60
        public int      ADCTime; 	// us
        public UInt16 ADCSumCnt;
        public UInt16 RngCntA;
        public UInt16 RngCntV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_ALLMAXRNG_A + 2, ArraySubType = UnmanagedType.R4)]
        public float[] RngA;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXRNG_V, ArraySubType = UnmanagedType.R4)]
        public float[] RngV;
        public float ExtRngA;
        public float ExtRngV;
        public float RngUpCond;
        public float RngDnCond;
        public UInt16 RngChgChk;
        public int RngDelay;
        public float FailPer;
        public int      Aux_ADCTime; 	// us
        public int      Aux_ADCSumCnt; 	// us
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXCH_AUXOUT)]
        public stDefAuxDev_0[] Aux_RngOut;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXCH_AUXIN)]
        public stDefAuxDev_0[] Aux_RngIn;
        public UInt16 FB_GMax;
        public UInt16 EIS_InitIntRng;
        public float CableLs;
        public float EIS_RngAutoFreq;
        public float EIS_FltFreqL;
	    public float EIS_FltFreqM;
	    public float EIS_FltFreqH;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.MAX_FEEDBACK, ArraySubType = UnmanagedType.R4)]
        public float[] EIS_FBFreq;
        public float EIS_UnusePntRate;
        public float EIS_SubHamonicFreq;
        public float EIS_ProgTime;
        public int EIS_MaxCycle;
        public int EIS_MinCycle;
        public int EIS_MaxPoint;
        public int EIS_MinPoint;
        public float EIS_AvgFreq;
        public int EIS_Delay;
        public float EIS_OFSLimitI;
        public float EIS_OFSLimitV;

        public stDefSysConfig_0(byte model)
        {
            int i;
            int RngCount = SM_Main_Define.DEF_MAXRNG_A;
            float tFloat;
            float fMaxA;

            if (model == (byte)enDeviceModel.SP1 || model == (byte)enDeviceModel.SP1E || model == (byte)enDeviceModel.MP1)
            {
                fMaxA = 1.0f;
                RngCount = SM_Main_Define.DEF_MAXRNG_A_SM;
            }
            else if (model == (byte)enDeviceModel.SP2 || model == (byte)enDeviceModel.MP2 || model == (byte)enDeviceModel.BP2 || model == (byte)enDeviceModel.PP1) fMaxA = 2.0f;
            else if (model == (byte)enDeviceModel.SP5 || model == (byte)enDeviceModel.MP5 || model == (byte)enDeviceModel.BP5) fMaxA = 5.0f;
            else fMaxA = fMaxA = 2.0f;

            BaseTime = SM_Main_Define.DEF_DEFAULT_CFG_BASETICK; 			//us
            DaqTick = SM_Main_Define.DEF_DEFAULT_CFG_DAQTICK; 			// ProcTime = mSys.mConfig.BaseTime * mSys.mConfig.ProcTick us
            DispTick = SM_Main_Define.DEF_DEFAULT_CFG_DISPTICK;			// DispTime = mSys.mConfig.BaseTime * mSys.mConfig.DispTick us
            CalibTick = SM_Main_Define.DEF_DEFAULT_CFG_DISPTICK;
            CalibSamples = 4;
            PowerNoise = SM_Main_Define.DEF_DEFAULT_CFG_POWERNOISE;    // 60Hz

            ADCTime = 2; 		//us
            ADCSumCnt = 25;

            RngCntA = (ushort)(RngCount + SM_Main_Define.DEF_MAXUSE_INT_INV - 1);
            RngCntV = SM_Main_Define.DEF_MAXRNG_V;
            tFloat = 1.0f;

            RngA = new float[SM_Main_Define.DEF_REALMAXRNG_A];
            for (i = 0; i < SM_Main_Define.DEF_REALMAXRNG_A; i++)
            {
                RngA[i] = (fMaxA / tFloat);
                tFloat *= 10.0f;
            }
            tFloat = 1.0f;

            RngV = new float[SM_Main_Define.DEF_MAXRNG_V];
            for (i = 0; i < SM_Main_Define.DEF_MAXRNG_V; i++)
            {
                RngV[i] = (SM_Main_Define.DEF_MAXVAL_V / tFloat);
                tFloat *= 10.0f;
            }
            ExtRngA = SM_Main_Define.DEF_MAXVAL_EXT;
            ExtRngV = SM_Main_Define.DEF_MAXVAL_EXT;

            RngUpCond = SM_Main_Define.DEF_DEFAULT_CFG_RNG_UPCOND;
            RngDnCond = SM_Main_Define.DEF_DEFAULT_CFG_RNG_DNCOND;
            RngChgChk = 0;
            RngDelay = SM_Main_Define.DEF_DEFAULT_CFG_RNG_DELAY; // ms
            FailPer = SM_Main_Define.DEF_DEFAULT_CFG_FAILCONTROLRATE;

            Aux_ADCTime = SM_Main_Define.DEF_DEFAULT_CFG_AUXADCTIME; 		//us
            Aux_ADCSumCnt = Aux_ADCTime / SM_Main_Define.DEF_AUX_BASE_SMPLTIME;
            if (Aux_ADCSumCnt > 30000) Aux_ADCSumCnt = 30000;

            Aux_RngOut = new stDefAuxDev_0[SM_Main_Define.DEF_MAXCH_AUXOUT];
            for (i = 0; i < SM_Main_Define.DEF_MAXCH_AUXOUT; i++)
            {
                Aux_RngOut[i] = new stDefAuxDev_0(0);
                Aux_RngOut[i].nType = SM_Main_Define.DEF_AUX_TYPE_NORMAL;
                Aux_RngOut[i].nDevMax = SM_Main_Define.DEF_MAXVAL_AUX;
                Aux_RngOut[i].nDevMin = Aux_RngOut[i].nDevMax * -1.0f;
            }
            Aux_RngIn = new stDefAuxDev_0[SM_Main_Define.DEF_MAXCH_AUXIN];
            for (i = 0; i < SM_Main_Define.DEF_MAXCH_AUXIN; i++)
            {
                Aux_RngIn[i] = new stDefAuxDev_0(0);
                if (i == 0)
                {
                    Aux_RngIn[i].nDevMax = SM_Main_Define.DEF_MAXVAL_TEMP;
                }
                else Aux_RngIn[i].nDevMax = SM_Main_Define.DEF_MAXVAL_AUX;
                Aux_RngIn[i].nDevMin = Aux_RngIn[i].nDevMax * -1.0f;
                Aux_RngIn[i].nType = SM_Main_Define.DEF_AUX_TYPE_NORMAL;
            }
            FB_GMax = SM_Main_Define.DEF_MAXFB_CURRENT;
            EIS_InitIntRng = SM_Main_Define.DEF_DEFAULT_CFG_EIS_INITINTRNG;
            EIS_RngAutoFreq = SM_Main_Define.DEF_DEFAULT_CFG_EIS_RNGAUTOFREQ;    //
            CableLs = 0.0f;
            EIS_FltFreqL = SM_Main_Define.DEF_DEFAULT_CFG_EIS_FLTFREQL;
            EIS_FltFreqM = SM_Main_Define.DEF_DEFAULT_CFG_EIS_FLTFREQM;
            EIS_FltFreqH = SM_Main_Define.DEF_DEFAULT_CFG_EIS_FLTFREQH;

            EIS_FBFreq = new float[SM_Main_Define.MAX_FEEDBACK];

            EIS_FBFreq[0] = SM_Main_Define.DEF_DEFAULT_CFG_EIS_FBFREQ0;
            EIS_FBFreq[1] = SM_Main_Define.DEF_DEFAULT_CFG_EIS_FBFREQ1;
            EIS_FBFreq[2] = SM_Main_Define.DEF_DEFAULT_CFG_EIS_FBFREQ2;
            EIS_FBFreq[3] = SM_Main_Define.DEF_DEFAULT_CFG_EIS_FBFREQ3;
            EIS_FBFreq[4] = SM_Main_Define.DEF_DEFAULT_CFG_EIS_FBFREQ4;
            EIS_FBFreq[5] = SM_Main_Define.DEF_DEFAULT_CFG_EIS_FBFREQ5;
            EIS_FBFreq[6] = SM_Main_Define.DEF_DEFAULT_CFG_EIS_FBFREQ6;
            EIS_FBFreq[7] = SM_Main_Define.DEF_DEFAULT_CFG_EIS_FBFREQ7;

            EIS_SubHamonicFreq = SM_Main_Define.DEF_MAX_SUBHAMONIC_FREQ;
            EIS_ProgTime = SM_Main_Define.DEF_MAX_FRA_TIME;
            EIS_MaxCycle = SM_Main_Define.DEF_MAX_ADC_CYCLE;
            EIS_MinCycle = SM_Main_Define.DEF_MIN_ADC_CYCLE;
            EIS_MaxPoint = SM_Main_Define.DEF_MAX_ADC_TOTALPOINT;
            EIS_MinPoint = SM_Main_Define.DEF_MIN_ADC_TOTAL_POINT;
            EIS_AvgFreq = SM_Main_Define.DEF_DEFAULT_CFG_EIS_AVGLMT;
            EIS_UnusePntRate = SM_Main_Define.DEF_DEFAULT_CFG_EIS_UNUSERATE;

            EIS_Delay = SM_Main_Define.DEF_DEFAULT_CFG_EISDELAY;
            EIS_OFSLimitI =SM_Main_Define.DEF_DEFAULT_CFG_EISOFSLIMITI;
            EIS_OFSLimitV = SM_Main_Define.DEF_DEFAULT_CFG_EISOFSLIMITV;

        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stDefSysConfig_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefSysConfig_0));
            pinnedArr.Free();
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
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefRange_0 
    {
        public float MaxValue;
        public float MinValue;
        public float Resolution;
        public float Factor;
        public float Gain;
        public float Offset;

        public stDefRange_0(float fMax, float fMin)
        {
            MaxValue = fMax;
            MinValue = fMin;
            Resolution = 65536.0f;
            Factor = SM_Main_Define.DEF_DAC_RESOLUTION / (2.0f * fMax); 
            Gain = 1.0f;
            Offset = 0.0f;
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
            this = (stDefRange_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefRange_0));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefRangeEx_0 
    {
        public float MaxValue;
        public float MinValue;
        public float Resolution;
        public float Factor;
        public float Gain;
        public float Offset;
        public float Rs;
        public float Cs;
        public stDefRangeEx_0(float fMax, float fMin)
        {
            MaxValue = fMax;
            MinValue = fMin;
            Resolution = 65536.0f;
            Factor = SM_Main_Define.DEF_DAC_RESOLUTION / (2.0f * fMax); 
            Gain = 1.0f;
            Offset = 0.0f;
            Rs = 0.0f;
            Cs = 0.0f;
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
            this = (stDefRangeEx_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefRangeEx_0));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefRangeA_0 
    {
        public float MaxValue;
        public float MinValue;
        public float Resolution;
        public float Factor;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT, ArraySubType = UnmanagedType.R4)]
        public float []Gain;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT, ArraySubType = UnmanagedType.R4)]
        public float []Offset;

        public stDefRangeA_0(float fMax, float fMin)
        {
            int i;
            MaxValue = fMax;
            MinValue = fMin;
            Resolution = 65536.0f;
            Factor = SM_Main_Define.DEF_DAC_RESOLUTION / (2.0f * fMax); 
            Gain = new float[SM_Main_Define.DEF_MAXFLT];
            Offset = new float[SM_Main_Define.DEF_MAXFLT];
            for (i = 0; i < SM_Main_Define.DEF_MAXFLT; i++)
            {
                Gain[i] = 1.0f;
                Offset[i] = 0.0f;
            }
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
            this = (stDefRangeA_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefRangeA_0));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefBstRangeAO_0 
    {
        public float MaxValue;
        public float MinValue;
        public float 	Factor;
	    public float 	Gain;
	    public float 	Offset;

        public stDefBstRangeAO_0(float fMax, float fMin)
        {
            MaxValue = fMax;
            MinValue = fMin; 
            Factor = SM_Main_Define.DEF_DAC_RESOLUTION / (2.0f * fMax); 
            Gain = 1.0f;
            Offset = 0.0f;
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
            this = (stDefBstRangeAO_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefBstRangeAO_0));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefBstRangeAI_0 
    {
        public float MaxValue;
        public float MinValue;
        public float 	Factor;
	    public float 	Gain;
	    public float 	Offset;
        public float 	Rs;
	    public float 	Cs;
        public stDefBstRangeAI_0(float fMax, float fMin)
        {
            MaxValue = fMax;
            MinValue = fMin; 
            Factor = SM_Main_Define.DEF_DAC_RESOLUTION / (2.0f * fMax); 
            Gain = 1.0f;
            Offset = 0.0f;
            Rs = 0.0f;
            Cs = 0.0f;
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
            this = (stDefBstRangeAI_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefBstRangeAI_0));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefRangeAEx_0 
    {
        public float MaxValue;
        public float MinValue;
        public float Resolution;
        public float Factor;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT, ArraySubType = UnmanagedType.R4)]
        public float []Gain;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT, ArraySubType = UnmanagedType.R4)]
        public float []Offset;
        public float 	Rs;
	    public float 	Cs;
        public stDefRangeAEx_0(float fMax, float fMin)
        {
            int i;
            MaxValue = fMax;
            MinValue = fMin;
            Resolution = 65536.0f;
            Factor = SM_Main_Define.DEF_DAC_RESOLUTION / (2.0f * fMax); 
            Gain = new float[SM_Main_Define.DEF_MAXFLT];
            Offset = new float[SM_Main_Define.DEF_MAXFLT];
            for (i = 0; i < SM_Main_Define.DEF_MAXFLT; i++)
            {
                Gain[i] = 1.0f;
                Offset[i] = 0.0f;
            }
            Rs = 0.0f;
            Cs = 0.0f;
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
            this = (stDefRangeAEx_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefRangeAEx_0));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefRangeAIO_0 
    {
        public float MaxValue;
        public float MinValue;
        public float Resolution;
        public float Factor;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT, ArraySubType = UnmanagedType.R4)]
        public float []Gain;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT, ArraySubType = UnmanagedType.R4)]
        public float []Offset;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT, ArraySubType = UnmanagedType.I2)]
        public ushort []usOFS;
        public float 	Rs;
	    public float 	Cs;
        public stDefRangeAIO_0(float fMax, float fMin)
        {
            int i;
            MaxValue = fMax;
            MinValue = fMin;
            Resolution = 65536.0f;
            Factor = SM_Main_Define.DEF_DAC_RESOLUTION / (2.0f * fMax); 
            Gain = new float[SM_Main_Define.DEF_MAXFLT];
            Offset = new float[SM_Main_Define.DEF_MAXFLT];
            usOFS = new ushort[SM_Main_Define.DEF_MAXFLT];
            for (i = 0; i < SM_Main_Define.DEF_MAXFLT; i++)
            {
                Gain[i] = 1.0f;
                Offset[i] = 0.0f;
                usOFS[i] = 32768;
            }
            Rs = 0.0f;
            Cs = 0.0f;
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
            this = (stDefRangeAIO_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefRangeAIO_0));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefRangeOFS_0 
    {
        public float MaxValue;
        public float MinValue;
        public float Resolution;
        public float Factor;
        public ushort usVal;

        public stDefRangeOFS_0(float fMax, float fMin)
        {

            MaxValue = fMax;
            MinValue = fMin;
            Resolution = 65536.0f;
            Factor = SM_Main_Define.DEF_DAC_RESOLUTION / (2.0f * fMax); 
            usVal = 32768;
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
            this = (stDefRangeOFS_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefRangeOFS_0));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefBstAORange_0 
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public stDefBstRangeAO_0[] mSigV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public stDefBstRangeAO_0[] mSigA;
        public stDefBstRangeAO_0 mBiasV;
        public stDefBstRangeAO_0 mBiasA;

        public stDefBstAORange_0(float MaxA,float MaxV, float MinV)
        {
            int i;
            float fMax;
            float fMin;
            float fTemp;
            
            mSigV = new stDefBstRangeAO_0[3];
            mSigA = new stDefBstRangeAO_0[3];

            fMax = MaxV;
            fMin = fMax * -1.0f;
            mBiasV = new stDefBstRangeAO_0(fMax, fMin);
            mBiasV.MinValue = MinV;

            fMax = MaxA;
            fMin = fMax * -1.0f;
            mBiasA = new stDefBstRangeAO_0(fMax, fMin);

            fTemp = 1.0f;
            for (i = 0; i < 3; i++)
            {
                fMax = MaxV / fTemp;
                fMin = fMax * -1.0f;

                mSigV[i] = new stDefBstRangeAO_0(fMax, fMin);
                mSigV[i].MinValue = MinV / fTemp;
                fTemp *= 10.0f;
            }
            for (i = 0; i < 3; i++)
            {
                fMax = MaxA / fTemp;
                fMin = fMax * -1.0f;
                mSigA[i] = new stDefBstRangeAO_0(fMax, fMin);
                fTemp *= 10.0f;
            }
        
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
            this = (stDefBstAORange_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefBstAORange_0));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefBstAIRange_0 
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public stDefBstRangeAI_0[] mV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public stDefBstRangeAI_0[] mA;

        public stDefBstAIRange_0(float MaxA,float MaxV, float MinV)
        {
            int i;
            float fMax;
            float fMin;
            float fTemp;
            
            mV = new stDefBstRangeAI_0[3];
            mA = new stDefBstRangeAI_0[3];

            fTemp = 1.0f;
            for (i = 0; i < 3; i++)
            {
                fMax = MaxV / fTemp;
                fMin = fMax * -1.0f;

                mV[i] = new stDefBstRangeAI_0(fMax, fMin);
                
                mV[i].MinValue = MinV / fTemp;
                fTemp *= 10.0f;
            }
            for (i = 0; i < 3; i++)
            {
                fMax = MaxA / fTemp;
                fMin = fMax * -1.0f;
                mA[i] = new stDefBstRangeAI_0(fMax, fMin);
                fTemp *= 10.0f;
            }
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
            this = (stDefBstAIRange_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefBstAIRange_0));
            pinnedArr.Free();
        }
    }

 

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefAORange_0 
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXRNG_V * SM_Main_Define.DEF_MAXRNG_INT_OUT)]
        public stDefRangeEx_0[] mSigV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_ALLMAXRNG_A * SM_Main_Define.DEF_MAXRNG_INT_OUT)]
        public stDefRangeEx_0[] mSigA;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXRNG_V)]
        public stDefRange_0[] mBiasV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_ALLMAXRNG_A)]
        public stDefRange_0[] mBiasA;
        public stDefRangeEx_0 mExtSig;
        public stDefRange_0 mExtBias;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXCH_AUXOUT)]
        public stDefRange_0[] mAux;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXCH_CALOUT)]
        public stDefRange_0[] mCalib;

        public stDefAORange_0(byte model)
        {
            bool bSM = false;
            int i;
            int j;
            int k;
            float fMaxA;

            float fMax;
            float fMax1;
            float fMin;

            float fTemp;
            float fTemp1;
           
            

            if (model == (byte)enDeviceModel.SP1 || model == (byte)enDeviceModel.SP1E || model == (byte)enDeviceModel.MP1)
            {
                fMaxA = 1.0f;
                bSM = true;
            }
            else if (model == (byte)enDeviceModel.SP2 || model == (byte)enDeviceModel.MP2 || model == (byte)enDeviceModel.BP2 || model == (byte)enDeviceModel.PP1) fMaxA = 2.0f;
            else if (model == (byte)enDeviceModel.SP5 || model == (byte)enDeviceModel.MP5 || model == (byte)enDeviceModel.BP5) fMaxA = 5.0f;
            else fMaxA = 2.0f;

            mSigV = new stDefRangeEx_0[SM_Main_Define.DEF_MAXRNG_V * SM_Main_Define.DEF_MAXRNG_INT_OUT];
            mBiasV = new stDefRange_0[SM_Main_Define.DEF_MAXRNG_V];
            fTemp = 1.0f;

            k = 0;
            for (i = 0; i < SM_Main_Define.DEF_MAXRNG_V; i++)
            {
                fMax = (SM_Main_Define.DEF_MAXVAL_V / fTemp);
                fMin = fMax * -1.0f;
                mBiasV[i] = new stDefRange_0(fMax,fMin);
                if (bSM == false)
                {
                    mBiasV[i].Gain = -1.0f;
                }
                fTemp1 = 1.0f;
                for (j = 0; j < SM_Main_Define.DEF_MAXRNG_INT_OUT; j++)
                {
                    fMax /= fTemp1;
                    fMin = fMax * -1.0f;
                    mSigV[k] = new stDefRangeEx_0(fMax, fMin);
                    fTemp1 *= 10.0f;
                    k++;
                }
                fTemp *= 10.0f;
            }

            fTemp = 1.0f;
            k = 0;
            fMax1 = 0.0f;
            mSigA = new stDefRangeEx_0[SM_Main_Define.DEF_ALLMAXRNG_A * SM_Main_Define.DEF_MAXRNG_INT_OUT];
            mBiasA = new stDefRange_0[SM_Main_Define.DEF_ALLMAXRNG_A];
            for (i = 0; i < SM_Main_Define.DEF_ALLMAXRNG_A; i++)
            {
                
                fMax = (fMaxA / fTemp);
                fMax1 = (float)((double)fMax / (SM_Main_Define.CurrentRangeRate[i] * 9.0));
                fMin = fMax1 * -1.0f;
                mBiasA[i] = new stDefRange_0(fMax1, fMin);
                mBiasA[i].MaxValue = fMax;
                mBiasA[i].MinValue = fMax * -1.0f;
                if (bSM == false)
                {
                    mBiasA[i].Gain = -1.0f;
                }
                fTemp1 = 1.0f;
                for (j = 0; j < SM_Main_Define.DEF_MAXRNG_INT_OUT; j++)
                {
                    fMax1 /= fTemp1;
                    fMax /= fTemp1;
                    fMin = fMax1 * -1.0f;
                    mSigA[k] = new stDefRangeEx_0(fMax1, fMin);
                    mSigA[k].MaxValue = fMax;
                    mSigA[k].MinValue = fMax * -1.0f;
                    fTemp1 *= 10.0f;
                    k++;
                }
                fTemp *= 10.0f;
            }
            fMax = SM_Main_Define.DEF_MAXVAL_EXT;
            fMin = fMax * -1.0f;
            mExtSig = new stDefRangeEx_0(fMax, fMin);
            
            mExtBias = new stDefRange_0(fMax, fMin);


            fMax = SM_Main_Define.DEF_MAXVAL_AUX;
            fMin = fMax * -1.0f;
            mAux = new stDefRange_0[SM_Main_Define.DEF_MAXCH_AUXOUT];
            for (i = 0; i < SM_Main_Define.DEF_MAXCH_AUXOUT; i++)
            {
                mAux[i] = new stDefRange_0(fMax, fMin);
            }


            mCalib = new stDefRange_0[SM_Main_Define.DEF_MAXCH_CALOUT];
            for (i = 0; i < SM_Main_Define.DEF_MAXCH_CALOUT; i++)
            {
                if(i == SM_Main_Define.DEF_CALTYPE_A) fMax = fMaxA / 10.0f;
                else if(i == SM_Main_Define.DEF_CALTYPE_V) fMax = SM_Main_Define.DEF_MAXVAL_V;
                else fMax = SM_Main_Define.DEF_MAXVAL_AUX;
                fMin = fMax * -1.0f;
                mCalib[i] = new stDefRange_0(fMax, fMin);
            }

        }

        public stDefRangeEx_0 GetRngInf_SigV(int Range, int IntRange)
        {
            int offset = Range * SM_Main_Define.DEF_MAXRNG_INT_IN + IntRange;
            return mSigV[offset];
        }

        public stDefRangeEx_0 GetRngInf_SigA(int Range, int IntRange)
        {
            int offset = Range * SM_Main_Define.DEF_MAXRNG_INT_IN + IntRange;
            return mSigA[offset];
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
            this = (stDefAORange_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefAORange_0));
            pinnedArr.Free();
        }
    }

    
    [StructLayout(LayoutKind.Sequential)]
    public struct stDefAIRange_0 
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXRNG_V * 3)]
        public stDefRangeAIO_0[] mV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_ALLMAXRNG_A * 3)]
        public stDefRangeAIO_0[] mA;
        public stDefRangeA_0 mExtV;
        public stDefRangeA_0 mExtA;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXCH_AUXIN)]
        public stDefRange_0[] mAux;

        public stDefAIRange_0(byte model)
        {
            int i;
            int j;
            int k;
            int l;
            float fMaxA;

            float fMax;
            float fMax1;
            float fMin;

            float fTemp;
            float fTemp1;


            if (model == (byte)enDeviceModel.SP1 || model == (byte)enDeviceModel.SP1E || model == (byte)enDeviceModel.MP1)
            {
                fMaxA = 1.0f;
            }
            else if (model == (byte)enDeviceModel.SP2 || model == (byte)enDeviceModel.MP2 || model == (byte)enDeviceModel.BP2 || model == (byte)enDeviceModel.PP1) fMaxA = 2.0f;
            else if (model == (byte)enDeviceModel.SP5 || model == (byte)enDeviceModel.MP5 || model == (byte)enDeviceModel.BP5) fMaxA = 5.0f;
            else fMaxA = 2.0f;

            k = 0;
            mV = new stDefRangeAIO_0[SM_Main_Define.DEF_MAXRNG_V * 3];
            fTemp = 1.0f;
            for (i = 0; i < SM_Main_Define.DEF_MAXRNG_V; i++)
            {
                fMax = (SM_Main_Define.DEF_MAXVAL_V / fTemp);
                fMin = fMax * -1.0f;
                fTemp1 = 1.0f;
                for (j = 0; j < 3; j++)
                {
                    fMax /= fTemp1;
                    fMin = fMax * -1.0f;
                    mV[k] = new stDefRangeAIO_0(fMax, fMin);
                     for (l = 0; l < SM_Main_Define.DEF_MAXFLT; l++)
                     {
                        mV[k].Gain[l] = -1.0f;
                     }
                    fTemp1 *= 10.0f;
                    k++;
                }
                fTemp *= 10.0f;
            }

            k = 0;
            mA = new stDefRangeAIO_0[SM_Main_Define.DEF_ALLMAXRNG_A * 3];
            fTemp = 1.0f;
            for (i = 0; i < SM_Main_Define.DEF_ALLMAXRNG_A; i++)
            {
                fMax = (fMaxA / fTemp);
                fMax1 = (float)((double)fMax / (SM_Main_Define.CurrentRangeRate[i] * 9.0));
                fMin = fMax1 * -1.0f;
                fTemp1 = 1.0f;
                for (j = 0; j < 3; j++)
                {
                    fMax1 /= fTemp1;
                    fMax /= fTemp1;
                    fMin = fMax1 * -1.0f;
                    mA[k] = new stDefRangeAIO_0(fMax1, fMin);
                    mA[k].MaxValue = fMax;
                    mA[k].MinValue = fMax * -1.0f;
                    for (l = 0; l < SM_Main_Define.DEF_MAXFLT; l++)
                    {
                        mA[k].Gain[l] = -1.0f;
                    }
                    fTemp1 *= 10.0f;
                    k++;
                }
                fTemp *= 10.0f;
            }
            fMax = SM_Main_Define.DEF_MAXVAL_EXT;
            fMin = fMax * -1.0f;
            mExtV = new stDefRangeA_0(fMax,fMin);
            mExtV.Factor = (2.0f * fMax) / SM_Main_Define.DEF_DAC_RESOLUTION;

            mExtA = new stDefRangeA_0(fMax,fMin);
            mExtA.Factor = (2.0f * fMax) / SM_Main_Define.DEF_DAC_RESOLUTION;
            mAux = new stDefRange_0[SM_Main_Define.DEF_MAXCH_AUXIN];
            
            for(i=0; i< SM_Main_Define.DEF_MAXCH_AUXIN; i++)
            {
                if(i == 0) fMax = SM_Main_Define.DEF_MAXVAL_TEMP;
                else fMax = SM_Main_Define.DEF_MAXVAL_AUX;
                fMin = fMax * -1.0f;
                mAux[i] = new stDefRange_0(fMax,fMin);
                mAux[i].Factor = (2.0f * fMax) / SM_Main_Define.DEF_DAC_RESOLUTION;
            }

        }

        public stDefRangeAIO_0 GetRngInf_V(int Range, int IntRange)
        {
            int offset = Range * SM_Main_Define.DEF_MAXRNG_INT_IN + IntRange;
            return mV[offset];
        }

        public stDefRangeAIO_0 GetRngInf_A(int Range, int IntRange)
        {
            int offset = Range * SM_Main_Define.DEF_MAXRNG_INT_IN + IntRange;
            return mA[offset];
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
            this = (stDefAIRange_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefAIRange_0));
            pinnedArr.Free();
        }
    }

     [StructLayout(LayoutKind.Sequential)]
    public struct stDefBstRange_0
    {
        public UInt16 ChkROM;
        public float mBoardMaxV;
        public float mBoardMinV;
        public float mBoardA;
        public stDefBstAORange_0 mOut;
        public stDefBstAIRange_0 mIn;

        public stDefBstRange_0(float MaxA, float MaxV, float MinV)
        {
            ChkROM = 0;
            mBoardMaxV = MaxV;
            mBoardMinV = MinV;
            mBoardA = MaxA;

            mOut = new stDefBstAORange_0(mBoardA, mBoardMaxV, mBoardMinV);
            mIn = new stDefBstAIRange_0(mBoardA, mBoardMaxV, mBoardMinV);
        }

        public stDefBstRange_0(int Init)
        {
            ChkROM = 0;
            mBoardMaxV = SM_Main_Define.DEF_DEFAULT_BOOSTERMAXV;
            mBoardMinV = SM_Main_Define.DEF_DEFAULT_BOOSTERMINV;
            mBoardA = SM_Main_Define.DEF_DEFAULT_BOOSTERMAXA;

            mOut = new stDefBstAORange_0(mBoardA, mBoardMaxV, mBoardMinV);
            mIn = new stDefBstAIRange_0(mBoardA, mBoardMaxV, mBoardMinV);
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stDefBstRange_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefBstRange_0));
            pinnedArr.Free();
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

    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefSysRange_0 
    {
        public stDefAORange_0 mOut;
        public stDefAIRange_0 mIn;

        public stDefSysRange_0(byte model)
        {
            mOut = new stDefAORange_0(model);
            mIn = new stDefAIRange_0(model);
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stDefSysRange_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefSysRange_0));
            pinnedArr.Free();
        }

        public void ToWritePtr(int nElement, byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            if(nElement == 0)
                this.mOut = (stDefAORange_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefAORange_0));
            else this.mIn = (stDefAIRange_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefAIRange_0));
            pinnedArr.Free();
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
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefBstRangeCfg_0
    {
        public float mBoardMaxV;
        public float mBoardMinV;
        public float mBoardMaxA;

        public stDefBstRangeCfg_0(byte init)
        {
            mBoardMaxV = SM_Main_Define.DEF_DEFAULT_BOOSTERMAXV;
            mBoardMinV = SM_Main_Define.DEF_DEFAULT_BOOSTERMINV;
            mBoardMaxA = SM_Main_Define.DEF_DEFAULT_BOOSTERMAXA;
        }

        public stDefBstRangeCfg_0(float MaxA, float MaxV, float MinV)
        {
            mBoardMaxV = MaxV;
            mBoardMinV = MinV;
            mBoardMaxA = MaxA;
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
            this = (stDefBstRangeCfg_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefBstRangeCfg_0));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefSystem_0 
    {
        public stDefSysInfo_0 mInfo;
        public stDefSysConfig_0 mConfig;
        public stDefSysRange_0 mRange;
        public stDefSystem_0(byte model)
        {
            mInfo = new stDefSysInfo_0(model);
            mConfig = new stDefSysConfig_0(model);
            mRange = new stDefSysRange_0(model);
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
            this = (stDefSystem_0)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefSystem_0));
            pinnedArr.Free();
        }

        public void ConvInformation(ref stDefSystem mSystem)
        {
            int i,j,k;
            int n1,n2;
		    mSystem.mInfo.iCheckROM = this.mInfo.iCheckROM;
		    mSystem.mInfo.VerFPGA = this.mInfo.iLastTime;
		    mSystem.mInfo.iVersion = this.mInfo.iVersion;
		    mSystem.mInfo.usLicense = this.mInfo.usLicense;
		    mSystem.mInfo.usModel = this.mInfo.usModel;
				
		    mSystem.mConfig.Aux_ADCSumCnt = this.mConfig.Aux_ADCSumCnt;
		    mSystem.mConfig.Aux_ADCTime = this.mConfig.Aux_ADCTime;

            for(i=0; i< SM_Define.SM_Main_Define.DEF_MAXCH_AUXIN; i++)
            {
                mSystem.mConfig.Aux_RngIn[i].nDevMax = this.mConfig.Aux_RngIn[i].nDevMax;
                mSystem.mConfig.Aux_RngIn[i].nDevMin = this.mConfig.Aux_RngIn[i].nDevMin;
                mSystem.mConfig.Aux_RngIn[i].nType = this.mConfig.Aux_RngIn[i].nType;
            }
            mSystem.mConfig.Aux_RngOut[0].nDevMax = this.mConfig.Aux_RngOut[0].nDevMax;
            mSystem.mConfig.Aux_RngOut[0].nDevMin = this.mConfig.Aux_RngOut[0].nDevMin;
            mSystem.mConfig.Aux_RngOut[0].nType = this.mConfig.Aux_RngOut[0].nType;
		    
		    mSystem.mConfig.BaseTime = this.mConfig.BaseTime;
		    mSystem.mConfig.CI_OnTime = 2.05f;  // Rest 시 온 유지 시간
		    mSystem.mConfig.CI_SampleTime = 20.0f;
		    mSystem.mConfig.CI_Current = 0.01f; // Rest 시
		    mSystem.mConfig.DaqTick = this.mConfig.DaqTick;
		    mSystem.mConfig.DispTick = this.mConfig.DispTick;
				
		    mSystem.mConfig.CellCableType = 0;
		    mSystem.mConfig.EIS_CableLs[0] = this.mConfig.CableLs;
		    mSystem.mConfig.EIS_AvgFreq = this.mConfig.EIS_AvgFreq;
		    if(this.mConfig.EIS_FBFreq[6] < 0.1f) mSystem.mConfig.EIS_DCType = 0;
		    else mSystem.mConfig.EIS_DCType = 1;
		    mSystem.mConfig.EIS_Delay = this.mConfig.EIS_Delay;
		    mSystem.mConfig.EIS_FBFreq[0] = this.mConfig.EIS_FBFreq[0];
		    mSystem.mConfig.EIS_FBFreq[1] = this.mConfig.EIS_FBFreq[1];
		    mSystem.mConfig.EIS_FBFreq[2] = this.mConfig.EIS_FBFreq[2];
		    mSystem.mConfig.EIS_FBFreq[3] = this.mConfig.EIS_FBFreq[3];
		    mSystem.mConfig.EIS_FBFreq[4] = this.mConfig.EIS_FBFreq[4];
		    mSystem.mConfig.EIS_FBFreq[5] = this.mConfig.EIS_FBFreq[5];
		    mSystem.mConfig.EIS_FBMAX_A = this.mConfig.FB_GMax;
		    mSystem.mConfig.EIS_FltFreqH = this.mConfig.EIS_FltFreqH;
		    mSystem.mConfig.EIS_FltFreqM = this.mConfig.EIS_FltFreqM;
		    mSystem.mConfig.EIS_FltFreqL = this.mConfig.EIS_FltFreqL;
		    mSystem.mConfig.EIS_InitIntRng = this.mConfig.EIS_InitIntRng;
		    mSystem.mConfig.EIS_InitRangeDn = this.mConfig.EIS_FBFreq[7];
		    mSystem.mConfig.EIS_MaxCycle = this.mConfig.EIS_MaxCycle;
		    mSystem.mConfig.EIS_MaxPoint = this.mConfig.EIS_MaxPoint;
		    mSystem.mConfig.EIS_MinCycle = this.mConfig.EIS_MinCycle;
		    mSystem.mConfig.EIS_MinPoint = this.mConfig.EIS_MinPoint;
		    mSystem.mConfig.EIS_OFSLimitI = this.mConfig.EIS_OFSLimitI;
		    mSystem.mConfig.EIS_OFSLimitV = this.mConfig.EIS_OFSLimitV;
		    mSystem.mConfig.EIS_ProgTime = this.mConfig.EIS_ProgTime;
		    mSystem.mConfig.EIS_RangeDn = this.mConfig.RngChgChk * 0.0001f;
		    mSystem.mConfig.EIS_RangeUp = this.mConfig.RngUpCond;
		    mSystem.mConfig.EIS_RngAutoFreq = this.mConfig.EIS_RngAutoFreq;
		    mSystem.mConfig.EIS_SubHamonicFreq = this.mConfig.EIS_SubHamonicFreq;
		    mSystem.mConfig.EIS_UnusePntRate = this.mConfig.EIS_UnusePntRate;
		    mSystem.mConfig.ExtRngA = this.mConfig.ExtRngA;
		    mSystem.mConfig.ExtRngV = this.mConfig.ExtRngV;
		    mSystem.mConfig.FailPer = this.mConfig.FailPer;
		    mSystem.mConfig.FBMAX_A = this.mConfig.FB_GMax;
		    mSystem.mConfig.IR_Freq = 1000.0f;	
		    mSystem.mConfig.IR_AmpA = 1e-6f;
		    mSystem.mConfig.IR_AmpV = 0.01f;
		    mSystem.mConfig.MUX_ChCount = 0;
		    mSystem.mConfig.PowerNoise = this.mConfig.PowerNoise;

            for (i = 0; i < SM_Define.SM_Main_Define.DEF_ALLMAXRNG_A + 2; i++)
            {
                mSystem.mConfig.RngA[i] = this.mConfig.RngA[i];
            }
		    mSystem.mConfig.RngCntA = this.mConfig.RngCntA;
		    mSystem.mConfig.RngCntV = this.mConfig.RngCntV;
		    mSystem.mConfig.RngDelay = (int)((float)this.mConfig.RngDelay * 0.05f);
		    mSystem.mConfig.RngDnCond = this.mConfig.RngDnCond;
		    mSystem.mConfig.RngUpCond = this.mConfig.RngUpCond;
		    mSystem.mConfig.RngV[0] = this.mConfig.RngV[0];
            for (i = 0; i < SM_Define.SM_Main_Define.DEF_ALLMAXRNG_A; i++)
		    {
                for (j = 0; j < 3; j++)
                {
                    n1 = i * 4 + j;
                    n2 = i * 3 + j;
                    mSystem.mRange.mIn.mA[n1].MaxValue = this.mRange.mIn.mA[n2].MaxValue;
                    mSystem.mRange.mIn.mA[n1].MinValue = this.mRange.mIn.mA[n2].MinValue;
                    mSystem.mRange.mIn.mA[n1].Factor = this.mRange.mIn.mA[n2].Factor;
                    for (k = 0; k < SM_Define.SM_Main_Define.DEF_MAXFLT; k++)
                    {
                        mSystem.mRange.mIn.mA[n1].Gain[k] = (float)((double)this.mRange.mIn.mA[n2].Gain[k] / (SM_Define.SM_Main_Define.CurrentRangeRate[i] * 9.0));
                        mSystem.mRange.mIn.mA[n1].Offset[k] = this.mRange.mIn.mA[n2].Offset[k];
                        mSystem.mRange.mIn.mA[n1].usOFS[k] = this.mRange.mIn.mA[n2].usOFS[k];
                    }
                    mSystem.mRange.mIn.mA[n1].Rs = this.mRange.mIn.mA[n2].Rs;
                    mSystem.mRange.mIn.mA[n1].Cs = this.mRange.mIn.mA[n2].Cs;
                }
                 for (j = 0; j < 4; j++)
                 {
                     n1 = i * 4 + j;
                     n2 = i * 4 + j;
                     mSystem.mRange.mOut.mSigA[n1].MaxValue = this.mRange.mOut.mSigA[n2].MaxValue;
                     mSystem.mRange.mOut.mSigA[n1].MinValue = this.mRange.mOut.mSigA[n2].MinValue;
                     mSystem.mRange.mOut.mSigA[n1].Factor = this.mRange.mOut.mSigA[n2].Factor;
                     mSystem.mRange.mOut.mSigA[n1].Gain = (float)(1.0 / (double)this.mRange.mOut.mSigA[n2].Gain);
                     mSystem.mRange.mOut.mSigA[n1].Offset = -1.0f * (this.mRange.mOut.mSigA[n2].Offset / this.mRange.mOut.mSigA[n2].Gain);
			    }
			    mSystem.mRange.mOut.mBiasA[i].MaxValue = this.mRange.mOut.mBiasA[i].MaxValue;
			    mSystem.mRange.mOut.mBiasA[i].MinValue = this.mRange.mOut.mBiasA[i].MinValue;
			    mSystem.mRange.mOut.mBiasA[i].Factor = this.mRange.mOut.mBiasA[i].Factor;
                mSystem.mRange.mOut.mBiasA[i].Gain = (float)(SM_Define.SM_Main_Define.CurrentRangeRate[i] * 9.0 / (double)this.mRange.mOut.mBiasA[i].Gain);
                mSystem.mRange.mOut.mBiasA[i].Offset = -1.0f * (this.mRange.mOut.mBiasA[i].Offset / this.mRange.mOut.mBiasA[i].Gain);
		    }

		    for(i=0; i<1; i++)
		    {
			    for(j=0; j<3; j++)
			    {
                    n1 = i * 4 + j;
                    n2 = i * 3 + j;
                    mSystem.mRange.mIn.mV[n1].MaxValue = this.mRange.mIn.mV[n2].MaxValue;
                    mSystem.mRange.mIn.mV[n1].MinValue = this.mRange.mIn.mV[n2].MinValue;
                    mSystem.mRange.mIn.mV[n1].Factor = this.mRange.mIn.mV[n2].Factor;
                    for (k = 0; k < SM_Define.SM_Main_Define.DEF_MAXFLT; k++)
                    {
                        mSystem.mRange.mIn.mV[n1].Gain[k] = this.mRange.mIn.mV[n2].Gain[k];
                        mSystem.mRange.mIn.mV[n1].Offset[k] = this.mRange.mIn.mV[n2].Offset[k];
                        mSystem.mRange.mIn.mV[n1].usOFS[k] = this.mRange.mIn.mV[n2].usOFS[k];
                    }
                    mSystem.mRange.mIn.mV[n1].Rs = this.mRange.mIn.mV[n2].Rs;
                    mSystem.mRange.mIn.mV[n1].Cs = this.mRange.mIn.mV[n2].Cs;
                }
                for (j = 0; j < 4; j++)
                {
                    n1 = i * 4 + j;
                    n2 = i * 4 + j;
                    mSystem.mRange.mOut.mSigV[n1].MaxValue = this.mRange.mOut.mSigV[n2].MaxValue;
                    mSystem.mRange.mOut.mSigV[n1].MinValue = this.mRange.mOut.mSigV[n2].MinValue;
                    mSystem.mRange.mOut.mSigV[n1].Factor = this.mRange.mOut.mSigV[n2].Factor;
                    mSystem.mRange.mOut.mSigV[n1].Gain = 1.0f / this.mRange.mOut.mSigV[n2].Gain;
                    mSystem.mRange.mOut.mSigV[n1].Offset = -1.0f * (this.mRange.mOut.mSigV[n2].Offset / this.mRange.mOut.mSigV[n2].Gain);
			    }
			    mSystem.mRange.mOut.mBiasV[i].MaxValue = this.mRange.mOut.mBiasV[i].MaxValue;
			    mSystem.mRange.mOut.mBiasV[i].MinValue = this.mRange.mOut.mBiasV[i].MinValue;
			    mSystem.mRange.mOut.mBiasV[i].Factor = this.mRange.mOut.mBiasV[i].Factor;
			    mSystem.mRange.mOut.mBiasV[i].Gain = 1.0f/this.mRange.mOut.mBiasV[i].Gain;
			    mSystem.mRange.mOut.mBiasV[i].Offset = -1.0f * (this.mRange.mOut.mBiasV[i].Offset / this.mRange.mOut.mBiasV[i].Gain);
		    }
			
		    mSystem.mRange.mIn.mExtA.MaxValue = this.mRange.mIn.mExtA.MaxValue;
		    mSystem.mRange.mIn.mExtA.MinValue = this.mRange.mIn.mExtA.MinValue;
		    mSystem.mRange.mIn.mExtA.Factor = this.mRange.mIn.mExtA.Factor;
            for (k = 0; k < SM_Define.SM_Main_Define.DEF_MAXFLT; k++)
            {
                mSystem.mRange.mIn.mExtA.Gain[k] = this.mRange.mIn.mExtA.Gain[k];
                mSystem.mRange.mIn.mExtA.Offset[k] = this.mRange.mIn.mExtA.Offset[k];
            }
		    mSystem.mRange.mIn.mExtA.Rs = 0.0f;
		    mSystem.mRange.mIn.mExtA.Cs = 0.0f;

		    mSystem.mRange.mIn.mExtV.MaxValue = this.mRange.mIn.mExtV.MaxValue;
		    mSystem.mRange.mIn.mExtV.MinValue = this.mRange.mIn.mExtV.MinValue;
		    mSystem.mRange.mIn.mExtV.Factor = this.mRange.mIn.mExtV.Factor;
            for (k = 0; k < SM_Define.SM_Main_Define.DEF_MAXFLT; k++)
            {
                mSystem.mRange.mIn.mExtV.Gain[k] = this.mRange.mIn.mExtV.Gain[k];
                mSystem.mRange.mIn.mExtV.Offset[k] = this.mRange.mIn.mExtV.Offset[k];
            }
		    mSystem.mRange.mIn.mExtV.Rs = 0.0f;
		    mSystem.mRange.mIn.mExtV.Cs = 0.0f;
				
		    mSystem.mRange.mOut.mExtBias.MaxValue = this.mRange.mOut.mExtBias.MaxValue;
		    mSystem.mRange.mOut.mExtBias.MinValue = this.mRange.mOut.mExtBias.MinValue;
		    mSystem.mRange.mOut.mExtBias.Factor = this.mRange.mOut.mExtBias.Factor;
		    mSystem.mRange.mOut.mExtBias.Gain = 1.0f / this.mRange.mOut.mExtBias.Gain;
		    mSystem.mRange.mOut.mExtBias.Offset = -1.0f * (this.mRange.mOut.mExtBias.Offset/this.mRange.mOut.mExtBias.Gain);

		    mSystem.mRange.mOut.mExtSig.MaxValue = this.mRange.mOut.mExtSig.MaxValue;
		    mSystem.mRange.mOut.mExtSig.MinValue = this.mRange.mOut.mExtSig.MinValue;
		    mSystem.mRange.mOut.mExtSig.Factor = this.mRange.mOut.mExtSig.Factor;
		    mSystem.mRange.mOut.mExtSig.Gain = 1.0f / this.mRange.mOut.mExtSig.Gain;
		    mSystem.mRange.mOut.mExtSig.Offset = -1.0f * (this.mRange.mOut.mExtSig.Offset/this.mRange.mOut.mExtSig.Gain);

            for (n1 = 0; n1 < SM_Define.SM_Main_Define.DEF_MAXCH_AUXIN; n1++)
		    {
			    mSystem.mRange.mIn.mAux[i].MaxValue = this.mRange.mIn.mAux[i].MaxValue;
			    mSystem.mRange.mIn.mAux[i].MinValue = this.mRange.mIn.mAux[i].MinValue;
			    mSystem.mRange.mIn.mAux[i].Factor = this.mRange.mIn.mAux[i].Factor;
			    mSystem.mRange.mIn.mAux[i].Gain = this.mRange.mIn.mAux[i].Gain;
			    mSystem.mRange.mIn.mAux[i].Offset = this.mRange.mIn.mAux[i].Offset;
		    }
				
		    mSystem.mRange.mOut.mAux[0].MaxValue = this.mRange.mOut.mAux[0].MaxValue;
		    mSystem.mRange.mOut.mAux[0].MinValue = this.mRange.mOut.mAux[0].MinValue;
		    mSystem.mRange.mOut.mAux[0].Factor = this.mRange.mOut.mAux[0].Factor;
		    mSystem.mRange.mOut.mAux[0].Gain = 1.0f / this.mRange.mOut.mAux[0].Gain;
		    mSystem.mRange.mOut.mAux[0].Offset = -1.0f * (this.mRange.mOut.mAux[0].Offset / this.mRange.mOut.mAux[0].Gain);

            for (n1 = 0; n1 < SM_Define.SM_Main_Define.DEF_MAXCH_CALOUT; n1++)
		    {
			    mSystem.mRange.mOut.mCalib[i].MaxValue = this.mRange.mOut.mCalib[i].MaxValue;
			    mSystem.mRange.mOut.mCalib[i].MinValue = this.mRange.mOut.mCalib[i].MinValue;
			    mSystem.mRange.mOut.mCalib[i].Factor = this.mRange.mOut.mCalib[i].Factor;
			    mSystem.mRange.mOut.mCalib[i].Gain = 1.0f / this.mRange.mOut.mCalib[i].Gain;
			    mSystem.mRange.mOut.mCalib[i].Offset = -1.0f * (this.mRange.mOut.mCalib[i].Offset / this.mRange.mOut.mCalib[i].Gain);
		    }
	    }	
    }
}
