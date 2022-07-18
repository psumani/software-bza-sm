using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;
using SM_Define;
using SMLib;
using SM_Enum;

namespace SP_Struct
{
    #region ** Channel map define
    

    

    public class DisplayStats
    {
        public string Serial;
        public string Model;
        public DateTime StartTime;
        public int Channel;
        public enProgram Linker;
        public DateTime LinkTime;
        public enResult LinkResult;

        public DisplayStats()
        {
            Serial = "";
            Model = "";
            StartTime = DateTime.Now;
            Channel = 0;
            Linker = enProgram.none;
            LinkTime = DateTime.Now;
            LinkResult = enResult.FLAG_NONE;
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct SP_CmdMapStatus
    {
        public UInt16 Proc;
        public UInt16 Result;

        public SP_CmdMapStatus(byte init)
        {
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
            this = (SP_CmdMapStatus)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(SP_CmdMapStatus));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct SP_CmdMapCommand
    {
        public UInt16 Target;
        public UInt16 TargetCmd;
        public UInt16 Flag;
        public UInt16 cmd;
        public UInt16 subcmd;
        public UInt16 Offset;
        public UInt32 address;
        public UInt32 WrLength;
        public UInt32 RdLength;

        public SP_CmdMapCommand(byte init)
        {
            Target = 0;
            TargetCmd = 0;
            Flag = 0;
            cmd = 0;
            subcmd = 0;
            Offset = 0;
            address = 0;
            WrLength = 0;
            RdLength = 0;
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
            this = (SP_CmdMapCommand)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(SP_CmdMapCommand));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct SP_CmdMapHeader
    {
        public UInt32 handle;
        public SP_CmdMapStatus mStat;
        public SP_CmdMapCommand mCommand;

        public SP_CmdMapHeader(IntPtr ihandle)
        {
            handle = (UInt32)ihandle;
            mStat = new SP_CmdMapStatus(0);
            mCommand = new SP_CmdMapCommand(0);
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
            this = (SP_CmdMapHeader)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(SP_CmdMapHeader));
            pinnedArr.Free();
        }
    }

    #endregion // ** Channel map define

    #region ** Device information map define

    [StructLayout(LayoutKind.Sequential)]
    public struct FirmwareInfo
    {
        public Int64 LastModify;
        public UInt64 nFilesize;
        public FirmwareInfo(byte init)
        {
            DateTime mDateTime = new DateTime(1970, 1, 1);
            LastModify = SM_Converting.DateTimeToCTime(mDateTime);
            nFilesize = 0;
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
            this = (FirmwareInfo)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(FirmwareInfo));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefSysInfo
    {
        public int iCheckROM;
        public int VerFPGA;
        public int iVersion;
        public UInt16 usModel;
        public UInt16 usLicense;
        public stDefSysInfo(byte model)
        {
            iCheckROM = 0;
            VerFPGA = 0;
            iVersion = 0;
            usModel = model;
            usLicense = 0;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stDefSysInfo)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefSysInfo));
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
    public struct stDefAuxDev 
    {
        public UInt16 nType;
        public float nDevMax;
        public float nDevMin;

        public stDefAuxDev(byte init)
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
            this = (stDefAuxDev)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefAuxDev));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefSysConfig
    {
        public int BaseTime;
        public int DaqTick;
        public int DispTick;
        public UInt16 PowerNoise;		// 50 / 60
        public UInt16 RngCntA;
        public UInt16 RngCntV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_REALMAXRNG_A, ArraySubType = UnmanagedType.R4)]
        public float[] RngA;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXRNG_V, ArraySubType = UnmanagedType.R4)]
        public float[] RngV;
        public float ExtRngA;
        public float ExtRngV;
        public float RngUpCond;
        public float RngDnCond;
        public UInt16 FBMAX_A;
        public int RngDelay;
        public float FailPer;
        public int Aux_ADCTime; 	// us
        public int Aux_ADCSumCnt;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXCH_AUXOUT)]
        public stDefAuxDev[] Aux_RngOut;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXCH_AUXIN)]
        public stDefAuxDev[] Aux_RngIn;
        public UInt16 MUX_ChCount;
        public float IR_Freq;
        public float IR_AmpA;
        public float IR_AmpV;
        public float CI_OnTime;
        public float CI_SampleTime;
        public float CI_Current;
        public UInt16 CellCableType;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.MAX_CABLETYPE, ArraySubType = UnmanagedType.R4)]
	    public float[] EIS_CableLs;
	    public float EIS_FltFreqL;
	    public float EIS_FltFreqM;
	    public float EIS_FltFreqH;
        public UInt16 EIS_FBMAX_A;
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
        public float EIS_RngAutoFreq;
        public UInt16 EIS_InitIntRng;
        public float EIS_RangeUp;
        public float EIS_InitRangeDn;
        public float EIS_RangeDn;
        public int EIS_Delay;
        public UInt16 EIS_DCType;
        public float EIS_OFSLimitI;
        public float EIS_OFSLimitV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 10, ArraySubType = UnmanagedType.R4)]
        public float []NoUse;

        public stDefSysConfig(byte model)
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
 
            PowerNoise = SM_Main_Define.DEF_DEFAULT_CFG_POWERNOISE;    // 60Hz

            IR_Freq = 1000.0f;			//us
            IR_AmpA = 1e-6f; //ms
            IR_AmpV = 0.01f; //ms

            CI_OnTime = 2.05f;  // Rest 시 온 유지 시간
            CI_SampleTime = 1.0f;
            CI_Current = 0.01f; // Rest 시 온 전류값

            RngCntA = (ushort)(RngCount + SM_Main_Define.DEF_MAXRNG_INT_IN - 1);
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

            EIS_DCType = 0; // 0-AC, 1-DC
            EIS_RangeUp = SM_Main_Define.DEF_DEFAULT_CFG_RNG_UPCOND;
            EIS_RangeDn = SM_Main_Define.DEF_DEFAULT_CFG_EISRNG_DNCOND;
            EIS_InitRangeDn = SM_Main_Define.DEF_DEFAULT_CFG_EISINITRNG_DNCOND;

            RngDelay = SM_Main_Define.DEF_DEFAULT_CFG_RNG_DELAY; // ms
            FailPer = SM_Main_Define.DEF_DEFAULT_CFG_FAILCONTROLRATE;

            Aux_ADCTime = SM_Main_Define.DEF_DEFAULT_CFG_AUXADCTIME; 		//us
            Aux_ADCSumCnt = Aux_ADCTime / SM_Main_Define.DEF_AUX_BASE_SMPLTIME;
            if (Aux_ADCSumCnt > 30000) Aux_ADCSumCnt = 30000;

            Aux_RngOut = new stDefAuxDev[SM_Main_Define.DEF_MAXCH_AUXOUT];
            for (i = 0; i < SM_Main_Define.DEF_MAXCH_AUXOUT; i++)
            {
                Aux_RngOut[i] = new stDefAuxDev(0);
                Aux_RngOut[i].nType = SM_Main_Define.DEF_AUX_TYPE_NORMAL;
                Aux_RngOut[i].nDevMax = SM_Main_Define.DEF_MAXVAL_AUX;
                Aux_RngOut[i].nDevMin = Aux_RngOut[i].nDevMax * -1.0f;
            }
            Aux_RngIn = new stDefAuxDev[SM_Main_Define.DEF_MAXCH_AUXIN];
            for (i = 0; i < SM_Main_Define.DEF_MAXCH_AUXIN; i++)
            {
                Aux_RngIn[i] = new stDefAuxDev(0);
                if (i == 0)
                {
                    Aux_RngIn[i].nDevMax = SM_Main_Define.DEF_MAXVAL_TEMP;
                }
                else Aux_RngIn[i].nDevMax = SM_Main_Define.DEF_MAXVAL_AUX;
                Aux_RngIn[i].nDevMin = Aux_RngIn[i].nDevMax * -1.0f;
                Aux_RngIn[i].nType = SM_Main_Define.DEF_AUX_TYPE_NORMAL;
            }

            FBMAX_A = SM_Main_Define.DEF_MAXFB_CURRENT;
            EIS_FBMAX_A = SM_Main_Define.DEF_MAXFB_CURRENT;
            EIS_InitIntRng = SM_Main_Define.DEF_DEFAULT_CFG_EIS_INITINTRNG;
            EIS_RngAutoFreq = SM_Main_Define.DEF_DEFAULT_CFG_EIS_RNGAUTOFREQ;    //
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
            CellCableType = 0;
            EIS_CableLs = new float[SM_Main_Define.MAX_CABLETYPE];
            for (i = 0; i < SM_Main_Define.MAX_CABLETYPE; i++)
            {
                EIS_CableLs[i] = 0.0f;
            }
            MUX_ChCount = 0;

            NoUse = new float[10];
            for (i = 0; i < 10; i++)
            {
                NoUse[i] = 0.0f;
            }
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stDefSysConfig)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefSysConfig));
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
    public struct stDefRange 
    {
        public float MaxValue;
        public float MinValue;
        public float Factor;
        public float Gain;
        public float Offset;

        public stDefRange(float fMax, float fMin)
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
            this = (stDefRange)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefRange));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefBstRangeAO
    {
        public float MaxValue;
        public float MinValue;
        public float Factor;
        public float Gain;
        public float Offset;
        public stDefBstRangeAO(float fMax, float fMin)
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
            this = (stDefBstRangeAO)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefBstRangeAO));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefBstRangeAI{
        public float MaxValue;
        public float MinValue;
        public float Factor;
        public float Gain;
        public float Offset;
        public float Rs;
        public float Cs;
        public stDefBstRangeAI(float fMax, float fMin)
        {
            MaxValue = fMax;
            MinValue = fMin;
            Factor = (2.0f * fMax) / SM_Main_Define.DEF_DAC_RESOLUTION;
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
            this = (stDefBstRangeAI)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefBstRangeAI));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefRangeA 
    {
        public float MaxValue;
        public float MinValue;
        public float Factor;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT, ArraySubType = UnmanagedType.R4)]
        public float[] Gain;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT, ArraySubType = UnmanagedType.R4)]
        public float[] Offset;
        public float Rs;
        public float Cs;
        public stDefRangeA(float fMax, float fMin)
        {
            int i;
            MaxValue = fMax;
            MinValue = fMin;
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
            this = (stDefRangeA)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefRangeA));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefRangeAIO 
    {
        public float MaxValue;
        public float MinValue;
        public float Factor;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT, ArraySubType = UnmanagedType.R4)]
        public float[] Gain;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT, ArraySubType = UnmanagedType.R4)]
        public float[] Offset;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT, ArraySubType = UnmanagedType.U2)]
        public UInt16[] usOFS;
        public float Rs;
        public float Cs;
        public stDefRangeAIO(float fMax, float fMin)
        {
            int i;
            MaxValue = fMax;
            MinValue = fMin;
            Factor = (2.0f * fMax) / SM_Main_Define.DEF_DAC_RESOLUTION;
            Gain = new float[SM_Main_Define.DEF_MAXFLT];
            Offset = new float[SM_Main_Define.DEF_MAXFLT];
            usOFS = new UInt16[SM_Main_Define.DEF_MAXFLT];
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
            this = (stDefRangeAIO)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefRangeAIO));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefEisCalibFilter
    {
        public float	a;
        public float	b;
        public stDefEisCalibFilter(byte init)
        {
            a = 0.0f;
            b = 0.0f;
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
            this = (stDefEisCalibFilter)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefEisCalibFilter));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefEisCalibItem
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT)]
	    stDefEisCalibFilter[] 	mA;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXFLT)]
	    stDefEisCalibFilter[]	mV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_ALLMAXRNG_A, ArraySubType = UnmanagedType.R4)]
	    float[] 	MaxRangeFreq;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 6, ArraySubType = UnmanagedType.R4)]
	    float[]   nouse;

        public stDefEisCalibItem(byte init)
        {
            int i;
            mA = new stDefEisCalibFilter[SM_Main_Define.DEF_MAXFLT];
            mV = new stDefEisCalibFilter[SM_Main_Define.DEF_MAXFLT];
            for (i = 0; i < SM_Main_Define.DEF_MAXFLT; i++)
            {
                mA[i] = new stDefEisCalibFilter(0);
                mV[i] = new stDefEisCalibFilter(0);
            }
            MaxRangeFreq = new float[SM_Main_Define.DEF_ALLMAXRNG_A];
            for (i = 0; i < SM_Main_Define.DEF_ALLMAXRNG_A; i++)
            {
                MaxRangeFreq[i] = 0.0f;
            }
            nouse = new float[6];
            for (i = 0; i < 6; i++)
            {
                nouse[i] = 0.0f;
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
            this = (stDefEisCalibItem)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefEisCalibItem));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefMuxCalibItem
    {
        public float 	OffsetA;
	    public float 	OffsetV;
	    public float 	Cs;
	    public float 	Ce;
	    public float	CableLs;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4, ArraySubType = UnmanagedType.R4)]
	    public float[]   nouse;
        public stDefMuxCalibItem(byte init)
        {
            int i;

            OffsetA = 0.0f;
            OffsetV = 0.0f;
            Cs = 0.0f;
            Ce = 0.0f;
            CableLs = 0.0f;
           
            nouse = new float[4];
            for (i = 0; i < 4; i++)
            {
                nouse[i] = 0.0f;
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
            this = (stDefMuxCalibItem)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefMuxCalibItem));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefMuxCalibItems
    {
        public UInt16 	Checked;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.MAX_MUX_CHANNEL)]
        public stDefMuxCalibItem[] 	items;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4, ArraySubType = UnmanagedType.R4)]
	    public float[]   nouse;

        public stDefMuxCalibItems(byte init)
        {
            int i;

            Checked = 0;
            items = new stDefMuxCalibItem[SM_Main_Define.MAX_MUX_CHANNEL];
            for (i = 0; i < SM_Main_Define.MAX_MUX_CHANNEL; i++)
            {
                items[i] = new stDefMuxCalibItem(0);
            }
            nouse = new float[4];
            for (i = 0; i < 4; i++)
            {
                nouse[i] = 0.0f;
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
            this = (stDefMuxCalibItems)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefMuxCalibItems));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefMuxCalibDevice
    {
        public UInt16 	Checked;
        public UInt16 	ChkRom;
        public UInt16 	DeviceCount;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.MAX_MUX_DEVICE)]
        public stDefMuxCalibItems[] 	Devices;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4, ArraySubType = UnmanagedType.R4)]
	    public float[]   nouse;
        public stDefMuxCalibDevice(byte init)
        {
            int i;

            Checked = 0;
            ChkRom = 0;
            DeviceCount = 0;
            Devices = new stDefMuxCalibItems[SM_Main_Define.MAX_MUX_DEVICE];
            for (i = 0; i < SM_Main_Define.MAX_MUX_DEVICE; i++)
            {
                Devices[i] = new stDefMuxCalibItems(0);
            }
            nouse = new float[4];
            for (i = 0; i < 4; i++)
            {
                nouse[i] = 0.0f;
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
            this = (stDefMuxCalibDevice)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefMuxCalibDevice));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefBstAORange 
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXRNG_INT_IN)]
        public stDefBstRangeAO[] mSigV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXRNG_INT_IN)]
        public stDefBstRangeAO[] mSigA;
        public stDefBstRangeAO mBiasV;
        public stDefBstRangeAO mBiasA;

        public stDefBstAORange(float MaxA,float MaxV, float MinV)
        {
            int i;
            float fMax;
            float fMin;
            float fTemp;
            
            mSigV = new stDefBstRangeAO[SM_Main_Define.DEF_MAXRNG_INT_IN];
            mSigA = new stDefBstRangeAO[SM_Main_Define.DEF_MAXRNG_INT_IN];

            fMax = MaxV;
            fMin = fMax * -1.0f;
            mBiasV = new stDefBstRangeAO(fMax, fMin);
            mBiasV.MinValue = MinV;

            fMax = MaxA;
            fMin = fMax * -1.0f;
            mBiasA = new stDefBstRangeAO(fMax, fMin);

            fTemp = 1.0f;
            for (i = 0; i < SM_Main_Define.DEF_MAXRNG_INT_IN; i++)
            {
                fMax = MaxV / fTemp;
                fMin = fMax * -1.0f;

                mSigV[i] = new stDefBstRangeAO(fMax, fMin);
                mSigV[i].MinValue = MinV / fTemp;
                fTemp *= 10.0f;
            }
            for (i = 0; i < SM_Main_Define.DEF_MAXRNG_INT_IN; i++)
            {
                fMax = MaxA / fTemp;
                fMin = fMax * -1.0f;
                mSigA[i] = new stDefBstRangeAO(fMax, fMin);
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
            this = (stDefBstAORange)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefBstAORange));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefBstAIRange 
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXRNG_INT_IN)]
        public stDefBstRangeAI[] mV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXRNG_INT_IN)]
        public stDefBstRangeAI[] mA;

        public stDefBstAIRange(float MaxA,float MaxV, float MinV)
        {
            int i;
            float fMax;
            float fMin;
            float fTemp;
            
            mV = new stDefBstRangeAI[SM_Main_Define.DEF_MAXRNG_INT_IN];
            mA = new stDefBstRangeAI[SM_Main_Define.DEF_MAXRNG_INT_IN];

            fTemp = 1.0f;
            for (i = 0; i < SM_Main_Define.DEF_MAXRNG_INT_IN; i++)
            {
                fMax = MaxV / fTemp;
                fMin = fMax * -1.0f;

                mV[i] = new stDefBstRangeAI(fMax, fMin);
                
                mV[i].MinValue = MinV / fTemp;
                fTemp *= 10.0f;
            }
            for (i = 0; i < SM_Main_Define.DEF_MAXRNG_INT_IN; i++)
            {
                fMax = MaxA / fTemp;
                fMin = fMax * -1.0f;
                mA[i] = new stDefBstRangeAI(fMax, fMin);
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
            this = (stDefBstAIRange)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefBstAIRange));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefAORange 
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXRNG_V * SM_Main_Define.DEF_MAXRNG_INT_OUT)]
        public stDefRange[] mSigV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_ALLMAXRNG_A * SM_Main_Define.DEF_MAXRNG_INT_OUT)]
        public stDefRange[] mSigA;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXRNG_V)]
        public stDefRange[] mBiasV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_ALLMAXRNG_A)]
        public stDefRange[] mBiasA;
        public stDefRange mExtSig;
        public stDefRange mExtBias;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXCH_AUXOUT)]
        public stDefRange[] mAux;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXCH_CALOUT)]
        public stDefRange[] mCalib;

        public stDefAORange(byte model)
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

            mSigV = new stDefRange[SM_Main_Define.DEF_MAXRNG_V * SM_Main_Define.DEF_MAXRNG_INT_OUT];
            mBiasV = new stDefRange[SM_Main_Define.DEF_MAXRNG_V];
            fTemp = 1.0f;
            k = 0;
            for (i = 0; i < SM_Main_Define.DEF_MAXRNG_V; i++)
            {
                fMax = (SM_Main_Define.DEF_MAXVAL_V / fTemp);
                fMin = fMax * -1.0f;
                mBiasV[i] = new stDefRange(fMax,fMin);
                if (bSM == false)
                {
                    mBiasV[i].Gain = -1.0f;
                }
                fTemp1 = 1.0f;
                for (j = 0; j < SM_Main_Define.DEF_MAXRNG_INT_OUT; j++)
                {
                    fMax /= fTemp1;
                    fMin = fMax * -1.0f;
                    mSigV[k] = new stDefRange(fMax, fMin);
                    fTemp1 *= 10.0f;
                    k++;
                }
                fTemp *= 10.0f;
            }

            fTemp = 1.0f;
            k = 0;
            fMax1 = 0.0f;
            mSigA = new stDefRange[SM_Main_Define.DEF_ALLMAXRNG_A * SM_Main_Define.DEF_MAXRNG_INT_OUT];
            mBiasA = new stDefRange[SM_Main_Define.DEF_ALLMAXRNG_A];
            for (i = 0; i < SM_Main_Define.DEF_ALLMAXRNG_A; i++)
            {
                
                fMax = (fMaxA / fTemp);
                fMax1 = (float)((double)fMax / (SM_Main_Define.CurrentRangeRate[i] * 9.0));
                fMin = fMax1 * -1.0f;
                mBiasA[i] = new stDefRange(fMax1, fMin);
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
                    mSigA[k] = new stDefRange(fMax1, fMin);
                    mSigA[k].MaxValue = fMax;
                    mSigA[k].MinValue = fMax * -1.0f;
                    fTemp1 *= 10.0f;
                    k++;
                }
                fTemp *= 10.0f;
            }
            fMax = SM_Main_Define.DEF_MAXVAL_EXT;
            fMin = fMax * -1.0f;
            mExtSig = new stDefRange(fMax, fMin);
            
            mExtBias = new stDefRange(fMax, fMin);


            fMax = SM_Main_Define.DEF_MAXVAL_AUX;
            fMin = fMax * -1.0f;
            mAux = new stDefRange[SM_Main_Define.DEF_MAXCH_AUXOUT];
            for (i = 0; i < SM_Main_Define.DEF_MAXCH_AUXOUT; i++)
            {
                mAux[i] = new stDefRange(fMax, fMin);
            }


            mCalib = new stDefRange[SM_Main_Define.DEF_MAXCH_CALOUT];
            for (i = 0; i < SM_Main_Define.DEF_MAXCH_CALOUT; i++)
            {
                if(i == SM_Main_Define.DEF_CALTYPE_A) fMax = fMaxA / 10.0f;
                else if(i == SM_Main_Define.DEF_CALTYPE_V) fMax = SM_Main_Define.DEF_MAXVAL_V;
                else fMax = SM_Main_Define.DEF_MAXVAL_AUX;
                fMin = fMax * -1.0f;
                mCalib[i] = new stDefRange(fMax, fMin);
            }

        }

        public stDefRange GetRngInf_SigV(int Range, int IntRange)
        {
            int offset = Range * SM_Main_Define.DEF_MAXRNG_INT_IN + IntRange;
            return mSigV[offset];
        }

        public stDefRange GetRngInf_SigA(int Range, int IntRange)
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
            this = (stDefAORange)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefAORange));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefAIRange 
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXRNG_V * SM_Main_Define.DEF_MAXRNG_INT_IN)]
        public stDefRangeAIO[] mV;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_ALLMAXRNG_A * SM_Main_Define.DEF_MAXRNG_INT_IN)]
        public stDefRangeAIO[] mA;
        public stDefRangeA mExtV;
        public stDefRangeA mExtA;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXCH_AUXIN)]
        public stDefRange[] mAux;

        public stDefAIRange(byte model)
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
            mV = new stDefRangeAIO[SM_Main_Define.DEF_MAXRNG_V * SM_Main_Define.DEF_MAXRNG_INT_IN];
            fTemp = 1.0f;
            for (i = 0; i < SM_Main_Define.DEF_MAXRNG_V; i++)
            {
                fMax = (SM_Main_Define.DEF_MAXVAL_V / fTemp);
                fMin = fMax * -1.0f;
                fTemp1 = 1.0f;
                for (j = 0; j < SM_Main_Define.DEF_MAXRNG_INT_IN; j++)
                {
                    fMax /= fTemp1;
                    fMin = fMax * -1.0f;
                    mV[k] = new stDefRangeAIO(fMax, fMin);
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
            mA = new stDefRangeAIO[SM_Main_Define.DEF_ALLMAXRNG_A * SM_Main_Define.DEF_MAXRNG_INT_IN];
            fTemp = 1.0f;
            for (i = 0; i < SM_Main_Define.DEF_ALLMAXRNG_A; i++)
            {
                fMax = (fMaxA / fTemp);
                fMax1 = (float)((double)fMax / (SM_Main_Define.CurrentRangeRate[i] * 9.0));
                fMin = fMax1 * -1.0f;
                fTemp1 = 1.0f;
                for (j = 0; j < SM_Main_Define.DEF_MAXRNG_INT_IN; j++)
                {
                    fMax1 /= fTemp1;
                    fMax /= fTemp1;
                    fMin = fMax1 * -1.0f;
                    mA[k] = new stDefRangeAIO(fMax1, fMin);
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
            mExtV = new stDefRangeA(fMax,fMin);
            mExtV.Factor = (2.0f * fMax) / SM_Main_Define.DEF_DAC_RESOLUTION;

            mExtA = new stDefRangeA(fMax,fMin);
            mExtA.Factor = (2.0f * fMax) / SM_Main_Define.DEF_DAC_RESOLUTION;
            mAux = new stDefRange[SM_Main_Define.DEF_MAXCH_AUXIN];
            
            for(i=0; i< SM_Main_Define.DEF_MAXCH_AUXIN; i++)
            {
                if(i == 0) fMax = SM_Main_Define.DEF_MAXVAL_TEMP;
                else fMax = SM_Main_Define.DEF_MAXVAL_AUX;
                fMin = fMax * -1.0f;
                mAux[i] = new stDefRange(fMax,fMin);
                mAux[i].Factor = (2.0f * fMax) / SM_Main_Define.DEF_DAC_RESOLUTION;
            }

        }

        public stDefRangeAIO GetRngInf_V(int Range, int IntRange)
        {
            int offset = Range * SM_Main_Define.DEF_MAXRNG_INT_IN + IntRange;
            return mV[offset];
        }

        public stDefRangeAIO GetRngInf_A(int Range, int IntRange)
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
            this = (stDefAIRange)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefAIRange));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefBstRange
    {
        public UInt16 ChkROM;
        public float mBoardMaxV;
        public float mBoardMinV;
        public float mBoardA;
        public stDefBstAORange mOut;
        public stDefBstAIRange mIn;

        public stDefBstRange(float MaxA, float MaxV, float MinV)
        {
            ChkROM = 0;
            mBoardMaxV = MaxV;
            mBoardMinV = MinV;
            mBoardA = MaxA;

            mOut = new stDefBstAORange(mBoardA, mBoardMaxV, mBoardMinV);
            mIn = new stDefBstAIRange(mBoardA, mBoardMaxV, mBoardMinV);
        }

        public stDefBstRange(int Init)
        {
            ChkROM = 0;
            mBoardMaxV = SM_Main_Define.DEF_DEFAULT_BOOSTERMAXV;
            mBoardMinV = SM_Main_Define.DEF_DEFAULT_BOOSTERMINV;
            mBoardA = SM_Main_Define.DEF_DEFAULT_BOOSTERMAXA;

            mOut = new stDefBstAORange(mBoardA, mBoardMaxV, mBoardMinV);
            mIn = new stDefBstAIRange(mBoardA, mBoardMaxV, mBoardMinV);
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stDefBstRange)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefBstRange));
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
    public struct stDefBstRangeCfg
    {
        public float mBoardMaxV;
        public float mBoardMinV;
        public float mBoardA;

        public stDefBstRangeCfg(byte init)
        {
            mBoardMaxV = SM_Main_Define.DEF_DEFAULT_BOOSTERMAXV;
            mBoardMinV = SM_Main_Define.DEF_DEFAULT_BOOSTERMINV;
            mBoardA = SM_Main_Define.DEF_DEFAULT_BOOSTERMAXA;
        }

        public stDefBstRangeCfg(float MaxA, float MaxV, float MinV)
        {
            mBoardMaxV = MaxV;
            mBoardMinV = MinV;
            mBoardA = MaxA;
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
            this = (stDefBstRangeCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefBstRangeCfg));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefSysRange 
    {
        public stDefAORange mOut;
        public stDefAIRange mIn;
        public stDefEisCalibItem mEisCal;
        public stDefBstRange mBstRange;
        public stDefMuxCalibDevice mMux;

        public stDefSysRange(byte model)
        {
            mOut = new stDefAORange(model);
            mIn = new stDefAIRange(model);
            mEisCal = new stDefEisCalibItem(0);
            mBstRange = new stDefBstRange(0);
            mMux = new stDefMuxCalibDevice(0);
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stDefSysRange)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefSysRange));
            pinnedArr.Free();
        }

        public void ToWritePtr(int nElement, byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            if(nElement == 0)
                this.mOut = (stDefAORange)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefAORange));
            else this.mIn = (stDefAIRange)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefAIRange));
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
    public struct stDefSystem 
    {
        public stDefSysInfo mInfo;
        public stDefSysConfig mConfig;
        public stDefSysRange mRange;
        public stDefSystem(byte model)
        {
            mInfo = new stDefSysInfo(model);
            mConfig = new stDefSysConfig(model);
            mRange = new stDefSysRange(model);
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
            this = (stDefSystem)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefSystem));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefStatusData 
    {
        public byte nFlowStat;
        public byte nTaskStat;
        public byte nBattStat;
        public byte nErrStat;
        public byte nEISStat;
        public stDefStatusData(byte Init)
        {
            nFlowStat = 0;
            nTaskStat = 0;
            nBattStat = 0;
            nErrStat = 0;
            nEISStat = 0;
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
            this = (stDefStatusData)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefStatusData));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefStatTaskData 
    {
        public int nTaskNo;
        public int nTaskType;
        public int nType;
        public int nMode;
        public int mType;
        public UInt64 TaskTick;
        public int nDataCnt;
        public int nMemDataCnt;
        public int nMemLoopCnt;
        public int nDCDataCnt;
        public int nEDataCnt;

        public stDefStatTaskData(byte init)
        {
            nTaskNo = 0;
            nTaskType = 0;
            nType = 0;
            nMode = 0;
            mType = 0;
            TaskTick = 0;
            nDataCnt = 0;
            nMemDataCnt = 0;
            nMemLoopCnt = 0;
            nDCDataCnt = 0;
            nEDataCnt = 0;
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
            this = (stDefStatTaskData)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefStatTaskData));
            pinnedArr.Free();
        }
    }

    
    [StructLayout(LayoutKind.Sequential)]
    public struct stDefLoopData 
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.MAX_LOOP, ArraySubType = UnmanagedType.I4)]
        public int[] nBatchLoop;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.MAX_LOOP, ArraySubType = UnmanagedType.I4)]
        public int[] nBatchStep;
        public int nLoop;
        public UInt64 LoopTick;

        public stDefLoopData(byte init)
        {
            int i;
            nBatchLoop = new int[SM_Main_Define.MAX_LOOP];
            nBatchStep = new int[SM_Main_Define.MAX_LOOP];
            for (i = 0; i < SM_Main_Define.MAX_LOOP; i++)
            {
                nBatchLoop[i] = 0;
                nBatchStep[i] = 0;
            }
            nLoop = 0;
            LoopTick = 0;
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
            this = (stDefLoopData)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefLoopData));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefCycleData 
    {
        public int nCycle;
        public UInt64 CycleTick;
        public stDefCycleData(byte init)
        {
            nCycle = 0;
            CycleTick = 0;
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
            this = (stDefCycleData)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefCycleData));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefStatData 
    {
        public stDefStatusData mStatus;
        public UInt64 TestTick;
        public int nBatStep;
        public int nFile;
        public UInt64 FileTick;
        public stDefStatTaskData mStatTask;
        public stDefCycleData mCycle;
        public stDefLoopData mLoop;
        public int nStartDelay;
        public UInt16 CtrlMode;
        public UInt16 bExt;
        public UInt16 bCond;
        public UInt16 usBstModel;
        public UInt16 bCell;
        public UInt16 bZRA;
        public UInt16 bIRMode;
        public UInt16 nFBSel;
        public UInt16 RngV;
        public UInt16 RngA;
        public UInt16 SigIntRng;
        public UInt16 InIntRngV;
        public UInt16 InIntRngA;
        public UInt16 InFltV;
        public UInt16 InFltA;
        public float CtrlValue;
        public float CtrlFreq;
        public UInt16 FreqIndex;
        public UInt16 FreqCount;
        public float Ampere;
        public float AmpereDensity;
        public float Voltage;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXCH_AUXIN, ArraySubType = UnmanagedType.R4)]
        public float[] AUX;
        public float Capacity;
        public float ACapacity;
        public float MinusCapa;
        public float PlusCapa;
        public float Power;
        public float Load;
        public float PlusEnergy;
        public float MinusEnergy;
        public float AEnergy;
        public float Energy;
        public float fLinIR;
        public float fExpIR; //fRdTempEx;
        public float fOCP;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = SM_Main_Define.DEF_MAXCH_AUXOUT, ArraySubType = UnmanagedType.R4)]
        public float[] fAux;
        public float fZmag;
        public float fZph;
        public float fZre;
        public float fZimg;
        public float fVdc;
        public UInt16 mDI;
        public UInt16 mDO;

        public stDefStatData(byte Init)
        {
            int i;

            mStatus = new stDefStatusData(0);
            
	   
	        TestTick = 0;
	        nBatStep = 0;
	        nFile = 0;
	        FileTick = 0;

            mStatTask = new stDefStatTaskData(0);
            mCycle = new stDefCycleData(0);
            mLoop = new stDefLoopData(0);

	        nStartDelay = 0;
	        CtrlMode = 0;
	        bExt = 0;
	        bCond = 0;
	        usBstModel = 0;
	        bCell = 0;
	        bZRA = 0;
	        bIRMode = 0;
	        nFBSel = 0;
	        RngV = 0;
	        RngA = 0;
	        SigIntRng = 0;
	        InIntRngV = 0;
	        InIntRngA = 0;
	        InFltV = 0;
	        InFltA = 0;
	        CtrlValue = 0.0f;
	        CtrlFreq = 0.0f;
	        FreqIndex = 0;
	        FreqCount = 0;
	        Ampere = 0.0f;
	        AmpereDensity = 0.0f;
	        Voltage = 0.0f;
            AUX = new float[SM_Main_Define.DEF_MAXCH_AUXIN];
            for(i=0; i<SM_Main_Define.DEF_MAXCH_AUXIN; i++)
            {
                AUX[i] = 0.0f;
            }
	        Capacity = 0.0f;
	        ACapacity = 0.0f;
	        MinusCapa = 0.0f;
	        PlusCapa = 0.0f;
	        Power = 0.0f;
	        Load = 0.0f;
	        PlusEnergy = 0.0f;
	        MinusEnergy = 0.0f;
	        AEnergy = 0.0f;
	        Energy = 0.0f;
	        fLinIR = 0.0f;
	        fExpIR = 0.0f; //fRdTempEx;
	        fOCP = 0.0f;
            fAux = new float[SM_Main_Define.DEF_MAXCH_AUXOUT];
            for(i=0; i<SM_Main_Define.DEF_MAXCH_AUXOUT; i++)
            {
                fAux[i] = 0.0f;
            }
	        fZmag = 0.0f;
	        fZph = 0.0f;
	        fZre = 0.0f;
	        fZimg = 0.0f;
	        fVdc = 0.0f;
            mDI = 0;
            mDO = 0; 
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stDefStatData)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefStatData));
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
    public struct stDefTestNormalData 
    {
        public float TestTime;
        public int nBatStep;
        public float FileTime;
        public int nCycle;
        public float CycleTime;
        public int nTaskNo;
        public float TaskTime;
        public float Ampere;
        public float Voltage;
        public float fOCP;
        public float Temperature;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3, ArraySubType = UnmanagedType.R4)]
        public float[] AUX;
        public float ACapacity;
        public float Energy;
        public float IR;

        public stDefTestNormalData(byte init)
        {
            int i;
            TestTime = 0.0f;
            nBatStep = 0;
            FileTime = 0.0f;
            nCycle = 0;
            CycleTime = 0.0f;
            nTaskNo = 0;
            TaskTime = 0.0f;
            Ampere = 0.0f;
            Voltage = 0.0f;
            fOCP = 0.0f;
            Temperature = 0.0f;
            AUX = new float[3];
            for (i = 0; i < 3; i++)
            {
                AUX[i] = 0.0f;
            }
            ACapacity = 0.0f;
            Energy = 0.0f;
            IR = 0.0f;
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
            this = (stDefTestNormalData)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefTestNormalData));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefTestEISData 
    {
	    float							TestTime;
	    int								nBatStep;
	    float							FileTime;
	    int								nCycle;
	    float							CycleTime;
	    int								nTaskNo;
	    float							TaskTime;
	    float 							fFreq;
	    float							Temperature;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3, ArraySubType = UnmanagedType.R4)]
	    float[]							AUX;
	    float 							Vdc;
	    float 							Idc;
	    float 							Zre;
	    float 							Zim;
	    float 							fSNB;
        public stDefTestEISData(byte init)
        {
            int i;

            TestTime = 0.0f;
            nBatStep = 0;
            FileTime = 0.0f;
            nCycle = 0;
            CycleTime = 0.0f;
            nTaskNo = 0;
            TaskTime = 0.0f;
            fFreq = 0.0f;
            Temperature = 0.0f;
            AUX = new float[3];
            for (i = 0; i < 3; i++)
            {
                AUX[i] = 0.0f;
            }
            Vdc = 0.0f;
            Idc = 0.0f;
            Zre = 0.0f;
            Zim = 0.0f;
            fSNB = 0.0f;
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
            this = (stDefTestEISData)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefTestEISData));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Explicit, Pack = 1)]
    public struct UnionTestData {
        [FieldOffset(0)]
        public stDefTestNormalData mNormal;
        [FieldOffset(0)]
        public stDefTestEISData mEis;

        public UnionTestData(byte init)
        {
            mNormal = new stDefTestNormalData(0);
            mEis = new stDefTestEISData(0);
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
            this = (UnionTestData)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(UnionTestData));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct stDefTestData {
	    UInt16						mType;
	    UnionTestData			    mData;
	    UInt32				        notused;

        public stDefTestData(byte init)
        {
            mType = 0;
            mData = new UnionTestData(0);
            notused = 0;
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
            this = (stDefTestData)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefTestData));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct ChannelInfo
    {
        public bool bExist;
        public bool bLoadInfo;
        public byte Channel;
        public FirmwareInfo mFPGA;
        public FirmwareInfo mDSP;
        public stDefSystem mSystem;
        
        public ChannelInfo(byte nCh, byte model)
        {
            this.bExist = false;
            this.bLoadInfo = false;
            this.Channel = nCh;
            this.mFPGA = new FirmwareInfo(0);
            this.mDSP = new FirmwareInfo(0);

            mSystem = new stDefSystem(model);
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
            this = (ChannelInfo)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(ChannelInfo));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct DeviceHeader
    {
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 24)]
        public string sSerial;
        public byte Product;
        public byte Model;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 50)]
        public string sManufacturer;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 50)]
        public string sProduct;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 50)]
        public string sModel;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 50)]
        public string sType;
        public FirmwareInfo mUSB;
        public ushort VerUSB;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 50)]
        public string cLicense;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 50)]
        public string sLicSerial;
        public byte useChannel;
        public bool bSupportVer;
        public bool bUnknow;
        public bool bSPDevice;
        public bool bBAT;
        public bool bCOR;
        public bool bECHM;
        public bool bEIS;
        public bool bFRA;
        public bool bUnuse1;
        public bool bUnuse2;
        public bool bUnuse3;
        public bool bUnuse4;
        public bool bUnuse5;
        public bool Status;
        public bool bLicense;
        public ushort usLicense;
        public bool Used;

        public DeviceHeader(string sSerial)
        {
            this.mUSB = new FirmwareInfo(0);

            this.Model = 0;
            this.Product = 0;
            this.sSerial = sSerial;
            this.sManufacturer = "";
            this.sProduct = "";
            this.sModel = "";
            this.sType = "";
            this.VerUSB = 6000;
            this.cLicense = "";
            this.sLicSerial = "";
            this.useChannel = 0;
            this.sSerial = "";
            this.bSupportVer = false;
            this.bUnknow = false;
            this.bSPDevice = false;
            this.bBAT = false;
            this.bCOR = false;
            this.bECHM = false;
            this.bEIS = false;
            this.bFRA = false;
            this.bUnuse1 = false;
            this.bUnuse2 = false;
            this.bUnuse3 = false;
            this.bUnuse4 = false;
            this.bUnuse5 = false;
            this.Status = false;
            this.bLicense = false;
            this.usLicense = 0x0;
            this.Used = false;
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
            this = (DeviceHeader)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(DeviceHeader));
            pinnedArr.Free();
        }

    }
     [StructLayout(LayoutKind.Sequential)]
    public struct DeviceInfo
    {
        public DeviceHeader mInfo;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 8)] 
        public ChannelInfo[] mChannelInfo;
      
        public DeviceInfo(string sSerial)
        {
            this.mInfo = new DeviceHeader(sSerial);
            this.mChannelInfo = new ChannelInfo[8];
            for (byte i = 0; i < 8; i++)
            {
                this.mChannelInfo[i] = new ChannelInfo(i, mInfo.Model);
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
            this = (DeviceInfo)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(DeviceInfo));
            pinnedArr.Free();
        }
    }

    #endregion // ** Device information map define
}
