/*************************************************************************
 *
 *    Used with ICCARM and AARM.
 *
 *    (c) Copyright IAR Systems 2008
 *
 *    File name   : bootloader.c
 *    Description : bootloader module - initialize SDRAM, copy image from
 *    NAND memory to SDRAM memory and then jump to application entry point
 *
 *    History :
 *    1. Date        : December 15, 2007
 *       Author      : Stanimir Bonev
 *       Description : Create
 *
 *    $Revision: 38164 $
 *
 **************************************************************************/
#include "arm_comm.h"
#include <NXP/iolpc3250.h>

#pragma segment=".bootloader"
#pragma segment=".iram_buffer"
#include <stdint.h>
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

typedef enum _t_DataOutOp
{
  MAIN_SPARE,
  SPARE
} t_DataOutOp;

typedef enum _t_codetype
{
  FLASH_BOOT_CODE,
  FLASH_USER_CODE
} t_codetype;

typedef enum _dev_bat_block_hadling_t
{
  PRESERVE_BAD_BLOCKS = 0,
  CLEAR_BAD_BLOCKS
} dev_bat_block_hadling_t;

#define SDRAM_BASE_ADDR 0x80000000

#pragma pack(1)
typedef union _Buffer_t
{
  uint8_t Buffer[(NAND_MAIN_SIZE/MLC_MAIN_SIZE)*MLC_PAGE_USR_SIZE];
  struct
  { 
    uint8_t Main[(NAND_MAIN_SIZE/MLC_MAIN_SIZE)*MLC_MAIN_SIZE];
    uint8_t Spare[(NAND_MAIN_SIZE/MLC_MAIN_SIZE)*MLC_SPARE_SIZE];
  };
  
  struct
  {
    unsigned char d0;
    unsigned char dd0[3];
    unsigned char d1;
    unsigned char dd1[3];
    unsigned char d2;
    unsigned char dd2[3];
    unsigned char d3;
    unsigned char dd3[3];
    unsigned char size0;
    unsigned char dsize0[3];
    unsigned char _size0;
    unsigned char _dsize0[3];
    unsigned char size1;
    unsigned char dsize1[3];
    unsigned char _size1;
    unsigned char _dsize1[3];
    unsigned char size2;
    unsigned char dsize2[3];
    unsigned char _size2;
    unsigned char _dsize2[3];
    unsigned char size3;
    unsigned char dsize3[3];
    unsigned char _size3;
    unsigned char _dsize3[3];
    unsigned char block_valid;
    unsigned char dblock_valid[3];
  } Boot_Data;
} Buffer_t, *pBuffer_t;
#pragma pack()

static void AddrInOperation(uint32_t Page);
static uint32_t NandReadPage(uint32_t Page, uint8_t * pdata);
static uint32_t NandCheckBlock(uint32_t Block,uint8_t * pdata);
static unsigned int NandFindValidBlock(unsigned int Block);

#pragma location=".iram_buffer"
#pragma data_alignment=4
static Buffer_t _Buffer;

/*************************************************************************
 * Function Name: low_level_init
 * Parameters: none
 *
 * Return: none
 *
 * Description: Low level init code
 *
 *************************************************************************/
#pragma location=".bootloader"
void Dly_us(Int32U dly)
{
  while(dly--)
  {
    for(volatile int i = 100; i; i --);
  }
}

/*************************************************************************
 * Function Name: low_level_init
 * Parameters: none
 *
 * Return: none
 *
 * Description: Low level init code
 *
 *************************************************************************/
#pragma location=".bootloader"
__arm void bootloader (void)
{
unsigned int * pSrc;
unsigned int * pDest;
unsigned int block,page;
#define LED1       (1UL << 1)
#define LED2       (1UL << 14)

  // Enable MLC NAND controller
  FLASHCLK_CTRL = 2;
  // CE controlled by NAND controller
  MLC_CEH = 1;
  // unlocks the access to MLC NAND Timing register
  MLC_LOCK_PR  = 0xA25E;

  MLC_ICR = 4;

  MLC_LOCK_PR  = 0xA25E;
  MLC_TIME_REG =( 3UL << 0 ) |  // Write pulse width (tWP)
                ( 2UL << 4 ) |  // Write high hold time (tWH)
                ( 3UL << 8 ) |  // Read pulse width (tRP)
                ( 2UL << 12) |  // Read high hold time (tREH)
                ( 4UL << 16) |  // Read high to high impedance (tRHZ)
                ( 2UL << 19) |  // Read/Write high to busy (tWB/tRB)
                ( 5UL << 24);   // nCE low to dout valid (tCEA)

  // init clock
  SYSCLK_CTRL = 0x50<<2;
  // Set PER_CLK and HCLK dividers
  HCLKDIV_CTRL = 0x05;
  //HCLKDIV_CTRL = 0x0000003D;
  // init H PLL
  HCLKPLL_CTRL = 0x0001601E;
  // Wait until PLL lock
  while(!HCLKPLL_CTRL_bit.PLL_LOCK);
  // Connect Pll_clk_out
  PWR_CTRL_bit.RUN_MODE = 1;

  ////////////////////////////////////////////// Init EMC0
	EMCControl = 0x00000000;

	EMCStaticConfig0 = 0x00000080;
	EMCStaticWaitWen0 = 0x00000001;
	EMCStaticWaitWr0 = 0x00000007;
	EMCStaticWaitRd0 = 0x00000007;
	EMCStaticWaitOen0 = 0x00000001;
	EMCStaticWaitTurn0 = 0x00000000;
	EMCStaticWaitPage0 = 0x00000000;  
	EMCStaticExtendedWait = 0x00000000;
	EMCControl = 0x00000001;
  
////////////////////////////////////////////// Read Memory Size
	block = 18;
	page = 0;
	int size = 32;
	int* pBuffer;
	
	if(FLASH_ERROR == NandReadPage(block*NAND_PG_PER_BLK + page,_Buffer.Buffer))
	{
		P3_OUTP_SET = LED1;
      	while(1);
	}
	
	pBuffer = (int*)_Buffer.Main;
	
	if(*pBuffer == 0xA2)
	{
		size = *(pBuffer + 1);
	}
////////////////////////////////////////////// Init SDRAM	
  // Exiting form the self-refresh mode
  PWR_CTRL &= ~(0x3UL << 8);
  PWR_CTRL_bit.EMCSREFREQ_UPDATE = 1;
  PWR_CTRL_bit.EMCSREFREQ_UPDATE = 0;

  EMCControl_bit.E = 1;  // SDRAM Controller Enable
  EMCControl_bit.L = 0;  // SDRAM normal mode

  EMCConfig_bit.N  = 0;  // little-endian mode.

  // disable write buffers
  EMCAHBControl0_bit.E = 0;
  EMCAHBControl2_bit.E = 0;
  EMCAHBControl3_bit.E = 0;
  EMCAHBControl4_bit.E = 0;

  //SDRAMCLK_CTRL      = 0x0001C000;
  SDRAMCLK_CTRL      = 0x0001C000;
  EMCDynamictRP     = 5;             // 19ns
  EMCDynamictRAS    = 8;             // 48ns
  EMCDynamictSREX   = 12;             // 80ns
  EMCDynamictWR     = 5;             // 15ns
  EMCDynamictRC     = 12;             // 80ns
  EMCDynamictRFC    = 10;             // 64ns
  EMCDynamictXSR    = 12;             // 80ns
  EMCDynamictRRD    = 5;             // 16ns
  EMCDynamictMRD    = 5;             // 2ckl
  EMCDynamictCDLR   = 4;             // 1ckl
	if(size == 64)
		EMCDynamicConfig0 = 0x00000880;    // Standard SDRAM 512Mb (32Mx16), 4 banks,
	else
	  	EMCDynamicConfig0 = 0x00000680;    // Standard SDRAM 256Mb (16Mx16), 4 banks,
                                      // row length = 13, column length = 9
  EMCDynamicRasCas0 = 0x00000302;    // CAS = 4 - two clock cycles
                                      // RAS = 3 

  // SDRAM controller and device settings
  // Init SDRAM controller and memory
  // SDRAM_D[31:19] are connected to the SDRAM controller.
  //P1_MUX_CLR = 0x00FFFFFF;
  
  //EMCDynamicReadConfig = 0x11;

  // JEDEC General SDRAM Initialization Sequence
  EMCDynamicControl = 0x193;        // NOP
  Dly_us(400);
  EMCDynamicRefresh = 1;
  EMCDynamicControl_bit.I = 2;     // PRECHARGE ALL
  Dly_us(300);
  EMCDynamicControl_bit.I = 0;     // AUTO REFRESH
  Dly_us(300);
  EMCDynamicRefresh = 101;         // (64ms/8192)*104MHz/16
  EMCDynamicControl_bit.I = 1;     // SDRAM MODE
  // Burst Length, CAS, Burst Type - Sequential
  
 	volatile unsigned long Dummy;
  
	if(size == 64)
  		Dummy = *(unsigned long *)(SDRAM_BASE_ADDR | ((0x31)<<13));
	else
		Dummy = *(unsigned long *)(SDRAM_BASE_ADDR | ((0x31)<<12));		
  
  //volatile unsigned long Dummy = *(unsigned long *)(SDRAM_BASE_ADDR | 0x62000);
  EMCDynamicControl_bit.I = 0;     // OPERATION
  EMCDynamicControl_bit.CE= 0;
  EMCDynamicControl_bit.CS= 0;

  BOOT_MAP_bit.MAP = 1;             // iRAM 0x00000000

  // LEDs off
  P3_OUTP_CLR = LED1 | LED2;

  block = NandFindValidBlock(1);
  page = 0;  /*Start from page 1 of the block*/ 

  while((NAND_BLK_NUM) > (block))
  { 
    
    if(FLASH_ERROR == NandReadPage(block*NAND_PG_PER_BLK + page,_Buffer.Buffer))
    {
      P3_OUTP_SET = LED1;
      while(1); /*Read Error*/
    }
    /*Source address */
    pSrc = (unsigned int *)_Buffer.Main;
    /*Dest address = Last Word of the Spare Array*/
    /*Source address first 4 bytes from page's spare area */
    pDest = (unsigned int *)(*(unsigned int *)(_Buffer.Spare));

    if(0xFFFFFFFF == (unsigned int)pDest) break;/*No more data*/

    /*Invalid Block Mark correction*/
    if(((0 ==page) || (1 ==page)))
    {
      _Buffer.Main[NAND_MAIN_SIZE-48] = _Buffer.Spare[4];
    }

    /*Copy Data*/
    for(unsigned int cntr = 0;NAND_MAIN_SIZE > cntr; cntr+=sizeof(unsigned int))
    {
      *pDest++ = *pSrc++;
    }

    if(NAND_PG_PER_BLK <= ++page)
    {/*It was last page of the block*/
      page = 0;
      block = NandFindValidBlock(block+1);
    }
  }
}

/*************************************************************************
 * Function name: AddrInOperation
 * Parameters:  unsigned int Page
 *
 * Return: None
 *
 * Description: Perform Address Operation
 *
 *************************************************************************/
#pragma location=".bootloader"
static void AddrInOperation(unsigned int Page)
{
  /*Row*/
  int i = 0;
  /**/
  MLC_ADDR = 0;
  /**/
  MLC_ADDR = 0;
  
  for(i += /*(_NAND_Type & 2)?(5-2):*/(4-2) ; i ; --i)
  {
    /*Load Row*/
    MLC_ADDR = Page & 0xFF;
    /*Shift Row*/
    Page>>=8;
  }
}

/*************************************************************************
 * Function Name: NandReadPage
 * Parameters: Page - NAND Flash Page Number.
 *
 * Return: FLASH_OK - No Read Error or 1bit Error
 *         FLASH_ERROR - Non Correctable Read Error
 * Description: Reads one page (512 main+6 spare) from NAND Flash into Buffer
 *
 *************************************************************************/
#pragma location=".bootloader"
static uint32_t NandReadPage(uint32_t Page, uint8_t * pdata)
{
uint8_t * pspare = pdata + NAND_MAIN_SIZE;
  /*Read*/
  MLC_CMD = NAND_READ1;
  /*Set Address*/
  AddrInOperation(Page);
  /*Read Second cycle*/
  MLC_CMD = NAND_READ2;

  for(int i = 0; i < NAND_MAIN_SIZE/MLC_MAIN_SIZE; i++)
  {
    MLC_ECC_AUTO_DEC_REG = 0;
    
    while(!MLC_ISR_bit.CONT_READY);
    
    if(MLC_ISR_bit.DECODER_FAULT)
    {
      return(FLASH_ERROR);
    }
  
    for (uint32_t Counter = 0; Counter < MLC_MAIN_SIZE; ++Counter)
    {
      *pdata++ = *(volatile uint8_t *)SERIAL_BUF_BASE_ADDR;
    }
    
    for (uint32_t Counter = 0; Counter < MLC_SPARE_SIZE; ++Counter)
    {
      *pspare++ = *(volatile uint8_t *)SERIAL_BUF_BASE_ADDR;
    }
 }

  return FLASH_OK;
}

/*************************************************************************
 * Function Name: Nanotechnology
 * Parameters: Block - NAND Block Number.
 *
 * Return: FLASH_OK -Valid Block
 *         FLASH_ERROR - Invalid Block
 * Description: Checks The Invalid Bytes in the Block
 *
 *************************************************************************/
#pragma location=".bootloader"
static uint32_t NandCheckBlock(uint32_t Block,uint8_t * pdata)
{
  for(uint32_t Page = 0; 2 > Page; Page++)
  {
    NandReadPage(Block*NAND_PG_PER_BLK+Page,pdata);
    if(0xFF != *((uint8_t *)(pdata+NAND_MAIN_SIZE - 48)))
    {
      return FLASH_ERROR;
    }
  }
  return FLASH_OK;
}

/*************************************************************************
 * Function Name: NandGetValidBlock
 * Parameters: Block - NAND Block Number. Start from this block
 *
 * Return: Block < NAND_BLK_NUM NAND -  Valid Block Number.
 *         NAND_BLK_NUM - No Valid Block
 * Description: Finds a vlaid Block.
 *
 *************************************************************************/
#pragma location=".bootloader"
static unsigned int NandFindValidBlock(unsigned int Block)
{
  while(NAND_BLK_NUM > Block)
  {/**/
    if(FLASH_OK == NandCheckBlock(Block,_Buffer.Buffer)) break;
    Block++;
  }
  return Block;
}
