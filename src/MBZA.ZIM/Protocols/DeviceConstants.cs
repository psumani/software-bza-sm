using System;

namespace ZiveLab.ZM.ZIM
{
    public static class MBZA_Constant
    {
        public const double MIN_INTERVALTIME = 1.0;
        public const double MIN_TOTALTIME = 1.0;
        public const double MIN_SAMPLETIME = 1.0;
        public const int MAX_DUMMY = 8;
        public const int MAX_IRANGE = 8;
        public const int MAX_DEV_CHANNEL = 4;
        public const int MAX_APP_CHANNEL = 32;
        public const int MAX_APP_DEVICE = 8;
        public const int ChannelMapSize = 512;
        public const int MAX_COM_DATA_CNT = 20;
        public const int MAX_DATA_CNT = 100000;
        public const string AppCfgFilename = "C:\\ZIVE DATA\\ZM\\INFOR\\ZM.CFG";
        public const string GrpCfgFilename = "C:\\ZIVE DATA\\ZM\\INFOR\\ZM_GRPSET.CFG";
        public const string GrpExCfgFilename = "C:\\ZIVE DATA\\ZM\\INFOR\\ZM_GRPSETEX.CFG";

        public static string[] Const_LootPart = { "Connection", "Ethernet", "SIF Board", "ZIM(Channel) Board", };
        public static string[] Const_RangePart = { "Iac","Idc", "Vac", "Vdc", "Temperature","Safety" };
        public static string[] Const_RangeIacItems = { "Calibration vars", "Compensation dummy", };
        public static string[] Const_RangeIacGain = { "X1", "X0.2", };
        public static string[] Const_RangeIdcGain = { "X1", "X0.2", };
        public static double[] Const_DefaultRDummy = { 0.001,0.009987261, 0.099952, 0.997961, 9.999115, 99.612, 996.9,10000.0 };
        public static double[] Const_DefaultLDummy = { 0.0, 0.000000064476, 0.000000112196, 0.000000084638, 0.00000008, 0.00000000000022, 0.000052, 0.0,};

        public const double DEFAULT_BZA60_POWER = 20.0;
        public const double DEFAULT_BZA100_POWER = 30.0;
        public const double DEFAULT_BZA500_POWER = 40.0;
        public const double DEFAULT_BZA1000_POWER = 60.0;

        public const ushort TECHFILESIZE = 222;
    }
    
    public static class DeviceConstants
    {
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

        public const byte RES_MAJOR = 1;
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
}
