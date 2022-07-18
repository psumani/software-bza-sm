
#include "sif_zim.h"

#include "drv_intc.h"
#include "lpc32xx_lib\lpc32xx_clkpwr_driver.h"
#include "lpc32xx_lib\lpc32xx_intc_driver.h"


/*****************************************************************************
 * Function: CRC16(puchMsg, usDataLen)
 *
 * Precondition: unsigned char *puchMsg ; A pointer to the message buffer containing
 *               binary data to be used for generating the CRC
 *               unsigned short usDataLen ; The quantity of bytes in the message buffer.
 *
 * Overview: .
 *
 * Input: NONE.
 *
 *****************************************************************************/
/* Table of CRC values for high?order byte */
const static UNS_8 auchCRCHi[] = {
0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81,
0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01,
0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81,
0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0,
0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01,
0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81,
0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01,
0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81,
0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01,
0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81,
0x40
} ;

/* Table of CRC values for low?order byte */
const static INT_8 auchCRCLo[] = {
0x00, 0xC0, 0xC1, 0x01, 0xC3, 0x03, 0x02, 0xC2, 0xC6, 0x06, 0x07, 0xC7, 0x05, 0xC5, 0xC4,
0x04, 0xCC, 0x0C, 0x0D, 0xCD, 0x0F, 0xCF, 0xCE, 0x0E, 0x0A, 0xCA, 0xCB, 0x0B, 0xC9, 0x09,
0x08, 0xC8, 0xD8, 0x18, 0x19, 0xD9, 0x1B, 0xDB, 0xDA, 0x1A, 0x1E, 0xDE, 0xDF, 0x1F, 0xDD,
0x1D, 0x1C, 0xDC, 0x14, 0xD4, 0xD5, 0x15, 0xD7, 0x17, 0x16, 0xD6, 0xD2, 0x12, 0x13, 0xD3,
0x11, 0xD1, 0xD0, 0x10, 0xF0, 0x30, 0x31, 0xF1, 0x33, 0xF3, 0xF2, 0x32, 0x36, 0xF6, 0xF7,
0x37, 0xF5, 0x35, 0x34, 0xF4, 0x3C, 0xFC, 0xFD, 0x3D, 0xFF, 0x3F, 0x3E, 0xFE, 0xFA, 0x3A,
0x3B, 0xFB, 0x39, 0xF9, 0xF8, 0x38, 0x28, 0xE8, 0xE9, 0x29, 0xEB, 0x2B, 0x2A, 0xEA, 0xEE,
0x2E, 0x2F, 0xEF, 0x2D, 0xED, 0xEC, 0x2C, 0xE4, 0x24, 0x25, 0xE5, 0x27, 0xE7, 0xE6, 0x26,
0x22, 0xE2, 0xE3, 0x23, 0xE1, 0x21, 0x20, 0xE0, 0xA0, 0x60, 0x61, 0xA1, 0x63, 0xA3, 0xA2,
0x62, 0x66, 0xA6, 0xA7, 0x67, 0xA5, 0x65, 0x64, 0xA4, 0x6C, 0xAC, 0xAD, 0x6D, 0xAF, 0x6F,
0x6E, 0xAE, 0xAA, 0x6A, 0x6B, 0xAB, 0x69, 0xA9, 0xA8, 0x68, 0x78, 0xB8, 0xB9, 0x79, 0xBB,
0x7B, 0x7A, 0xBA, 0xBE, 0x7E, 0x7F, 0xBF, 0x7D, 0xBD, 0xBC, 0x7C, 0xB4, 0x74, 0x75, 0xB5,
0x77, 0xB7, 0xB6, 0x76, 0x72, 0xB2, 0xB3, 0x73, 0xB1, 0x71, 0x70, 0xB0, 0x50, 0x90, 0x91,
0x51, 0x93, 0x53, 0x52, 0x92, 0x96, 0x56, 0x57, 0x97, 0x55, 0x95, 0x94, 0x54, 0x9C, 0x5C,
0x5D, 0x9D, 0x5F, 0x9F, 0x9E, 0x5E, 0x5A, 0x9A, 0x9B, 0x5B, 0x99, 0x59, 0x58, 0x98, 0x88,
0x48, 0x49, 0x89, 0x4B, 0x8B, 0x8A, 0x4A, 0x4E, 0x8E, 0x8F, 0x4F, 0x8D, 0x4D, 0x4C, 0x8C,
0x44, 0x84, 0x85, 0x45, 0x87, 0x47, 0x46, 0x86, 0x82, 0x42, 0x43, 0x83, 0x41, 0x81, 0x80,
0x40
} ;


UNS_16 GetCRC16(UNS_8 * puchMsg, UNS_8 usDataLen)
{
	UNS_8 uchCRCHi = 0xFF ;     /* high byte of CRC initialized */
	UNS_8 uchCRCLo = 0xFF ;     /* low byte of CRC initialized */
	UNS_16 uIndex ;                   /* will index into CRC lookup table */
	UNS_8  nLen;
	
	nLen = usDataLen;
	while (nLen--)                 /* pass through message buffer */
	{
		uIndex = uchCRCHi ^ *puchMsg++ ;    /* calculate the CRC */
		uchCRCHi = uchCRCLo ^ auchCRCHi[uIndex] ;
		uchCRCLo = auchCRCLo[uIndex] ;
	}
	return (uchCRCHi << 8 | uchCRCLo) ;
}

/***********************************************************************
 * I2C driver package data
***********************************************************************/

/* I2C device configuration structure type */
typedef struct
{
  I2C_REGS_T  *regptr;    /* Pointer to I2C registers */
  UNS_32      txrx_setup; /* Transmission setup */
  I2C_SETUP_T *ip_setup;  /* I2C setup parameters */
  PFV         handler;    /* Transmission interrupt handler */
  BOOL_32     init;       /* Device initialized flag */
} I2C_CFG_T;

/* I2C driver data for I2C0 and I2C1 */
static I2C_CFG_T i2cdat[2];
UNS_32   header[3];

/***********************************************************************
 * I2C driver private functions
 **********************************************************************/

inline void i2c_delay(int cnt)
{
	int i;
	for(i=0; i<cnt; i++)
	{
	}
}

inline void i2c_Defaultdelay()
{
	int i;
	for(i=0; i<200; i++)
	{
	}
}

/***********************************************************************
 *
 * Function: load_slave_address
 *
 * Purpose: load START, slave address and R/W info into the header array
 *
 * Processing:
 *     See function.
 *
 * Parameters: slave address, address mode, R/W selection
 *
 * Outputs: None
 *
 * Returns: number of bytes in the header
 *
 * Notes: None
 *
 **********************************************************************/
void load_slave_address(INT_32 devid, I2C_ADDR_OPT address_length, 
                        UNS_32 address, I2CM_ACTIVITY_OPT activity)
{
  UNS_32 i, cnt;
  if (address_length == ADDR7BIT)
  {
    header[0] = I2C_START | (address << 1) | activity;
    cnt = 1;
  }
  else
  {
    header[0] = I2C_START | 0xF0 | ((address & 0x300) >> 7);
    header[1] = address & 0xFF;
    cnt = 2;
    if (activity == I2C_M_READ)
    {
      header[2] = header[0] | 1;
      cnt++;
    }
  }
  for (i = 0; i != cnt; i++)
  {
    ((I2C_CFG_T *) devid)->regptr->i2c_txrx = header[i];
  }
  return;
}

/***********************************************************************
 * I2C master transmitter interrupt handler
 **********************************************************************/
void i2c_mtx_handler(INT_32 devid)
{
  	UNS_32 length, count;
  	I2C_CFG_T * device;
  	I2C_MTX_SETUP_T * txsetup;

  	device = ((I2C_CFG_T *) &i2cdat[devid]);
  	txsetup  = (I2C_MTX_SETUP_T*)(device->txrx_setup);
	
  	/* were there Arbitration or ACK problems? */
  	if ((device->regptr->i2c_stat & (I2C_NAI | I2C_AFI)) != 0)
  	{
    	if (txsetup->retransmissions_count != txsetup->retransmissions_max)
    	{
      		/* update status */
      		txsetup->retransmissions_count++;
			  txsetup->status = txsetup->retransmissions_count;
			  /* clear Arbitration and Transaction Done interrupt flags */
			  device->regptr->i2c_stat = I2C_AFI | I2C_TDI;
			  /* clear transmitted byte counter */
			  txsetup->tx_count = 0;
			  /* soft reset */
			  device->regptr->i2c_ctrl = I2C_RESET;
			  /* restore 10-bit addr option if needed */
			  if (device->ip_setup->addr_mode == ADDR10BIT)
			  {
					device->regptr->i2c_ctrl = I2C_SEVEN;
			  }
			  /* load slave address */
			  load_slave_address(devid, txsetup->addr_mode, 
								 txsetup->sl_addr, I2C_M_WRITE);
			  /* TxFIFO notfull,M Tx Data R,Tx no ACK,Tx Arb Fl, Tx Done Ints */
			  device->regptr->i2c_ctrl = (device->regptr->i2c_ctrl & I2C_SEVEN)|
										 I2C_TFFIE | I2C_DRMIE | I2C_NAIE | 
										 I2C_AFIE | I2C_TDIE;
		}
		else
		{
			  /* update status */
			  txsetup->status |= (
				  (device->regptr->i2c_stat & ((I2C_AFI | I2C_NAI)) << 8) |
				  I2C_SETUP_STATUS_DONE);
			  /* Disable I2C interrupt in the interrupt controller */
			  disable_i2c_irq_int(devid);
    	}
	}
	/* was a STOP generated? */
	else if ((device->regptr->i2c_stat & I2C_TDI) != 0)
	{
		/* clear the TDI bit */
		device->regptr->i2c_stat |= I2C_TDI;
		/* update status */
		txsetup->status |= I2C_SETUP_STATUS_DONE;
		
		/* Disable I2C interrupt in the interrupt controller */
		disable_i2c_irq_int(devid);
		m_pGlobalVar->nI2CWriteDelayTick[devid] = DEF_I2CWR_MSDELAY;
	}
	/* provide more data */
	else
	{
		length  = txsetup->tx_length;
		count   = txsetup->tx_count;
		
		while ((length > count) && 
			   ((device->regptr->i2c_stat & I2C_TFF) == 0))
		{
			if ((count + 1) == length)
			{
				device->regptr->i2c_txrx = I2C_STOP | (txsetup->tx_data)[count];
			}
			else
			{
				device->regptr->i2c_txrx = (txsetup->tx_data)[count];
			}
			count++;
		}
		txsetup->tx_count = count;
		
		/* have all data been sent? */
		if (count >= length)
		{
			/* enable Tx no ACK, Tx Arbitr Fail, Tx Done Ints */
			device->regptr->i2c_ctrl = (device->regptr->i2c_ctrl & I2C_SEVEN) 
										 | I2C_NAIE | I2C_AFIE | I2C_TDIE;
		}
	}
	return;
}

/***********************************************************************
 * I2C master receiver interrupt handler
 **********************************************************************/
void i2c_mrx_handler(INT_32 devid)
{
  UNS_32 length, count;
  I2C_CFG_T * device;
  I2C_MRX_SETUP_T * setup_mrx;

  device = ((I2C_CFG_T *) &i2cdat[devid]);
  setup_mrx  = (I2C_MRX_SETUP_T*)(device->txrx_setup);

  /* were there Arbitration or ACK problems? */
  if ((device->regptr->i2c_stat & (I2C_NAI | I2C_AFI)) != 0)
  {
    if (setup_mrx->retransmissions_count != setup_mrx->retransmissions_max)
    {
      /* update status */
      setup_mrx->retransmissions_count++;
      setup_mrx->status = setup_mrx->retransmissions_count;
	  
      /* clear Arbitration and Transaction Done interrupt flags */
      device->regptr->i2c_stat = I2C_AFI | I2C_TDI;
      /* clear received byte counter */
      setup_mrx->rx_count = 0;
      /* set transmitted byte counter */
      setup_mrx->tx_count = 1;
      /* soft reset */
      device->regptr->i2c_ctrl = I2C_RESET;
      /* restore 10-bit addr option if needed */
      if (device->ip_setup->addr_mode == ADDR10BIT)
      {
        device->regptr->i2c_ctrl = I2C_SEVEN;
      }
      /* load slave address */
      load_slave_address(devid, setup_mrx->addr_mode, 
                         setup_mrx->sl_addr, I2C_M_WRITE);
      /* en RxD Av,RxFIFO Fl,M Tx DataR,Tx noACK,Tx ArbF,Tx Done Ints */
      /* write a dummy byte to trigger actual data transfer */
	if (  setup_mrx->rx_length == setup_mrx->tx_count )
	{
	  /* if receive one byte only, send STOP along with dummy byte. */ 
	  device->regptr->i2c_txrx = I2C_STOP | 0xAA;
	}
	else
	{
	  device->regptr->i2c_txrx = 0xAA;
	}
      device->regptr->i2c_ctrl = (device->regptr->i2c_ctrl & I2C_SEVEN)|
                                 I2C_RFDAIE | I2C_RFFIE | I2C_DRMIE | 
                                 I2C_NAIE | I2C_AFIE | I2C_TDIE;
    }
    else
    {
      /* update status */
      setup_mrx->status |= 
          ((device->regptr->i2c_stat & ((I2C_AFI | I2C_NAI)) << 8) |
           I2C_SETUP_STATUS_DONE);
      /* Disable I2C interrupt in the interrupt controller */
      disable_i2c_irq_int(devid);
    }
  }
  /* was a STOP generated? */
  else if ((device->regptr->i2c_stat & I2C_TDI) != 0)
  {
    /* clear the TDI bit */
    device->regptr->i2c_stat |= I2C_TDI;
    /* update status */
    setup_mrx->status |= I2C_SETUP_STATUS_DONE;
    /* Disable I2C interrupt in the interrupt controller */
    disable_i2c_irq_int(devid);
  }
  /* read more data */
  else
  {

    length  = setup_mrx->rx_length;
    count   = setup_mrx->rx_count;
    while ((length > count) && 
           ((device->regptr->i2c_stat & I2C_RFE) == 0)) //recieve empty?
    {
      (setup_mrx->rx_data)[count] = device->regptr->i2c_txrx;
      count++;
    }
	
    setup_mrx->rx_count = count;
    /* have all data been received? */
    if (count >= length)
    {
      /* enable Tx no ACK, Tx Arbitr Fail, Tx Done Ints */
      device->regptr->i2c_ctrl = (device->regptr->i2c_ctrl & I2C_SEVEN)| 
                                 I2C_NAIE | I2C_AFIE | I2C_TDIE;
    }
    else
    {

      // not all data received, fill the Tx FIFO with more dummies
      while ((setup_mrx->tx_count < length) && 
             ((device->regptr->i2c_stat & I2C_TFF) == 0))
      {
        if (((setup_mrx->tx_count) + 1) == length)
        {
          device->regptr->i2c_txrx = I2C_STOP | 0xAA;
        }
        else
        {
          device->regptr->i2c_txrx = 0xAA;
        }

        setup_mrx->tx_count++;
      }
    }
  }
  return;
}

/***********************************************************************
 * I2C master transmitter followed by master receiver interrupt handler
 **********************************************************************/
void i2c_mtxrx_handler(INT_32 devid)
{
	UNS_32 length, count;
	I2C_CFG_T * device;
	I2C_MTXRX_SETUP_T * txrx_setup;
	static UNS_32 txrx_state = 0;

	device = ((I2C_CFG_T *) &i2cdat[devid]);
	txrx_setup  = (I2C_MTXRX_SETUP_T*)(device->txrx_setup);

	/* were there Arbitration or ACK problems? */
	if ((device->regptr->i2c_stat & (I2C_NAI | I2C_AFI)) != 0)
	{
		if (txrx_setup->retransmissions_count != txrx_setup->retransmissions_max)
		{
			/* update status */
			txrx_setup->retransmissions_count++;
			txrx_setup->status = txrx_setup->retransmissions_count;
			/* clear Arbitration and Transaction Done interrupt flags */
			device->regptr->i2c_stat = I2C_AFI | I2C_TDI;
			/* clear transmitted & received byte counter */
			txrx_setup->tx_count = 0;
			txrx_setup->rx_count = 0;
			/* set the state indicator */
			txrx_state = 0;
			/* soft reset */
			device->regptr->i2c_ctrl = I2C_RESET;
			/* restore 10-bit addr option if needed */
			if (device->ip_setup->addr_mode == ADDR10BIT)
			{
        		device->regptr->i2c_ctrl = I2C_SEVEN;
      		}
			/* load slave address */
			load_slave_address(devid, txrx_setup->addr_mode, 
						 txrx_setup->sl_addr, I2C_M_WRITE);
			/* en TxFIFO not full,M TxDataR,Tx noACK,Tx ArbF,Tx Done Ints */
			device->regptr->i2c_ctrl = 
				(device->regptr->i2c_ctrl & I2C_SEVEN) | I2C_TFFIE | 
				I2C_DRMIE | I2C_NAIE | I2C_AFIE | I2C_TDIE;
		}
		else
		{
			/* update status */
			txrx_setup->status |= 
			  ((device->regptr->i2c_stat & ((I2C_AFI | I2C_NAI)) << 8) |
			  I2C_SETUP_STATUS_DONE);
			/* Disable I2C interrupt in the interrupt controller */
			disable_i2c_irq_int(devid);
			/* set txrx state for a new transfer */
			txrx_state = 0;
    	}
  	}
	/* was a STOP generated? */
	else if ((device->regptr->i2c_stat & I2C_TDI) != 0)
	{
		/* clear the TDI bit */
		device->regptr->i2c_stat |= I2C_TDI;
		/* update status */
		txrx_setup->status |= I2C_SETUP_STATUS_DONE;
		/* Disable I2C interrupt in the interrupt controller */
		disable_i2c_irq_int(devid);
		/* set txrx state for a new transfer */
		txrx_state = 0;
	}
	/* transfer triggered interrupt */
	else
	{
		switch (txrx_state)
		{
		/* transmitting data */
		case 0:
			length  = txrx_setup->tx_length;
			count   = txrx_setup->tx_count;
			while(length > count && ((device->regptr->i2c_stat & I2C_TFF) == 0))
			{
				device->regptr->i2c_txrx = (txrx_setup->tx_data)[count];
				count++;
			}
			txrx_setup->tx_count = count;
			/* have all data been sent? */
			if (count >= length)
			{
				/* switch to receiving data */
				txrx_state = 1; 
				txrx_setup->tx_count = 0;
				/* en M Tx Data Req, Tx no ACK, Tx Arb Fail, Tx Done Ints */
				device->regptr->i2c_ctrl = 
				  (device->regptr->i2c_ctrl & I2C_SEVEN) | I2C_DRMIE | 
				  I2C_NAIE | I2C_AFIE | I2C_TDIE;
			}
	    break;
		
		default: 
			/* is repeated START + slave address + READ needed? */
			if (txrx_setup->tx_count == 0)
			{
				if (txrx_setup->addr_mode ==ADDR7BIT)
				{
					device->regptr->i2c_txrx = I2C_START | (txrx_setup->sl_addr << 1) | I2C_M_READ;
				}
				else
				{
					device->regptr->i2c_txrx = I2C_START | 0xF0 | ((txrx_setup->sl_addr & 0x30)>>7) | I2C_M_READ;
				}
				
				device->regptr->i2c_ctrl = 
				  (device->regptr->i2c_ctrl & I2C_SEVEN) | I2C_RFDAIE | 
				  I2C_RFFIE | I2C_DRMIE | I2C_NAIE | I2C_AFIE | I2C_TDIE;
			  
				txrx_setup->tx_count = 1;
				txrx_setup->rx_count = 0;
				
				if ( txrx_setup->rx_length <= txrx_setup->tx_count )
				{
					/* if receive one byte only, send STOP along with dummy byte. */ 
					device->regptr->i2c_txrx = I2C_STOP | 0xAA;
				}
				else
				{
					device->regptr->i2c_txrx = 0xAA;
				}
				/* write a dummy byte to trigger actual data transfer */

			}
			else
			{
				length  = txrx_setup->rx_length;
				count   = txrx_setup->rx_count;
				while ((length > count) && ((device->regptr->i2c_stat & I2C_RFE) == 0))
				{
					(txrx_setup->rx_data)[count] = device->regptr->i2c_txrx;
					count++;
				}
				txrx_setup->rx_count = count;
				/* have all data been received? */
				if (count >= length)
				{
					/* enable Tx no ACK, Tx Arbitr Fail, Tx Done Ints */
					device->regptr->i2c_ctrl = 
						(device->regptr->i2c_ctrl & I2C_SEVEN) | I2C_NAIE | 
						I2C_AFIE | I2C_TDIE;
				}
				else
				{
					// not all data received, fill the Tx FIFO with more dummies
					while ((txrx_setup->tx_count < length) && 
						   ((device->regptr->i2c_stat & I2C_TFF) == 0))
					{
						if (((txrx_setup->tx_count) + 1) == length)
						{
							device->regptr->i2c_txrx = I2C_STOP | 0xAA;
						}
						else
						{
							device->regptr->i2c_txrx = 0xAA;
						}
						txrx_setup->tx_count++;
					}
				}
			}
	    break;
		}
	}
	return;
}

/***********************************************************************
 * I2C slave transmitter interrupt handler
 **********************************************************************/
void i2c_stx_handler(INT_32 devid)
{
  UNS_32 length, count;
  I2C_CFG_T * device;
  I2C_STX_SETUP_T * setup;

  device = ((I2C_CFG_T *) &i2cdat[devid]);
  setup  = (I2C_STX_SETUP_T*)(device->txrx_setup);

  length  = setup->tx_length;
  count   = setup->tx_count;

  while ((length > count) && 
         ((device->regptr->i2c_stat & I2C_TFFS) == 0))
  {
    device->regptr->i2c_stx = (setup->tx_data)[count];
    count++;
  }
  setup->tx_count = count;
  /* have all data been transmitted? */
  if (count >= length)
  {
    /* disable all interrupts */
    device->regptr->i2c_ctrl &= I2C_SEVEN;
    /* update status */
    setup->status |= I2C_SETUP_STATUS_DONE;
    /* Disable I2C interrupt in the interrupt controller */
    disable_i2c_irq_int(devid);
  }

  return;
}

/***********************************************************************
 * I2C slave receiver interrupt handler
 **********************************************************************/
void i2c_srx_handler(INT_32 devid)
{
  UNS_32 length, count;
  I2C_CFG_T * device;
  I2C_SRX_SETUP_T * setup;

  device = ((I2C_CFG_T *)&i2cdat[devid]);
  setup  = (I2C_SRX_SETUP_T*)(device->txrx_setup);

  length  = setup->rx_length;
  count   = setup->rx_count;
  while ((length > count) && 
         ((device->regptr->i2c_stat & I2C_RFE) == 0))
  {
    (setup->rx_data)[count] = device->regptr->i2c_txrx;
    count++;
  }
  setup->rx_count = count;
  /* have all data been received? */
  if (count >= length)
  {
    /* disable all interrupts */
    device->regptr->i2c_ctrl &= I2C_SEVEN;
    /* update status */
    setup->status |= I2C_SETUP_STATUS_DONE;
    /* Disable I2C interrupt in the interrupt controller */
    disable_i2c_irq_int(devid);
  }
  return;
}

/***********************************************************************
 * I2C slave receiver followed by slave transmitter interrupt handler
 **********************************************************************/
void i2c_srxtx_handler(INT_32 devid)
{

}


/***********************************************************************
 *
 * Function: i2c1_user_interrupt
 *
 * Purpose: I2C1 interrupt handler
 *
 * Processing:
 *     See function.
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
void i2c1_user_interrupt(void)
{
  i2cdat[0].handler(0);
  return;
}

/***********************************************************************
 *
 * Function: i2c2_user_interrupt
 *
 * Purpose: I2C2 interrupt handler
 *
 * Processing:
 *     See function.
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
void i2c2_user_interrupt(void)
{
  i2cdat[1].handler(1);
  return;
}



/***********************************************************************
 *
 * Function: int_get_controller
 *
 * Purpose: Determines the interrupt controller based on interrupt
 *   source
 *
 * Processing:
 *     If the interrupt source is in the range of the MIC controller
 *	   then return MIC controller base or else if interrupt source is
 *	   in the range of the SIC1 controller return MIC controller base
 *	   or else if interrupt source is in the range of the SIC2
 *	   controller return SIC2 controller base.
 *
 * Parameters:
 *     source   : Interrupt source of type INTERRUPT_SOURCE_T
 *
 * Outputs:
 *	   pIntc_base: Contains the base address of controller
 *	   pBit_pos  : Contains the bit position of interrpt source within
 *                 controller regs
 *
 * Returns:
 *	  Interrupt controller base.
 *
 *
 **********************************************************************/
static BOOL_32 int_get_controller(INTERRUPT_SOURCE_T source,
                                  INTC_REGS_T** pIntc_base,
                                  UNS_32* pBit_pos)
{
  BOOL_32 ret_value = TRUE;

  /* Determine the interrupt controller */
  if (source < IRQ_SIC1_BASE)
  {
    *pIntc_base = MIC;
    *pBit_pos = (UNS_32)source;
  }
  else if ((source >= IRQ_SIC1_BASE) && (source < IRQ_SIC2_BASE))
  {
    *pIntc_base = SIC1;
    *pBit_pos = ((UNS_32)source - IRQ_SIC1_BASE);
  }
  else if (source < IRQ_END_OF_INTERRUPTS)
  {
    *pIntc_base = SIC2;
    *pBit_pos = ((UNS_32)source - IRQ_SIC2_BASE);
  }
  else
  {
    *pIntc_base = 0;
    *pBit_pos = 0;
    ret_value = FALSE;
  }
  return ret_value;
}

/***********************************************************************
 *
 * Function: int_enable
 *
 * Purpose: Enable an interrupt
 *
 * Processing:
 *     Enables the interrupt in the controller for the selected source.
 *
 * Parameters:
 *     source   : Interrupt source of type INTERRUPT_SOURCE_T
 *
 * Outputs: None
 *
 * Returns: Nothing
 *
 * Notes: None
 *
 **********************************************************************/
void int_enable(INTERRUPT_SOURCE_T source)
{
  BOOL_32 ret_value = FALSE;
  INTC_REGS_T *pIntc;
  UNS_32 bit_pos = 0;

  /* get the interrupt controller for the give interrupt source */
  ret_value = int_get_controller(source, &pIntc, &bit_pos);
  if (TRUE == ret_value)
  {
    /* cast the interrupt controller pointer*/
    pIntc->er |= _BIT(bit_pos);
  }
}

/***********************************************************************
 *
 * Function: int_disable
 *
 * Purpose: Disable an interrupt
 *
 * Processing:
 *     Masks the interrupt in the controller for the selected source.
 *
 * Parameters:
 *     source   : Interrupt source of type INTERRUPT_SOURCE_T
 *
 * Outputs: None
 *
 * Returns: Nothing
 *
 * Notes: None
 *
 **********************************************************************/
void int_disable(INTERRUPT_SOURCE_T source)
{
  BOOL_32 ret_value = FALSE;
  INTC_REGS_T *pIntc;
  UNS_32 bit_pos = 0;

  /* get the interrupt controller for the give interrupt source */
  ret_value = int_get_controller(source, &pIntc, &bit_pos);
  if (TRUE == ret_value)
  {
    /* cast the interrupt controller pointer*/
    pIntc->er &= ~_BIT(bit_pos);
  }
}

/***********************************************************************
 *
 * Function: enable_i2C_irq_int
 *
 * Purpose: enable specified I2C irq
 *
 * Processing:
 *     See function.
 *
 * Parameters:
 *     devid: Pointer to I2C config structure
 *
 * Outputs: None
 *
 * Returns: Nothing
 *
 * Notes: None
 *
 **********************************************************************/
void enable_i2c_irq_int(UNS_32 devid)
{
  if ((I2C_CFG_T *) devid == &i2cdat[0])
    int_enable(IRQ_I2C_1);
  else if ((I2C_CFG_T *) devid == &i2cdat[1])
    int_enable(IRQ_I2C_2);
}

/***********************************************************************
 *
 * Function: disable_i2c_irq_int
 *
 * Purpose: disable specified I2C irq
 *
 * Processing:
 *     See function.
 *
 * Parameters:
 *     devid: Pointer to I2C config structure
 *
 * Outputs: None
 *
 * Returns: Nothing
 *
 * Notes: None
 *
 **********************************************************************/
void disable_i2c_irq_int(UNS_32 devid)
{
  if ((I2C_CFG_T *) devid == &i2cdat[0])
    int_disable(IRQ_I2C_1);
  else if ((I2C_CFG_T *) devid == &i2cdat[1])
    int_disable(IRQ_I2C_1);
}

/***********************************************************************
 * I2C driver public functions
 **********************************************************************/

/***********************************************************************
 *
 * Function: i2c_open
 *
 * Purpose: Open the I2C
 *
 * Processing:
 *     If the passed register base is valid and the I2C
 *     driver isn't already initialized, then setup the I2C
 *     into a default initialized state that is disabled. Return
 *     a pointer to the driver's data structure or NULL if driver
 *     initialization failed.
 *
 * Parameters:
 *     ipbase: Pointer to a I2C peripheral block
 *     arg   : Not used
 *
 * Outputs: None
 *
 * Returns: The pointer to a I2C config structure or NULL
 *
 * Notes: None
 *
 **********************************************************************/
INT_32 i2c_open(INT_32 devid)
{
	I2C_CFG_T * device = NULL;

	if (devid == 0 || devid == 1)
	{
		device = (I2C_CFG_T *)&i2cdat[devid];
		/* has the selected I2C been previously initialized? */
		if (device->init == FALSE)
		{
			/* Device not initialized and it is usable, so set it to
			used */
			device->init = TRUE;
			
			/* Save address of register block */
			if (devid == 0) 
			{
				device->regptr = I2C1;
				disable_i2c_irq_int((UNS_32)device);
				
				SIC1_IRQInstall((VoidFpnt_t)i2c1_user_interrupt,Sub1I2C_1_INT,HIGH,EDGE,TYPE_IRQ);
				device->regptr->i2c_ctrl = I2C_RESET;
			}
			if (devid == 1) 
			{
				device->regptr = I2C2;			
				
				disable_i2c_irq_int((UNS_32)&i2cdat[1]);
				SIC1_IRQInstall((VoidFpnt_t)i2c2_user_interrupt,Sub1I2C_2_INT,HIGH,EDGE,TYPE_IRQ);
				device->regptr->i2c_ctrl = I2C_RESET;
			}
		}
	}

	return (INT_32)device;
}

/***********************************************************************
 *
 * Function: i2c_close
 *
 * Purpose: Close the I2C
 *
 * Processing:
 *     If init is not TRUE, then return _ERROR to the caller as the
 *     device was not previously opened. Otherwise, disable the
 *     I2C, set init to FALSE, and return _NO_ERROR to the caller.
 *
 * Parameters:
 *     devid: Pointer to I2C config structure
 *
 * Outputs: None
 *
 * Returns: The status of the close operation
 *
 * Notes: None
 *
 **********************************************************************/
ISTATUS i2c_close(INT_32 devid)
{
  UNS_32 i2c_id = 9999;
  ISTATUS status = _ERROR;

  if ((I2C_CFG_T *) devid == &i2cdat[0]) i2c_id = 0;
  if ((I2C_CFG_T *) devid == &i2cdat[1]) i2c_id = 1;
  {
    if (i2cdat[i2c_id].init == TRUE)
    {
      /* Set I2C as uninitialized */
      i2cdat[i2c_id].init = FALSE;

      /* disable I2C interrupt */
      disable_i2c_irq_int(devid);

      /* Successful operation */
      status = _NO_ERROR;
    }
  }

  return status;
}

/***********************************************************************
 *
 * Function: i2c_ioctl
 *
 * Purpose: I2C configuration block
 *
 * Processing:
 *     This function is a large case block. Based on the passed function
 *     and option values, set or get the appropriate timer parameter.
 *
 * Parameters:
 *     devid: Pointer to I2C config structure
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
ISTATUS i2c_ioctl(INT_32 devid,
                 INT_32 cmd,
                 INT_32 arg)
{
  UNS_32 tmp, high, low;
  UNS_32 i2c_id = 9999;
  INT_32 status = _ERROR;
  I2C_CFG_T * device;
  I2C_SETUP_T * param;
  I2C_MTX_SETUP_T*   setup_mtx;
  I2C_MRX_SETUP_T*   setup_mrx;
  I2C_MTXRX_SETUP_T* setup_mtxrx;
  I2C_SRX_SETUP_T*   setup_srx;
  I2C_STX_SETUP_T*   setup_stx;

  
	  
  if ((I2C_CFG_T *) devid == &i2cdat[0]) i2c_id = 0;
  if ((I2C_CFG_T *) devid == &i2cdat[1]) i2c_id = 1;

  if (i2c_id != 9999)
  {
    if (i2cdat[i2c_id].init == TRUE)
    {
      status = _NO_ERROR;
      device = ((I2C_CFG_T *) devid);
      param  = (I2C_SETUP_T *) arg;

      switch (cmd)
      {
        case I2C_SETUP:
          /* soft reset */
          device->regptr->i2c_ctrl = I2C_RESET;
          /* set 7/10 address mode */
          if (param->addr_mode == ADDR7BIT)
          {
            device->regptr->i2c_ctrl = 0;
          }
          else
          {
            device->regptr->i2c_ctrl = I2C_SEVEN;
          }
          /* set the slave address */
          device->regptr->i2c_adr = param->sl_addr;
          /* set the I2C clock */
          if (param->rate_option == I2C_RATE_ABSOLUTE)
          {
            device->regptr->i2c_clk_lo = param->low_phase;
            device->regptr->i2c_clk_hi = param->high_phase;
          }
          else
          {
            low = param->low_phase;
            high = param->high_phase;
            tmp = clkpwr_get_base_clock_rate(CLKPWR_HCLK);
            device->regptr->i2c_clk_lo = (low * (tmp / (high + low))) / param->rate;
            device->regptr->i2c_clk_hi = (high * (tmp / (high + low))) / param->rate;
          }
          device->ip_setup = param;
		  
          clkpwr_set_i2c_driver(i2c_id + 1, param->pins_drive);
          break;

        case I2C_MASTER_TX:
          /* disable I2C interrupt */
          disable_i2c_irq_int(devid);
          setup_mtx = (I2C_MTX_SETUP_T*) arg;
          /* link setup parameters */
          device->txrx_setup = (UNS_32) setup_mtx;
          /* clear transmitted byte counter */
          setup_mtx->tx_count = 0;
          /* clear retransmissions counter */
          setup_mtx->retransmissions_count = 0;
          /* prepare actual interrupt handler */
          device->handler = i2c_mtx_handler;
          /* soft reset */
          device->regptr->i2c_ctrl = I2C_RESET;
		  
          /* set 7/10 address mode */
          if (param->addr_mode == ADDR7BIT)
          {
            device->regptr->i2c_ctrl = 0;
          }
          else
          {
            device->regptr->i2c_ctrl = I2C_SEVEN;
          }
		  
          /* reset status */
          setup_mtx->status = 0x00000000;
          /* clear AFI and TDI bits */
          device->regptr->i2c_stat = I2C_AFI | I2C_TDI;
          /* en TxFIFO nt Fll,M Tx Dt Rq,Tx noACK,Tx Arb,Tx Dn Ints */
		  device->regptr->i2c_ctrl = 
              (device->regptr->i2c_ctrl & I2C_SEVEN) | I2C_TFFIE | 
              I2C_DRMIE | I2C_NAIE | I2C_AFIE | I2C_TDIE;
		  
          /* load slave address */
          load_slave_address(devid, setup_mtx->addr_mode, 
                             setup_mtx->sl_addr, I2C_M_WRITE);
          /* Enable I2C interrupt in the interrupt controller */
          enable_i2c_irq_int(devid);
          break;

        case I2C_MASTER_RX:
			
          /* disable I2C interrupt */
          disable_i2c_irq_int(devid);
          setup_mrx = (I2C_MRX_SETUP_T*) arg;
          /* link setup parameters */
          device->txrx_setup = (UNS_32) setup_mrx;
          /* clear received byte counter */
          setup_mrx->rx_count = 0;
          /* set transmitted byte counter */
          setup_mrx->tx_count = 1;
          /* clear retransmissions counter */
          setup_mrx->retransmissions_count = 0;
          /* prepare actual interrupt handler */
          device->handler = i2c_mrx_handler;
          /* soft reset */
          device->regptr->i2c_ctrl = I2C_RESET;
         /* set 7/10 address mode */
          if (param->addr_mode == ADDR7BIT)
          {
            device->regptr->i2c_ctrl = 0;
          }
          else
          {
            device->regptr->i2c_ctrl = I2C_SEVEN;
          }
          /* reset status */
          setup_mrx->status = 0x00000000;
          /* clear AFI and TDI bits */
          device->regptr->i2c_stat = I2C_AFI | I2C_TDI;
          /* en RxDtAv,Rx FIFO Fll,M TxDt Rq,Tx noACK,TxArb,TxDn Ints */
		  
          device->regptr->i2c_ctrl = 
              (device->regptr->i2c_ctrl & I2C_SEVEN) | I2C_RFDAIE | 
              I2C_RFFIE | I2C_DRMIE | I2C_NAIE | I2C_AFIE | I2C_TDIE;
		  
          /* load slave address */
          load_slave_address(devid, setup_mrx->addr_mode, 
                             setup_mrx->sl_addr, I2C_M_READ);
		  /* write a dummy byte to trigger actual data transfer */
		  if(setup_mrx->tx_count == setup_mrx->rx_length)
		  {
			  device->regptr->i2c_txrx = I2C_STOP | 0xAA;
		  }
		  else
		  {
				device->regptr->i2c_txrx = 0xAA;
		  }
          /* Enable I2C interrupt in the interrupt controller */
          enable_i2c_irq_int(devid);
          break;

        case I2C_SLAVE_TX:
          /* disable I2C interrupt */
          disable_i2c_irq_int(devid);
          setup_stx = (I2C_STX_SETUP_T*) arg;
          /* link setup parameters */
          device->txrx_setup = (UNS_32) setup_stx;
          /* clear transmitted byte counter */
          setup_stx->tx_count = 0;
          /* prepare actual interrupt handler */
          device->handler = i2c_stx_handler;
          /* soft reset */
          device->regptr->i2c_ctrl = I2C_RESET;
          /* set 7/10 address mode */
          if (param->addr_mode == ADDR7BIT)
          {
            device->regptr->i2c_ctrl = 0;
          }
          else
          {
            device->regptr->i2c_ctrl = I2C_SEVEN;
          }
          /* reset status */
          setup_stx->status = 0x00000000;
          /* enable Slave Tx FIFO Not Full, Slave Tx Data Req Ints */
          device->regptr->i2c_ctrl = 
              (device->regptr->i2c_ctrl & I2C_SEVEN) | 
              I2C_TFFSIE | I2C_DRSIE;
          /* Enable I2C interrupt in the interrupt controller */
          enable_i2c_irq_int(devid);
          break;

        case I2C_SLAVE_RX:
          /* disable I2C interrupt */
          disable_i2c_irq_int(devid);
          setup_srx = (I2C_SRX_SETUP_T*) arg;
          /* link setup parameters */
          device->txrx_setup = (UNS_32) setup_srx;
          /* clear received byte counter */
          setup_srx->rx_count = 0;
          /* prepare actual interrupt handler */
          device->handler = i2c_srx_handler;
          /* soft reset */
          device->regptr->i2c_ctrl = I2C_RESET;
          /* set 7/10 address mode */
          if (param->addr_mode == ADDR7BIT)
          {
            device->regptr->i2c_ctrl = 0;
          }
          else
          {
            device->regptr->i2c_ctrl = I2C_SEVEN;
          }
          /* reset status */
          setup_srx->status = 0x00000000;
          /* enable Rx Data Available, Rx FIFO Full Ints */
          device->regptr->i2c_ctrl = 
              (device->regptr->i2c_ctrl & I2C_SEVEN) | 
              I2C_RFDAIE | I2C_RFFIE;
          /* Enable I2C interrupt in the interrupt controller */
          enable_i2c_irq_int(devid);
          break;

        case I2C_MASTER_TXRX:
          /* disable I2C interrupt */
          disable_i2c_irq_int(devid);
          setup_mtxrx = (I2C_MTXRX_SETUP_T*) arg;
          /* link setup parameters */
          device->txrx_setup = (UNS_32) setup_mtxrx;
          /* clear transmitted & received byte counter */
          setup_mtxrx->tx_count = 0;
          setup_mtxrx->rx_count = 0;
          /* clear retransmissions counter */
          setup_mtxrx->retransmissions_count = 0;
          /* prepare actual interrupt handler */
          device->handler = i2c_mtxrx_handler;
          /* soft reset */
          device->regptr->i2c_ctrl = I2C_RESET;
          /* set 7/10 address mode */
          if (param->addr_mode == ADDR7BIT)
          {
            device->regptr->i2c_ctrl = 0;
          }
          else
          {
            device->regptr->i2c_ctrl = I2C_SEVEN;
          }
          /* reset status */
          setup_mtxrx->status = 0x00000000;
          /* clear AFI and TDI bits */
          device->regptr->i2c_stat = I2C_AFI | I2C_TDI;
          /* en TxFIFO notFll,M TxDtReq,Tx noACK,TxArb Fail,TxDn Ints */
          device->regptr->i2c_ctrl = 
              (device->regptr->i2c_ctrl & I2C_SEVEN) | I2C_TFFIE | 
              I2C_DRMIE | I2C_NAIE | I2C_AFIE | I2C_TDIE;
          /* load slave address */
          load_slave_address(devid, setup_mtxrx->addr_mode, 
                             setup_mtxrx->sl_addr, I2C_M_WRITE);
          /* Enable I2C interrupt in the interrupt controller */
          enable_i2c_irq_int(devid);
          break;

        case I2C_SLAVE_RXTX:
          break;

        default:
          break;
      }
    }
  }

  return status;
}

/***********************************************************************
 *
 * Function: i2c_read
 *
 * Purpose: I2C read function (stub only)
 *
 * Processing:
 *     Return 0 to the caller.
 *
 * Parameters:
 *     devid:     Pointer to millisecond timer descriptor
 *     buffer:    Pointer to data buffer to copy to
 *     max_bytes: Number of bytes to read
 *
 * Outputs: None
 *
 * Returns: Number of bytes actually read (always 0)
 *
 * Notes: None
 *
 **********************************************************************/
INT_32 i2c_read(INT_32 devid, UNS_32 sAddr, void *buffer, INT_32 max_bytes)
{
	I2C_MRX_SETUP_T mSetup;
	
	mSetup.addr_mode = ADDR7BIT;
	mSetup.sl_addr = sAddr;
	mSetup.rx_data = (UNS_8*)buffer;
	mSetup.tx_count = 0;
	mSetup.retransmissions_count = 0;
	mSetup.retransmissions_max = 2;
	mSetup.rx_count = 0;
	mSetup.rx_length = max_bytes;
	mSetup.status = 0;
	
	if(i2c_ioctl((INT_32)&i2cdat[devid],I2C_MASTER_RX,(INT_32)&mSetup) == _ERROR)
	{
		return _ERROR;
	}
	
	if(mSetup.status & I2C_SETUP_STATUS_DONE)
	{
		if((mSetup.status & (I2C_SETUP_STATUS_ARBF | I2C_SETUP_STATUS_NOACKF)) != 0)
		{
			return _ERROR;
		}
	}
	return _NO_ERROR;
}

INT_32 i2c_WriteRead(INT_32 devid, UNS_32 sAddr, void *pTxBuf, INT_32 max_txbytes,
				void *pRxBuf, INT_32 max_rxbytes)
{
	I2C_MTXRX_SETUP_T mSetup;
	
	mSetup.addr_mode = ADDR7BIT;
	mSetup.sl_addr = sAddr;
	mSetup.tx_data = (UNS_8*)pTxBuf;
	mSetup.tx_length = max_txbytes;
	mSetup.tx_count = 0;
	mSetup.rx_data = (UNS_8*)pRxBuf;
	mSetup.rx_count = 0;
	mSetup.rx_length = max_rxbytes;
	mSetup.retransmissions_max = 2;
	mSetup.retransmissions_count = 0;
	mSetup.status = 0;

	if(i2c_ioctl((INT_32)&i2cdat[devid],I2C_MASTER_TXRX,(INT_32)&mSetup) == _ERROR)
	{
		return _ERROR;
	}
	
	if(mSetup.status & I2C_SETUP_STATUS_DONE)
	{
		if((mSetup.status & (I2C_SETUP_STATUS_ARBF | I2C_SETUP_STATUS_NOACKF)) != 0)
		{
			return _ERROR;
		}
	}
	return _NO_ERROR;
}

/***********************************************************************
 *
 * Function: i2c_write
 *
 * Purpose: I2C write function (stub only)
 *
 * Processing:
 *     Return 0 to the caller.
 *
 * Parameters:
 *     devid:   Pointer to millisecond timer descriptor
 *     buffer:  Pointer to data buffer to copy from
 *     n_bytes: Number of bytes to write
 *
 * Outputs: None
 *
 * Returns: Number of bytes actually written (always 0)
 *
 * Notes: None
 *
 **********************************************************************/

INT_32 i2c_write(INT_32 devid, UNS_32 sAddr, void *buffer, INT_32 n_bytes)
{
	I2C_MTX_SETUP_T mSetup;
	
	mSetup.addr_mode = ADDR7BIT;
	mSetup.sl_addr = sAddr;
	mSetup.tx_data = (UNS_8*)buffer;
	mSetup.tx_count = 0;
	mSetup.tx_length = n_bytes;
	
	mSetup.retransmissions_count = 0;
	mSetup.retransmissions_max = 2;
	mSetup.status = 0;

	if(i2c_ioctl((INT_32)&i2cdat[devid],I2C_MASTER_TX,(INT_32)&mSetup) == _ERROR)
	{
		return _ERROR;
	}
	m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp = 0;
	while(1)
	{
		if(mSetup.status & I2C_SETUP_STATUS_DONE) 
		{
			break;
		}
		if(DEF_I2C_TIMEOUT <= m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp)
		{
			return _ERROR;
		}
	}
	if((mSetup.status & (I2C_SETUP_STATUS_ARBF | I2C_SETUP_STATUS_NOACKF)) != 0)
	{
		return _ERROR;
	}
	return _NO_ERROR;
}

INT_32 EepromRead(INT_32 devid,UNS_32 sAddr, void *buffer, INT_32 n_bytes)
{
	INT_32 status;
	I2C_MRX_SETUP_T mSetup;
	UNS_8* pBuffer;
	INT_32 mCnt;
	INT_32 tCnt;
	
	pBuffer = (UNS_8*)buffer;

	mCnt = n_bytes;
	status = _NO_ERROR;
	memset(pBuffer,0x0,n_bytes);
	
	mSetup.addr_mode = ADDR7BIT;
	mSetup.sl_addr = sAddr;
	mSetup.retransmissions_max = 2;
	mSetup.tx_count = 0;
	
	while(mCnt)
	{
		if(mCnt < 32) tCnt = mCnt;
		else tCnt = 32;
	
		mSetup.rx_data = (UNS_8*)pBuffer;
		mSetup.rx_length = tCnt;
		mSetup.rx_count = 0;

		if(i2c_ioctl((INT_32)&i2cdat[devid],I2C_MASTER_RX,(INT_32)&mSetup) == _ERROR)
		{
			status =  _ERROR;
			break;
		}
		m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp = 0;
		while(1)
		{
			if(mSetup.status & I2C_SETUP_STATUS_DONE) 
			{
				break;
			}
			if(DEF_I2C_TIMEOUT <= m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp)
			{
				return _ERROR;
			}
		}
		if((mSetup.status & (I2C_SETUP_STATUS_ARBF | I2C_SETUP_STATUS_NOACKF)) != 0)
		{
			status =  _ERROR;
			break;
		}
		
		mCnt -= tCnt;
		pBuffer += tCnt;
	}
	return status;
}

INT_32 EepromWriteRead(INT_32 devid,UNS_32 sAddr, UNS_32 mAddr, void *buffer, INT_32 n_bytes)
{
	INT_32 status;
	I2C_MTXRX_SETUP_T mSetup;
	UNS_32 mMemAddr;
	UNS_8* pBuffer;
	UNS_8 mBuffer[2];
	INT_32 mCnt;
	INT_32 tCnt;
	
	status = _NO_ERROR;
	
	pBuffer = (UNS_8*)buffer;
	mMemAddr = mAddr;
	mCnt = n_bytes;
	
	memset(pBuffer,0x0,n_bytes);
	
	mSetup.addr_mode = ADDR7BIT;
	mSetup.sl_addr = sAddr;
	mSetup.retransmissions_max = 2;

	while(mCnt)
	{
		if(mCnt < 32) tCnt = mCnt;
		else tCnt = 32;
		i2c_Defaultdelay();
		mBuffer[0] = (char)((mMemAddr >> 8) & 0xFF);
		mBuffer[1] = (char)(mMemAddr & 0xFF);
		
		mSetup.retransmissions_count = 0;	
		mSetup.tx_data = mBuffer;
		mSetup.tx_length = 2;
		mSetup.tx_count = 0;
		
		mSetup.rx_data = (UNS_8*)pBuffer;
		mSetup.rx_length = tCnt;
		mSetup.rx_count = 0;


		if(i2c_ioctl((INT_32)&i2cdat[devid],I2C_MASTER_TXRX,(INT_32)&mSetup) == _ERROR)
		{
			status =  _ERROR;
			break;
		}
		
		m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp = 0;
		while(1)
		{
			i2c_Defaultdelay();
			if(mSetup.status & I2C_SETUP_STATUS_DONE) 
			{
				break;
			}
			if(DEF_I2C_TIMEOUT <= m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp)
			{
				return _ERROR;
			}
		}
		if((mSetup.status & (I2C_SETUP_STATUS_ARBF | I2C_SETUP_STATUS_NOACKF)) != 0)
		{
			status =  _ERROR;
			break;
		}
		
		mCnt -= tCnt;
		mMemAddr += tCnt;
		pBuffer += tCnt;
	}
	
	return status;
}

INT_32 EepromWrite(INT_32 devid,UNS_32 sAddr, UNS_32 mAddr, void *buffer, INT_32 n_bytes)
{
	INT_32 status = _NO_ERROR;
	I2C_MTX_SETUP_T mSetup;
	UNS_8* pBuffer;
	UNS_8 mBuffer[35];
	UNS_32 mMemAddr;
	INT_32 mCnt;
	INT_32 tCnt;

	pBuffer = (UNS_8*)buffer;
	mMemAddr = mAddr;
	mCnt = n_bytes;
	
	mSetup.addr_mode = ADDR7BIT;
	mSetup.sl_addr = sAddr;
	mSetup.chk_TDI = 0;
	mSetup.tx_data = (UNS_8*)mBuffer;
	mSetup.retransmissions_max = 2;
	
	while(mCnt > 0)
	{
		memset(mBuffer,0x0,35);
		i2c_Defaultdelay();
		if(mCnt < 32) tCnt = mCnt;
		else tCnt = 32;
		
		mBuffer[0] = (char)((mMemAddr >> 8) & 0xFF);
		mBuffer[1] = (char)(mMemAddr & 0xFF);
		memcpy(&mBuffer[2],pBuffer,tCnt);
		
		mSetup.retransmissions_count = 0;
		mSetup.tx_length = tCnt + 2;
		mSetup.tx_count = 0;
		if(i2c_ioctl((INT_32)&i2cdat[devid],I2C_MASTER_TX,(INT_32)&mSetup) == _ERROR)
		{
			status = _ERROR;
			break;
		}
		m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp = 0;
		while(1)
		{
			i2c_Defaultdelay();
			if(mSetup.status & I2C_SETUP_STATUS_DONE) 
			{
				break;
			}
			if(DEF_I2C_TIMEOUT <= m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp)
			{
				return _ERROR;
			}
		}
		if((mSetup.status & (I2C_SETUP_STATUS_ARBF | I2C_SETUP_STATUS_NOACKF)) != 0)
		{
			status =  _ERROR;
			break;
		}
		while(m_pGlobalVar->nI2CWriteDelayTick[devid] > 0)
		{
			i2c_Defaultdelay();
		};
		mCnt -= tCnt;
		mMemAddr += tCnt;
		pBuffer += tCnt;
		
	}

	return status;
}

INT_32 EepromSetMemAddr(INT_32 devid,UNS_32 sAddr, UNS_16 mAddr)
{
	char mBuf[2];

	mBuf[0] = (char)(mAddr & 0xFF);
	mBuf[1] = (char)((mAddr >> 8) & 0xFF);
		
	return i2c_write(devid,sAddr,mBuf,2);
}

INT_32 SetupI2C(INT_32 devid,UNS_32 sAddr)
{
	I2C_SETUP_T mSetup;
		
	mSetup.addr_mode = ADDR7BIT;
	mSetup.sl_addr = sAddr;
	mSetup.rate_option = I2C_RATE_ABSOLUTE;	
	mSetup.rate = 1040;     // 1040;	//260
	mSetup.low_phase = 520;    // 520;	//94
	mSetup.high_phase = 520;    //520;  // 166
	mSetup.pins_drive = I2C_PINS_LOW_DRIVE;
	
	return i2c_ioctl((INT_32)&i2cdat[devid],I2C_SETUP,(INT_32)&mSetup);
}

void UshortToByte(unsigned short us, byte* pByte)
{
	*pByte = (byte)((us >> 8) & 0xFF); 
	*(pByte + 1) = (byte)(us & 0xFF); 
}

unsigned short ByteToUshort(byte* pByte)
{
	unsigned short tmp;
	tmp = ((unsigned short)*pByte << 8) & 0xFF00;
	tmp |= ((unsigned short)*(pByte + 1)) & 0xFF;
	return tmp;
}

inline void FixEisCalInf(st_zim_Eis_Cal_info* pEis_cal_info)
{
	if(isnan(pEis_cal_info->n1)) pEis_cal_info->n1 = 0.0;
	if(isnan(pEis_cal_info->n2)) pEis_cal_info->n2 = 0.0;
	if(isnan(pEis_cal_info->n3)) pEis_cal_info->n3 = 0.0;
	if(isnan(pEis_cal_info->d1)) pEis_cal_info->d1 = 0.0;
	if(isnan(pEis_cal_info->d2)) pEis_cal_info->d2 = 0.0;
	if(isnan(pEis_cal_info->d3)) pEis_cal_info->d3 = 0.0;
}

inline void InitEisCalInf(st_zim_Eis_Cal_info* pEis_cal_info)
{
	pEis_cal_info->n1 = 0.0;
	pEis_cal_info->n2 = 0.0;
	pEis_cal_info->n3 = 0.0;
	pEis_cal_info->d1 = 0.0;
	pEis_cal_info->d2 = 0.0;
	pEis_cal_info->d3 = 0.0;
}

void InitRangeInf(void)
{
	int i;
	int type = m_pSysConfig->mZimCfg.cModel[0]-0x30;
	
	m_pGlobalVar->ranges.ID = ID_RANGEINFO;
	m_pGlobalVar->ranges.mSafety.MaxPower = DEF_DEFAULT_POWER;
	m_pGlobalVar->ranges.mEisCable.selected = 0;
	for(i=0; i<4; i++)
	{
		m_pGlobalVar->ranges.mEisCable.Ls[i] = 0.0;
	}
	for(i=0; i<4; i++)
	{
		m_pGlobalVar->ranges.mEisCable.bnouse[i] = 0;
	}
	m_pGlobalVar->ranges.mEisCable.dnouse = 0.0;
	for(i=0; i<MAX_IAC_CTRL_RNGCNT; i++)
	{
		InitEisCalInf(&m_pGlobalVar->ranges.mEisIRngCalInfo[i]);
		
	}
	m_pGlobalVar->ranges.mEirIrngCompLs.Ls[0] = 57.367e-9;
	m_pGlobalVar->ranges.mEirIrngCompLs.Ls[1] = 57.367e-9;
	m_pGlobalVar->ranges.mEirIrngCompLs.Ls[2] = 52.47e-9;
	m_pGlobalVar->ranges.mEirIrngCompLs.Ls[3] = 52.47e-9;
	m_pGlobalVar->ranges.mEirIrngCompLs.Ls[4] = 107.241e-9;
	m_pGlobalVar->ranges.mEirIrngCompLs.Ls[5] = 107.241e-9;
	m_pGlobalVar->ranges.mEirIrngCompLs.Ls[6] = 1.893e-6;
	m_pGlobalVar->ranges.mEirIrngCompLs.Ls[7] = 1.893e-6;
	
	//PT-1000 - 1000ohm : 0'C, RREF - 4000ohm
	//PT-100  -  100ohm : 0'C. RREF -  400ohm
	m_pGlobalVar->ranges.rtd_rng.maximum = DEF_ADC_RTD_CONST_MAX;
	m_pGlobalVar->ranges.rtd_rng.minimum = DEF_ADC_RTD_CONST_MIN;
	m_pGlobalVar->ranges.rtd_rng.factor = DEF_ADC_RTD_CONST_PT100;
	m_pGlobalVar->ranges.rtd_rng.gain = 1.0;
	m_pGlobalVar->ranges.rtd_rng.offset = 0.0;
	
	if(type == DEV_BZA60HZ)
	{
		iRange[0] = DEF_IAC_RNG1_MAX;
		m_pGlobalVar->ranges.iac_rng[0].maximum = DEF_ADC_IAC_RNG1_MAX;
		m_pGlobalVar->ranges.iac_rng[0].minimum = DEF_ADC_IAC_RNG1_MIN;
		m_pGlobalVar->ranges.iac_rng[0].factor = DEF_ADC_IAC_RNG1_FACTOR;
		
		iRange[1] = DEF_IAC_RNG2_MAX;
		m_pGlobalVar->ranges.iac_rng[1].maximum = DEF_ADC_IAC_RNG2_MAX;
		m_pGlobalVar->ranges.iac_rng[1].minimum = DEF_ADC_IAC_RNG2_MIN;
		m_pGlobalVar->ranges.iac_rng[1].factor = DEF_ADC_IAC_RNG2_FACTOR;
		
		iRange[2] = DEF_IAC_RNG3_MAX;
		m_pGlobalVar->ranges.iac_rng[2].maximum = DEF_ADC_IAC_RNG3_MAX;
		m_pGlobalVar->ranges.iac_rng[2].minimum = DEF_ADC_IAC_RNG3_MIN;
		m_pGlobalVar->ranges.iac_rng[2].factor = DEF_ADC_IAC_RNG3_FACTOR;
		
		iRange[3] = DEF_IAC_RNG4_MAX;
		m_pGlobalVar->ranges.iac_rng[3].maximum = DEF_ADC_IAC_RNG4_MAX;
		m_pGlobalVar->ranges.iac_rng[3].minimum = DEF_ADC_IAC_RNG4_MIN;
		m_pGlobalVar->ranges.iac_rng[3].factor = DEF_ADC_IAC_RNG4_FACTOR;
	}
	else
	{
		iRange[0] = DEF_IAC_RNG0_MAX;
		m_pGlobalVar->ranges.iac_rng[0].maximum = DEF_ADC_IAC_RNG0_MAX;
		m_pGlobalVar->ranges.iac_rng[0].minimum = DEF_ADC_IAC_RNG0_MIN;
		m_pGlobalVar->ranges.iac_rng[0].factor = DEF_ADC_IAC_RNG0_FACTOR;

		iRange[1] = DEF_IAC_RNG1_MAX;
		m_pGlobalVar->ranges.iac_rng[1].maximum = DEF_ADC_IAC_RNG1_MAX;
		m_pGlobalVar->ranges.iac_rng[1].minimum = DEF_ADC_IAC_RNG1_MIN;
		m_pGlobalVar->ranges.iac_rng[1].factor = DEF_ADC_IAC_RNG1_FACTOR;

		iRange[2] = DEF_IAC_RNG2_MAX;
		m_pGlobalVar->ranges.iac_rng[2].maximum = DEF_ADC_IAC_RNG2_MAX;
		m_pGlobalVar->ranges.iac_rng[2].minimum = DEF_ADC_IAC_RNG2_MIN;
		m_pGlobalVar->ranges.iac_rng[2].factor = DEF_ADC_IAC_RNG2_FACTOR;

		iRange[3] = DEF_IAC_RNG3_MAX;
		m_pGlobalVar->ranges.iac_rng[3].maximum = DEF_ADC_IAC_RNG3_MAX;
		m_pGlobalVar->ranges.iac_rng[3].minimum = DEF_ADC_IAC_RNG3_MIN;
		m_pGlobalVar->ranges.iac_rng[3].factor = DEF_ADC_IAC_RNG3_FACTOR;
	}

	m_pGlobalVar->ranges.iac_rng[0].gain = 1.0;
	m_pGlobalVar->ranges.iac_rng[0].offset = 1.0;
	
	m_pGlobalVar->ranges.iac_rng[1].gain = 1.0;
	m_pGlobalVar->ranges.iac_rng[1].offset = 1.0;

	m_pGlobalVar->ranges.iac_rng[2].gain = 1.0;
	m_pGlobalVar->ranges.iac_rng[2].offset = 1.0;

	m_pGlobalVar->ranges.iac_rng[3].gain = 1.0;
	m_pGlobalVar->ranges.iac_rng[3].offset = 1.0;

	m_pGlobalVar->ranges.vac_rng.maximum = DEF_ADC_VAC_RNG_MAX;
	m_pGlobalVar->ranges.vac_rng.minimum = DEF_ADC_VAC_RNG_MIN;
	m_pGlobalVar->ranges.vac_rng.factor = DEF_ADC_VAC_RNG_FACTOR;
	m_pGlobalVar->ranges.vac_rng.gain = 1.0;
	m_pGlobalVar->ranges.vac_rng.offset = 0.0;
	
	m_pGlobalVar->ranges.vac_rng.maximum = DEF_ADC_VAC_RNG_MAX;
	m_pGlobalVar->ranges.vac_rng.minimum = DEF_ADC_VAC_RNG_MIN;
	m_pGlobalVar->ranges.vac_rng.factor = DEF_ADC_VAC_RNG_FACTOR;
	m_pGlobalVar->ranges.vac_rng.gain = 1.0;
	m_pGlobalVar->ranges.vac_rng.offset = 0.0;

	if(type == DEV_BZA100)
	{
		m_pGlobalVar->ranges.vdc_rng[0].maximum = 100.0;
		m_pGlobalVar->ranges.vdc_rng[0].minimum = -100.0;
		m_pGlobalVar->ranges.vdc_rng[0].factor = DEF_ADC_VDC_RNG0_FACTOR1;
		m_pGlobalVar->ranges.vdc_rng[0].gain = 1.0;
		m_pGlobalVar->ranges.vdc_rng[0].offset = 0.0;
		
		m_pGlobalVar->ranges.vdc_rng[1].maximum = 10.0;
		m_pGlobalVar->ranges.vdc_rng[1].minimum = -10.0;
		m_pGlobalVar->ranges.vdc_rng[1].factor = DEF_ADC_VDC_RNG1_FACTOR1;
		m_pGlobalVar->ranges.vdc_rng[1].gain = 1.0;
		m_pGlobalVar->ranges.vdc_rng[1].offset = 0.0;
	}
	else if(type == DEV_BZA500)
	{
		m_pGlobalVar->ranges.vdc_rng[0].maximum = 500.0;
		m_pGlobalVar->ranges.vdc_rng[0].minimum = -500.0;
		m_pGlobalVar->ranges.vdc_rng[0].factor = DEF_ADC_VDC_RNG0_FACTOR;
		m_pGlobalVar->ranges.vdc_rng[0].gain = 1.0;
		m_pGlobalVar->ranges.vdc_rng[0].offset = 0.0;
		
		m_pGlobalVar->ranges.vdc_rng[1].maximum = 50.0;
		m_pGlobalVar->ranges.vdc_rng[1].minimum = -50.0;
		m_pGlobalVar->ranges.vdc_rng[1].factor = DEF_ADC_VDC_RNG1_FACTOR;
		m_pGlobalVar->ranges.vdc_rng[1].gain = 1.0;
		m_pGlobalVar->ranges.vdc_rng[1].offset = 0.0;
	}
	else if(type == DEV_BZA60 || type == DEV_BZA60HZ)
	{
		m_pGlobalVar->ranges.vdc_rng[0].maximum = 60.0;
		m_pGlobalVar->ranges.vdc_rng[0].minimum = -60.0;
		m_pGlobalVar->ranges.vdc_rng[0].factor = DEF_ADC_VDC_RNG0_FACTOR1;
		m_pGlobalVar->ranges.vdc_rng[0].gain = 1.0;
		m_pGlobalVar->ranges.vdc_rng[0].offset = 0.0;
		
		m_pGlobalVar->ranges.vdc_rng[1].maximum = 6.0;
		m_pGlobalVar->ranges.vdc_rng[1].minimum = -6.0;
		m_pGlobalVar->ranges.vdc_rng[1].factor = DEF_ADC_VDC_RNG1_FACTOR1;
		m_pGlobalVar->ranges.vdc_rng[1].gain = 1.0;
		m_pGlobalVar->ranges.vdc_rng[1].offset = 0.0;
	}
	else
	{
		m_pGlobalVar->ranges.vdc_rng[0].maximum = 1500.0;
		m_pGlobalVar->ranges.vdc_rng[0].minimum = -1500.0;
		m_pGlobalVar->ranges.vdc_rng[0].factor = DEF_ADC_VDC_RNG0_FACTOR;
		m_pGlobalVar->ranges.vdc_rng[0].gain = 1.0;
		m_pGlobalVar->ranges.vdc_rng[0].offset = 0.0;
		
		m_pGlobalVar->ranges.vdc_rng[1].maximum = 100.0;
		m_pGlobalVar->ranges.vdc_rng[1].minimum = -100.0;
		m_pGlobalVar->ranges.vdc_rng[1].factor = DEF_ADC_VDC_RNG1_FACTOR;
		m_pGlobalVar->ranges.vdc_rng[1].gain = 1.0;
		m_pGlobalVar->ranges.vdc_rng[1].offset = 0.0;
	}
	
	
}

void InitFixRangeInf(void)
{
	int i;
	int type = m_pSysConfig->mZimCfg.cModel[0]-0x30;
	
	m_pGlobalVar->ranges.ID = ID_RANGEINFO;
	
	/*if(m_pGlobalVar->ranges.mSafety.MaxPower > DEF_DEV_MAX_POWER)
	{
		m_pGlobalVar->ranges.mSafety.MaxPower = DEF_DEV_MAX_POWER;
	}
	*/
	if(m_pGlobalVar->ranges.mEisCable.selected > 3) 
	{
		m_pGlobalVar->ranges.mEisCable.selected = 0;
		for(i=0; i<4; i++)
		{
			m_pGlobalVar->ranges.mEisCable.Ls[i] = 0.0;
		}
		for(i=0; i<4; i++)
		{
			m_pGlobalVar->ranges.mEisCable.bnouse[i] = 0;
		}
		m_pGlobalVar->ranges.mEisCable.dnouse = 0.0;
	}
	
	
	for(i=0; i<MAX_IAC_CTRL_RNGCNT; i++)
	{
		FixEisCalInf(&m_pGlobalVar->ranges.mEisIRngCalInfo[i]);
	}
	
	if(isnan(m_pGlobalVar->ranges.mEirIrngCompLs.Ls[0]))m_pGlobalVar->ranges.mEirIrngCompLs.Ls[0] = 57.367e-9;
	if(isnan(m_pGlobalVar->ranges.mEirIrngCompLs.Ls[1]))m_pGlobalVar->ranges.mEirIrngCompLs.Ls[1] = 57.367e-9;
	if(isnan(m_pGlobalVar->ranges.mEirIrngCompLs.Ls[2]))m_pGlobalVar->ranges.mEirIrngCompLs.Ls[2] = 52.47e-9;
	if(isnan(m_pGlobalVar->ranges.mEirIrngCompLs.Ls[3]))m_pGlobalVar->ranges.mEirIrngCompLs.Ls[3] = 52.47e-9;
	if(isnan(m_pGlobalVar->ranges.mEirIrngCompLs.Ls[4]))m_pGlobalVar->ranges.mEirIrngCompLs.Ls[4] = 107.241e-9;
	if(isnan(m_pGlobalVar->ranges.mEirIrngCompLs.Ls[5]))m_pGlobalVar->ranges.mEirIrngCompLs.Ls[5] = 107.241e-9;
	if(isnan(m_pGlobalVar->ranges.mEirIrngCompLs.Ls[6]))m_pGlobalVar->ranges.mEirIrngCompLs.Ls[6] = 1.893e-6;
	if(isnan(m_pGlobalVar->ranges.mEirIrngCompLs.Ls[7]))m_pGlobalVar->ranges.mEirIrngCompLs.Ls[7] = 1.893e-6;

	
	//PT-1000 - 1000ohm : 0'C, RREF - 4000ohm
	//PT-100  -  100ohm : 0'C. RREF -  400ohm
	m_pGlobalVar->ranges.rtd_rng.maximum = DEF_ADC_RTD_CONST_MAX;
	m_pGlobalVar->ranges.rtd_rng.minimum = DEF_ADC_RTD_CONST_MIN;
	m_pGlobalVar->ranges.rtd_rng.factor = DEF_ADC_RTD_CONST_PT100;
	
	if(type == DEV_BZA60HZ)
	{
		iRange[0] = DEF_IAC_RNG1_MAX;
		m_pGlobalVar->ranges.iac_rng[0].maximum = DEF_ADC_IAC_RNG1_MAX;
		m_pGlobalVar->ranges.iac_rng[0].minimum = DEF_ADC_IAC_RNG1_MIN;
		m_pGlobalVar->ranges.iac_rng[0].factor = DEF_ADC_IAC_RNG1_FACTOR;

		iRange[1] = DEF_IAC_RNG2_MAX;
		m_pGlobalVar->ranges.iac_rng[1].maximum = DEF_ADC_IAC_RNG2_MAX;
		m_pGlobalVar->ranges.iac_rng[1].minimum = DEF_ADC_IAC_RNG2_MIN;
		m_pGlobalVar->ranges.iac_rng[1].factor = DEF_ADC_IAC_RNG2_FACTOR;
		
		iRange[2] = DEF_IAC_RNG3_MAX;
		m_pGlobalVar->ranges.iac_rng[2].maximum = DEF_ADC_IAC_RNG3_MAX;
		m_pGlobalVar->ranges.iac_rng[2].minimum = DEF_ADC_IAC_RNG3_MIN;
		m_pGlobalVar->ranges.iac_rng[2].factor = DEF_ADC_IAC_RNG3_FACTOR;
		
		iRange[3] = DEF_IAC_RNG4_MAX;
		m_pGlobalVar->ranges.iac_rng[3].maximum = DEF_ADC_IAC_RNG4_MAX;
		m_pGlobalVar->ranges.iac_rng[3].minimum = DEF_ADC_IAC_RNG4_MIN;
		m_pGlobalVar->ranges.iac_rng[3].factor = DEF_ADC_IAC_RNG4_FACTOR;
	}
	else
	{
		iRange[0] = DEF_IAC_RNG0_MAX;
		m_pGlobalVar->ranges.iac_rng[0].maximum = DEF_ADC_IAC_RNG0_MAX;
		m_pGlobalVar->ranges.iac_rng[0].minimum = DEF_ADC_IAC_RNG0_MIN;
		m_pGlobalVar->ranges.iac_rng[0].factor = DEF_ADC_IAC_RNG0_FACTOR;

		iRange[1] = DEF_IAC_RNG1_MAX;
		m_pGlobalVar->ranges.iac_rng[1].maximum = DEF_ADC_IAC_RNG1_MAX;
		m_pGlobalVar->ranges.iac_rng[1].minimum = DEF_ADC_IAC_RNG1_MIN;
		m_pGlobalVar->ranges.iac_rng[1].factor = DEF_ADC_IAC_RNG1_FACTOR;

		iRange[2] = DEF_IAC_RNG2_MAX;
		m_pGlobalVar->ranges.iac_rng[2].maximum = DEF_ADC_IAC_RNG2_MAX;
		m_pGlobalVar->ranges.iac_rng[2].minimum = DEF_ADC_IAC_RNG2_MIN;
		m_pGlobalVar->ranges.iac_rng[2].factor = DEF_ADC_IAC_RNG2_FACTOR;

		iRange[3] = DEF_IAC_RNG3_MAX;
		m_pGlobalVar->ranges.iac_rng[3].maximum = DEF_ADC_IAC_RNG3_MAX;
		m_pGlobalVar->ranges.iac_rng[3].minimum = DEF_ADC_IAC_RNG3_MIN;
		m_pGlobalVar->ranges.iac_rng[3].factor = DEF_ADC_IAC_RNG3_FACTOR;
	}

	m_pGlobalVar->ranges.vac_rng.maximum = DEF_ADC_VAC_RNG_MAX;
	m_pGlobalVar->ranges.vac_rng.minimum = DEF_ADC_VAC_RNG_MIN;
	m_pGlobalVar->ranges.vac_rng.factor = DEF_ADC_VAC_RNG_FACTOR;
	
	m_pGlobalVar->ranges.vac_rng.maximum = DEF_ADC_VAC_RNG_MAX;
	m_pGlobalVar->ranges.vac_rng.minimum = DEF_ADC_VAC_RNG_MIN;
	m_pGlobalVar->ranges.vac_rng.factor = DEF_ADC_VAC_RNG_FACTOR;
	
	if(type == DEV_BZA100)
	{
		m_pGlobalVar->ranges.vdc_rng[0].maximum = 100.0;
		m_pGlobalVar->ranges.vdc_rng[0].minimum = -100.0;
		m_pGlobalVar->ranges.vdc_rng[0].factor = DEF_ADC_VDC_RNG0_FACTOR1;
		
		m_pGlobalVar->ranges.vdc_rng[1].maximum = 10.0;
		m_pGlobalVar->ranges.vdc_rng[1].minimum = -10.0;
		m_pGlobalVar->ranges.vdc_rng[1].factor = DEF_ADC_VDC_RNG1_FACTOR1;
	}	
	else if(type == DEV_BZA60 || type == DEV_BZA60HZ)
	{
		m_pGlobalVar->ranges.vdc_rng[0].maximum = 60.0;
		m_pGlobalVar->ranges.vdc_rng[0].minimum = -60.0;
		m_pGlobalVar->ranges.vdc_rng[0].factor = DEF_ADC_VDC_RNG0_FACTOR1;
		
		m_pGlobalVar->ranges.vdc_rng[1].maximum = 6.0;
		m_pGlobalVar->ranges.vdc_rng[1].minimum = -6.0;
		m_pGlobalVar->ranges.vdc_rng[1].factor = DEF_ADC_VDC_RNG1_FACTOR1;
	}	
	else if(type == DEV_BZA500)
	{
		m_pGlobalVar->ranges.vdc_rng[0].maximum = 500.0;
		m_pGlobalVar->ranges.vdc_rng[0].minimum = -500.0;
		m_pGlobalVar->ranges.vdc_rng[0].factor = DEF_ADC_VDC_RNG0_FACTOR;
		
		m_pGlobalVar->ranges.vdc_rng[1].maximum = 50.0;
		m_pGlobalVar->ranges.vdc_rng[1].minimum = -50.0;
		m_pGlobalVar->ranges.vdc_rng[1].factor = DEF_ADC_VDC_RNG1_FACTOR;
	}	
	else
	{
		m_pGlobalVar->ranges.vdc_rng[0].maximum = 1500.0;
		m_pGlobalVar->ranges.vdc_rng[0].minimum = -1500.0;
		m_pGlobalVar->ranges.vdc_rng[0].factor = DEF_ADC_VDC_RNG0_FACTOR;
		
		m_pGlobalVar->ranges.vdc_rng[1].maximum = 100.0;
		m_pGlobalVar->ranges.vdc_rng[1].minimum = -100.0;
		m_pGlobalVar->ranges.vdc_rng[1].factor = DEF_ADC_VDC_RNG1_FACTOR;
	}
}

void EepromInitZimId(st_zim_id* pid)
{
	memset(pid,0x0,sizeof(st_zim_id));

	pid->mHeader.signature[0] = 'R';
	pid->mHeader.signature[1] = '-';
	pid->mHeader.signature[2] = 'P';
	pid->mHeader.signature[3] = 'i';

	pid->mHeader.version = DEF_ZIM_HEADER_VER;
	pid->mHeader.numatoms = 1;
	pid->mHeader.eeplen = sizeof(st_zim_id);
	
	pid->mVendorHeader.type = DEF_ATOM_TYPES_VENDOR_INFO;
	pid->mVendorHeader.count = 0;
	pid->mVendorHeader.dlen = sizeof(st_zim_id_atom_vendor_info);
	
	//[Guid("58281FCF-0592-483F-8DF8-8D885F32C357")]
	pid->mVendorInfo.UUID[0] = 0x58;
	pid->mVendorInfo.UUID[1] = 0x28;
	pid->mVendorInfo.UUID[2] = 0x1F;
	pid->mVendorInfo.UUID[3] = 0xCF;
	pid->mVendorInfo.UUID[4] = 0x00; //0x05; Fw ver 0
	pid->mVendorInfo.UUID[5] = 0x00; //0x92; Fw ver 1
	pid->mVendorInfo.UUID[6] = 0x48;
	pid->mVendorInfo.UUID[7] = 0x3F;
	pid->mVendorInfo.UUID[8] = 0x8D;
	pid->mVendorInfo.UUID[9] = 0xF8;
	pid->mVendorInfo.UUID[10] = 0x00; //0x8D; Bd ver 0
	pid->mVendorInfo.UUID[11] = 0x00; //0x88; Bd ver 1
	pid->mVendorInfo.UUID[12] = 0x00; //0x5F; year
	pid->mVendorInfo.UUID[13] = 0x00; //0x32; month
	pid->mVendorInfo.UUID[14] = 0x00; //0xC3;
	pid->mVendorInfo.UUID[15] = 0x00; //0x57;
	pid->mVendorInfo.pid = 0x494D;    // Prodict ID "IM"
	pid->mVendorInfo.pver = 0x7878;   // Model
	
	UshortToByte(m_pSysConfig->mZimCfg.ZimFWVersion,&pid->mVendorInfo.UUID[4]);
	
		
	pid->mVendorInfo.vslen = 30;
	sprintf((char*)pid->mVendorInfo.vstr,"Zive Lab.");
	
	pid->mVendorInfo.pslen = 30;
	sprintf((char*)pid->mVendorInfo.pstr,"Zive Impedance Meter.");
	
	pid->mVendorInfo.crc16 = GetCRC16((UNS_8*)&pid->mVendorInfo,(UNS_8)(sizeof(st_zim_id_atom_vendor_info)));
}

INT_32 WriteZimId(INT_32 devid,UNS_32 sAddr)
{
	if(EepromWrite(devid,sAddr,0x0,(void*)&m_pGlobalVar->zim_id,sizeof(st_zim_id)) == _ERROR) return _ERROR;
	return _NO_ERROR;
}

INT_32 WriteRangeInfo(INT_32 devid,UNS_32 sAddr)
{
	if(EepromWrite(devid,sAddr,EEP_RANGEINFO_ADDR,(void*)&m_pGlobalVar->ranges,sizeof(st_zim_rnginf)) == _ERROR) return _ERROR;
	return _NO_ERROR;
}

INT_32 ProgRangeInfo(INT_32 devid,UNS_32 sAddr, void* pRngInf)
{
	if(EepromWrite(devid,sAddr,EEP_RANGEINFO_ADDR,pRngInf,sizeof(st_zim_rnginf)) == _ERROR) return _ERROR;
	return _NO_ERROR;
}

INT_32 ReadRangeInfo(INT_32 devid,UNS_32 sAddr,  void* pRngInf)
{
	if(EepromWriteRead(devid,sAddr,EEP_RANGEINFO_ADDR,(void*)pRngInf,sizeof(st_zim_rnginf)) == _ERROR) return _ERROR;
	return _NO_ERROR;
}

				

uint GetZimSerialCharToInt(char* pSerialChar)
{
	uint itmp = 0;
	itmp = ((((uint)*pSerialChar) << 24) & 0xFF000000);
	itmp += ((((uint)*(pSerialChar+1)) << 16) & 0x00FF0000);
	itmp += ((((uint)*(pSerialChar+2)) << 8) & 0x0000FF00);
	itmp += (((uint)*(pSerialChar+3)) & 0x000000FF);	
	return itmp;	
}
void SetZimSerialIntToChar(uint nSerial, char* pSerialChar)
{
	*(pSerialChar+3) = (char)(nSerial & 0xFF);
	*(pSerialChar+2) = (char)((nSerial >> 8) & 0xFF);
	*(pSerialChar+1) = (char)((nSerial >> 16) & 0xFF);
	*(pSerialChar+0) = (char)((nSerial >> 24 )& 0xFF);
}

inline INT_32 CheckRangeInfo(void)
{
	int type = m_pSysConfig->mZimCfg.cModel[0]-0x30;
	if(m_pGlobalVar->ranges.ID != ID_RANGEINFO) return _ERROR;
	
	if(m_pGlobalVar->ranges.rtd_rng.maximum != DEF_ADC_RTD_CONST_MAX) return _ERROR;
	if(m_pGlobalVar->ranges.rtd_rng.minimum != DEF_ADC_RTD_CONST_MIN) return _ERROR;
	if(m_pGlobalVar->ranges.rtd_rng.factor != DEF_ADC_RTD_CONST_PT100) return _ERROR;
/*	20201007 ¼öÁ¤
	if(m_pGlobalVar->ranges.iac_rng[0].maximum != DEF_ADC_IAC_RNG0_MAX) return _ERROR;
	if(m_pGlobalVar->ranges.iac_rng[0].minimum != DEF_ADC_IAC_RNG0_MIN) return _ERROR;
	if(m_pGlobalVar->ranges.iac_rng[0].factor != DEF_ADC_IAC_RNG0_FACTOR) return _ERROR;
	
	if(m_pGlobalVar->ranges.iac_rng[1].maximum != DEF_ADC_IAC_RNG1_MAX) return _ERROR;
	if(m_pGlobalVar->ranges.iac_rng[1].minimum != DEF_ADC_IAC_RNG1_MIN) return _ERROR;
	if(m_pGlobalVar->ranges.iac_rng[1].factor != DEF_ADC_IAC_RNG1_FACTOR) return _ERROR;
	
	if(m_pGlobalVar->ranges.iac_rng[2].maximum != DEF_ADC_IAC_RNG2_MAX) return _ERROR;
	if(m_pGlobalVar->ranges.iac_rng[2].minimum != DEF_ADC_IAC_RNG2_MIN) return _ERROR;
	if(m_pGlobalVar->ranges.iac_rng[2].factor != DEF_ADC_IAC_RNG2_FACTOR) return _ERROR;

	if(m_pGlobalVar->ranges.iac_rng[3].maximum != DEF_ADC_IAC_RNG3_MAX) return _ERROR;
	if(m_pGlobalVar->ranges.iac_rng[3].minimum != DEF_ADC_IAC_RNG3_MIN) return _ERROR;
	if(m_pGlobalVar->ranges.iac_rng[3].factor != DEF_ADC_IAC_RNG3_FACTOR) return _ERROR;
	
	if(m_pGlobalVar->ranges.vac_rng.maximum != DEF_ADC_VAC_RNG_MAX) return _ERROR;
	if(m_pGlobalVar->ranges.vac_rng.minimum != DEF_ADC_VAC_RNG_MIN) return _ERROR;
	if(m_pGlobalVar->ranges.vac_rng.factor != DEF_ADC_VAC_RNG_FACTOR) return _ERROR;
	*/
	
	if(type == DEV_BZA100)
	{
		if(m_pGlobalVar->ranges.vdc_rng[0].maximum != 100.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[0].minimum != -100.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[0].factor != DEF_ADC_VDC_RNG0_FACTOR1) return _ERROR;
		
		if(m_pGlobalVar->ranges.vdc_rng[1].maximum != 10.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[1].minimum != -10.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[1].factor != DEF_ADC_VDC_RNG1_FACTOR1) return _ERROR;
	}
	else if(type == DEV_BZA60 || type == DEV_BZA60HZ)
	{
		if(m_pGlobalVar->ranges.vdc_rng[0].maximum != 100.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[0].minimum != -100.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[0].factor != DEF_ADC_VDC_RNG0_FACTOR1) return _ERROR;
		
		if(m_pGlobalVar->ranges.vdc_rng[1].maximum != 10.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[1].minimum != -10.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[1].factor != DEF_ADC_VDC_RNG1_FACTOR1) return _ERROR;
	}
	else if(type == DEV_BZA500)
	{
		if(m_pGlobalVar->ranges.vdc_rng[0].maximum != 500.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[0].minimum != -500.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[0].factor != DEF_ADC_VDC_RNG0_FACTOR) return _ERROR;
		
		if(m_pGlobalVar->ranges.vdc_rng[1].maximum != 50.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[1].minimum != -50.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[1].factor != DEF_ADC_VDC_RNG1_FACTOR) return _ERROR;
	}
	else
	{
		if(m_pGlobalVar->ranges.vdc_rng[0].maximum != 1500.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[0].minimum != -1500.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[0].factor != DEF_ADC_VDC_RNG0_FACTOR) return _ERROR;
		
		if(m_pGlobalVar->ranges.vdc_rng[1].maximum != 100.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[1].minimum != -100.0) return _ERROR;
		if(m_pGlobalVar->ranges.vdc_rng[1].factor != DEF_ADC_VDC_RNG1_FACTOR) return _ERROR;
	}
	
	return _NO_ERROR;
}

INT_32 EepromCheckZim(INT_32 devid, UNS_32 sAddr)
{

	char version;
	char cRxbuf[6];
	char cR_PI[5] = {0x52, 0x2D, 0x50, 0x69, 0x0,};
	byte bid;
	
	char i;
	
	memset(cRxbuf,0x0,6);
	

	if(EepromWriteRead(devid,sAddr,0x0,(void*)cRxbuf,6) == _ERROR) 
	{
		return _ERROR;
	}
	version = cRxbuf[4];
	cRxbuf[4] = 0x0;
	cRxbuf[5] = 0x0;
	
	
	if(strcmp(cRxbuf,cR_PI) != 0 || version != DEF_ZIM_HEADER_VER) 
	{
		EepromInitZimId(&m_pGlobalVar->zim_id);
		i2c_Defaultdelay();
		if(EepromWrite(devid,sAddr,0x0,(void*)&m_pGlobalVar->zim_id.mHeader,sizeof(st_zim_id_header))  == _ERROR) 
		{
			return _ERROR;
		}
		
	}

	if(EepromWriteRead(devid,sAddr,0x0,(void*)&m_pGlobalVar->zim_id,sizeof(st_zim_id))  == _ERROR) 
	{
		return _ERROR;
	}
	
	memset(cRxbuf,0x0,6);
	memcpy(cRxbuf,m_pGlobalVar->zim_id.mHeader.signature,4);
	if(strcmp(cRxbuf,cR_PI) != 0 || m_pGlobalVar->zim_id.mHeader.version != DEF_ZIM_HEADER_VER) 
	{
		return _ERROR;
	} 

	if(m_pSysConfig->mZimCfg.ZimFWVersion != ByteToUshort(&m_pGlobalVar->zim_id.mVendorInfo.UUID[4]))
	{
		m_pGlobalVar->zim_id.mVendorInfo.pid = 0x494D;
		UshortToByte(m_pSysConfig->mZimCfg.ZimFWVersion,&m_pGlobalVar->zim_id.mVendorInfo.UUID[4]);
		
		if(EepromWrite(devid,sAddr,0x0,(void*)&m_pGlobalVar->zim_id,sizeof(st_zim_id))  == _ERROR) 
		{
			return _ERROR;
		}
		
	}
	else 
	{
		m_pSysConfig->mZimCfg.ZimFWVersion = ByteToUshort(&m_pGlobalVar->zim_id.mVendorInfo.UUID[4]);
	}

	m_pSysConfig->mZimCfg.ZimBDVersion = ByteToUshort(&m_pGlobalVar->zim_id.mVendorInfo.UUID[10]);
	UshortToByte(m_pGlobalVar->zim_id.mVendorInfo.pver,&m_pSysConfig->mZimCfg.cModel[0]);
	m_pSysConfig->mZimCfg.nSerial = GetZimSerialCharToInt((char*)&m_pGlobalVar->zim_id.mVendorInfo.UUID[12]);
	for(i=0; i<3; i++)
	{
		if(EepromWriteRead(devid,sAddr,EEP_RANGEINFO_ADDR,(void*)&bid,sizeof(byte))  == _ERROR) 
		{
			return _ERROR;
		}
		if(bid == ID_RANGEINFO || bid == ID_RANGEINFO_1 ) break;	
		
		i2c_Defaultdelay();
	}
	
	if(bid == ID_RANGEINFO_1)	
	{
		st_zim_rnginf   	mOldRangeInf;
		if(EepromWriteRead(devid,sAddr,EEP_RANGEINFO_ADDR,(void*)&mOldRangeInf,sizeof(st_zim_rnginf1))  == _ERROR) 
		{
			return _ERROR;
		}
		
		memcpy(&m_pGlobalVar->ranges.mSafety, &mOldRangeInf.mSafety, sizeof(st_zim_Safety_inf));
		
		m_pGlobalVar->ranges.mEisCable.selected = 0;
				
		for(i=0; i<4; i++)
		{
			m_pGlobalVar->ranges.mEisCable.Ls[i] = 0.0;
		}
		for(i=0; i<4; i++)
		{
			m_pGlobalVar->ranges.mEisCable.bnouse[i] = 0;
		}
		
		m_pGlobalVar->ranges.mEisCable.dnouse = 0.0;
		
		memcpy(&m_pGlobalVar->ranges.vdc_rng[0], &mOldRangeInf.vdc_rng[0], sizeof(st_zim_adc_rnginf)*DEF_MAX_VDC_RNGCNT);
		memcpy(&m_pGlobalVar->ranges.rtd_rng, &mOldRangeInf.rtd_rng, sizeof(st_zim_adc_rnginf));
	}
	else if(bid == ID_RANGEINFO)	
	{
		if(EepromWriteRead(devid,sAddr,EEP_RANGEINFO_ADDR,(void*)&m_pGlobalVar->ranges,sizeof(st_zim_rnginf))  == _ERROR) 
		{
			return _ERROR;
		}
	}
	else
	{
		InitRangeInf();
	}
	
	if(isnan(m_pGlobalVar->ranges.mSafety.MaxPower) 
	   && isnan(m_pGlobalVar->ranges.vdc_rng[0].gain) 
		   && isnan(m_pGlobalVar->ranges.vdc_rng[1].gain) 
		   && isnan(m_pGlobalVar->ranges.rtd_rng.gain))
	{
		InitRangeInf();
	}
	
	if(CheckRangeInfo() == _ERROR) 
	{
		return _ERROR;
	}
	
	InitFixRangeInf();
	
	return _NO_ERROR;
}

INT_32 ScanZIM(INT_32 devid, UNS_32 sAddr)
{
	if(proc_read_version() == _ERROR) 
	{
		return _ERROR;
	}
	
	if(m_pGlobalVar->bNoEprom == 0)
	{
		if(EepromCheckZim(devid,sAddr) == _ERROR) 
		{
			m_pGlobalVar->bNoEprom = 1;
			return _ERROR;
		}
		SaveRangeInfo();
	}
	return _NO_ERROR;
}

INT_32 Init_I2C(void)
{
	if(i2c_open(0) == NULL) return _ERROR;
	if(SetupI2C(0,0) == _ERROR) return _ERROR;
	return _NO_ERROR;
}
