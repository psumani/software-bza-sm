#include <nxp/iolpc3250.h>
#include "nandflash.h"

unsigned int Nand_ReadPage(unsigned int page, unsigned char* pdata)
{
    int i = 0;
    unsigned int Counter = 0;
	unsigned char* pspare = pdata + NAND_MAIN_SIZE;

    /*Read*/
    MLC_CMD = NAND_READ1;
    /*Set Address*/
    AddrInOperation(page);
    /*Read Second cycle*/
    MLC_CMD = NAND_READ2;

	for(i = 0; i < NAND_MAIN_SIZE/MLC_MAIN_SIZE; i++)
	{
		MLC_ECC_AUTO_DEC_REG = 0;

		while(!MLC_ISR_bit.CONT_READY);

		if(MLC_ISR_bit.DECODER_FAULT)
		{
			return(FLASH_ERROR);
		}

		for (Counter = 0; Counter < MLC_MAIN_SIZE; ++Counter)
		{
			*pdata++ = *(volatile unsigned char*)SERIAL_BUF_BASE_ADDR;
		}

		for (Counter = 0; Counter < MLC_SPARE_SIZE; ++Counter)
		{
			*pspare++ = *(volatile unsigned char*)SERIAL_BUF_BASE_ADDR;
		}
	}

	return FLASH_OK;
}

unsigned int Nand_WritePage(unsigned int page, unsigned char* pdata)
{
	unsigned char status;
	unsigned char* pspare = pdata + NAND_MAIN_SIZE;
	
	MLC_CMD = NAND_WRITE1;
	AddrInOperation(page);
	
	for(int i = 0; i < NAND_MAIN_SIZE / MLC_MAIN_SIZE; i++)
	{
		MLC_ECC_ENC_REG = 1;
		
		for(unsigned int Counter = 0; Counter < MLC_MAIN_SIZE; ++Counter)
		{
			*(volatile unsigned char*)FLASH_SER_BASE_ADDR = *pdata++;
		}
		
		for(unsigned int Counter = 0; Counter < MLC_SPARE_SIZE; ++Counter)
		{
			*(volatile unsigned char*)FLASH_SER_BASE_ADDR = *pspare++;
		}
		
		MLC_WPR = 1;
		
		while(MLC_ISR_bit.CONT_READY == 0);
	}	
	
	MLC_CMD = NAND_WRITE2;
	
	while(MLC_ISR_bit.NAND_READY == 0);
	
	MLC_CMD = NAND_READ_STAT;
	while(MLC_ISR_bit.NAND_READY == 0);
	
	status = *(volatile unsigned char*)FLASH_SER_BASE_ADDR;
	
	if((status & 0x1) != 0)
	{
		return FLASH_ERROR;
	}
	
	return FLASH_OK;
}

unsigned int Nand_EraseBlock(unsigned int block)
{
	unsigned char status;
	unsigned int page = block * NAND_PG_PER_BLK;
	
	MLC_CMD = NAND_BLOCK_ERASE1;
	for(int i = 0; i < 2; i++)
	{
		MLC_ADDR = page & 0xFF;
		page >>= 8;
	}
	MLC_CMD = NAND_BLOCK_ERASE2;
	
	while(MLC_ISR_bit.NAND_READY == 0);
	
	MLC_CMD = NAND_READ_STAT;
	while(MLC_ISR_bit.NAND_READY == 0);
	
	status = *(volatile unsigned char*)FLASH_SER_BASE_ADDR;
	
	if((status & 0x1) != 0)
	{
		return FLASH_ERROR;
	}
	return FLASH_OK;
}

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