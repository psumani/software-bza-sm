namespace ZiveLab.ZM.ZIM
{
    public static class Cmdset_Sif
    {
        public const byte CMD_GET_SIFCFG = 0x00;
    }

    public static class Cmdset_SifCh
    {

    }

    public static class CommandSet 
    {
        public const byte CMD_GET_FINDSIFCFG = 0x00;
        public const byte CMD_GET_CONCFG = 0x04;
        
        public const byte CMD_GET_RDNAND = 0x05;

        public const byte CMD_ERASE_NAND = 0x30;
        public const byte CMD_PROG_NAND = 0x31;
        public const byte CMD_REFRESH_WEBSITE = 0x35;

        public const byte GET_CONN_INFO = 0x60;
        public const byte GET_SYSTEM_INFO = 0x61;
        public const byte SET_CONN_INFO = 0x62;
        public const byte SAVE_SYSTEM_INFO = 0x63;
        public const byte SAVE_CONN_INFO = 0x64;
        public const byte GET_CONN_STAT = 0x65;
        public const byte SET_CHANNEL = 0x66;
        public const byte SET_SIFMODE = 0x67;
        public const byte CHK_EEPROM = 0x68;
        public const byte INIT_EEPROM = 0x69;
        public const byte GET_ZIMCFG = 0x6A;
        public const byte CHK_FPGA = 0x6B;
        public const byte CMD_GET_SIFCFG = 0x6C;

        public const byte REFRESH_VAC = 0x77;
        public const byte START_DEVICE = 0x78;
        public const byte STOP_DEVICE = 0x79;
        public const byte CHK_NOISE = 0x7A;
        public const byte ENABLE_COMM_TIMEOUT = 0x7B;
        public const byte CALIB_MODE = 0x7C;

        public const byte RESET_SET_FPGA_ICE = 0x90;
        public const byte RESET_CLR_FPGA_ICE = 0x91;
        public const byte CONN_FPGA_PROM = 0x92;
        public const byte CLOSE_FPGA_PROM = 0x93;
        public const byte EREASE_FPGA_PROM = 0x94;
        public const byte PROG_FPGA_PROM = 0x95;
        public const byte READ_FPGA_PROM = 0x96;
        public const byte READ_ZIM_ROM = 0x97;
        public const byte PROG_ZIM_ROM = 0x98;
        public const byte REFRESH_ZIM_ROM = 0x99;

        public const byte READ_DATA = 0xA0;

        public const byte GET_RNGINFO = 0xA6;
        public const byte SET_RNGINFO = 0xA7;

        public const byte SAVE_RNGINFO = 0xAA;
        public const byte TEST_COMM = 0xAB;
        public const byte INIT_RNGINFO = 0xAC;
        public const byte GET_COND_CALIB = 0xAD;
        public const byte SET_COND_CALIB = 0xAE;

        public const byte GET_DDSCLK = 0xB1;
        public const byte SET_DDSCLK = 0xB2;
        public const byte GET_DDSSIG = 0xB3;
        public const byte SET_DDSSIG = 0xB4;
        public const byte GET_RTD_CFG = 0xB5;
        public const byte SET_RTD_CFG = 0xB6;
        public const byte GET_RTD_DTA = 0xB7;

        public const byte GET_DEV_DO = 0xB8;
        public const byte SET_DEV_DO = 0xB9;
        public const byte GET_AC_ADC_CFG = 0xBA;
        public const byte SET_AC_ADC_CFG = 0xBB;
        public const byte GET_AC_ADC_DATA = 0xBC;
        public const byte GET_VDC_ADC_DATA = 0xBD;
        public const byte SET_VDC_RNG = 0xBE;

        public const byte GET_COND_EIS = 0xC0;
        public const byte SET_COND_EIS = 0xC1;
        public const byte GET_STAT_EIS = 0xC2;
        public const byte GET_RAWVAL_EIS = 0xC3;
        public const byte GET_DATA_EIS = 0xC4;
        public const byte GET_COND_TECH = 0xC5;
        public const byte SET_COND_TECH = 0xC6;
        public const byte GET_HEADINFO = 0xC7;
        public const byte SET_HEADINFO = 0xC8;
    }
}
