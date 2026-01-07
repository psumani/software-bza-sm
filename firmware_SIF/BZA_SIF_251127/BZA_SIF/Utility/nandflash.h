#ifndef NANDFLASH_H
#define NANDFLASH_H

/** local definitions **/
#define NAND_MAIN_SIZE              (2048)    /**/
#define NAND_PG_PER_BLK             (64)      /**/
#define NAND_BLK_NUM                (1024)
#define NAND_BLK_SIZE               (NAND_MAIN_SIZE*NAND_PG_PER_BLK)  /* (only main arrays)*/
#define NAND_SPARE_SIZE             (64)

#define MLC_MAIN_SIZE               (512)     /*The NFC reads/writes 512 bytes of the main array*/
#define MLC_SPARE_SIZE              (6)       /*The NFC reads/writes 16 bytes of the spare array*/
#define MLC_SPARE_ECC_SIZE          (10)      /*The NFC reads/writes 16 bytes of the spare array*/
#define MLC_PAGE_USR_SIZE           (MLC_MAIN_SIZE+MLC_SPARE_SIZE)
#define MLC_PAGE_SIZE               (MCL_PAGE_USR_SIZE + MLC_SPARE_ECC_SIZE)

#define FLASH_SER_BASE_ADDR         0x200B0000
#define SERIAL_BUF_BASE_ADDR        0x200A8000

// NAND Flash device commands
#define NAND_RST                    0xFF
#define NAND_READ1                  0x00
#define NAND_READ2                  0x30
#define NAND_READ_ID                0x90
#define NAND_READ_STAT              0x70
#define NAND_WRITE1					0x80
#define NAND_WRITE2					0x10

#define NAND_PGM_PAGE1              0x80
#define NAND_PGM_PAGE2              0x10

#define NAND_BLOCK_ERASE1           0x60
#define NAND_BLOCK_ERASE2           0xD0

// NAND Flash status register
#define NAND_WRITE_PROT             0x80
#define NAND_ACTIVE                 0x40
#define NAND_ERROR                  0x01

//flash functions return value
#define FLASH_OK                    ( 0 )
#define FLASH_ERROR                 ( 1 )

void Nand_Reset();
void AddrInOperation(unsigned int page);
unsigned short Nand_GetID();
unsigned int Nand_ReadPage(unsigned int page, unsigned char* pdata);
unsigned int Nand_WritePage(unsigned int page, unsigned char* pdata);
unsigned int Nand_EraseBlock(unsigned int block);

#endif