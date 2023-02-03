
#include "BZA_SIF.h"

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
	m_pGlobalVar->m_MsI2CdelayStamp = 0;
	while(1)
	{
		if(mSetup.status & I2C_SETUP_STATUS_DONE) 
		{
			break;
		}
		if(DEF_I2C_TIMEOUT <= m_pGlobalVar->m_MsI2CdelayStamp)
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
		m_pGlobalVar->m_MsI2CdelayStamp = 0;
		while(1)
		{
			if(mSetup.status & I2C_SETUP_STATUS_DONE) 
			{
				break;
			}
			if(DEF_I2C_TIMEOUT <= m_pGlobalVar->m_MsI2CdelayStamp)
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
		
		m_pGlobalVar->m_MsI2CdelayStamp = 0;
		while(1)
		{
			i2c_Defaultdelay();
			if(mSetup.status & I2C_SETUP_STATUS_DONE) 
			{
				break;
			}
			if(DEF_I2C_TIMEOUT <= m_pGlobalVar->m_MsI2CdelayStamp)
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
		m_pGlobalVar->m_MsI2CdelayStamp = 0;
		while(1)
		{
			i2c_Defaultdelay();
			if(mSetup.status & I2C_SETUP_STATUS_DONE) 
			{
				break;
			}
			if(DEF_I2C_TIMEOUT <= m_pGlobalVar->m_MsI2CdelayStamp)
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

inline void InitIacRangeInf(st_zim_adci_rnginf* prng,double realmax, double max, double min)
{
	prng->realmax = realmax;
	prng->maximum = max;
	prng->minimum = min;
	prng->factor = 	(max-min) /DEF_ADC_IAC_RESOLUTION;
	
	prng->controlgain = DEF_ADC_IAC_CONTROLGAIN;
	prng->gain1 = 1.0;
	prng->gain2 = 1.0;
}

inline void FixIacRangeInf(st_zim_adci_rnginf* prng,double realmax, double max, double min)
{
	prng->realmax = realmax;
	prng->maximum = max;
	prng->minimum = min;
	prng->factor = 	(max-min) /DEF_ADC_IAC_RESOLUTION;
	
	prng->controlgain = DEF_ADC_IAC_CONTROLGAIN;
}
	
void InitRangeInf(int ch)
{
	int i;

	m_pSysConfig->mZimCfg[ch].ranges.ID = ID_RANGEINFO;
	m_pGlobalVar->mChVar[ch].mChStatInf.ZimType = m_pSysConfig->mZimCfg[ch].info.cModel[0] - 0x30;
	for(i=0; i<MAX_IAC_CTRL_RNGCNT; i++)
	{
		InitEisCalInf(&m_pSysConfig->mZimCfg[ch].ranges.mEisIRngCalInfo[i]);
		m_pSysConfig->mZimCfg[ch].ranges.idc_rng.idcofs[i].offset = DEF_MONDCCTRL_PHASE;
	}
	
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[0].Ls = 0.000000064476;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[1].Ls = 0.000000064476;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[2].Ls = 0.000000112196;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[3].Ls = 0.000000112196;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[4].Ls = 0.000000084638;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[5].Ls = 0.000000084638;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[6].Ls = 0.00000008;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[7].Ls = 0.00000008;

	m_pSysConfig->mZimCfg[ch].ranges.mDummy[0].R = 0.009987261;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[1].R = 0.009987261;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[2].R = 0.099952;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[3].R = 0.099952;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[4].R = 0.997961;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[5].R = 0.997961;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[6].R = 9.999115;
	m_pSysConfig->mZimCfg[ch].ranges.mDummy[7].R = 9.999115;
	
	//PT-1000 - 1000ohm : 0'C, RREF - 4000ohm
	//PT-100  -  100ohm : 0'C. RREF -  400ohm
	m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.maximum = DEF_ADC_RTD_CONST_MAX;
	m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.minimum = DEF_ADC_RTD_CONST_MIN;
	m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.factor = DEF_ADC_RTD_CONST_PT100;
	m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.gain = 1.0;
	m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.offset = 0.0;
	
	InitIacRangeInf(&m_pSysConfig->mZimCfg[ch].ranges.iac_rng[0],DEF_IAC_RNG1_MAX,DEF_ADC_IAC_RNG1_MAX,DEF_ADC_IAC_RNG1_MIN);
	InitIacRangeInf(&m_pSysConfig->mZimCfg[ch].ranges.iac_rng[1],DEF_IAC_RNG2_MAX,DEF_ADC_IAC_RNG2_MAX,DEF_ADC_IAC_RNG2_MIN);
	InitIacRangeInf(&m_pSysConfig->mZimCfg[ch].ranges.iac_rng[2],DEF_IAC_RNG3_MAX,DEF_ADC_IAC_RNG3_MAX,DEF_ADC_IAC_RNG3_MIN);
	InitIacRangeInf(&m_pSysConfig->mZimCfg[ch].ranges.iac_rng[3],DEF_IAC_RNG4_MAX,DEF_ADC_IAC_RNG4_MAX,DEF_ADC_IAC_RNG4_MIN);

	m_pSysConfig->mZimCfg[ch].ranges.vac_rng.realmax = DEF_ADC_VAC_RNG_RMAX;
	m_pSysConfig->mZimCfg[ch].ranges.vac_rng.maximum = DEF_ADC_VAC_RNG_MAX;
	m_pSysConfig->mZimCfg[ch].ranges.vac_rng.minimum = DEF_ADC_VAC_RNG_MIN;
	m_pSysConfig->mZimCfg[ch].ranges.vac_rng.factor = DEF_ADC_VAC_RNG_FACTOR;
	m_pSysConfig->mZimCfg[ch].ranges.vac_rng.gain = 1.0;
	m_pSysConfig->mZimCfg[ch].ranges.vac_rng.offset = 0.0;
	
	if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA100
	   || m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA60)
	{
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].maximum = DEF_ADC_VDC_RNG0_MAX1;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].minimum = DEF_ADC_VDC_RNG0_MIN1;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].factor = DEF_ADC_VDC_RNG0_FACTOR1;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].gain = 1.0;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].offset = 0.0;

		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].maximum = DEF_ADC_VDC_RNG1_MAX1;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].minimum = DEF_ADC_VDC_RNG1_MIN1;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].factor = DEF_ADC_VDC_RNG1_FACTOR1;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].gain = 1.0;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].offset = 0.0;
	}
	else
	{
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].maximum = DEF_ADC_VDC_RNG0_MAX;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].minimum = DEF_ADC_VDC_RNG0_MIN;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].factor = DEF_ADC_VDC_RNG0_FACTOR;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].gain = 1.0;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].offset = 0.0;

		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].maximum = DEF_ADC_VDC_RNG1_MAX;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].minimum = DEF_ADC_VDC_RNG1_MIN;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].factor = DEF_ADC_VDC_RNG1_FACTOR;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].gain = 1.0;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].offset = 0.0;
	}
	
	if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA500)
	{
		m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower = DEF_BZA500_DEFAULT_POWER;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].realmax = DEF_ADC_VDC_RNG0_RMAX1;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].realmax = DEF_ADC_VDC_RNG1_RMAX1;
	}
	else if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA100)
	{
		m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower = DEF_BZA100_DEFAULT_POWER;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].realmax = DEF_ADC_VDC_RNG0_RMAX2;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].realmax = DEF_ADC_VDC_RNG1_RMAX2;
	}
	else if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA60)
	{
		m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower = DEF_BZA60_DEFAULT_POWER;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].realmax = DEF_ADC_VDC_RNG0_RMAX3;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].realmax = DEF_ADC_VDC_RNG1_RMAX3;
	}
	else
	{
		m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower = DEF_BZA100_DEFAULT_POWER;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].realmax = DEF_ADC_VDC_RNG0_RMAX0;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].realmax = DEF_ADC_VDC_RNG1_RMAX0;
	}
	for(i=0; i<4; i++)
	{
		m_pSysConfig->mZimCfg[ch].ranges.mSafety.NoUse[i] = 0.0;
	}
}

void InitFixRangeInf(int ch)
{
	int i;
	double tpow;
	m_pSysConfig->mZimCfg[ch].ranges.ID = ID_RANGEINFO;

	m_pGlobalVar->mChVar[ch].mChStatInf.ZimType = m_pSysConfig->mZimCfg[ch].info.cModel[0] - 0x30;

	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower))
	{
		if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA60)
		{
			m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower = DEF_BZA60_DEFAULT_POWER;
		}
		else if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA100)
		{
			m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower = DEF_BZA100_DEFAULT_POWER;
		}
		else if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA500)
		{
			m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower = DEF_BZA500_DEFAULT_POWER;
		}
		else
		{
			m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower = DEF_BZA1000_DEFAULT_POWER;
		}
	}
	else
	{
		if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA60)
		{
			 tpow = DEF_BZA60_DEFAULT_POWER;
		}
		else if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA100)
		{
			tpow = DEF_BZA100_DEFAULT_POWER;
		}
		else if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA500)
		{
			tpow = DEF_BZA500_DEFAULT_POWER;
		}
		else
		{
			tpow = m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower;
		}
		tpow *= 1.2;
		if(tpow < m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower) m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower = tpow;
	}
	
	for(i=0; i<MAX_IAC_CTRL_RNGCNT; i++)
	{
		FixEisCalInf(&m_pSysConfig->mZimCfg[ch].ranges.mEisIRngCalInfo[i]);
		if(isnan(m_pSysConfig->mZimCfg[ch].ranges.idc_rng.idcofs[i].offset)) m_pSysConfig->mZimCfg[ch].ranges.idc_rng.idcofs[i].offset = DEF_MONDCCTRL_PHASE;
	}
	
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[0].Ls)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[0].Ls = 0.000000064476;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[1].Ls)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[1].Ls = 0.000000064476;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[2].Ls)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[2].Ls = 0.000000112196;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[3].Ls)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[3].Ls = 0.000000112196;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[4].Ls)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[4].Ls = 0.000000084638;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[5].Ls)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[5].Ls = 0.000000084638;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[6].Ls)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[6].Ls = 0.00000008;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[7].Ls)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[7].Ls = 0.00000008;

	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[0].R)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[0].R = 0.009987261;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[1].R)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[1].R = 0.009987261;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[2].R)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[2].R = 0.099952;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[3].R)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[3].R = 0.099952;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[4].R)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[4].R = 0.997961;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[5].R)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[5].R = 0.997961;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[6].R)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[6].R = 9.999115;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mDummy[7].R)) m_pSysConfig->mZimCfg[ch].ranges.mDummy[7].R = 9.999115;
	
	//PT-1000 - 1000ohm : 0'C, RREF - 4000ohm
	//PT-100  -  100ohm : 0'C. RREF -  400ohm
	m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.maximum = DEF_ADC_RTD_CONST_MAX;
	m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.minimum = DEF_ADC_RTD_CONST_MIN;
	m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.factor = DEF_ADC_RTD_CONST_PT100;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.gain)) m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.gain = 1.0;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.offset)) m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.offset = 0.0;
	
	FixIacRangeInf(&m_pSysConfig->mZimCfg[ch].ranges.iac_rng[0],DEF_IAC_RNG1_MAX,DEF_ADC_IAC_RNG1_MAX,DEF_ADC_IAC_RNG1_MIN);
	FixIacRangeInf(&m_pSysConfig->mZimCfg[ch].ranges.iac_rng[1],DEF_IAC_RNG2_MAX,DEF_ADC_IAC_RNG2_MAX,DEF_ADC_IAC_RNG2_MIN);
	FixIacRangeInf(&m_pSysConfig->mZimCfg[ch].ranges.iac_rng[2],DEF_IAC_RNG3_MAX,DEF_ADC_IAC_RNG3_MAX,DEF_ADC_IAC_RNG3_MIN);
	FixIacRangeInf(&m_pSysConfig->mZimCfg[ch].ranges.iac_rng[3],DEF_IAC_RNG4_MAX,DEF_ADC_IAC_RNG4_MAX,DEF_ADC_IAC_RNG4_MIN);
	
	m_pSysConfig->mZimCfg[ch].ranges.vac_rng.maximum = DEF_ADC_VAC_RNG_MAX;
	m_pSysConfig->mZimCfg[ch].ranges.vac_rng.minimum = DEF_ADC_VAC_RNG_MIN;
	m_pSysConfig->mZimCfg[ch].ranges.vac_rng.factor = DEF_ADC_VAC_RNG_FACTOR;
	
		
	if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA100
	   || m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA60)
	{
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].maximum = DEF_ADC_VDC_RNG0_MAX1;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].minimum = DEF_ADC_VDC_RNG0_MIN1;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].factor = DEF_ADC_VDC_RNG0_FACTOR1;

		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].maximum = DEF_ADC_VDC_RNG1_MAX1;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].minimum = DEF_ADC_VDC_RNG1_MIN1;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].factor = DEF_ADC_VDC_RNG1_FACTOR1;
	}
	else
	{
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].maximum = DEF_ADC_VDC_RNG0_MAX;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].minimum = DEF_ADC_VDC_RNG0_MIN;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].factor = DEF_ADC_VDC_RNG0_FACTOR;

		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].maximum = DEF_ADC_VDC_RNG1_MAX;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].minimum = DEF_ADC_VDC_RNG1_MIN;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].factor = DEF_ADC_VDC_RNG1_FACTOR;
	}
	
	if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA500)
	{
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].realmax = DEF_ADC_VDC_RNG0_RMAX1;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].realmax = DEF_ADC_VDC_RNG1_RMAX1;
	}
	else if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA100)
	{
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].realmax = DEF_ADC_VDC_RNG0_RMAX2;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].realmax = DEF_ADC_VDC_RNG1_RMAX2;
	}
	else if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA60)
	{
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].realmax = DEF_ADC_VDC_RNG0_RMAX3;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].realmax = DEF_ADC_VDC_RNG1_RMAX3;
	}
	else
	{
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].realmax = DEF_ADC_VDC_RNG0_RMAX0;
		m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].realmax = DEF_ADC_VDC_RNG1_RMAX0;
	}
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].gain)) m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].gain = 1.0;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].offset)) m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].offset = 0.0;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].gain)) m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].gain = 1.0;
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].offset)) m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].offset = 0.0;
	
}

void EepromInitZimId(st_zim_id* pid)
{
	memset(pid,0x0,sizeof(st_zim_id));

	pid->signature[0] = 'B';
	pid->signature[1] = 'Z';
	pid->signature[2] = 'A';
	pid->version = DEF_ZIM_HEADER_VER;
}

INT_32 WriteZimId(INT_16 ch, INT_32 devid,UNS_32 sAddr)
{
	if(m_pSysConfig->EnaROM[ch] == 0)
	{
		return _NO_ERROR;
	}
	SetDevChannel(ch);
	
	st_zim_id m_id;
	st_zim_id m_id1;

	EepromInitZimId(&m_id);
	
	if(EepromWrite(devid,sAddr,0x0,(void*)&m_id,sizeof(st_zim_id)) == _ERROR) 
	{
		return _ERROR;
	}
	if(EepromWriteRead(devid,sAddr,0x0,(void*)&m_id1,sizeof(st_zim_id)) == _ERROR)
	{
		return _ERROR;
	}
	return _NO_ERROR;
}

INT_32 WriteRangeInfo(INT_16 ch, INT_32 devid,UNS_32 sAddr)
{

	if(m_pSysConfig->EnaROM[ch] == 0)
	{
		return _NO_ERROR;
	}
	SetDevChannel(ch);
	
	if(EepromWrite(devid,sAddr,EEP_ZIMRNG_ADDR,(void*)&m_pSysConfig->mZimCfg[ch].ranges,sizeof(st_zim_rnginf)) == _ERROR) return _ERROR;
	return _NO_ERROR;
}

INT_32 ReadRangeInfo(INT_16 ch, INT_32 devid,UNS_32 sAddr, void* pRngInf)
{
	if(m_pSysConfig->EnaROM[ch] == 0)
	{
		return _NO_ERROR;
	}
	SetDevChannel(ch);
	if(EepromWrite(devid,sAddr,EEP_ZIMRNG_ADDR,pRngInf,sizeof(st_zim_rnginf)) == _ERROR) return _ERROR;
	return _NO_ERROR;
}

INT_32 ReadZimCfgInfo(INT_16 ch, INT_32 devid,UNS_32 sAddr,  void* pZimInfo)
{
	if(m_pSysConfig->EnaROM[ch] == 0)
	{
		return _NO_ERROR;
	}
	SetDevChannel(ch);
	if(EepromWriteRead(devid,sAddr,EEP_ZIMCFG_ADDR,pZimInfo,sizeof(stZimInfo)) == _ERROR) return _ERROR;
	return _NO_ERROR;
}

INT_32 WriteZimCfgInfo(INT_16 ch, INT_32 devid,UNS_32 sAddr)
{
	if(m_pSysConfig->EnaROM[ch] == 0)
	{
		return _NO_ERROR;
	}
	SetDevChannel(ch);
	if(EepromWrite(devid,sAddr,EEP_ZIMCFG_ADDR,(void*)&m_pSysConfig->mZimCfg[ch].info,sizeof(stZimInfo)) == _ERROR) return _ERROR;
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

inline INT_32 CheckRangeInfo(int ch)
{

	if(m_pSysConfig->mZimCfg[ch].ranges.ID != ID_RANGEINFO) return _ERROR;
	
	if(m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.maximum != DEF_ADC_RTD_CONST_MAX) return _ERROR;
	if(m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.minimum != DEF_ADC_RTD_CONST_MIN) return _ERROR;
	if(m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.factor != DEF_ADC_RTD_CONST_PT100) return _ERROR;
	
	return _NO_ERROR;
}

INT_32 EepromWriteZimCfg(INT_16 ch, INT_32 devid,UNS_32 sAddr)
{
	if(m_pSysConfig->EnaROM[ch] == 0)
	{
		return _NO_ERROR;
	}
	SetDevChannel(ch);
	
	st_zim_id m_id;
	
	EepromInitZimId(&m_id);
	
	if(EepromWrite(devid,sAddr,0x0,(void*)&m_id,sizeof(st_zim_id))  == _ERROR) 
	{
		return _ERROR;
	}
	
	if(EepromWrite(devid,sAddr,EEP_ZIMCFG_ADDR,(void*)&m_pSysConfig->mZimCfg[ch].info,sizeof(stZimInfo))  == _ERROR) 
	{
		return _ERROR;
	}
	if(EepromWrite(devid,sAddr,EEP_ZIMRNG_ADDR,(void*)&m_pSysConfig->mZimCfg[ch].ranges,sizeof(st_zim_rnginf))  == _ERROR) 
	{
		return _ERROR;
	}
	
	if(SaveSysCfgInfo() == false)
	{
		return _ERROR;
	}
	return _NO_ERROR;
}

INT_32 EepromCheckZim(INT_16 ch, INT_32 devid,UNS_32 sAddr)
{
	char i;
	st_zim_id m_id;
	
	if(m_pSysConfig->EnaROM[ch] == 0)
	{
		return _NO_ERROR;
	}
	
	SetDevChannel(ch);
	
	for(i=0; i<3; i++)
	{
		
		i2c_Defaultdelay();
		if(EepromWriteRead(devid,sAddr,0x0,(void*)&m_id,sizeof(st_zim_id))  == _ERROR) 
		{
			continue;
		}
	
		if(m_id.version != DEF_ZIM_HEADER_VER
		    || m_id.signature[0] != 'B'
			|| m_id.signature[1] != 'Z'
			|| m_id.signature[2] != 'A')
		{
			EepromInitZimId(&m_id);
			if(EepromWrite(devid,sAddr,0x0,(void*)&m_id,sizeof(st_zim_id))  == _ERROR) 
			{
				return _ERROR;
			}
			continue;
		}
		
		return _NO_ERROR;
	}

	return _ERROR;
}

INT_32 EepromApplyZim(INT_16 ch, INT_32 devid,UNS_32 sAddr)
{
	SetDevChannel(ch);
	
	if(EepromWriteRead(devid,sAddr,EEP_ZIMCFG_ADDR,(void*)&m_pSysConfig->mZimCfg[ch].info,sizeof(stZimInfo))  == _ERROR) 
	{
		return _ERROR;
	}
	if(EepromWriteRead(devid,sAddr,EEP_ZIMRNG_ADDR,(void*)&m_pSysConfig->mZimCfg[ch].ranges,sizeof(st_zim_rnginf))  == _ERROR) 
	{
		return _ERROR;
	}
	
	if(isnan(m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower) 
	   && isnan(m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[0].gain) 
		   && isnan(m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].gain) 
		   && isnan(m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.gain))
	{
		return _ERROR;
	}
	
	if(CheckRangeInfo(ch) == _ERROR) 
	{
		return _ERROR;
	}
	
	
	InitFixRangeInf(ch);
	
	if(SaveSysCfgInfo() == false)
	{
		return _ERROR;
	}
	
	return _NO_ERROR;
}

INT_32 ScanZIM(INT_16 ch, INT_32 devid, UNS_32 sAddr)
{
	//WriteZimId(ch,devid,sAddr);
		
	if(EepromCheckZim(ch,devid,sAddr) == _ERROR) 
	{
		return _ERROR;
	}
	if(m_pGlobalVar->mChVar[ch].LoadCfg == 0)
	{
		if(EepromApplyZim(ch,devid,sAddr) == _ERROR)
		{
			return _ERROR;
		}
	}
	return _NO_ERROR;
}

INT_32 Init_I2C(void)
{
	if(i2c_open(0) == NULL) return _ERROR;
	if(SetupI2C(0,0) == _ERROR) return _ERROR;
	return _NO_ERROR;
}
