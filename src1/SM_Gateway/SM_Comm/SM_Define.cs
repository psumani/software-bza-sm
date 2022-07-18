using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace SM_Define
{
    class SM_Main_Define
    {
        public const int DEF_MAX_DEV_CH = 8;	

        public const int DEF_DEFAULT_CFG_BASETICK =             50;					// us
        public const int DEF_DEFAULT_CFG_DAQTICK =              20;					// 50 * 20 		= 1000us = 1ms
        public const int DEF_DEFAULT_CFG_DISPTICK =             20000;				// 50 * 20000 	= 1000000us = 1s
        public const int DEF_DEFAULT_CFG_POWERNOISE =           0;                //0-60HZ, 1-50Hz

        public const int DEF_MAXRNG_V =                         1;
        public const int DEF_ALLMAXRNG_A =                      10;
        public const int DEF_MAXRNG_A_SM =                      8;
        public const int DEF_MAXRNG_A =                         10;
        
        public const float DEF_MAXVAL_A =                       2.0f;
        public const float DEF_MAXVAL_V =                       10.0f;
        public const float DEF_MAXVAL_EXT =                     10.0f;
        public const float DEF_MAXVAL_TEMP =                    250.0f;
        public const float DEF_MAXVAL_AUX =                     10.0f;

        public const float DEF_DEFAULT_BOOSTERMAXV =            10.0f;
        public const float DEF_DEFAULT_BOOSTERMAXA =            40.0f;
        public const float DEF_DEFAULT_BOOSTERMINV =            -10.0f;

        public const float DEF_DEFAULT_CFG_FAILCONTROLRATE =    0.2f;
        public const float DEF_DEFAULT_CFG_RNG_UPCOND =         0.95f;
        public const float DEF_DEFAULT_CFG_RNG_DNCOND =         0.085f;
        public const float DEF_DEFAULT_CFG_EISRNG_DNCOND =      0.05f;
        public const float DEF_DEFAULT_CFG_EISINITRNG_DNCOND =  0.05f;
        public const int DEF_DEFAULT_CFG_RNG_DELAY =            100;

        public const int DEF_DEFAULT_CFG_AUXADCTIME =           1000;				// 1ms
        public const int DEF_AUX_BASE_SMPLTIME =                10;					// us
        public const int DEF_DEFAULT_CFG_AUXADCSUMCNT =         100;
        public const int DEF_AUX_TYPE_NORMAL =                  0;
        public const int DEF_MAXUSE_INT_INV =                   3;
        public const int DEF_MAXUSE_INT_INA =                   2;
        public const int DEF_MAXRNG_INT_IN =                    4;
        public const int DEF_MAXRNG_INT_OUT =                   4;
        public const int DEF_MAXFLT =                           4;
        public const int DEF_MAXCH_AUXIN =                      4;
        public const int DEF_MAXCH_AUXOUT =                     1;

        public const int DEF_CALTYPE_AUX =                      0;
        public const int DEF_CALTYPE_V =                        1;
        public const int DEF_CALTYPE_A =                        2;
        public const int DEF_MAXCH_CALOUT =                     3;
        public const int DEF_MAXFB_CURRENT =                    2;

        public const int DEF_DEFAULT_CFG_EIS_INITINTRNG =       1;
        public const float DEF_DEFAULT_CFG_EIS_RNGAUTOFREQ =    1000.0f;
        public const float DEF_DEFAULT_CFG_EIS_FLTFREQL =       0.01f;
        public const float DEF_DEFAULT_CFG_EIS_FLTFREQM =       50.0f;
        public const float DEF_DEFAULT_CFG_EIS_FLTFREQH =       10000.0f;

        public const float DEF_DEFAULT_CFG_EIS_FBFREQ0 =       250000.0f;
        public const float DEF_DEFAULT_CFG_EIS_FBFREQ1 =       50000.0f;
        public const float DEF_DEFAULT_CFG_EIS_FBFREQ2 =       1000.0f;
        public const float DEF_DEFAULT_CFG_EIS_FBFREQ3 =       10.0f;
        public const float DEF_DEFAULT_CFG_EIS_FBFREQ4 =       0.0f;
        public const float DEF_DEFAULT_CFG_EIS_FBFREQ5 =       0.0f;
        public const float DEF_DEFAULT_CFG_EIS_FBFREQ6 =       0.0f;
        public const float DEF_DEFAULT_CFG_EIS_FBFREQ7 =       0.0f;

        public const float DEF_MAX_SUBHAMONIC_FREQ =            7812.5f; // 500000/64
        public const float DEF_MAX_FRA_TIME =                   1.0f;
        public const int DEF_MAX_ADC_CYCLE =                    64;
        public const int DEF_MIN_ADC_CYCLE =                    1;
        public const int DEF_MAX_ADC_TOTALPOINT =               1056;
        public const int DEF_MIN_ADC_TOTAL_POINT =              256;
        public const float DEF_DEFAULT_CFG_EIS_AVGLMT =         100.0f;
        public const float DEF_DEFAULT_CFG_EIS_UNUSERATE =      0.01f;
        public const int DEF_DEFAULT_CFG_EISDELAY =             20;
        public const float DEF_DEFAULT_CFG_EISOFSLIMITI =       0.1f;
        public const float DEF_DEFAULT_CFG_EISOFSLIMITV =       0.1f;

        public const int MAX_CABLETYPE =                        8;

        public const int DEF_REALMAXRNG_A = SM_Main_Define.DEF_ALLMAXRNG_A + SM_Main_Define.DEF_MAXRNG_INT_IN - 1;
        public const int MAX_FEEDBACK = 8;
        public const int MAX_MUX_CHANNEL = 8;
        public const int MAX_MUX_DEVICE = 4;

        public const int MAX_LOOP = 20;

        public const float DEF_DAC_RESOLUTION =                 65536.0f;

        public const int MAX_CALIBPOINT =                       4;

        public static double[] CurrentRangeRate = new double[12] { 0.1, 0.11, 0.111, 0.1111, 0.11111, 0.111111, 0.1111111, 0.11111111, 0.111111111, 0.1111111111, 0.11111111111, 0.111111111111 };
    }

    static class SM_Directory_define
    {
        public const string FOLDER_ZIVEDATA = "c:\\ZIVE DATA\\";
        public const string FOLDER_SM = "c:\\ZIVE DATA\\SM6\\";
        public const string FOLDER_SMGATEWAY = "c:\\ZIVE DATA\\SM_Gateway\\";

        public const string FOLDER_SCHEDULE = "Schedule\\";
        public const string FOLDER_EXCEL = "excel\\";
        public const string FOLDER_DATA = "Data\\";
        public const string FOLDER_TEMP = "temp\\";
        public const string FOLDER_CFG = "Config\\";
        public const string FOLDER_LOG = "log\\";
        public const string FOLDER_RES = "Resource\\";
        public const string FOLDER_MANUAL = "Manual\\";

        public const string SMGATEWAY_FOLDER_TEMP = FOLDER_SMGATEWAY + FOLDER_TEMP;
        public const string SMGATEWAY_FOLDER_SCH = FOLDER_SMGATEWAY + FOLDER_SCHEDULE;
        public const string SMGATEWAY_FOLDER_EXCEL = FOLDER_SMGATEWAY + FOLDER_EXCEL;
        public const string SMGATEWAY_FOLDER_DATA = FOLDER_SMGATEWAY + FOLDER_DATA;
        public const string SMGATEWAY_FOLDER_CFG = FOLDER_SMGATEWAY + FOLDER_CFG;
        public const string SMGATEWAY_FOLDER_RES = FOLDER_SMGATEWAY + FOLDER_RES;
        public const string SMGATEWAY_FOLDER_LOG = FOLDER_SMGATEWAY + FOLDER_LOG;

        public const string SM_FOLDER_TEMP = FOLDER_SM + FOLDER_TEMP;
        public const string SM_FOLDER_SCH = FOLDER_SM + FOLDER_SCHEDULE;
        public const string SM_FOLDER_EXCEL = FOLDER_SM + FOLDER_EXCEL;
        public const string SM_FOLDER_DATA = FOLDER_SM + FOLDER_DATA;
        public const string SM_FOLDER_CFG = FOLDER_SM + FOLDER_CFG;
        public const string SM_FOLDER_RES = FOLDER_SM + FOLDER_RES;
        public const string SM_FOLDER_LOG = FOLDER_SM + FOLDER_LOG;

        public const string FILE_SYSTEM_EXTENSION = "SGS";
        public const string FILE_SYSTEM_DESCRIPTION = "SM_Gateway system file.";

        public const string FILE_SETTING_EXTENSION = "cfg";
        public const string FILE_SETTING_DESCRIPTION = "SM_Gateway configuration file.";
        public const string FILE_SETTING_NAME = "SM_Gateway.cfg";
        public const string FILE_SETTING_FULLNAME = SMGATEWAY_FOLDER_CFG + "SM_Gateway.cfg";
        public const string FILE_SETTING_FULLNAME1 = SMGATEWAY_FOLDER_CFG + "SM_Gateway1.cfg";

        public const string FILE_FWUSB_EXTENSION = "iic";
        public const string FILE_FWUSB_FILEFILTER = "USB firmware files|*.iic|All files|*.*||";
        public const string FILE_FWFPGA_EXTENSION = "rbf";
        public const string FILE_FWFPGA_FILEFILTER = "FPGA firmware files|*.rbf|All files|*.*||";
        public const string FILE_FWDSP_EXTENSION = "bin";
        public const string FILE_FWDSP_FILEFILTER = "DSP firmware files|*.bin|All files|*.*||";
    }
}
