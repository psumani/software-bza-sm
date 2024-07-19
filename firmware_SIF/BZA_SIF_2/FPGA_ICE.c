#include "BZA_SIF.h"

inline void Spi_BaseDelay()
{
	int i;
	for(i=0; i<100; i++)
	{
	}
}

 inline void ICE_chip_deselect(void)
{
	P3_OUTP_SET_bit.GPO_04 = 1; //chip deselect
}

inline void ICE_chip_select(void)
{
	P3_OUTP_CLR_bit.GPO_04 = 1;
}

inline void SetErrorProc(int ch)
{
	
	if(m_pGlobalVar->mChVar[ch].TmpResetICE == 0)
	{
		m_pGlobalVar->mChVar[ch].TmpResetICE = 1;
	}
}

bool CheckStart()	
{

	int ndelay = 0;
	int nErrCount = 0;
	bool bret = true;

	while(1)
	{
		if(P2_INP_STATE_bit.P2_9 == 0) break;
		ndelay ++;
		if(ndelay >= 100)
		{
			ICE_chip_select();
			Spi_BaseDelay();
			ndelay = 0;
			nErrCount ++;
			ICE_chip_deselect();
			Spi_BaseDelay();
			if(nErrCount > ICE_ERRRES_CNT)
			{
				bret = false;
				break;
			}
		}
	}
	nErrCount = 0;
	ndelay = 0;
	if(bret == true)
	{
		ICE_chip_select();
	}
	else
	{
		return false;
	}
	while(1)
	{
		if(P2_INP_STATE_bit.P2_9 == 1) break;
		ndelay ++;
		if(ndelay >= 100)
		{
			ICE_chip_deselect();
			Spi_BaseDelay();
			nErrCount ++;
			ndelay = 0;
			ICE_chip_select();
			Spi_BaseDelay();
			if(nErrCount > ICE_ERRRES_CNT)
			{
				bret = false;
				break;
			}
		}
	}

	return bret;
}

bool CheckResult(void)	
{
	
	int ndelay = 0;
	int nErrCount = 0;
	bool bret = true;
	
	if(P2_INP_STATE_bit.P2_9 == 0)
	{
		return false;
	}
	ICE_chip_deselect();

	while(1)
	{
		if(P2_INP_STATE_bit.P2_9 == 0) break;
		ndelay ++;
		if(ndelay >= 100)
		{
			ICE_chip_select();
			Spi_BaseDelay();
			nErrCount ++;
			ndelay = 0;
			ICE_chip_deselect();
			Spi_BaseDelay();
			if(nErrCount > ICE_ERRRES_CNT)
			{
				bret = false;
				break;
			}
		}
	}

	return bret;
}

INT_32 ICE_write_cmd(INT_32 ch, UNS_8 cmd)
{
	INT_32 len;
	UNS_8 tx_buf;
	
	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}
	SetDevChannel(ch);
	tx_buf = cmd;
	
	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	len = spi_write(ICE_SPI_NO, (void*)&tx_buf, 1);
	
	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	

	if (len != 1) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	return _NO_ERROR;
}

INT_32 ICE_read_byte(INT_32 ch, UNS_8 cmd,UNS_8 *pdata)
{
	INT_32 len;
	UNS_8 tx_buf = cmd  | ICE_CMD_READ;;
	
	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}
	
	SetDevChannel(ch);

	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	
	len = spi_write(ICE_SPI_NO, (void*)&tx_buf, 1);
		
	
	if (len != 1) 
	{
		ICE_chip_deselect();
		SetErrorProc(ch);
		return _ERROR;
	}
	
	len = spi_iceread(ICE_SPI_NO, (void*)pdata, 1); 
	

	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	
	if (len != 1) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	return _NO_ERROR;
}

INT_32 ICE_Verify_byte(INT_32 ch, UNS_8 cmd,UNS_8 *pdata)
{
	INT_32 len;
	UNS_8 tx_buf = cmd  | ICE_CMD_READ;
	

	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	len = spi_write(ICE_SPI_NO, (void*)&tx_buf, 1);
		
	if (len != 1) 
	{
		ICE_chip_deselect();
		SetErrorProc(ch);
		return _ERROR;
	}
	
	len = spi_iceread(ICE_SPI_NO, (void*)pdata, 1); 
	

	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	if (len != 1) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	return _NO_ERROR;
}

INT_32 ICE_write_byte(INT_32 ch, UNS_8 cmd, UNS_8 data)
{
	INT_32 len;
	UNS_8 tx_buf[2];
	UNS_8 rx_buf;
	
	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}
	SetDevChannel(ch);

	tx_buf[0] = cmd;
	tx_buf[1] = data;
	

	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	len = spi_write(ICE_SPI_NO, (void*)tx_buf, 2);
	
	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
		
	if (len != 2) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	if(ICE_Verify_byte(ch, cmd, &rx_buf) == _NO_ERROR)
	{
		if(data == rx_buf)
		{
			return _NO_ERROR;
		}
	}
		
	return _ERROR;
}

INT_32 ICE_read_16bits(INT_32 ch,UNS_8 cmd, UNS_16* pdata)
{
	INT_32 len;
	UNS_8 tx_buf; 
	UNS_8 rx_buf[2];
	UNS_16 tmp = 0;
	
	SetDevChannel(ch);
	
	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}
	
	tx_buf = cmd | ICE_CMD_READ;

	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	len = spi_write(ICE_SPI_NO, (void*)&tx_buf, 1);
		
	
	if (len != 1) 
	{
		ICE_chip_deselect();
		SetErrorProc(ch);
		return _ERROR;
	}
	
	
	
	len = spi_iceread(ICE_SPI_NO, (void*)rx_buf, 2); 
	
	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	if (len != 2) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	tmp = ((UNS_16)rx_buf[0] & 0xFF);
	tmp <<= 8;
	tmp |= ((UNS_16)rx_buf[1] & 0xFF);
	
	*pdata = tmp;
	
	return _NO_ERROR;
}

INT_32 ICE_Verify_16bits(INT_32 ch, UNS_8 cmd, UNS_8* pdata)
{
	INT_32 len;
	UNS_8 tx_buf; 
	UNS_8 r_buf[3];
	
	SetDevChannel(ch);
	
	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}
	
	tx_buf = cmd | ICE_CMD_READ;

	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	len = spi_write(ICE_SPI_NO, (void*)&tx_buf, 1);

	if (len != 1) 
	{
		ICE_chip_deselect();
		SetErrorProc(ch);
		return _ERROR;
	}

	len = spi_iceread(ICE_SPI_NO, (void*)r_buf, 2); 
	
	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	if (len != 2) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	*pdata = r_buf[0];
	*(pdata+1) = r_buf[1];
	
	return _NO_ERROR;
}

INT_32 ICE_write_16bits(INT_32 ch, UNS_8 cmd, UNS_16 data)
{
	INT_32 len;
	UNS_8 tx_buf[3];
	UNS_8 rx_buf[2];
	
	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}
	SetDevChannel(ch);

	tx_buf[0] = cmd;
	tx_buf[1] = (UNS_8)((data >> 8) & 0xFF);
	tx_buf[2] = (UNS_8)(data & 0xFF);


	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	len = spi_write(ICE_SPI_NO, (void*)tx_buf, 3);
	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	if (len != 3) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	if(ICE_Verify_16bits(ch, cmd, rx_buf) == _NO_ERROR)
	{
		if(tx_buf[1] == rx_buf[0] && tx_buf[2] == rx_buf[1])
		{
			return _NO_ERROR;
		}
	}
	return _ERROR;
}


INT_32 ICE_read_adcDataSet(INT_32 ch, UNS_8 cmd, INT_32* pidata, INT_32* pvdata)
{
	INT_32 len;
	UNS_8 tx_buf; 
	UNS_8 rx_buf[6];
	INT_32 tmp = 0;

	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}
	SetDevChannel(ch);
	
	tx_buf = cmd | ICE_CMD_READ;;

	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	len = spi_write(ICE_SPI_NO, (void*)&tx_buf, 1);

	if (len != 1) 
	{
		ICE_chip_deselect();
		SetErrorProc(ch);
		return _ERROR;
	}

	len = spi_iceread(ICE_SPI_NO, (void*)rx_buf, 6);

	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	if (len != 6) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	
	tmp = (rx_buf[0] & 0xFF);
	tmp <<= 8;
	tmp |= (rx_buf[1] & 0xFF);
	tmp <<= 8;
	tmp |= (rx_buf[2] & 0xFF);
	tmp <<= 8;
	tmp &= 0xFFFFFF00;
	tmp /= 256;
	*pidata = tmp;
	
	tmp = (rx_buf[3] & 0xFF);
	tmp <<= 8;
	tmp |= (rx_buf[4] & 0xFF);
	tmp <<= 8;
	tmp |= (rx_buf[5] & 0xFF);
	tmp <<= 8;
	tmp &= 0xFFFFFF00;
	tmp /= 256;
	
	*pvdata = tmp;
	
	return _NO_ERROR;
}

INT_32 ICE_read_adc24bit(INT_32 ch, UNS_8 cmd, INT_32* pdata)
{
	INT_32 len;
	UNS_8 tx_buf; 
	UNS_8 rx_buf[3];
	INT_32 tmp = 0;
	
	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}
	SetDevChannel(ch);
	
	tx_buf = cmd | ICE_CMD_READ;;

	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	len = spi_write(ICE_SPI_NO, (void*)&tx_buf, 1);
	
	if (len != 1) 
	{
		ICE_chip_deselect();
		SetErrorProc(ch);
		return _ERROR;
	}

	len = spi_iceread(ICE_SPI_NO, (void*)rx_buf, 3);

	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	if (len != 3) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	
	tmp = (rx_buf[0] & 0xFF);
	tmp <<= 8;
	tmp |= (rx_buf[1] & 0xFF);
	tmp <<= 8;
	tmp |= (rx_buf[2] & 0xFF);
	tmp <<= 8;
	tmp &= 0xFFFFFF00;
	tmp /= 256;
	*pdata = tmp;
	
	return _NO_ERROR;
}


INT_32 ICE_read_24bits(INT_32 ch, UNS_8 cmd, UNS_32* pdata)
{
	INT_32 len;
	UNS_8 tx_buf; 
	UNS_8 rx_buf[3];
	UNS_32 tmp = 0;
	
	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}
	SetDevChannel(ch);
	
	tx_buf = cmd | ICE_CMD_READ;;

	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	len = spi_write(ICE_SPI_NO, (void*)&tx_buf, 1);

	if (len != 1) 
	{
		ICE_chip_deselect();
		SetErrorProc(ch);
		return _ERROR;
	}

	len = spi_iceread(ICE_SPI_NO, (void*)rx_buf, 3);

	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	if (len != 3) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	tmp = ((UNS_32)rx_buf[0] & 0xFF);
	tmp <<= 8;
	tmp |= ((UNS_32)rx_buf[1] & 0xFF);
	tmp <<= 8;
	tmp |= ((UNS_32)rx_buf[2] & 0xFF);
	*pdata = tmp;
	
	return _NO_ERROR;
}

INT_32 ICE_write_24bits(INT_32 ch,UNS_8 cmd, UNS_32 data)
{
	INT_32 len;
	UNS_8 tx_buf[4];
	
	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}
	SetDevChannel(ch);
	tx_buf[0] = cmd;
	tx_buf[1] = (UNS_8)((data >> 16) & 0xFF);
	tx_buf[2] = (UNS_8)((data >> 8) & 0xFF);
	tx_buf[3] = (UNS_8)(data & 0xFF);
	
	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	len = spi_write(ICE_SPI_NO, (void*)tx_buf, 4);

	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	if (len != 4) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	return _NO_ERROR;
}

INT_32 ICE_read_bytes(INT_32 ch, UNS_8 cmd, UNS_8* pdata, UNS_32 length)
{
	INT_32 len;
	UNS_8 tx_buf; 
	
	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}

	SetDevChannel(ch);
	
	tx_buf = cmd | ICE_CMD_READ;;

	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	len = spi_write(ICE_SPI_NO, (void*)tx_buf, 1);

	if (len != 1) 
	{
		ICE_chip_deselect();
		SetErrorProc(ch);
		return _ERROR;
	}

	len = spi_iceread(ICE_SPI_NO, (void*)pdata, length);

	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	if (len != length) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	return _NO_ERROR;
}

INT_32 ICE_write_bytes(INT_32 ch, UNS_8* pdata, UNS_32 length)
{
	INT_32 len;
	
	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}
	
	SetDevChannel(ch);
	
	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	len = spi_write(ICE_SPI_NO, (void*)pdata, length);

	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	if (len != length) 
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	return _NO_ERROR;
}

INT_32 ICE_spi_open(void)
{
	SPI_CONFIG_T mCfg;

	memset(&mCfg,0x0,sizeof(mCfg));
	
	

	mCfg.unidirectional = 1;
	mCfg.databits = 8;
	
	mCfg.highclk_spi_frames = FALSE;
	mCfg.usesecond_clk_spi = FALSE;
	
	mCfg.spi_clk = 2000000;
	mCfg.transmitter = 1;
	
	if (spi_open(ICE_SPI_NO,(UNS_32)&mCfg) == _ERROR) 
	{
		return _ERROR;
	}
	m_pGlobalVar->OpenSPI = TRUE;

	return _NO_ERROR;
}

void ICE_spi_close(void)
{
	spi_close(ICE_SPI_NO);
	m_pGlobalVar->OpenSPI = FALSE;
}