namespace ZiveLab.ZM.ZIM.Interface
{
    
    public class SIFConstants
    {
        public const byte PACKET_ID = 0x8A;
        public const int DATA_LEN = 500;
        public const int PACKET_SIZE = 512;
        public const byte CMD_READ_DATA = 0xA0;
    
        public const int ID_CONFIG = 0xA2;
        public const int ID_LENGTH = 12;

        public const int NAND_MAIN_SIZE = 2048;
        public const int MLC_MAIN_SIZE = 512;
        public const int NAND_PG_PER_BLK = 64;
        public const int MLC_SPARE_SIZE = 6;
        public const int CODE_SEC_COUNT = 8;
      
    }
}
