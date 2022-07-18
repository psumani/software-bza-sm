using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SM_Comm
{
    namespace SM_Comm_USB
    {
        
        static class SP_USBDefine
        {
            public const int MAX_DEV_CH = 8;
            
            public const int EEP_BYTE_SIZE = 16384;
            public const byte EEP_ADDR_BLEN = 0x02;
            public const byte MAX_DATA_LEN = 0x38;
            public const byte EEP_DATA_BLEN = MAX_DATA_LEN - EEP_ADDR_BLEN;

            public const int FLASH_WORD_SIZE = 1048576;							// 1M Word
            public const int FLASH_ADDR_BLEN = 4;								// 4Byte (20bit)
            public const int FLASH_DATA_BLEN = MAX_DATA_LEN - FLASH_ADDR_BLEN;	// 56Byte

            public const int DEF_USB_MEMSIZE = 4096;
            public const int DEF_USB_DATAMEMSIZE = 4080;

            public const int DEF_USB_MEMSIZE_5 = 2048;
            public const int DEF_USB_DATAMEMSIZE_5 = 1900;

            public const int MAX_DSCRSTR_LEN = 62;
        }

        

        static class SM_Directory_define
        {
            public const string FOLDER_ZIVEDATA = "c:\\ZIVE DATA\\";
            public const string FOLDER_SM = "c:\\ZIVE DATA\\SM\\";
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
            public const string SM_FOLDER_RES = FOLDER_SMGATEWAY + FOLDER_RES;
            public const string SM_FOLDER_LOG = FOLDER_SM + FOLDER_LOG;

            public const string FILE_SYSTEM_EXTENSION = "SGS";
            public const string FILE_SYSTEM_DESCRIPTION = "SM_Gateway system file.";

            public const string FILE_SETTING_EXTENSION = "cfg";
            public const string FILE_SETTING_DESCRIPTION = "SM_Gateway configuration file.";
            public const string FILE_SETTING_NAME = "SM_Gateway.cfg";
            public const string FILE_SETTING_FULLNAME = SMGATEWAY_FOLDER_CFG + "SM_Gateway.cfg";

            public const string FILE_FWUSB_EXTENSION = "iic";
            public const string FILE_FWUSB_FILEFILTER = "USB firmware files|*.iic|All files|*.*||";
            public const string FILE_FWFPGA_EXTENSION = "rbf";
            public const string FILE_FWFPGA_FILEFILTER = "FPGA firmware files|*.rbf|All files|*.*||";
            public const string FILE_FWDSP_EXTENSION = "bin";
            public const string FILE_FWDSP_FILEFILTER = "DSP firmware files|*.bin|All files|*.*||";

        }
    }
}
