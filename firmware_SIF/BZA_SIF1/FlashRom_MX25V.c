#include "BZA_SIF.h"

inline void MX25V_delay(int cnt)
{
	int i;
	for(i=0; i<cnt; i++)
	{
	}
}

inline void MX25V_chip_select(void)
{
	P3_OUTP_CLR_bit.GPO_07 = 1;
}

inline void MX25V_chip_deselect(void)
{
	P3_OUTP_SET_bit.GPO_07 = 1;
}


INT_32 MX25V_enter_deep_powerdown(void)
{
	INT_32 len;
	UNS_8 tx_buf[1] = {MX25V_CMD_DP};

	MX25V_chip_select();

	len = spi_write(MX25V_SPI_NO, tx_buf, 1);
	if (len != 1) 
	{
		return _ERROR;
	}

	MX25V_chip_deselect();

	return _NO_ERROR;
}

INT_32 mx25v_exit_deep_powerdown(void)
{
	INT_32 len;
	UNS_8 tx_buf[1] = {MX25V_CMD_RDP};

	MX25V_chip_select();

	len = spi_write(MX25V_SPI_NO, tx_buf, 1);
	if (len != 1) 
	{
		return _ERROR;
	}

	MX25V_chip_deselect();

	return _NO_ERROR;
}


INT_32 MX25V_send_cmd_write_latch(UNS_8 cmd)
{
	INT_32 len;
	UNS_8 tx_buf[1] = {cmd};

	MX25V_chip_select();
	
	
	len = spi_write(MX25V_SPI_NO, tx_buf, 1);
	if (len != 1) 
	{
		return _ERROR;
	}

	MX25V_chip_deselect();

	return _NO_ERROR;
}


INT_32 MX25V_read_status(UNS_8 *value)
{
	INT_32 len;
	UNS_8 tx_buf[1] = {MX25V_CMD_RDSR,};

	MX25V_chip_select();

	len = spi_write(MX25V_SPI_NO, tx_buf, 1);                                                                     
	if (len != 1) 
	{
		return _ERROR;
	}

	len = spi_read(MX25V_SPI_NO, value, 1);
	if (len != 1) 
	{
		return _ERROR;
	}

	MX25V_chip_deselect();
	return _NO_ERROR;
}

bool MX25V_is_flash_busy(void)
{
	UNS_8 MX25V_status;

	MX25V_read_status((UNS_8*)&MX25V_status);
	
	if (MX25V_status & MX25V_STATUS_WIP) 
	{
		return true;
	} 
	return false;
}

bool MX25V_wait_flash_ready(UNS_32 timeout)
{
	UNS_32 nTime = timeout;
	while (1) 
	{
		if (MX25V_is_flash_busy()) 
		{
			if (nTime) {
				nTime--;
			}
			if (nTime == 0) 
			{
				return false;
			}
		} 
		else 
		{
			break;
		}
	}
	return true;
}		

INT_32 MX25V_read_res(mx25v_id* pid)
{
	INT_32 len;
	UNS_8 tx_buf[5] = {MX25V_CMD_RES, 0, 0, 0};
	UNS_8 rx_buf[1] = { 0,};

	MX25V_enter_deep_powerdown();
				
	MX25V_delay(2);

	MX25V_chip_select();
	
	len = spi_write(MX25V_SPI_NO, tx_buf, 4); /* Add 1byte read */
	if (len != 4) 
	{
		return _ERROR;
	}
	len = spi_read(MX25V_SPI_NO, rx_buf, 1);
	if (len != 1) 
	{
		return _ERROR;
	}
	MX25V_chip_deselect();
	
	pid->electronic_id = rx_buf[0];
	
	return _NO_ERROR;
}
	
INT_32 MX25V_read_rems(mx25v_id* pid)
{
	INT_32 len;
	UNS_8 tx_buf[4] = {MX25V_CMD_REMS, 0, 0, 0};
	UNS_8 rx_buf[2] = { 0, 0,};

	MX25V_chip_select();
	len = spi_write(MX25V_SPI_NO, tx_buf, 4); 
	if (len != 4) 
	{
		return _ERROR;
	}
	len = spi_read(MX25V_SPI_NO, rx_buf, 2);
	if (len != 2) 
	{
		return _ERROR;
	}
	
	MX25V_chip_deselect();
	
	pid->device_id = rx_buf[1];
	
	return _NO_ERROR;
}

INT_32 MX25V_read_rdid(mx25v_id* pid)
{
	INT_32 len;
	UNS_8 tx_buf[1] = {MX25V_CMD_RDID,};
	UNS_8 rx_buf[3] = {0, 0, 0,};

	MX25V_chip_select();
	len = spi_write(MX25V_SPI_NO, tx_buf, 1); 
	if (len != 1) 
	{
		MX25V_chip_deselect();
		return _ERROR;
	}
	
	len = spi_read(MX25V_SPI_NO, rx_buf, 3);
	if (len != 3) 
	{
		MX25V_chip_deselect();
		return _ERROR;
	}
	
	MX25V_chip_deselect();
	
	pid->manufacturer_id = rx_buf[0];
	pid->memory_type = rx_buf[1];
	pid->memroy_density = rx_buf[2];
	
	return _NO_ERROR;
}
 
INT_32 MX25V_write_status(UNS_8 value)
{
	INT_32 len;
	uint8_t tx_buf[2] = {MX25V_CMD_WRSR, value};

	if (MX25V_is_flash_busy()) 
	{
		return LPC_IN_USE;
	}

	MX25V_send_cmd_write_latch(MX25V_CMD_WREN);

	MX25V_chip_select();

	len = spi_write(MX25V_SPI_NO, tx_buf, 2);
	if (len != 2) 
	{
		MX25V_chip_deselect();
		return _ERROR;
	}

	MX25V_chip_deselect();

	if (!MX25V_wait_flash_ready(MX25V_WAIT_TIMEOUT)) 
	{
		return _ERROR;
	}

	return _NO_ERROR;
}

INT_32 MX25V_read_buffer(UNS_32 address, void *data, UNS_32 length)
{
	INT_32 len;
	UNS_8 tx_buf[4] = {
		MX25V_CMD_READ,
		(UNS_8)(address >> 16),
		(UNS_8)(address >> 8),
		(UNS_8)(address)
	};

	if ((address + length) > MX25V_FLASH_SIZE) 
	{
		return LPC_BAD_PARAMS;
	}

	MX25V_chip_select();

	len = spi_write(MX25V_SPI_NO, tx_buf, 4);
	if (len != 4) 
	{
		MX25V_chip_deselect();
		return _ERROR;
	}

	len = spi_read(MX25V_SPI_NO, data, length);
	if (len != length) 
	{
		MX25V_chip_deselect();
		return _ERROR;
	}

	MX25V_chip_deselect();

	return _NO_ERROR;
}
 
INT_32 MX25V_write_buffer(UNS_32 address, const void *data, UNS_32 length)
{
	INT_32 len = 0;
	UNS_32 write_address;
	UNS_32 write_length = length;
	UNS_32 nlen = 0;
	UNS_8 *data_wr = (UNS_8 *)data;
	UNS_8 tx_buf[4] = {MX25V_CMD_PP};

	if ((address + length) > MX25V_FLASH_SIZE) 
	{
		return LPC_BAD_PARAMS;
	}

	if (MX25V_is_flash_busy()) 
	{
		return LPC_IN_USE;
	}

	write_address = address;
		
	len = MX25V_PAGE_SIZE - (address % MX25V_PAGE_SIZE);
	
	if (len) 
	{
		if(len > write_length) nlen = write_length;
		else nlen = len;
			
		MX25V_send_cmd_write_latch(MX25V_CMD_WREN);
		MX25V_chip_select();

		/* Write page program command */
		tx_buf[1] = (uint8_t)(write_address >> 16);
		tx_buf[2] = (uint8_t)(write_address >> 8);
		tx_buf[3] = (uint8_t)(write_address);
		
		len = spi_write(MX25V_SPI_NO, tx_buf, 4);
		if (len != 4) 
		{
			return _ERROR;
		}

		/* Write page data into flash */
		len = spi_write(MX25V_SPI_NO, data_wr, nlen);
		if (len != nlen) 
		{
			return _ERROR;
		}

		MX25V_chip_deselect();

		if (!MX25V_wait_flash_ready(MX25V_WAIT_TIMEOUT)) 
		{
			return _ERROR;
		}

		write_address += nlen;
		data_wr += nlen;
		write_length -= nlen;
	}

	while (write_length) 
	{
		nlen = (MX25V_PAGE_SIZE < write_length ? MX25V_PAGE_SIZE : write_length);  

		MX25V_send_cmd_write_latch(MX25V_CMD_WREN);
		MX25V_chip_select();

		/* Write page program command */
		tx_buf[1] = (uint8_t)(write_address >> 16);
		tx_buf[2] = (uint8_t)(write_address >> 8);
		tx_buf[3] = (uint8_t)(write_address);
		len = spi_write(MX25V_SPI_NO, tx_buf, 4);
		if (len != 4) 
		{
			return _ERROR;
		}

		/* Write page data into flash */
		len = spi_write(MX25V_SPI_NO, data_wr, nlen);
		if (len != nlen) 
		{
			return _ERROR;
		}

		MX25V_chip_deselect();

		if (!MX25V_wait_flash_ready(MX25V_WAIT_TIMEOUT)) {
			return _NO_ERROR;
		}

		write_address += nlen;
		data_wr += nlen;
		write_length -= nlen;
	}

	return _NO_ERROR;
}
 
INT_32 mx25v_erase_sector(UNS_32 address)
{
	INT_32 len;
	UNS_8 tx_buf[4];
	
	tx_buf[0] = MX25V_CMD_SE;
	tx_buf[1] = (UNS_8)((address >> 16) & 0xFF);
	tx_buf[2] = (UNS_8)((address >> 8) & 0xFF);
	tx_buf[3] = (UNS_8)(address  & 0xFF);

	if ((address) >= MX25V_FLASH_SIZE) 
	{
		return LPC_BAD_PARAMS;
	}

	if (MX25V_is_flash_busy()) 
	{
		return LPC_IN_USE;
	}

	MX25V_send_cmd_write_latch(MX25V_CMD_WREN);
	MX25V_chip_select();

	len = spi_write(MX25V_SPI_NO, tx_buf, 4);
	if (len != 4) 
	{
		return _ERROR;
	}

	MX25V_chip_deselect();

	if (!MX25V_wait_flash_ready(MX25V_WAIT_TIMEOUT)) {
		return _ERROR;
	}

	return _NO_ERROR;
}

INT_32 MX25V_erase_block(UNS_32 address)
{
	INT_32 len;
	UNS_8 tx_buf[4] = {
		MX25V_CMD_BE,
		(UNS_8)(address >> 16),
		(UNS_8)(address >> 8),
		(UNS_8)(address)
	};

	if ((address) >= MX25V_FLASH_SIZE) 
	{
		return LPC_BAD_PARAMS;
	}

	if (MX25V_is_flash_busy()) 
	{
		return LPC_IN_USE;
	}

	MX25V_send_cmd_write_latch(MX25V_CMD_WREN);
	
	MX25V_chip_select();

	len = spi_write(MX25V_SPI_NO, tx_buf, 4);
	if (len != 4) 
	{
		return _ERROR;
	}

	MX25V_chip_deselect();

	if (!MX25V_wait_flash_ready(MX25V_WAIT_TIMEOUT)) 
	{
		return _ERROR;
	}

	return _NO_ERROR;
}

INT_32 MX25V_erase_chip(void)
{
	INT_32 len;
	UNS_8 tx_buf[1] = {MX25V_CMD_CE};

	if (MX25V_is_flash_busy()) 
	{
		return LPC_IN_USE;
	}

	MX25V_send_cmd_write_latch(MX25V_CMD_WREN);
	
	MX25V_chip_select();

	len = spi_write(MX25V_SPI_NO, tx_buf, 1);
	if (len != 1) 
	{
		return _ERROR;
	}

	MX25V_chip_deselect();

	if (!MX25V_wait_flash_ready(MX25V_WAIT_TIMEOUT)) 
	{
		return _ERROR;
	}

	return _NO_ERROR;
}

INT_32 MX25V_checkrom(void)
{
	mx25v_id mPROMid;
	
	memset(&mPROMid,0x0,sizeof(mPROMid));

//	MX25V_read_res(&mPROMid);
//	MX25V_delay(10);
//	MX25V_read_rems(&mPROMid);
//	MX25V_delay(10);
	mx25v_exit_deep_powerdown();
	MX25V_read_rdid(&mPROMid);

	if(mPROMid.manufacturer_id != 0xC2) return _ERROR;
	if(mPROMid.memory_type != 0x20) return _ERROR;
	if(mPROMid.memroy_density != 0x14) return _ERROR;
	
	return _NO_ERROR;
}

INT_32 MX25V_testreadwrite(void) //	READ and WRITE func tested
{	
	int i;
	int len = 100;
	UNS_8* pData = (UNS_8*)_pNandBuffer;

	for(i=0; i < len; i++)
	{
		*(pData + i ) = i+1;
	}
	
	if(MX25V_erase_chip()  == _ERROR)
	{
		return _ERROR;
	}

	if(MX25V_write_buffer(0,(void*)pData,len) == _ERROR)
	{
		return _ERROR;
	}
	
	memset(pData,0x0,len);	
	
	if(MX25V_read_buffer(0,(void*)pData,len) == _ERROR)
	{
		return _ERROR;
	}

	return _NO_ERROR;
}
	
INT_32 MX25V_spi_open(void)
{
	SPI_CONFIG_T mCfg;

	Set_IceResetB(true);
	
	memset(&mCfg,0x0,sizeof(mCfg));
	mCfg.unidirectional = 1;
	mCfg.databits = 8;
	
	mCfg.highclk_spi_frames = FALSE;
	mCfg.usesecond_clk_spi = FALSE;
	
	mCfg.spi_clk = 6000000;
	mCfg.transmitter = 1;
	
	if (spi_open(MX25V_SPI_NO,(UNS_32)&mCfg) == _ERROR) 
	{
		return _ERROR;
	}
	
	if (MX25V_checkrom() == _ERROR) 
	{
		return _ERROR;
	}
	
//	if (MX25V_testreadwrite() == _ERROR) 
//	{
//		return _ERROR;
//	}

	return _NO_ERROR;
}

void MX25V_spi_close(void)
{
	spi_close(MX25V_SPI_NO);
	
	Set_IceResetB(false);
}
