using System;

namespace ZiveLab.Device.ZIM
{
    public static class DeviceConstants
    {

        public const Int64 MIN_MAC_ADDR = 0x1BC5081000;
        public const Int64 MAX_MAC_ADDR = 0x1BC5081FFF;
        public const double PI = 3.14159265358979323846;
        public const byte ID_RANGEINFO_1 = 2;
        public const byte ID_RANGEINFO = 3;
        public const int MAX_IAC_RNGCNT = 4;
        public const int MAX_IAC_CTRL_RNGCNT = 8;
        public const int MAX_VDC_RNGCNT = 2;

        public const double ADC_IAC_RNG0_MAX = 2.56;
        public const double ADC_IAC_RNG0_MIN = -2.56;
        public const double ADC_IAC_RNG0_FACTOR = ((ADC_IAC_RNG0_MAX - ADC_IAC_RNG0_MIN) / 16777216.0); //24bit

        public const double ADC_IAC_RNG1_MAX = 0.256;
        public const double ADC_IAC_RNG1_MIN = -0.256;
        public const double ADC_IAC_RNG1_FACTOR = ((ADC_IAC_RNG1_MAX - ADC_IAC_RNG1_MIN) / 16777216.0); //24bit

        public const double ADC_IAC_RNG2_MAX = 0.0256;
        public const double ADC_IAC_RNG2_MIN = -0.0256;
        public const double ADC_IAC_RNG2_FACTOR = ((ADC_IAC_RNG2_MAX - ADC_IAC_RNG2_MIN) / 16777216.0); //24bit

        public const double ADC_IAC_RNG3_MAX = 0.00256;
        public const double ADC_IAC_RNG3_MIN = -0.00256;
        public const double ADC_IAC_RNG3_FACTOR = ((ADC_IAC_RNG3_MAX - ADC_IAC_RNG3_MIN) / 16777216.0); //24bit

        public const double ADC_IAC_RNG4_MAX = 0.000256;
        public const double ADC_IAC_RNG4_MIN = -0.000256;
        public const double ADC_IAC_RNG4_FACTOR = ((ADC_IAC_RNG4_MAX - ADC_IAC_RNG4_MIN) / 16777216.0); //24bit

        public const double ADC_IAC_RNG5_MAX = 0.0000256;
        public const double ADC_IAC_RNG5_MIN = -0.0000256;
        public const double ADC_IAC_RNG5_FACTOR = ((ADC_IAC_RNG5_MAX - ADC_IAC_RNG5_MIN) / 16777216.0); //24bit

        public const double ADC_VAC_RNG_MAX = 0.256;
        public const double ADC_VAC_RNG_MIN = -0.256;
        public const double ADC_VAC_RNG_FACTOR = ((ADC_VAC_RNG_MAX - ADC_VAC_RNG_MIN) / 16777216.0); //24bit

        public const double ADC_VDC_RNG0_MAX = 2048.0;
        public const double ADC_VDC_RNG0_MIN = -2048.0;
        public const double ADC_VDC_RNG0_FACTOR = ((ADC_VDC_RNG0_MAX - ADC_VDC_RNG0_MIN) / 16777216.0);

        public const double ADC_VDC_RNG1_MAX = 204.8;
        public const double ADC_VDC_RNG1_MIN = -204.8;
        public const double ADC_VDC_RNG1_FACTOR = ((ADC_VDC_RNG1_MAX - ADC_VDC_RNG1_MIN) / 16777216.0);

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

        public const double MAX_EIS_FREQUENCY = 200000.0;
        public const double MIN_EIS_FREQUENCY = 0.001;
        public const int MAX_EIS_DENSITY = 20;
        public const int MAX_EIS_POINT = 1024;
        public const int MAX_EIS_CYC_POINT = 512;
        public const int MIN_EIS_CYC_POINT = 32;
        public const int MAX_EIS_RAWADC_POINT = MAX_EIS_POINT;
        public const int MAX_EIS_RAWVAL_POINT = MAX_EIS_POINT;
        public const int DEF_EIS_COMP_CRNG = 4;

        public const int MAX_EIS_RT_RAW_POINT = 64;

        public const double MIN_EIS_ADC_MCLK = 100000.0;

        public const int MAX_EIS_FFT_POINT = MAX_EIS_POINT * 2;
        public const int MAX_EIS_FREQ_CNT = 200;
        public const int DEFAULT_EIS_CYC_POINT = 32;
        public const int DEFAULT_EIS_CYCLES = 1;

        public const int EIS_TESTSTATUS_NONE = 0x0;
        public const int EIS_TESTSTATUS_RUN = 0x1; // running experiment
        public const int EIS_TESTSTATUS_FIN = 0x2;
        public const int EIS_TESTSTATUS_STOP = 0x3;
        public const int EIS_TESTSTATUS_NCRUN = 0x4; // running noise level measurement
        public const int EIS_TESTSTATUS_OVERT = 0x5;
        public const int EIS_TESTSTATUS_FAIL = 0x6;
        public const int EIS_TESTSTATUS_NOTRDY = 0x7;
        public const int EIS_TESTSTATUS_NOZIM = 0x8;
        public const int EIS_TESTSTATUS_REFRESHVAC = 0x9; // running sinewave
        public const int EIS_TESTSTATUS_NOTCALIB = 0x10;
        public const int EIS_TESTSTATUS_ERRCOMMZIM = 0x11;
        public const int EIS_TESTSTATUS_CONTFAIL = 0x12;

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
        public const int EIS_STATUS_LAST_AUTOSTOP = 12;
        public const int EIS_STATUS_LAST_MANUALSTOP = 13;
        public const int EIS_STATUS_LAST_ERRFAIL = 14;
        public const int EIS_STATUS_LAST_ERROVERT = 15;
        public const int EIS_STATUS_LAST_ERRNOTREADY = 16;
        public const int EIS_STATUS_LAST_ERRCOMMZIM = 17;
        public const int EIS_STATUS_LAST_ERRRESETZIM = 18;


        public const double DEV_DEFAULT_POWER = 40.0;
        public const double DEV_MAX_POWER = 80.0;

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
