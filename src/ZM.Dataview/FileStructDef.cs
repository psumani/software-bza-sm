
using System;
using System.ComponentModel;
using System.Numerics;
using System.Runtime.InteropServices;
using System.Text;

namespace ZiveLab.ZM.Dataview
{
    #region ZM_Constant

    public static class DeviceConstants
    {
        public const int ID_ZIMCONFIG_1 = 0xD2;
        public const int ID_ZIMCONFIG = 0xD3;

        public const float Linewidth = 1.0f;
        public const int Pointwidth = 6;
        public const int Pointheight = 6;

        public const int MAX_PATH = 260;
        public const int MEMOSIZE = 80;
        public const int USERSIZE = 40;
        public const int BATIDSIZE = 40;

        public const double DEV_DEFAULT_IDC_OFFSET = 3.6;
        public const double DEFAULT_BZA60_POWER = 20.0;
        public const double DEFAULT_BZA100_POWER = 30.0;
        public const double DEFAULT_BZA500_POWER = 40.0;
        public const double DEFAULT_BZA1000_POWER = 60.0;

        public const byte RES_MAJOR = 2; //
        public const byte RES_MINOR = 1;
        public const byte RES_REVISION = 0;
        public const byte RES_BUILD = 0;

        public const ushort CHECKSCHVAL = 12345;

        public const byte SCH_MAJOR = 1;
        public const byte SCH_MINOR = 0;
        public const byte SCH_REVISION = 0;
        public const byte SCH_BUILD = 0;

        public const Int64 MIN_MAC_ADDR = 0x1BC5081000;
        public const Int64 MAX_MAC_ADDR = 0x1BC5081FFF;
        public const double PI = 3.14159265358979323846;
        public const byte ID_RANGEINFO_1 = 2;
        public const byte ID_RANGEINFO = 3;
        public const int MAX_IAC_RNGCNT = 4;
        public const int MAX_VAC_RNGCNT = 1;
        public const int MAX_IAC_CTRL_RNGCNT = 8;
        public const int MAX_VDC_RNGCNT = 2;

        public const double DEF_SINECTRL_PHASE = 270.0;

        public const double ADC_IAC_CONTROLGAIN0 = 0.2;
        public const double ADC_IAC_RESOLUTION = 16777216.0;
        public const double ADC_IAC_RNG0_RMAX = 20.0;
        public const double ADC_IAC_RNG0_MAX = 25.6;
        public const double ADC_IAC_RNG0_MIN = -25.6;
        public const double ADC_IAC_RNG0_FACTOR = ((ADC_IAC_RNG0_MAX - ADC_IAC_RNG0_MIN) / 16777216.0); //24bit

        public const double ADC_IAC_RNG1_RMAX = 2.0;
        public const double ADC_IAC_RNG1_MAX = 2.56;
        public const double ADC_IAC_RNG1_MIN = -2.56;
        public const double ADC_IAC_RNG1_FACTOR = ((ADC_IAC_RNG1_MAX - ADC_IAC_RNG1_MIN) / 16777216.0); //24bit

        public const double ADC_IAC_RNG2_RMAX = 0.2;
        public const double ADC_IAC_RNG2_MAX = 0.256;
        public const double ADC_IAC_RNG2_MIN = -0.256;
        public const double ADC_IAC_RNG2_FACTOR = ((ADC_IAC_RNG2_MAX - ADC_IAC_RNG2_MIN) / 16777216.0); //24bit

        public const double ADC_IAC_RNG3_RMAX = 0.02;
        public const double ADC_IAC_RNG3_MAX = 0.0256;
        public const double ADC_IAC_RNG3_MIN = -0.0256;
        public const double ADC_IAC_RNG3_FACTOR = ((ADC_IAC_RNG3_MAX - ADC_IAC_RNG3_MIN) / 16777216.0); //24bit

        public const double ADC_IAC_RNG4_RMAX = 0.002;
        public const double ADC_IAC_RNG4_MAX = 0.00256;
        public const double ADC_IAC_RNG4_MIN = -0.00256;
        public const double ADC_IAC_RNG4_FACTOR = ((ADC_IAC_RNG4_MAX - ADC_IAC_RNG4_MIN) / 16777216.0); //24bit

        public const double ADC_IAC_RNG5_RMAX = 0.0002;
        public const double ADC_IAC_RNG5_MAX = 0.000256;
        public const double ADC_IAC_RNG5_MIN = -0.000256;
        public const double ADC_IAC_RNG5_FACTOR = ((ADC_IAC_RNG5_MAX - ADC_IAC_RNG5_MIN) / 16777216.0); //24bit

        public const double ADC_IAC_RNG6_RMAX = 0.00002;
        public const double ADC_IAC_RNG6_MAX = 0.0000256;
        public const double ADC_IAC_RNG6_MIN = -0.0000256;
        public const double ADC_IAC_RNG6_FACTOR = ((ADC_IAC_RNG6_MAX - ADC_IAC_RNG6_MIN) / 16777216.0); //24bit

        public const double ADC_VAC_RNG_RMAX = 0.2;
        public const double ADC_VAC_RNG_MAX = 0.256;
        public const double ADC_VAC_RNG_MIN = -0.256;
        public const double ADC_VAC_RNG_FACTOR = ((ADC_VAC_RNG_MAX - ADC_VAC_RNG_MIN) / 16777216.0); //24bit

        public const double ADC_VDC_RNG0_RMAX0 = 1000.0;
        public const double ADC_VDC_RNG0_RMAX1 = 500.0;
        public const double ADC_VDC_RNG0_MAX = 2048.0;
        public const double ADC_VDC_RNG0_MIN = -2048.0;
        public const double ADC_VDC_RNG0_FACTOR = ((ADC_VDC_RNG0_MAX - ADC_VDC_RNG0_MIN) / 16777216.0);

        public const double ADC_VDC_RNG1_RMAX0 = 100.0;
        public const double ADC_VDC_RNG1_RMAX1 = 50.0;
        public const double ADC_VDC_RNG1_MAX = 204.8;
        public const double ADC_VDC_RNG1_MIN = -204.8;
        public const double ADC_VDC_RNG1_FACTOR = ((ADC_VDC_RNG1_MAX - ADC_VDC_RNG1_MIN) / 16777216.0);

        public const double ADC_VDC_RNG0_RMAX2 = 100.0;
        public const double ADC_VDC_RNG0_RMAX3 = 60.0;
        public const double ADC_VDC_RNG0_MAX1 = 102.4;
        public const double ADC_VDC_RNG0_MIN1 = -102.4;
        public const double ADC_VDC_RNG0_FACTOR1 = ((ADC_VDC_RNG0_MAX1 - ADC_VDC_RNG0_MIN1) / 16777216.0); //24bit

        public const double ADC_VDC_RNG1_RMAX2 = 10.0;
        public const double ADC_VDC_RNG1_RMAX3 = 6.0;
        public const double ADC_VDC_RNG1_MAX1 = 10.24;
        public const double ADC_VDC_RNG1_MIN1 = -10.24;
        public const double ADC_VDC_RNG1_FACTOR1 = ((ADC_VDC_RNG1_MAX1 - ADC_VDC_RNG1_MIN1) / 16777216.0);//24bit

        public const double ADC_RTD_CONST_MAX = 850.0;
        public const double ADC_RTD_CONST_MIN = -200.0;
        public const double ADC_RTD_CONST_PT1000 = (4000.0 / 32786.0); // 4000 - RREF
        public const double ADC_RTD_CONST_PT100 = (400.0 / 32786.0); // 400 - RREF

        public const double ADC_AUX_VDC_RMAX1 = 500.0;
        public const double ADC_AUX_VDC_MAX1 = 2048.0;
        public const double ADC_AUX_VDC_MIN1 = -2048.0;
        public const double ADC_AUX_VDC_FACTOR1 = ((ADC_AUX_VDC_MAX1 - ADC_AUX_VDC_MIN1) / 16777216.0);

        public const int DEVDO_CONT_SD = 0x1;
        public const int DEVDO_DDS_RNG0 = 0x2;
        public const int DEVDO_SELIRNG0 = 0x4;
        public const int DEVDO_SELIRNG1 = 0x8;
        public const int DEVDO_VDC_RNG0 = 0x10;

        public const int CFG_EIS_RESET = 0x1;
        public const int CFG_EIS_START = 0x2;
        public const int CFG_EIS_STOP = 0x4;
        public const int CFG_EIS_DATAIDX_MASK = 0x0FFF;

        public const double DEFAULT_MAX_EIS_FREQUENCY = 10000.0;
        public const double DEFAULT_MIN_EIS_FREQUENCY = 0.05;

        public const double MAX_EIS_FREQUENCY = 10000.0;
        public const double MIN_EIS_FREQUENCY = 0.05;
        public const int MAX_EIS_DENSITY = 20;
        public const int MAX_EIS_POINT = 1024;
        public const int MAX_EIS_CYC_POINT = 512;
        public const int MIN_EIS_CYC_POINT = 32;
        public const int MAX_EIS_RAWADC_POINT = MAX_EIS_POINT;
        public const int MAX_EIS_RAWVAL_POINT = MAX_EIS_POINT;
        public const int DEF_EIS_COMP_CRNG = 6;
        public const int MAX_EIS_RT_RAW_POINT = 64;

        public const double MIN_EIS_ADC_MCLK = 100000.0;

        public const int MAX_EIS_FFT_POINT = MAX_EIS_POINT * 2;
        public const int MAX_EIS_FREQ_CNT = 200;
        public const int DEFAULT_EIS_CYC_POINT = 32;
        public const int DEFAULT_EIS_CYCLES = 1;


        public const int TESTSTATUS_READY = 0x0;
        public const int TESTSTATUS_RUNNING = 0x1; // running experiment
        public const int TESTSTATUS_CALIBRATION = 0x2;
        public const int TESTSTATUS_FINISH = 0x3;
        public const int TESTSTATUS_STOP = 0x4;
        public const int TESTSTATUS_NOTCAL = 0x20; // running noise level measurement


        public const int EIS_STATUS_NONE = 0;
        public const int EIS_STATUS_BEGIN = 1;
        public const int EIS_STATUS_LOADON = 2;
        public const int EIS_STATUS_DCON = 3;
        public const int EIS_STATUS_ONDELAY = 4;
        public const int EIS_STATUS_EIS_INIT = 5;
        public const int EIS_STATUS_RDY = 6;
        public const int EIS_STATUS_ING = 7;
        public const int EIS_STATUS_FFT = 8;
        public const int EIS_STATUS_EISSTOP = 9;
        public const int EIS_STATUS_LOADOFF = 10;
        public const int EIS_STATUS_FIN = 11;
        public const int EIS_STATUS_END = 12;
        public const int EIS_STATUS_WAIT = 13;

        public const int DEF_LAST_ERROR_NONE = 0;
        public const int DEF_LAST_ERROR_CELLLOW = 1;
        public const int DEF_LAST_ERROR_NOTRDY = 2;
        public const int DEF_LAST_ERROR_NOZIM = 3;
        public const int DEF_LAST_ERROR_COMMZIM = 4;
        public const int DEF_LAST_ERROR_CONFAIL = 5;
        public const int DEF_LAST_ERROR_RESETZIM = 6;
        public const int DEF_LAST_ERROR_OVERT = 7;
        public const int DEF_LAST_ERROR_VACSTABLE = 8;
        public const int DEF_LAST_ERROR_ERRSCH = 9;
        public const int DEF_LAST_ERROR_AUTOSTOP = 10;
        public const int DEF_LAST_ERROR_MANUALSTOP = 11;
        public const int DEF_LAST_ERROR_FFT = 12;
        public const int DEF_LAST_ERROR_MEMORY = 13;

        public const double DDS_SIG_MCLK_LOW = 125000.0;
        public const double DDS_SIG_MCLK_HI = 16000000.0;
        public const double DDS_CLK_MCLK = 16000000.0;
        public const double DDS_FREQ_RES = 268435455.0;
        public const double DDS_SIG_CONST_LOW = (DDS_FREQ_RES / DDS_SIG_MCLK_LOW);
        public const double DDS_SIG_CONST_HI = (DDS_FREQ_RES / DDS_SIG_MCLK_HI);
        public const double DDS_CLK_CONST = (DDS_FREQ_RES / DDS_CLK_MCLK);

        public const string S_WEB_LIMITFILE = "src\\limit.json";

    }

    public static class MBZA_Constant
    {
        public const double MIN_INTERVALTIME = 1.0;
        public const double MIN_TOTALTIME = 1.0;
        public const double MIN_SAMPLETIME = 1.0;
        public const int MAX_DUMMY = 8;
        public const int MAX_IRANGE = 8;
        public const int MAX_DEV_CHANNEL = 4;
        public const int MAX_AUX_CHANNEL = 4;
        public const int MAX_AUX_BOARD = 3;
        public const int MAX_APP_CHANNEL = 32;
        public const int MAX_APP_DEVICE = 8;
        public const int ChannelMapSize = 512;
        public const int MAX_COM_DATA_CNT = 20;
        public const int MAX_DATA_CNT = 100000;
        public const string AppCfgFilename = "C:\\ZIVE DATA\\ZM\\INFOR\\ZM.CFG";
        public const string GrpCfgFilename = "C:\\ZIVE DATA\\ZM\\INFOR\\ZM_GRPSET.CFG";
        public const string GrpExCfgFilename = "C:\\ZIVE DATA\\ZM\\INFOR\\ZM_GRPSETEX.CFG";

        public static string[] Const_LootPart = { "Connection", "Ethernet", "SIF Board", "ZIM(Channel) Board", };
        public static string[] Const_RangePart = { "Iac", "Idc", "Vac", "Vdc", "Temperature", "Safety" };
        public static string[] Const_MCBZARangePart = { "Iac", "Idc", "Vac", "Vdc", "Temperature", "Safety", "Aux_1", "Aux_2", "Aux_3", };
        public static string[] Const_RangeIacItems = { "Calibration vars", "Compensation dummy", };
        public static string[] Const_RangeIacGain = { "X1", "X0.2", };
        public static string[] Const_RangeIdcGain = { "X1", "X0.2", };
        public static double[] Const_DefaultRDummy = { 0.001, 0.009987261, 0.099952, 0.997961, 9.999115, 99.612, 996.9, 10000.0 };
        public static double[] Const_DefaultLDummy = { 0.0, 0.000000064476, 0.000000112196, 0.000000084638, 0.00000008, 0.00000000000022, 0.000052, 0.0, };

        public const double DEFAULT_BZA60_POWER = 20.0;
        public const double DEFAULT_BZA100_POWER = 30.0;
        public const double DEFAULT_BZA500_POWER = 40.0;
        public const double DEFAULT_BZA1000_POWER = 60.0;

        public const ushort TECHFILESIZE = 222;
        public const int RANGE_XML_FILESIZE_1 = 12947;


    }
    #endregion ZM_Constant
    
    #region ZM_Enum

    public enum eDeviceType
    {
        [Description("WBCS")]
        WBCS,
        [Description("SMART")]
        SMART,
        [Description("ZIM")]
        ZIM,
        [Description("SBZA")]
        SBZA,
        [Description("MBZA")]
        MBZA,
        [Description("ZBCS")]
        ZBCS,
        [Description("CXM")]
        CXM,
        [Description("MCBZA")]
        MCBZA,
    }

    public enum eProductType
    {
        [Description("UNKNOWN")]
        UNKNOWN,
        [Description("BZA60")]
        BZA60,
        [Description("BZA100")]
        BZA100,
        [Description("BZA500 ")]
        BZA500,
        [Description("BZA1000")]
        BZA1000,
    }

    public enum eZimType
    {
        [Description("UNKNOWN")]
        UNKNOWN,
        [Description("ZIM1000")]
        BZA1000A,
        [Description("BZA1000")]
        BZA1000,
        [Description("BZA500 ")]
        BZA500,
        [Description("BZA100")]
        BZA100,
        [Description("BZA60")]
        BZA60,
        [Description("BZAAUX1")]
        BZAAUX1,
    }

    public enum eZimBoardType
    {
        [Description("UNKNOWN")]
        UNKNOWN,
        [Description("ZIM-MB-A")]
        BZA1000A,
        [Description("ZIM-MB-E")]
        BZA1000,
        [Description("ZIM-MB-E")]
        BZA500,
        [Description("ZIM-MB-D")]
        BZA100,
        [Description("ZIM-MB-D")]
        BZA60,
        [Description("ZIM-AUX-A")]
        BZAAUX,
    }

    public enum eZimSnID
    {
        [Description("IM-")]
        UNKNOWN,
        [Description("IM2")]
        BZA1000A,
        [Description("IM3")]
        BZA1000,
        [Description("IM4")]
        BZA500,
        [Description("IM5")]
        BZA100,
        [Description("IM6")]
        BZA60,
        [Description("IM7")]
        BZAAUX,
    }

    public enum enTechType
    {
        [Description("Galvanostatic EIS")]
        TECH_EIS = 0,
        [Description("Galvanostatic HFR ")]
        TECH_HFR,
        [Description("Rs Pseudo Rp")]
        TECH_PRR,
        [Description("Eoc/Temp monitor")]
        TECH_MON,
        [Description("Quick galvanostatic EIS")]
        TECH_QIS,
        [Description("Discharge test")]
        TECH_DCH,
    }

    public enum enTechType1
    {
        [Description("ERR")]
        TECH_ERR = -1,
        [Description("EIS")]
        TECH_EIS = 0,
        [Description("HFR ")]
        TECH_HFR,
        [Description("PRR")]
        TECH_PRR,
        [Description("MON")]
        TECH_MON,
        [Description("QIS")]
        TECH_QIS,
        [Description("DCH")]
        TECH_DCH,
    }

    public enum enVoltageRange
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("1000V")]
        V0 = 0,
        [Description(" 100V")]
        V1 = 1,
    }

    public enum enVoltageRange_BZA100
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("100V")]
        V0 = 0,
        [Description(" 10V")]
        V1 = 1,
    }

    public enum enCurrentRange_HC
    {
        [Description(" 20 A")]
        I20A = 0,
        [Description("  4 A")]
        I4A,
        [Description("  2 A")]
        I2A,
        [Description("400mA")]
        I400mA,
        [Description("200mA")]
        I200mA,
        [Description(" 40mA")]
        I40mA,
        [Description(" 20mA")]
        I20mA,
        [Description("  4mA")]
        I4mA,
    }

    public enum enCurrentRange_HZ
    {
        [Description(" 20mA")]
        I20mA = 0,
        [Description("  4mA")]
        I4mA,
        [Description("  2mA")]
        I2mA,
        [Description("400uA")]
        I400uA,
        [Description("200uA")]
        I200uA,
        [Description(" 40uA")]
        I40uA,
        [Description(" 20uA")]
        I20uA,
        [Description("  4uA")]
        I4uA,
    }

    public enum enCurrentRange
    {
        [Description("  2 A")]
        I2A = 0,
        [Description("400mA")]
        I400mA,
        [Description("200mA")]
        I200mA,
        [Description(" 40mA")]
        I40mA,
        [Description(" 20mA")]
        I20mA,
        [Description("  4mA")]
        I4mA,
        [Description("  2mA")]
        I2mA,
        [Description("400uA")]
        I400uA,
    }

    public enum enCurrentControl
    {
        [Description("  1 A")]
        I2A = 0,
        [Description("200mA")]
        I400mAA = 1,
        [Description("100mA")]
        I200mA = 2,
        [Description(" 20mA")]
        I40mA = 3,
        [Description(" 10mA")]
        I20mA = 4,
        [Description("  2mA")]
        I4mA = 5,
        [Description("  1mA")]
        I2mA = 6,
        [Description("200uA")]
        I400uA = 7,
    }

    public enum enDescRangeI
    {
        [Description("2 A")]
        I2A = 0,
        [Description("400mA")]
        I400mA,
        [Description("200mA")]
        I200mA,
        [Description("40mA")]
        I40mA,
        [Description("20mA")]
        I20mA,
        [Description("4mA")]
        I4mA,
        [Description("2mA")]
        I2mA,
        [Description("400uA")]
        I400uA,
    }

    public enum enDescRangeI_HC
    {
        [Description("Auto")]
        Auto = 0,
        [Description("20A")]
        I20A,
        [Description("4A")]
        I4A,
        [Description("2A")]
        I2A,
        [Description("400mA")]
        I400mA,
        [Description("200mA")]
        I200mA,
        [Description("40mA")]
        I40mA,
        [Description("20mA")]
        I20mA,
        [Description("4mA")]
        I4mA,
    }

    public enum enDescRangeI_HZ
    {
        [Description("Auto")]
        Auto = 0,
        [Description("20mA")]
        I20mA,
        [Description("4mA")]
        I4mA,
        [Description("2mA")]
        I2mA,
        [Description("400uA")]
        I400uA,
        [Description("200uA")]
        I200uA,
        [Description("40uA")]
        I40uA,
        [Description("20uA")]
        I20uA,
        [Description("4uA")]
        I4uA,
    }


    public enum enStatError
    {
        [Description("None...")]
        NoError,
        [Description("Low voltage...")]
        CellLow,
        [Description("Not ready...")]
        NotReady,
        [Description("Not found channel...")]
        NoZim,
        [Description("Communication error...")]
        ErrCommZim,
        [Description("Failed control...")]
        ContFail,
        [Description("Failed reset channel...")]
        ErrRstZim,
        [Description("Heat sink is very hot...")]
        OverT,
        [Description("Unstable AC voltage...")]
        VacStable,
        [Description("Error technique...")]
        ErrTech,
        [Description("Normal stopped...")]
        AutoStop,
        [Description("Manual stopped...")]
        ManualStop,
        [Description("Failed FFT...")]
        ErrFFT,
        [Description("Error memory...")]
        ErrMemory,
        [Description("Error result file...")]
        ResFileError,
    }
    #endregion ZM_Enum

    #region ZM_Common_struct
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stVersion
    {
        public byte Major;
        public byte Minor;
        public byte Revision;
        public byte Build;

        public stVersion(byte init)
        {
            Major = 0;
            Minor = 0;
            Revision = 0;
            Build = 0;
        }

        public void initialize()
        {
            Major = DeviceConstants.SCH_MAJOR;
            Minor = DeviceConstants.SCH_MINOR;
            Revision = DeviceConstants.SCH_REVISION;
            Build = DeviceConstants.SCH_BUILD;
        }

        public bool checkversion()
        {
            if (Major == 0 && Minor == 0 && Revision == 0 && Build == 0) return false;
            return true;
        }

        public override string ToString()
        {

            return string.Format("{0}.{1}.{2}.{3}", Major, Minor, Revision, Build);
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
            this = (stVersion)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stVersion));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_rtc
    {
        public long tick; // in milliseconds not nanoseconds
        public st_rtc(byte init)
        {
            tick = 0;
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
            this = (st_rtc)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_rtc));
            pinnedArr.Free();
        }
    }

    #endregion ZM_Common_struct

    #region ZM_Tech
    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech_Info
    {
        public double MaxP;
        public double MaxI;
        public double MaxV;
        public double Capa;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.BATIDSIZE)]
        public byte[] batid;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.USERSIZE)]
        public byte[] creator;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 2)]
        public double[] nouse;
        public stTech_Info(int init)
        {
            int i;
            Capa = 1.0;
            MaxP = 20.0;
            MaxI = 20.0;
            MaxV = 20.0;
            batid = new byte[DeviceConstants.BATIDSIZE];
            creator = new byte[DeviceConstants.USERSIZE];

            for (i = 0; i < DeviceConstants.BATIDSIZE; i++)
            {
                batid[i] = 0x0;
            }

            for (i = 0; i < DeviceConstants.USERSIZE; i++)
            {
                creator[i] = 0x0;
            }
            nouse = new double[2];
            for (i = 0; i < 2; i++)
            {
                nouse[i] = 0.0;
            }
        }

        public void initialize()
        {
            int i;
            Capa = 1.0;

            for (i = 0; i < DeviceConstants.BATIDSIZE; i++)
            {
                batid[i] = 0x0;
            }

            for (i = 0; i < DeviceConstants.USERSIZE; i++)
            {
                creator[i] = 0x0;
            }

            for (i = 0; i < 2; i++)
            {
                nouse[i] = 0.0;
            }
        }

        public string GetCreater()
        {
            return Encoding.UTF8.GetString(creator).Trim('\0');
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
            this = (stTech_Info)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_Info));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech_EIS
    {
        public double initfreq;
        public double finalfreq;
        public double bias;
        public ushort density;
        public int iteration;
        public ushort skipcycle;
        public ushort cycle;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public double[] nouse;
        public stTech_EIS(int init)
        {
            initfreq = 4000.0;
            finalfreq = 0.1;
            density = 10;
            iteration = 1;
            bias = 0.0;
            skipcycle = 0;
            cycle = 0;
            nouse = new double[3];
            for (int i = 0; i < 3; i++)
            {
                nouse[i] = 0.0;
            }
        }
        public void initialize()
        {
            initfreq = 4000.0;
            finalfreq = 0.1;
            density = 10;
            iteration = 1;
            bias = 0.0;
            skipcycle = 0;
            cycle = 0;
            for (int i = 0; i < 3; i++)
            {
                nouse[i] = 0.0;
            }
        }

        int GetNumberOfFrequncies(double initialFrequency, double finalFrequency, int density)
        {
            bool isInitLog = Math.Abs(Math.Log10(initialFrequency)) == (double)((int)Math.Abs(Math.Log10(initialFrequency)));
            bool isFinalLog = Math.Abs(Math.Log10(finalFrequency)) == (double)((int)Math.Abs(Math.Log10(finalFrequency)));

            int Factor = (isInitLog && isFinalLog) ? 1 : 0;

            //double x = 0.5 + fabs(log10(finalFrequency) - log10(initialFrequency)) * density;
            double x = Math.Abs(Math.Log10(finalFrequency) - Math.Log10(initialFrequency)) * density;

            return Factor + (int)Math.Ceiling(x); //mRounding(x,0);
        }

        public int GetFreqCount()
        {
            int iret = 0;
            int tdensity = Math.Max((int)density, 0);
            int titeration = Math.Max(iteration, 1);

            double tinitfreq = Math.Max(initfreq, DeviceConstants.MIN_EIS_FREQUENCY);
            double tfinalfreq = Math.Max(finalfreq, DeviceConstants.MIN_EIS_FREQUENCY);


            tinitfreq = Math.Min(tinitfreq, DeviceConstants.MAX_EIS_FREQUENCY);
            tfinalfreq = Math.Min(tfinalfreq, DeviceConstants.MAX_EIS_FREQUENCY);

            if (tinitfreq == tfinalfreq)
            {
                iret = 1;
            }
            else
            {
                if (tdensity == 0)
                {
                    iret = 2;
                }
                else
                {
                    iret = GetNumberOfFrequncies(tinitfreq, tfinalfreq, tdensity);
                }
            }
            iret *= iteration;
            return iret;
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
            this = (stTech_EIS)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_EIS));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech_HFR
    {
        public double freq;
        public double bias;
        public double interval;
        public double totaltime;
        public ushort celloffwait;
        public ushort skipcycle;
        public ushort cycle;
        public int inouse;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 2)]
        public double[] nouse;

        public stTech_HFR(int init)
        {
            freq = 1000.0;
            bias = 0.0;
            interval = 60;
            totaltime = 3600;
            celloffwait = 0;

            skipcycle = 0;
            cycle = 2;
            inouse = 0;

            nouse = new double[2];
            for (int i = 0; i < 2; i++)
            {
                nouse[i] = 0.0;
            }
        }

        public void initialize()
        {
            freq = 1000.0;
            bias = 0.0;
            interval = 60;
            totaltime = 3600;
            celloffwait = 0;

            skipcycle = 0;
            cycle = 2;
            inouse = 0;

            for (int i = 0; i < 2; i++)
            {
                nouse[i] = 0.0;
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
            this = (stTech_HFR)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_HFR));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech_PRR
    {
        public double rsfreq;
        public double rdfreq;
        public double rdendfreq;
        public double bias;
        public double interval;
        public double totaltime;
        public ushort celloffwait;

        public ushort skipcycle;
        public ushort cycle;
        public ushort rpcalmode;
        public ushort usmouse;

        public stTech_PRR(int init)
        {
            rsfreq = 1000.0;
            rdfreq = 10.0;
            rdendfreq = 0.0;
            bias = 0.0;
            interval = 60;
            totaltime = 3600;
            celloffwait = 0;
            skipcycle = 0;
            cycle = 2;
            rpcalmode = 0;
            usmouse = 0;
        }

        public void initialize()
        {
            rsfreq = 1000.0;
            rdfreq = 10.0;
            rdendfreq = 0.0;
            bias = 0.0;
            interval = 60;
            totaltime = 3600;
            celloffwait = 0;
            skipcycle = 0;
            cycle = 2;
            rpcalmode = 0;
            usmouse = 0;
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
            this = (stTech_PRR)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_PRR));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech_MON
    {
        public ushort nouse0;
        public double sampletime;
        public double totaltime;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 5)]
        public double[] nouse1;

        public stTech_MON(int init)
        {
            nouse0 = 0;
            sampletime = 1.0;
            totaltime = 60.0;

            nouse1 = new double[5];
            for (int i = 0; i < 5; i++)
            {
                nouse1[i] = 0.0;
            }
        }

        public void initialize()
        {
            nouse0 = 0;
            sampletime = 1.0;
            totaltime = 60.0;

            for (int i = 0; i < 5; i++)
            {
                nouse1[i] = 0.0;
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
            this = (stTech_MON)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_MON));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech_QIS
    {
        public double initfreq;
        public double finalfreq;
        public double bias;
        public ushort density;
        public int iteration;
        public ushort skipcycle;
        public ushort cycle;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public double[] nouse;
        public stTech_QIS(int init)
        {
            initfreq = 4000.0;
            finalfreq = 1.0;
            density = 4;
            iteration = 1;
            bias = 0.0;
            skipcycle = 0;
            cycle = 2;
            nouse = new double[3];
            for (int i = 0; i < 3; i++)
            {
                nouse[i] = 0.0;
            }
        }
        public void initialize()
        {
            initfreq = 4000.0;
            finalfreq = 1.0;
            density = 4;
            iteration = 1;
            bias = 0.0;
            skipcycle = 0;
            cycle = 2;
            for (int i = 0; i < 3; i++)
            {
                nouse[i] = 0.0;
            }
        }

        int GetNumberOfFrequncies(double initialFrequency, double finalFrequency, int density)
        {
            bool isInitLog = Math.Abs(Math.Log10(initialFrequency)) == (double)((int)Math.Abs(Math.Log10(initialFrequency)));
            bool isFinalLog = Math.Abs(Math.Log10(finalFrequency)) == (double)((int)Math.Abs(Math.Log10(finalFrequency)));

            int Factor = (isInitLog && isFinalLog) ? 1 : 0;

            //double x = 0.5 + fabs(log10(finalFrequency) - log10(initialFrequency)) * density;
            double x = Math.Abs(Math.Log10(finalFrequency) - Math.Log10(initialFrequency)) * density;

            return Factor + (int)Math.Ceiling(x); //mRounding(x,0);
        }

        public int GetFreqCount()
        {
            int iret = 0;
            int tdensity = Math.Max((int)density, 0);
            int titeration = Math.Max(iteration, 1);

            double tinitfreq = Math.Max(initfreq, DeviceConstants.MIN_EIS_FREQUENCY);
            double tfinalfreq = Math.Max(finalfreq, DeviceConstants.MIN_EIS_FREQUENCY);


            tinitfreq = Math.Min(tinitfreq, DeviceConstants.MAX_EIS_FREQUENCY);
            tfinalfreq = Math.Min(tfinalfreq, DeviceConstants.MAX_EIS_FREQUENCY);

            if (tinitfreq == tfinalfreq)
            {
                iret = 1;
            }
            else
            {
                if (tdensity == 0)
                {
                    iret = 2;
                }
                else
                {
                    iret = GetNumberOfFrequncies(tinitfreq, tfinalfreq, tdensity);
                }
            }
            iret *= iteration;
            return iret;
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
            this = (stTech_QIS)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_QIS));
            pinnedArr.Free();
        }
    }

    public struct stTech_DCH
    {
        public double sampletime;
        public double totaltime; //미사용
        public double CutoffV;
        public double frequency;
        public double Interval;
        public ushort useir;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 2)]
        public double[] nouse1;

        public stTech_DCH(int init)
        {
            sampletime = 1.0;
            totaltime = 0.0;
            CutoffV = 0.0;
            useir = 0;
            frequency = 1000.0;
            Interval = 200.0;
            nouse1 = new double[2];
            for (int i = 0; i < 2; i++)
            {
                nouse1[i] = 0.0;
            }
        }

        public void initialize()
        {
            sampletime = 1.0;
            totaltime = 0.0;
            CutoffV = 0.0;
            useir = 0;
            frequency = 1000.0;
            Interval = 200.0;
            for (int i = 0; i < 2; i++)
            {
                nouse1[i] = 0.0;
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
            this = (stTech_DCH)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_DCH));
            pinnedArr.Free();
        }
    }
    
    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech
    {
        public ushort CheckVal;
        public stVersion version;
        public ushort type;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 58)] //Max size of technique
        public byte[] tech;
        public double ondelay;
        public ushort ondelaystable;
        public ushort irange;
        public ushort vrange;
        public stTech_Info info;
        public ushort usNoUse;
        public int iNoUse;
        public double NoUse;
        public stTech(enTechType techtype = enTechType.TECH_EIS)
        {
            CheckVal = DeviceConstants.CHECKSCHVAL;
            version = new stVersion(0);
            version.Major = DeviceConstants.SCH_MAJOR;
            version.Minor = DeviceConstants.SCH_MINOR;
            version.Revision = DeviceConstants.SCH_REVISION;
            version.Build = DeviceConstants.SCH_BUILD;

            type = (ushort)techtype;
            ondelay = 5.0;
            ondelaystable = 1;
            irange = 2;
            vrange = 0;
            tech = new byte[58];

            Array.Clear(tech, 0, 58);

            info = new stTech_Info(0);
            usNoUse = 0;
            iNoUse = 0;
            NoUse = 0.0;
        }

        public void initialize(enTechType techtype = enTechType.TECH_EIS)
        {
            type = (ushort)techtype;
            version.initialize();
            if (techtype == enTechType.TECH_MON)
            {
                ondelay = 2.0;
                ondelaystable = 0;
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                ondelay = 2.0;
                ondelaystable = 0;
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                ondelay = 2.0;
                ondelaystable = 0;
            }
            else
            {
                ondelay = 5.0;
                ondelaystable = 1;
            }

            irange = 2;
            vrange = 0;
            Array.Clear(tech, 0, 58);
            info.initialize();
            usNoUse = 0;
            iNoUse = 0;
            NoUse = 0.0;
        }

        public void GetEIS(ref stTech_EIS techeis)
        {
            if (tech == null) return;
            techeis.ToWritePtr(tech);
        }

        public void SetEIS(stTech_EIS val)
        {
            tech = val.ToByteArray();
        }

        public void GetPRR(ref stTech_PRR techprr)
        {
            techprr.ToWritePtr(tech);
        }

        public void SetPRR(stTech_PRR val)
        {
            tech = val.ToByteArray();
        }

        public void GetHFR(ref stTech_HFR techhfr)
        {
            techhfr.ToWritePtr(tech);
        }

        public void SetHFR(stTech_HFR val)
        {
            tech = val.ToByteArray();
        }

        public void GetMON(ref stTech_MON techmon)
        {
            techmon.ToWritePtr(tech);
        }


        public void SetMON(stTech_MON val)
        {
            tech = val.ToByteArray();
        }

        public void GetQIS(ref stTech_QIS techqeis)
        {
            techqeis.ToWritePtr(tech);

        }
        public void SetQIS(stTech_QIS val)
        {
            tech = val.ToByteArray();
        }

        public void GetDCH(ref stTech_DCH techdch)
        {
            techdch.nouse1[0] = 0.0;
            techdch.nouse1[1] = 0.0;
            techdch.ToWritePtr(tech);
        }


        public void SetDCH(stTech_DCH val)
        {
            tech = val.ToByteArray();
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
            this = (stTech)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech));
            pinnedArr.Free();
        }
    }
    #endregion ZM_Tech

    #region ZM_Range

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
    public struct st_zim_Idc_rnginf_Ofs
    {
        public double offset;
        public st_zim_Idc_rnginf_Ofs(int init)
        {
            offset = DeviceConstants.DEV_DEFAULT_IDC_OFFSET;
        }

        public void Initialize()
        {
            offset = DeviceConstants.DEV_DEFAULT_IDC_OFFSET;
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
            this = (st_zim_Idc_rnginf_Ofs)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_Idc_rnginf_Ofs));
            pinnedArr.Free();
        }

        #region ** Properties

        [ReadOnlyAttribute(false)]
        [DisplayName("Offset(rad)"), DescriptionAttribute("Edit offset value for IDC control.")]
        public double PropOffset
        {
            get { return offset; }
            set { offset = value; }
        }

        #endregion //#region ** Properties
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_Idc_rnginf
    {

        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_IAC_CTRL_RNGCNT)]
        public st_zim_Idc_rnginf_Ofs[] idcofs;
        public st_zim_Idc_rnginf(int init)
        {
            idcofs = new st_zim_Idc_rnginf_Ofs[DeviceConstants.MAX_IAC_CTRL_RNGCNT];
            for (int i = 0; i < DeviceConstants.MAX_IAC_CTRL_RNGCNT; i++)
            {
                idcofs[i] = new st_zim_Idc_rnginf_Ofs(0);
            }

        }

        public void Initialize()
        {
            for (int i = 0; i < DeviceConstants.MAX_IAC_CTRL_RNGCNT; i++)
            {
                idcofs[i].offset = DeviceConstants.DEV_DEFAULT_IDC_OFFSET;
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
            this = (st_zim_Idc_rnginf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_Idc_rnginf));
            pinnedArr.Free();
        }

        #region ** Properties

        [ReadOnlyAttribute(false)]
        [DisplayName("IRange1 X1"), DescriptionAttribute("Edit IDC offset value for IRange1 X1.")]
        public double PropOffset1
        {
            get { return idcofs[0].offset; }
            set { idcofs[0].offset = value; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("IRange1 X0.2"), DescriptionAttribute("Edit IDC offset value for IRange1 X0.2.")]
        public double PropOffset2
        {
            get { return idcofs[1].offset; }
            set { idcofs[1].offset = value; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("IRange2 X1"), DescriptionAttribute("Edit IDC offset value for IRange2 X1.")]
        public double PropOffset3
        {
            get { return idcofs[2].offset; }
            set { idcofs[2].offset = value; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("IRange2 X0.2"), DescriptionAttribute("Edit IDC offset value for IRange2 X0.2.")]
        public double PropOffset4
        {
            get { return idcofs[3].offset; }
            set { idcofs[3].offset = value; }
        }
        [DisplayName("IRange3 X1"), DescriptionAttribute("Edit IDC offset value for IRange3 X1.")]
        public double PropOffset5
        {
            get { return idcofs[4].offset; }
            set { idcofs[4].offset = value; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("IRange3 X0.2"), DescriptionAttribute("Edit IDC offset value for IRange3 X0.2.")]
        public double PropOffset6
        {
            get { return idcofs[5].offset; }
            set { idcofs[5].offset = value; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("IRange4 X1"), DescriptionAttribute("Edit IDC offset value for IRange4 X1.")]
        public double PropOffset7
        {
            get { return idcofs[6].offset; }
            set { idcofs[6].offset = value; }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("IRange4 X0.2"), DescriptionAttribute("Edit IDC offset value for IRange4 X0.2.")]
        public double PropOffset8
        {
            get { return idcofs[7].offset; }
            set { idcofs[7].offset = value; }
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
            set { realmax = value; }
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
        public st_zim_adcv_rnginf(double rmax, double max, double min)
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
            set { realmax = value; }
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

        public st_zim_dummy(double tLs, double tR)
        {
            Ls = tLs;
            R = tR;
            Nouse1 = 0.0;
            Nouse2 = 0.0;
        }

        public void setvalue(double tLs, double tR)
        {
            Ls = tLs;
            R = tR;
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
        public double[] nouse;

        public st_zim_Safety_inf(eZimType tType)
        {
            if (tType == eZimType.BZA500)
            {
                MaxPower = DeviceConstants.DEFAULT_BZA500_POWER;
            }
            else if (tType == eZimType.BZA100)
            {
                MaxPower = DeviceConstants.DEFAULT_BZA100_POWER;
            }
            else if (tType == eZimType.BZA60)
            {
                MaxPower = DeviceConstants.DEFAULT_BZA60_POWER;
            }
            else
            {
                MaxPower = DeviceConstants.DEFAULT_BZA1000_POWER;
            }
            nouse = new double[4];
            for (int i = 0; i < 4; i++)
            {
                nouse[i] = 0.0;
            }
        }

        public void Initialize(eZimType tType)
        {
            if (tType == eZimType.BZA500)
            {
                MaxPower = DeviceConstants.DEFAULT_BZA500_POWER;
            }
            else if (tType == eZimType.BZA100)
            {
                MaxPower = DeviceConstants.DEFAULT_BZA100_POWER;
            }
            else if (tType == eZimType.BZA60)
            {
                MaxPower = DeviceConstants.DEFAULT_BZA60_POWER;
            }
            else
            {
                MaxPower = DeviceConstants.DEFAULT_BZA1000_POWER;
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
        public st_zim_Idc_rnginf Idc_rnginf;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 20)]
        public double[] nouse;

        public st_zim_rnginf(eZimType mtype)
        {
            int i;

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
            else if (mtype == eZimType.BZAAUX1)
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_AUX_VDC_RMAX1, DeviceConstants.ADC_AUX_VDC_MAX1, DeviceConstants.ADC_AUX_VDC_MIN1);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_AUX_VDC_RMAX1, DeviceConstants.ADC_AUX_VDC_MAX1, DeviceConstants.ADC_AUX_VDC_MIN1);
            }
            else
            {
                vdc_rng[0] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG0_RMAX0, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1] = new st_zim_adcv_rnginf(DeviceConstants.ADC_VDC_RNG1_RMAX0, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
            }


            rtd_rng = new st_zim_adct_rnginf(DeviceConstants.ADC_RTD_CONST_MAX, DeviceConstants.ADC_RTD_CONST_MIN);
            rtd_rng.factor = DeviceConstants.ADC_RTD_CONST_PT1000;

            mEisIRngCalInfo = new st_zim_Eis_Cal_info[DeviceConstants.MAX_IAC_CTRL_RNGCNT];

            for (i = 0; i < DeviceConstants.MAX_IAC_CTRL_RNGCNT; i++)
            {
                mEisIRngCalInfo[i] = new st_zim_Eis_Cal_info(0);
            }

            mDummy = new st_zim_dummy[DeviceConstants.MAX_IAC_CTRL_RNGCNT];
            mDummy[0] = new st_zim_dummy(0.000000064476, 0.009987261);
            mDummy[1] = new st_zim_dummy(0.000000064476, 0.009987261);
            mDummy[2] = new st_zim_dummy(0.000000112196, 0.099952);
            mDummy[3] = new st_zim_dummy(0.000000112196, 0.099952);
            mDummy[4] = new st_zim_dummy(0.000000084638, 0.997961);
            mDummy[5] = new st_zim_dummy(0.000000084638, 0.997961);
            mDummy[6] = new st_zim_dummy(0.00000008, 9.999115);
            mDummy[7] = new st_zim_dummy(0.00000008, 9.999115);

            nouse = new double[20];
            for (i = 0; i < 20; i++)
            {
                nouse[i] = 0.0;
            }
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
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA500_POWER;
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX1, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX1, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
            }
            else if (mtype == eZimType.BZA100)
            {
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA100_POWER;
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX2, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX2, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
            }
            else if (mtype == eZimType.BZA60)
            {
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA60_POWER;
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX3, DeviceConstants.ADC_VDC_RNG0_MAX1, DeviceConstants.ADC_VDC_RNG0_MIN1);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX3, DeviceConstants.ADC_VDC_RNG1_MAX1, DeviceConstants.ADC_VDC_RNG1_MIN1);
            }
            else if (mtype == eZimType.BZAAUX1)
            {
                mSafety.MaxPower = 0.0;
                vdc_rng[0].Initialize(DeviceConstants.ADC_AUX_VDC_RMAX1, DeviceConstants.ADC_AUX_VDC_MAX1, DeviceConstants.ADC_AUX_VDC_MIN1);
                vdc_rng[1].Initialize(DeviceConstants.ADC_AUX_VDC_RMAX1, DeviceConstants.ADC_AUX_VDC_MAX1, DeviceConstants.ADC_AUX_VDC_MIN1);
            }
            else
            {
                mSafety.MaxPower = DeviceConstants.DEFAULT_BZA1000_POWER;
                vdc_rng[0].Initialize(DeviceConstants.ADC_VDC_RNG0_RMAX0, DeviceConstants.ADC_VDC_RNG0_MAX, DeviceConstants.ADC_VDC_RNG0_MIN);
                vdc_rng[1].Initialize(DeviceConstants.ADC_VDC_RNG1_RMAX0, DeviceConstants.ADC_VDC_RNG1_MAX, DeviceConstants.ADC_VDC_RNG1_MIN);
            }

            rtd_rng.Initialize(DeviceConstants.ADC_RTD_CONST_MAX, DeviceConstants.ADC_RTD_CONST_MIN);
            rtd_rng.factor = DeviceConstants.ADC_RTD_CONST_PT1000;
            for (i = 0; i < DeviceConstants.MAX_IAC_CTRL_RNGCNT; i++)
            {
                mEisIRngCalInfo[i].Initialize();
            }
            Idc_rnginf.Initialize();

            mDummy[0].setvalue(0.000000064476, 0.009987261);
            mDummy[1].setvalue(0.000000064476, 0.009987261);
            mDummy[2].setvalue(0.000000112196, 0.099952);
            mDummy[3].setvalue(0.000000112196, 0.099952);
            mDummy[4].setvalue(0.000000084638, 0.997961);
            mDummy[5].setvalue(0.000000084638, 0.997961);
            mDummy[6].setvalue(0.00000008, 9.999115);
            mDummy[7].setvalue(0.00000008, 9.999115);


            for (i = 0; i < 20; i++)
            {
                nouse[i] = 0.0;
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

        public bool CompareInfo(byte[] ChkArr)
        {
            byte[] Arr = ToByteArray();
            if (ChkArr.Length != Arr.Length)
            {
                return false;
            }
            int Size = Marshal.SizeOf(this);
            for (int i = 0; i < Size; i++)
            {
                if (Arr[i] != ChkArr[i])
                {
                    return false;
                }
            }
            return true;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (st_zim_rnginf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_rnginf));
            pinnedArr.Free();
        }
    }
    #endregion ZM_Range

    #region ZM_System
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stSIFCfg
    {
        public byte Type;
        public stVersion BoardVersion;
        public stVersion FirmwareVersion;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 12)]
        public byte[] Serial;
        public stSIFCfg(byte init)
        {
            Type = (byte)eDeviceType.WBCS;
            BoardVersion = new stVersion(0);
            FirmwareVersion = new stVersion(0);
            Serial = new byte[12];
            Serial[0] = (byte)'I';
            Serial[1] = (byte)'F';
            Serial[2] = 0x0;
            Serial[3] = 0x0;
            Serial[4] = 0x0;
            Serial[5] = 0x0;
            Serial[6] = 0x0;
            Serial[7] = 0x0;
            Serial[8] = 0x0;
            Serial[9] = 0x0;
            Serial[10] = 0x0;
            Serial[11] = 0x0;
        }

        public eProductType GetProductType()
        {
            eProductType iret = eProductType.UNKNOWN;
            string str1 = Encoding.Default.GetString(Serial).Trim('\0');
            if (str1.Length != 12) return iret;

            string str = str1.Substring(3, 1);


            if (str == "A") iret = eProductType.BZA60;
            else if (str == "B") iret = eProductType.BZA100;
            else if (str == "C") iret = eProductType.BZA500;
            else if (str == "D") iret = eProductType.BZA1000;
            return iret;
        }

        public string GetProductTypeString()
        {
            return Extensions.GetEnumDescription((eProductType)GetProductType());
        }

        public string GetDeviceTypeString()
        {
            return Extensions.GetEnumDescription((eDeviceType)Type);
        }

        public eDeviceType GetDeviceType()
        {
            return (eDeviceType)Type;
        }

        public string GetFirmwareVer()
        {
            return string.Format("{0}.{1}.{2}.{3}", FirmwareVersion.Major, FirmwareVersion.Minor, FirmwareVersion.Revision, FirmwareVersion.Build);
        }

        public int GetFirmwareVerNum()
        {
            string str = string.Format("{0}{1}{2}{3}", FirmwareVersion.Major, FirmwareVersion.Minor, FirmwareVersion.Revision, FirmwareVersion.Build);
            return Convert.ToInt32(str);
        }

        public bool SetFirmwareVer(string str)
        {
            string stmp;
            int tmp;
            if (str.Length == 7)
            {
                stmp = str.Replace(".", "");
            }
            else
            {
                stmp = str;
            }

            if (str.Length == 4)
            {
                tmp = Convert.ToUInt16(stmp);

                FirmwareVersion.Major = (byte)(tmp / 1000);
                if (FirmwareVersion.Major > 0) tmp = tmp % (FirmwareVersion.Major * 1000);
                FirmwareVersion.Minor = (byte)(tmp / 100);
                if (FirmwareVersion.Minor > 0) tmp = tmp % (FirmwareVersion.Minor * 100);
                FirmwareVersion.Revision = (byte)(tmp / 10);
                if (FirmwareVersion.Revision > 0) tmp = tmp % (FirmwareVersion.Revision * 10);
                FirmwareVersion.Build = (byte)tmp;
            }
            else
            {
                return false;
            }
            return true;
        }
        public string GetBoardVer()
        {
            return string.Format("{0}.{1}.{2}.{3}", BoardVersion.Major, BoardVersion.Minor, BoardVersion.Revision, BoardVersion.Build);
        }
        public bool SetBoardVer(string str)
        {
            string stmp;
            int tmp;
            if (str.Length == 7)
            {
                stmp = str.Replace(".", "");
            }
            else
            {
                stmp = str;
            }

            if (str.Length == 4)
            {
                tmp = Convert.ToUInt16(stmp);

                BoardVersion.Major = (byte)(tmp / 1000);
                if (BoardVersion.Major > 0) tmp = tmp % (BoardVersion.Major * 1000);
                BoardVersion.Minor = (byte)(tmp / 100);
                if (BoardVersion.Minor > 0) tmp = tmp % (BoardVersion.Minor * 100);
                BoardVersion.Revision = (byte)(tmp / 10);
                if (BoardVersion.Revision > 0) tmp = tmp % (BoardVersion.Revision * 10);
                BoardVersion.Build = (byte)tmp;
            }
            else
            {
                return false;
            }
            return true;
        }

        public string GetSerialNumber()
        {
            return Encoding.Default.GetString(Serial);
        }


        public void SetSerialNumber(string str)
        {
            Serial = Encoding.Default.GetBytes(str.ToCharArray());
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
            this = (stSIFCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stSIFCfg));
            pinnedArr.Free();
        }
    }


    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stZimInfo
    {
        public ushort ZimBDVersion;
        public ushort ZimFWVersion;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 2)]
        public byte[] cModel;
        public uint nSerial;
        public stZimInfo(eZimType type)
        {

            ZimBDVersion = 0;
            ZimFWVersion = 0;

            cModel = new byte[2];
            cModel[0] = (byte)(0x30 + type);
            cModel[1] = (byte)'x';

            nSerial = 0;
        }

        public void Initialize(eZimType type)
        {
            ZimBDVersion = 0;
            ZimFWVersion = 0;

            cModel[0] = (byte)(0x30 + type);
            cModel[1] = (byte)'x';

            nSerial = 0;
        }
        public string UintToByteString(uint nVal)
        {
            int i;
            byte tmp;

            byte[] mChar = new byte[5];
            Array.Clear(mChar, 0, 5);
            for (i = 0; i < 5; i++)
            {
                tmp = (byte)((nVal >> (i * 4)) & (uint)0xf);
                mChar[4 - i] = (byte)(0x30 + tmp);
            }
            /*
            byte[] mChar = new byte[8];
            Array.Clear(mChar, 0, 8);

            for (i = 0; i < 8; i++)
            {
                tmp = (byte)((nVal >> (i * 4)) & (uint)0xf);
                mChar[7 - i] = (byte)(0x30 + tmp);
            }
            */

            return Encoding.Default.GetString(mChar).Trim('\0');
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
            int i = cModel[0] - 0x30;
            string str;
            if (i < 0) i = 0;
            else if (i > 5) i = 5;

            str = string.Format("{0}{1}000{2}", Extensions.GetEnumDescription((eZimSnID)i), (char)cModel[1], UintToByteString(nSerial));
            return str;
        }

        public string GetBoardVer()
        {
            return UshortToByteString(ZimBDVersion);
        }
        public string GetZimTypeString()
        {
            eZimType mtype = (eZimType)(cModel[0] - 0x30);

            return Extensions.GetEnumDescription(mtype);
        }
        public string GetBoardTypeString()
        {
            eZimBoardType mtype = (eZimBoardType)(cModel[0] - 0x30);

            return Extensions.GetEnumDescription(mtype);
        }

        public eZimType GetZimType()
        {
            return (eZimType)(cModel[0] - 0x30);
        }

        public eZimBoardType GetBoardType()
        {
            return (eZimBoardType)(cModel[0] - 0x30);
        }

        public string GetFirmwareVer()
        {
            return UshortToByteString(ZimFWVersion);
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
                ZimFWVersion = Convert.ToUInt16(sTmp);
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
                ZimBDVersion = Convert.ToUInt16(sTmp);
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

            cModel[0] = (byte)(type + 0x30);
            cModel[1] = (byte)(mChar[index] & 0xFF);
            index++;

            tmp = 0;

            for (i = 0; i < 8; i++)
            {
                tmp += (uint)((mChar[index] & 0xFF) - 0x30) << ((7 - i) * 4);
                index++;
            }
            nSerial = tmp;
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
            this = (stZimInfo)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stZimInfo));
            pinnedArr.Free();
        }
    }


    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stZimCfg
    {
        public stZimInfo info;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_AUX_CHANNEL)]
        public st_zim_rnginf[] ranges;
        public stZimCfg(eZimType type)
        {
            info = new stZimInfo(type);
            ranges = new st_zim_rnginf[MBZA_Constant.MAX_AUX_CHANNEL];

            for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNEL; i++)
            {
                ranges[i] = new st_zim_rnginf(type);
            }

        }

        public void Initilize(eZimType type)
        {
            info.Initialize(type);
            for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNEL; i++)
            {
                ranges[i].Initialize(type);
            }
        }

        public void Initialize(int auxch, eZimType type)
        {
            ranges[auxch].Initialize(type);
        }

        public string UintToByteString(uint nVal)
        {
            int i;
            byte tmp;
            byte[] mChar = new byte[5];
            Array.Clear(mChar, 0, 5);

            for (i = 0; i < 5; i++)
            {
                tmp = (byte)((nVal >> (i * 4)) & (uint)0xf);
                mChar[4 - i] = (byte)(0x30 + tmp);
            }

            /*
            byte[] mChar = new byte[8];
            Array.Clear(mChar, 0, 8);

            for (i = 0; i < 8; i++)
            {
                tmp = (byte)((nVal >> (i*4)) & (uint)0xf);
                mChar[7-i] = (byte)(0x30 + tmp);
            }
            */
            return Encoding.Default.GetString(mChar).Trim('\0');
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

            str = string.Format("{0}{1}000{2}", Extensions.GetEnumDescription((eZimSnID)i), (char)info.cModel[1], UintToByteString(info.nSerial));
            return str;
        }

        public string GetBoardVer()
        {
            return UshortToByteString(info.ZimBDVersion);
        }

        public string GetBoardTypeString()
        {
            eZimBoardType mtype;
            if (info.cModel[0] == 0x0) mtype = eZimBoardType.UNKNOWN;
            else mtype = (eZimBoardType)(info.cModel[0] - 0x30);
            return Extensions.GetEnumDescription(mtype);
        }

        public string GetZimTypeString()
        {
            eZimType mtype;
            if (info.cModel[0] == 0x0) mtype = eZimType.UNKNOWN;
            else mtype = (eZimType)(info.cModel[0] - 0x30);
            return Extensions.GetEnumDescription(mtype);
        }

        public eZimBoardType GetBoardType()
        {
            if (info.cModel[0] == 0x0) return eZimBoardType.UNKNOWN;
            return (eZimBoardType)(info.cModel[0] - 0x30);
        }

        public eZimType GetZIMType()
        {
            if (info.cModel[0] == 0x0) return eZimType.UNKNOWN;
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

            if (sTmp.Length != 5 && sTmp.Length != 12) return false;
            if (sTmp.Length == 12) index = 7;



            char[] mChar = sTmp.ToCharArray();

            info.cModel[0] = (byte)(type + 0x30);
            info.cModel[1] = 0x30;

            tmp = 0;

            for (i = 0; i < 5; i++)
            {
                tmp += (uint)((mChar[index] & 0xFF) - 0x30) << ((4 - i) * 4);
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
            this = (stZimCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stZimCfg));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stSystemConfig
    {
        public byte ID;
        public stSIFCfg mSIFCfg;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public byte[] EnaZIM;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public byte[] EnaROM;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public byte[] ChkZIM;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public stZimCfg[] mZimCfg;
        public uint BaseTick;
        public uint DaqTick;


        public stSystemConfig(byte init)
        {
            ID = DeviceConstants.ID_ZIMCONFIG;

            BaseTick = 1;
            DaqTick = 200;

            mSIFCfg = new stSIFCfg(0);
            EnaZIM = new byte[MBZA_Constant.MAX_DEV_CHANNEL];
            ChkZIM = new byte[MBZA_Constant.MAX_DEV_CHANNEL];
            EnaROM = new byte[MBZA_Constant.MAX_DEV_CHANNEL];
            mZimCfg = new stZimCfg[MBZA_Constant.MAX_DEV_CHANNEL];

            for (int i = 0; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
            {
                EnaZIM[i] = 0;
                EnaROM[i] = 0;
                ChkZIM[i] = 0;
                mZimCfg[i] = new stZimCfg(0);
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
        public bool CompareInfo(byte[] ChkArr)
        {
            byte[] Arr = ToByteArray();
            if (ChkArr.Length != Arr.Length)
            {
                return false;
            }
            int Size = Marshal.SizeOf(this);
            for (int i = 0; i < Size; i++)
            {
                if (Arr[i] != ChkArr[i])
                {
                    return false;
                }
            }
            return true;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stSystemConfig)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stSystemConfig));
            pinnedArr.Free();
        }
    }
    #endregion ZM_System

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
    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stResHeaderInfo
    {
        public stVersion version;

        public st_rtc rtc_begin;
        public st_rtc rtc_end;

        public int Ch;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 12)]
        public byte[] Serial;
        public int sifch;

        public ushort Error;

        public double Capa;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.BATIDSIZE)]
        public byte[] batid;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.USERSIZE)]
        public byte[] user;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MEMOSIZE)]
        public byte[] memo;

        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_PATH)]
        public byte[] techfile;

        public stResHeaderInfo(int init)
        {
            version = new stVersion(0);
            version.Major = DeviceConstants.RES_MAJOR;
            version.Minor = DeviceConstants.RES_MINOR;
            version.Revision = DeviceConstants.RES_REVISION;
            version.Build = DeviceConstants.RES_BUILD;

            rtc_begin = new st_rtc(0);
            rtc_end = new st_rtc(0);
            Error = 0;
            Ch = -1;
            Serial = new byte[12];
            for (int i = 0; i < 12; i++)
            {
                Serial[i] = 0x0;
            }

            sifch = -1;

            Capa = 1.0;
            batid = new byte[DeviceConstants.BATIDSIZE];
            Array.Clear(batid, 0, DeviceConstants.BATIDSIZE);

            user = new byte[DeviceConstants.USERSIZE];
            Array.Clear(user, 0, DeviceConstants.USERSIZE);

            memo = new byte[DeviceConstants.MEMOSIZE];
            Array.Clear(memo, 0, DeviceConstants.MEMOSIZE);

            techfile = new byte[DeviceConstants.MAX_PATH];
            Array.Clear(techfile, 0, DeviceConstants.MAX_PATH);
        }

        public void SetTechFile(string name)
        {
            SetTechFile(Encoding.UTF8.GetBytes(name));
        }

        public void SetTechFile(byte[] name)
        {
            int len = name.Length;

            Array.Clear(techfile, 0, DeviceConstants.MAX_PATH);

            if (len > (DeviceConstants.MAX_PATH - 1))
            {
                len = DeviceConstants.MAX_PATH - 1;
            }
            Array.Copy(name, techfile, len);
        }

        public string GetChannel()
        {
            return (Ch + 1).ToString();
        }

        public string GetSifBoardNo()
        {
            return (sifch + 1).ToString();
        }

        public string GetVersion()
        {
            return string.Format("{0}.{1}.{2}.{3}", version.Minor, version.Minor, version.Revision, version.Build);
        }

        public string GetTechFile()
        {
            return Encoding.UTF8.GetString(techfile).Trim('\0');
        }

        public void SetBattId(byte[] id)
        {
            int len = id.Length;

            Array.Clear(batid, 0, DeviceConstants.BATIDSIZE);

            if (len > (DeviceConstants.BATIDSIZE - 1))
            {
                len = DeviceConstants.BATIDSIZE - 1;
            }
            Array.Copy(id, batid, len);
        }

        public string GetBattId()
        {
            return Encoding.UTF8.GetString(batid).Trim('\0');
        }

        public string GetEndTimeString()
        {
            string result = string.Empty;
            DateTime edt = new DateTime(rtc_end.tick * TimeSpan.TicksPerMillisecond);
            if (edt < DateTime.MaxValue)
                result = edt.ToString("yyyy/MM/dd HH:mm:ss");

            return result;
        }

        public string GetStartTimeString()
        {
            DateTime sdt = new DateTime(rtc_begin.tick * TimeSpan.TicksPerMillisecond);
            return sdt.ToString("yyyy/MM/dd HH:mm:ss");
        }

        public string GetTestDuration()
        {
            return string.Format("{0} ~ {1}", GetStartTimeString(), GetEndTimeString());
        }

        public void SetUser(byte[] name)
        {
            int len = name.Length;

            Array.Clear(user, 0, DeviceConstants.USERSIZE);

            if (len > (DeviceConstants.USERSIZE - 1))
            {
                len = DeviceConstants.USERSIZE - 1;
            }
            Array.Copy(name, user, len);
        }

        public string GetUser()
        {
            return Encoding.UTF8.GetString(user).Trim('\0');
        }

        public void SetMemo(byte[] desc)
        {
            int len = desc.Length;

            Array.Clear(memo, 0, DeviceConstants.MEMOSIZE);

            if (len > (DeviceConstants.MEMOSIZE - 1))
            {
                len = DeviceConstants.MEMOSIZE - 1;
            }
            Array.Copy(desc, memo, len);
        }

        public string GetMemo()
        {
            return Encoding.UTF8.GetString(memo).Trim('\0');
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
            this = (stResHeaderInfo)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stResHeaderInfo));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stResHeader
    {
        public stResHeaderInfo mInfo;
        public stSystemConfig sysInfo;
        public stTech tech;

        public stResHeader(int init)
        {
            mInfo = new stResHeaderInfo(0);
            sysInfo = new stSystemConfig(0);
            tech = new stTech(0);
        }

        public void SetTechFilename(string name)
        {
            mInfo.SetTechFile(name);
        }

        public void SetTechFilename(byte[] name)
        {
            mInfo.SetTechFile(name);
        }



        public string GetTechFilename()
        {
            return mInfo.GetTechFile();
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
            this = (stResHeader)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stResHeader));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_TestDataItem
    {
        public double Vdc;
        public double Zre;
        public double Zim;

        public st_zim_TestDataItem(byte init)
        {
            Vdc = 0.0;
            Zre = 0.0;
            Zim = 0.0;
        }

        public void initialize()
        {
            Vdc = 0.0;
            Zre = 0.0;
            Zim = 0.0;
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
            this = (st_zim_TestDataItem)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_TestDataItem));
            pinnedArr.Free();
        }
    }

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

            if ((eDeviceType)_ResHead.sysInfo.mSIFCfg.Type == eDeviceType.MCBZA)
            {
                _CheckAuxBoard[0] = (_ResHead.sysInfo.ChkZIM[1] == 0) ? false : true;
                _CheckAuxBoard[1] = (_ResHead.sysInfo.ChkZIM[2] == 0) ? false : true;
                _CheckAuxBoard[2] = (_ResHead.sysInfo.ChkZIM[3] == 0) ? false : true;
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