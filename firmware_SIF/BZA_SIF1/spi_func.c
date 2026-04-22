#include "BZA_SIF.h"
#include "drv_intc.h"
#include "lpc32xx_lib\lpc32xx_clkpwr_driver.h"
#include "lpc32xx_lib\lpc32xx_intc_driver.h"
#include "lpc32xx_lib\lpc32xx_gpio_driver.h"

/***********************************************************************
 * SPI driver private data and types
 **********************************************************************/

/* SPI device configuration structure type */
typedef struct
{
  BOOL_32 init;          /* Device initialized flag */
  SPI_REGS_T *regptr;    /* Pointer to SPI registers */
  SPI_CBS_T cbs;          /* Interrupt callbacks */
  INT_32 thisdev;        /* 0 or 1, SPI number */
  INT_32 dsize;          /* Size of data (in bytes) */
} SPI_DRVDAT_T;

/* SPI device configuration structure */
static SPI_DRVDAT_T spidrv [2];

/* Clocks for each SPI */
static const CLKPWR_CLK_T spiclks [2] = {CLKPWR_SPI1_CLK, CLKPWR_SPI2_CLK};

/***********************************************************************
 * SPI driver private functions
 **********************************************************************/


/***********************************************************************
 *
 * Function: spi_set_clock
 *
 * Purpose: Sets or resets the serial clock rate of the SPI interface
 *          (in Hz)
 *
 * Processing:
 *     Determine the best dividers to generate the closest possible
 *     target clock rate for the SPI.
 *
 * Parameters:
 *     pspidrvdat   : Pointer to driver data
 *     target_clock : The value in Hz for the new SPI serial clock
 *
 * Outputs: None
 *
 * Returns: _ERROR if the configuration setup failed, otherwise
 *          _NO_ERROR
 *
 * Notes: None
 *
 **********************************************************************/
static INT_32 spi_set_clock(SPI_DRVDAT_T *pspidrvdat,UNS_32 target_clock)
{
	UNS_32 control, rate, cmp_clk, spi_clk;

	/* The SPI clock is derived from the (HCLK / 2),
	so compute the best divider from that clock */
	spi_clk = clkpwr_get_clock_rate(spiclks [pspidrvdat->thisdev]);

	/* Find closest divider to get at or under the target frequency.
	Use smallest prescaler possible and rely on the divider to get
	the closest target frequency */
	rate = 0;
	cmp_clk = 0xFFFFFFFF;
	while (cmp_clk > target_clock)
	{
		cmp_clk = spi_clk / ((rate + 1) * 2);
		if (cmp_clk > target_clock)
		{
			rate++;
		}
	}

	/* Write computed divider back to register */
	control = pspidrvdat->regptr->con &= ~(SPI_CON_RATE(0x7F));
	pspidrvdat->regptr->con = control | SPI_CON_RATE(rate);

	return _NO_ERROR;
}

/***********************************************************************
 *
 * Function: spi_configure
 *
 * Purpose: Configure SPI interface
 *
 * Processing:
 *     Setup the general capabilities of the SPI controller.
 *
 * Parameters:
 *     pspicfg : Pointer to an SPI_CONFIG_T structure
 *     pspidrvdat: Pointer to driver data
 *
 * Outputs: None
 *
 * Returns:
 *     _ERROR if the configuration setup failed, otherwise _NO_ERROR
 *
 * Notes: None
 *
 **********************************************************************/
INT_32 spi_configure(SPI_CONFIG_T *pspicfg, SPI_DRVDAT_T *pspidrvdat)
{
	UNS_32 tmp0;
	INT_32 status = _NO_ERROR;
	SPI_REGS_T *pspiregs = pspidrvdat->regptr;

	/* Setup data length */
	tmp0 = 0;
	
	if ((pspicfg->databits >= 1) && (pspicfg->databits <= 16))
	{
		tmp0 = SPI_CON_BITNUM(pspicfg->databits);
	}
	else
	{
		status = _ERROR;
	}
	if (pspicfg->databits <= 8)
	{
		pspidrvdat->dsize = 1;
	}
	else
	{
		pspidrvdat->dsize = 2;
	}

	/* SPI clock control */
	if (pspicfg->highclk_spi_frames == TRUE)
	{
		tmp0 |= SPI_CON_CPOL;
	}
	if (pspicfg->usesecond_clk_spi == TRUE)
	{
		tmp0 |= SPI_CON_CPHA;
	}
	
	/* Master mode by default */
	tmp0 |= SPI_CON_MS;

	/* MSB/LSB control */
	if (pspicfg->msb == TRUE)
	{
		tmp0 |= SPI_CON_MSB;
	}

	/* Transmitter/receiver control */
	if (pspicfg->transmitter == TRUE)
	{
		tmp0 |= SPI_CON_RXTX;
	}

	/* Busy control */
	if (pspicfg->busy_halt == TRUE)
	{
		tmp0 |= SPI_CON_BHALT;
		if (pspicfg->busy_polarity == TRUE)
		{
			tmp0 |= SPI_CON_BPOL;
		}
	}

	/* Pin direction control */
	if (pspicfg->unidirectional == TRUE)
	{
		tmp0 |= SPI_CON_UNIDIR;
	}
	
	
	
	/* Setup clock */
	if (status == _NO_ERROR)
	{
		pspiregs->con = tmp0;
		status = spi_set_clock(pspidrvdat, pspicfg->spi_clk);
	}

	return status;
}

/***********************************************************************
 *
 * Function: spi_standard_interrupt
 *
 * Purpose: SPI standard interrupt function
 *
 * Processing:
 *     Handle the SPI interrupt from SPI1 or SPI2. Route to the
 *     necessary callback function as needed. Disable interrupt if a
 *     callback is not associated with it.
 *
 * Parameters:
 *     pspidrvdat : Pointer to an SPI driver data
 *
 * Outputs: None
 *
 * Returns: Nothing
 *
 * Notes: None
 *
 **********************************************************************/
void spi_standard_interrupt(SPI_DRVDAT_T *pspidrvdat)
{
	SPI_REGS_T *pspiregs = pspidrvdat->regptr;

	/* Interrupt was due to a receive data FIFO service request */
	if (((pspiregs->con & SPI_CON_RXTX) == 0) && ((pspiregs->stat & SPI_STAT_BE) != 0))
	{
		if (pspidrvdat->cbs.rxcb == NULL)
		{
			/* Disable interrupt, no support for it */
			pspiregs->ier &= ~SPI_IER_INTTHR;
		}
		else
		{
			/* Handle callback */
			pspidrvdat->cbs.rxcb();
		}
	}

	/* Interrupt was due to a transmit data FIFO service request */
	if ((pspiregs->con & SPI_CON_RXTX) != 0)
	{
		if (pspidrvdat->cbs.txcb == NULL)
		{
			/* Disable interrupt, no support for it */
			pspiregs->ier &= ~SPI_IER_INTTHR;
		}
		else
		{
			/* Handle callback */
			pspidrvdat->cbs.txcb();
		}
	}
}

/***********************************************************************
 *
 * Function: spi1_int
 *
 * Purpose: SPI1 interrupt handler
 *
 * Processing:
 *     Handle the SPI1 interrupt.
 *
 * Parameters: None
 *
 * Outputs: None
 *
 * Returns: Nothing
 *
 * Notes: None
 *
 **********************************************************************/
void spi1_int(void)
{
	spi_standard_interrupt(&spidrv [0]);
}

/***********************************************************************
 *
 * Function: spi2_int
 *
 * Purpose: SPI2 interrupt handler
 *
 * Processing:
 *     Handle the SPI2 interrupt.
 *
 * Parameters: None
 *
 * Outputs: None
 *
 * Returns: Nothing
 *
 * Notes: None
 *
 **********************************************************************/
void spi2_int(void)
{
	spi_standard_interrupt(&spidrv [1]);
}

/***********************************************************************
 * SPI driver public functions
 **********************************************************************/


/***********************************************************************
 *
 * Function: spi_ioctl
 *
 * Purpose: SPI configuration block
 *
 * Processing:
 *     This function is a large case block. Based on the passed function
 *     and option values, set or get the appropriate SPI parameter.
 *
 * Parameters:
 *     spi_id:   Pointer to SPI no
 *     cmd:   ioctl command
 *     arg:   ioctl argument
 *
 * Outputs: None
 *
 * Returns: The status of the ioctl operation
 *
 * Notes: None
 *
 **********************************************************************/

INT_32 spi_ioctl(INT_32 spi_id, INT_32 cmd, INT_32 arg)
{
	SPI_REGS_T *spiregs;
	SPI_CBS_T *pspicb;
	UNS_32 spiclk, tmp, tmp1, tmp2;
	SPI_DRVDAT_T *spidrvdat = (SPI_DRVDAT_T *) & spidrv [spi_id];
	INT_32 status = _ERROR;

	if (spidrvdat->init == TRUE)
	{
		status = _NO_ERROR;
		spiregs = spidrvdat->regptr;

		switch (cmd)
		{
		case SPI_ENABLE:
			if (arg == 1)
			{
			/* Enable SPI */
			spiregs->global |= SPI_GLOB_ENABLE;
			}
			else
			{
			/* Disable SPI */
			spiregs->global &= ~SPI_GLOB_ENABLE;
			}
			break;

		case SPI_CONFIG:
			status = spi_configure((SPI_CONFIG_T *) arg,spidrvdat);
			break;

		case SPI_TXRX:
			if (arg == TRUE)
			{
				spiregs->con |= SPI_CON_RXTX;
			}
			else
			{
				spiregs->con &= ~SPI_CON_RXTX;
			}
			break;

		case SPI_SET_CALLBACKS:
			pspicb = (SPI_CBS_T *) arg;
			spidrvdat->cbs.txcb = pspicb->txcb;
			spidrvdat->cbs.rxcb = pspicb->rxcb;
			break;

		case SPI_CLEAR_INTS:
			spiregs->stat |= SPI_STAT_INTCLR;
			break;

		case SPI_CLEAR_RX_BUFFER:
			spiregs->con |= SPI_CON_SHIFT_OFF;
			while ((spiregs->stat & SPI_STAT_BE) == 0x00)
			{
				tmp = spiregs->dat;
			}
			spiregs->con &= ~SPI_CON_SHIFT_OFF;
			break;

		case SPI_GET_STATUS:
			/* Return an SPI status */
			switch (arg)
			{
			case SPI_CLOCK_ST:
				/* Return clock speed of SPI interface */
				tmp = spiregs->con & SPI_CON_RATE(0x7F);

				/* Compute SPI bit clock rate */
				spiclk = clkpwr_get_clock_rate(
				spiclks [spidrvdat->thisdev]);
				status = spiclk / (2 * (tmp + 1));
				break;

			case SPI_PENDING_INTS_ST:
				tmp = 0;
				if (((spiregs->ier & SPI_IER_INTEOT) != 0) &&
				((spiregs->stat & SPI_STAT_EOT) != 0))
				{
					tmp |= SPI_STAT_EOT;
				}
				if (((spiregs->ier & SPI_IER_INTTHR) != 0) &&
				((spiregs->stat & SPI_STAT_THR) != 0))
				{
					tmp |= SPI_STAT_THR;
				}
				status = tmp;
				break;

			case SPI_RAW_INTS_ST:
				status = spiregs->stat & (SPI_STAT_EOT | SPI_STAT_BF | 
				SPI_STAT_THR | SPI_STAT_BE);
				break;

			default:
				/* Unsupported parameter */
				status = SMA_BAD_PARAMS;
				break;
			}
			break;

		case SPI_DRIVE_SSEL:
			if (spidrvdat->thisdev == 0)
			{
				if (arg == 0)
				{   //spi1_ssel = 0
					P3_OUTP_CLR_bit.GPO_04 = 1;
				}
				else
				{   //spi1_ssel = 1
					P3_OUTP_SET_bit.GPO_04 = 1;
				}
			}
			else if (spidrvdat->thisdev == 1)
			{
				if (arg == 0)
				{   //spi2_ssel = 0
					P3_OUTP_CLR_bit.GPO_07 = 1;
				}
				else
				{   //spi2_ssel = 1
					P3_OUTP_SET_bit.GPO_07 = 1;
				}
			}
			break;

		case SPI_DELAY:
			if ((spidrvdat->regptr->con & SPI_CON_RXTX) != 0x00)
			{
				while ((spidrvdat->regptr->stat&SPI_STAT_BE) == 0x00);
			}
			tmp1 = (spidrvdat->regptr->con & SPI_CON_RATE(0x7F)) + 1;
			tmp2 = ((spidrvdat->regptr->con & SPI_CON_BITNUM(16)) >> 9) + 1;
			tmp = 2 * arg * tmp1 * tmp2;

			while (tmp != 0)
			{
				tmp--;
			}
			break;
			
		case SPI_ONLYDELAY:
			tmp1 = (spidrvdat->regptr->con & SPI_CON_RATE(0x7F)) + 1;
			tmp2 = ((spidrvdat->regptr->con & SPI_CON_BITNUM(16)) >> 9) + 1;
			tmp = 2 * arg * tmp1 * tmp2;

			while (tmp != 0)
			{
				tmp--;
			}
			break;

		default:
			/* Unsupported parameter */
			status = SMA_BAD_PARAMS;
		}
	}

	return status;
}


/***********************************************************************
 *
 * Function: spi_write
 *
 * Purpose: SPI write function
 *
 * Processing:
 *     Write data to the SPI FIFO.
 *
 * Parameters:
 *     spi_id:   Pointer to SPI no
 *     buffer:  Pointer to data buffer to copy from (2 byte aligned)
 *     nWrite:  Number of times to write data to the transmit fifo
 *
 * Outputs: None
 *
 * Returns: Number of items written to the transmit fifo
 *
 * Notes: None
 *
 **********************************************************************/

INT_32 spi_write(INT_32 spi_id, void *buf, INT_32 count)
{
	INT_32 ncount = 0;
	INT_32 nLen = 0;
	
	SPI_DRVDAT_T *spicfgptr = (SPI_DRVDAT_T *) & spidrv [spi_id];
	UNS_16 *data16 = (UNS_16 *) buf;
	UNS_8 *data8 = (UNS_8 *) buf;

	if (spicfgptr->init == TRUE)
	{
		spi_ioctl(spi_id,SPI_TXRX,1);
		spi_ioctl(spi_id,SPI_CLEAR_INTS,0);
		nLen = count; 

		while (nLen > 0)
		{
			if((spicfgptr->regptr->stat & SPI_STAT_BF) == 0)
			{
				if (spicfgptr->dsize == 1)
				{
					spicfgptr->regptr->dat = (UNS_32) * data8;
					data8++;
				}
				else
				{
					spicfgptr->regptr->dat = (UNS_32) * data16;
					data16++;
				}
				ncount ++;
				nLen --;
			}
			spi_ioctl(spi_id,SPI_CLEAR_RX_BUFFER,0);
		}
		m_pGlobalVar->nSPITick = 0;
		m_pGlobalVar->nSPITickOn = 1;
		while((spicfgptr->regptr->stat & SPI_STAT_EOT) == 0) 
		{
		}
		spi_ioctl(spi_id,SPI_ONLYDELAY,1);	
		spi_ioctl(spi_id,SPI_CLEAR_RX_BUFFER,0);
	}
	
	return ncount;
}

/***********************************************************************
 *
 * Function: spi_read
 *
 * Purpose: SPI read function
 *
 * Processing:
 *     Reads data from the SPI FIFO.
 *
 * Parameters:
 *     spi_id:   Pointer to SPI no
 *     buffer:    Pointer to data buffer to copy to (2 byte aligned)
 *     max_fifo:  Number of items (of programmed data width) to read
 *
 * Outputs: None
 *
 * Returns: Number of items read from the SPI FIFO
 *
 * Notes: None
 *
 **********************************************************************/

INT_32 spi_read(INT_32 spi_id, void *buf, INT_32 count)
{
	volatile UNS_32 tmp1;
	
	INT_32 ncount = 0;
	INT_32 nLen = count;
	INT_32 nrdLen = count;
	
	SPI_DRVDAT_T *spicfgptr = (SPI_DRVDAT_T *) & spidrv [spi_id];
	UNS_16 *data16 = (UNS_16 *) buf;
	UNS_8 *data8 = (UNS_8 *) buf;

	if (spicfgptr->init == TRUE)
	{
		ncount = 0;

		spi_ioctl(spi_id,SPI_CLEAR_RX_BUFFER,0);
		spi_ioctl(spi_id,SPI_TXRX,0);
		spi_ioctl(spi_id,SPI_CLEAR_INTS,0);
		
		nLen = count;
		nrdLen = count;

		while (nrdLen > 0)
		{
			if(nLen > 0)
			{
				if((spicfgptr->regptr->stat & SPI_STAT_BF) == 0)
				{
					spicfgptr->regptr->dat = (UNS_32)0x55;
					nLen --;
				}
			}
			
			spicfgptr->regptr->con |= SPI_CON_SHIFT_OFF;
			spi_ioctl(spi_id,SPI_ONLYDELAY,1);	
			if((spicfgptr->regptr->stat & SPI_STAT_BE) == 0x00)
			{
				tmp1 = spicfgptr->regptr->dat;
				
				if (spicfgptr->dsize == 1)
				{
					*data8 = (UNS_8) tmp1;
					data8++;
				}
				else
				{
					*data16 = (UNS_16) tmp1;
					data16++;
				}
				nrdLen--;
				ncount++;
			}
			spicfgptr->regptr->con &= ~SPI_CON_SHIFT_OFF;
		}
		spi_ioctl(spi_id,SPI_ONLYDELAY,1);	
		spi_ioctl(spi_id,SPI_TXRX,1);
	}
	
	return ncount;
}

INT_32 spi_iceread(INT_32 spi_id, void *buf, INT_32 count)
{
	volatile UNS_32 tmp1;
	
	INT_32 ncount = 0;
	INT_32 nLen = count;
	INT_32 nrdLen = count;

	
	SPI_DRVDAT_T *spicfgptr = (SPI_DRVDAT_T *) & spidrv [spi_id];
	UNS_16 *data16 = (UNS_16 *) buf;
	UNS_8 *data8 = (UNS_8 *) buf;

	if (spicfgptr->init == TRUE)
	{
		ncount = 0;

		spi_ioctl(spi_id,SPI_CLEAR_RX_BUFFER,0);
		spi_ioctl(spi_id,SPI_TXRX,0);
		spi_ioctl(spi_id,SPI_CLEAR_INTS,0);
		nLen = count;
		nrdLen = count;
		m_pGlobalVar->nSPITickOn = 1;
		
		while (nLen > 0)
		{
			if((spicfgptr->regptr->stat & SPI_STAT_BF) == 0)
			{
				spicfgptr->regptr->dat = (UNS_32)0x55;
				nLen --;
			}
			
			spicfgptr->regptr->con |= SPI_CON_SHIFT_OFF;
			while(spicfgptr->regptr->stat & SPI_STAT_BE)
			{
				if(m_pGlobalVar->nSPITick > 10) 
				{
					spicfgptr->regptr->con &= ~SPI_CON_SHIFT_OFF;
					return ncount;
				}
			}
			
			tmp1 = spicfgptr->regptr->dat;
					
			if (spicfgptr->dsize == 1)
			{
				*data8 = (UNS_8) tmp1;
				data8++;
			}
			else
			{
				*data16 = (UNS_16) tmp1;
				data16++;
			}
			nrdLen--;
			ncount++;
			spicfgptr->regptr->con &= ~SPI_CON_SHIFT_OFF;
			/*
			while(1)
			{
				
				spicfgptr->regptr->con |= SPI_CON_SHIFT_OFF;
				
				if((spicfgptr->regptr->stat & SPI_STAT_BE) == 0x00)
				{
					tmp1 = spicfgptr->regptr->dat;
					
					if (spicfgptr->dsize == 1)
					{
						*data8 = (UNS_8) tmp1;
						data8++;
					}
					else
					{
						*data16 = (UNS_16) tmp1;
						data16++;
					}
					nrdLen--;
					ncount++;
					break;
				}
				spicfgptr->regptr->con &= ~SPI_CON_SHIFT_OFF;
				if(m_pGlobalVar->nSPITick > 10) 
				{
					return ncount;
				}
			}
			*/
			m_pGlobalVar->nSPITick = 0;
		}
		m_pGlobalVar->nSPITickOn = 0;
		spi_ioctl(spi_id,SPI_ONLYDELAY,1);	
		spi_ioctl(spi_id,SPI_TXRX,1);
	}
	
	return ncount;
}

/***********************************************************************
 *
 * Function: spi_open
 *
 * Purpose: Open the SPI
 *
 * Processing:
 *     Initializes the SPI clocks and default state.
 *
 * Parameters:
 *     ipbase: SPI descriptor device address
 *     arg   : Pointer to config structure, or NULL if not used
 *
 * Outputs: None
 *
 * Returns: The pointer to a SPI config structure or 0
 *
 * Notes: None
 *
 **********************************************************************/
INT_32 spi_open(INT_32 spi_id,UNS_32 arg)
{
	SPI_CONFIG_T spi_cfg, *pspicfg;
	SPI_REGS_T *pspiregs;
	SPI_DRVDAT_T *pspidrvdat = NULL;
	INT_32 status = 0;


	/* Map SPI registers to data index */
	if(spi_id == 0) 
	{
		pspiregs = (SPI_REGS_T *) SPI1;
	}
	else if(spi_id == 1) 
	{
		pspiregs = (SPI_REGS_T *) SPI2;
	}
	else
	{
		return status;
	}

	pspidrvdat = (SPI_DRVDAT_T *) & spidrv [spi_id];
	pspidrvdat->thisdev = spi_id;

	if (pspidrvdat->init == FALSE)
	{
		/* Save and return address of peripheral block */
		pspidrvdat->regptr = pspiregs;

		/* Enable SPI clock */
		clkpwr_clk_en_dis(spiclks[pspidrvdat->thisdev], 1);

		/* Enable device */
		pspidrvdat->regptr->global = SPI_GLOB_ENABLE;

		/* Reset the device */
		pspidrvdat->regptr->global |= SPI_GLOB_RST;
		pspidrvdat->regptr->global = SPI_GLOB_ENABLE;
		
		
		/* No initial callbacks */
		pspidrvdat->cbs.txcb = NULL;
		pspidrvdat->cbs.rxcb = NULL;

		/* Initialize device */
		if (arg == 0)
		{
			/* Create and use defaults */
			memset(&spi_cfg,0x0,sizeof(spi_cfg));
			spi_cfg.databits = 8;
			spi_cfg.highclk_spi_frames = TRUE;
			spi_cfg.usesecond_clk_spi = FALSE;
			spi_cfg.spi_clk = 10000000;
			pspicfg = &spi_cfg;
		}
		else
		{
			pspicfg = (SPI_CONFIG_T *) arg;
		}

		if (spi_configure(pspicfg, pspidrvdat) != _ERROR)
		{
			/* Device is valid */
			pspidrvdat->init = TRUE;
			status = (INT_32) pspidrvdat;
		}
		else
		{
			clkpwr_clk_en_dis(spiclks[pspidrvdat->thisdev], 0);
		}
/*
		if(spi_id == 0)
		{
			SIC1_IRQInstall(spi1_int,Sub1SPI1_INT, HIGH, LEVEL, TYPE_IRQ);
			SIC1_IntEnable(Sub1SPI1_INT,ENABLE_IRQ);
		}
		else
		{
			SIC1_IRQInstall(spi2_int,Sub1SPI2_INT, HIGH, LEVEL, TYPE_IRQ);
			SIC1_IntEnable(Sub1SPI2_INT,ENABLE_IRQ);
		}
*/
		/* Clear latched interrupts */
		pspidrvdat->regptr->stat = SPI_STAT_INTCLR;

		/* Enable interrupts */
		pspidrvdat->regptr->ier = SPI_IER_INTEOT | SPI_IER_INTTHR;
	}

	return status;
}

/***********************************************************************
 *
 * Function: spi_close
 *
 * Purpose: Close the SPI
 *
 * Processing:
 *     Disable the SPI clock and device.
 *
 * Parameters:
 *     devid: Pointer to SPI config structure
 *
 * Outputs: None
 *
 * Returns: The status of the close operation
 *
 * Notes: None
 *
 **********************************************************************/
INT_32 spi_close(INT_32 spi_id)
{
	SPI_DRVDAT_T *pspidrvdat = NULL;
	INT_32 status = _ERROR;

	pspidrvdat = (SPI_DRVDAT_T *) & spidrv [spi_id];

	if (pspidrvdat->init == TRUE)
	{
		/* 'Uninitialize' device */
		pspidrvdat->init = FALSE;
		status = _NO_ERROR;

		/* Disable device */
		pspidrvdat->regptr->global &= ~SPI_GLOB_ENABLE;

		/* Disable clock */
		clkpwr_clk_en_dis(spiclks[pspidrvdat->thisdev], 0);
	}

	return status;
}

void Init_SPI(void)
{

	if(ICE_spi_open() == _NO_ERROR)
	{
			m_pGlobalVar->OpenSPI = TRUE;
	}
/*	if(MX25V_spi_open() == _NO_ERROR)
	{
			m_pGlobalVar->OpenMX25V = TRUE;
	}*/
}

