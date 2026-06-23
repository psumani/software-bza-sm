#ifndef FLASH_ROM_FUNC_H
#define FLASH_ROM_FUNC_H

#ifdef __cplusplus
extern "C"
{
#endif
	
//Data Structures
typedef struct
{
	UNS_8  			device_id;    		/* Device ID */
	UNS_8      		electronic_id; 		/* Electronic ID. */
	UNS_8 			manufacturer_id;  	/* Manufacturer ID. */
	UNS_8         	memory_type;    	/* Memory type. */
	UNS_8     		memroy_density;     /* Density ID. */
} mx25v_id;


#define     MX25V_SPI_NO 			1
//MX25V8006E Related Parameter Definition
#define 	MX25V_FLASH_SIZE   		0x100000		//MX25V8006E
#define 	MX25V_BLOCK_SIZE   		0x10000	
#define 	MX25V_SECTOR_SIZE   	0x1000
#define 	MX25V_PAGE_SIZE   		0x0100
#define 	MX25V_BLOCK_NUM   		(MX25V_FLASH_SIZE / MX25V_BLOCK_SIZE)
#define 	MX25V_SECTOR_NUM   		(MX25V_FLASH_SIZE / MX25V_SECTOR_SIZE)
#define 	MX25V_PAGE_NUM   		(MX25V_FLASH_SIZE / MX25V_PAGE_SIZE)

//Bit Mask Definition for Status Register
#define 	MX25V_STATUS_WIP   		(0x01 << 0)
#define 	MX25V_STATUS_WEL   		(0x01 << 1)
#define 	MX25V_STATUS_BP0   		(0x01 << 2)
#define 	MX25V_STATUS_BP1   		(0x01 << 3)
#define 	MX25V_STATUS_BP2   		(0x01 << 4)
#define 	MX25V_STATUS_SRWD   	(0x01 << 7)

//Protect Level for Status register
#define 	MX25V_STATUS_PROTECT_LEVEL_0   (0x00 << 2)
#define 	MX25V_STATUS_PROTECT_LEVEL_1   (0x01 << 2)
#define 	MX25V_STATUS_PROTECT_LEVEL_2   (0x02 << 2)
#define 	MX25V_STATUS_PROTECT_LEVEL_3   (0x03 << 2)
#define 	MX25V_STATUS_PROTECT_LEVEL_4   (0x04 << 2)
#define 	MX25V_STATUS_PROTECT_LEVEL_5   (0x05 << 2)
#define 	MX25V_STATUS_PROTECT_LEVEL_6   (0x06 << 2)
#define 	MX25V_STATUS_PROTECT_LEVEL_7   (0x07 << 2)
#define 	MX25V_STATUS_PROTECT_LEVEL_MASK   (0x07 << 2)

//MX25V Command HEX Code Definition
/** RDID (Read Identification) */
#define MX25V_CMD_RDID         0x9F
/** RES (Read Electronic ID) */
#define MX25V_CMD_RES          0xAB
/** REMS (Read Electronic & Device ID) */
#define MX25V_CMD_REMS         0x90

/** WRSR (Write Status Register) */
#define MX25V_CMD_WRSR         0x01
/** RDSR (Read Status Register) */
#define MX25V_CMD_RDSR         0x05

/** READ (1 x I/O) */
#define MX25V_CMD_READ         0x03
/** FAST READ (Fast read data) */
#define MX25V_CMD_FASTREAD     0x0B
/** DREAD (1In/2 Out fast read) */
#define MX25V_CMD_DREAD        0x3B
/** RDSFDP (Read SFDP) */
#define MX25V_CMD_RDSFDP       0x5A

/** WREN (Write Enable) */
#define MX25V_CMD_WREN         0x06
/** WRDI (Write Disable) */
#define MX25V_CMD_WRDI         0x04
/** PP (page program) */
#define MX25V_CMD_PP           0x02

/** SE (Sector Erase) */
#define MX25V_CMD_SE           0x20
/** BE (Block Erase) */
#define MX25V_CMD_BE           0xD8
/** CE (Chip Erase) hex code: 60 or C7 */
#define MX25V_CMD_CE           0x60

/** DP (Deep Power Down) */
#define MX25V_CMD_DP           0xB9
/** RDP (Release form Deep Power Down) */
#define MX25V_CMD_RDP          0xAB
/* @} */

/** Timeout value for waiting write operation done. */
#define MX25V_WAIT_TIMEOUT 50000000

INT_32 MX25V_read_status(UNS_8 *value);
INT_32 MX25V_pwrdownmode(UNS_8 enabled);
INT_32 MX25V_read_res(mx25v_id* pid);
INT_32 MX25V_read_rems(mx25v_id* pid);
INT_32 MX25V_read_rdid(mx25v_id* pid);
INT_32 MX25V_write_status(UNS_8 value);

INT_32 MX25V_read_buffer(UNS_32 address, void *data, UNS_32 length);
INT_32 MX25V_write_buffer(UNS_32 address, const void *data, UNS_32 length);

INT_32 mx25v_erase_sector(UNS_32 address);
INT_32 MX25V_erase_block(UNS_32 address);
INT_32 MX25V_erase_chip(void);	

INT_32 MX25V_spi_open(void);	
void MX25V_spi_close(void);


#ifdef __cplusplus
}
#endif

#endif