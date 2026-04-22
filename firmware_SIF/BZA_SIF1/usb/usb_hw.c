#define USB_HW_GLOBAL
#include "usb_hw.h"

static volatile UsbDevStat_t USB_DevStatus;

static const UsbStandardEpDescriptor_t USB_CtrlEpDescr0 =
{
	sizeof(UsbStandardEpDescriptor_t),
	UsbDescriptorEp,
	UsbEpOut(CTRL_ENP_OUT>>1),
	{(Int8U)UsbEpTransferControl | (Int8U)UsbEpSynchNoSynchronization | (Int8U)UsbEpUsageData},
	Ep0MaxSize,
	0
};

static const UsbEP_ExtData_t USB_CtrlEpExtDescr0 =
{
	0
};

static const UsbStandardEpDescriptor_t USB_CtrlEpDescr1 =
{
	sizeof(UsbStandardEpDescriptor_t),
	UsbDescriptorEp,
	UsbEpIn(CTRL_ENP_IN>>1),
	{(Int8U)UsbEpTransferControl | (Int8U)UsbEpSynchNoSynchronization | (Int8U)UsbEpUsageData},
	Ep0MaxSize,
	0
};

static const UsbEP_ExtData_t USB_CtrlEpExtDescr1 =
{
	0
};

static const Boolean UsbEpDoubleBuffType[] =
{
	FALSE,  // OUT 0
	FALSE,  // IN 0
	FALSE,  // OUT 1
	FALSE,  // IN 1
	TRUE,   // OUT 2
	TRUE,   // IN 2
	TRUE,   // OUT 3
	TRUE,   // IN 3
	FALSE,  // OUT 4
	FALSE,  // IN 4
	TRUE,   // OUT 5
	TRUE,   // IN 5
	TRUE,   // OUT 6
	TRUE,   // IN 6
	FALSE,  // OUT 7
	FALSE,  // IN 7
	TRUE,   // OUT 8
	TRUE,   // IN 8
	TRUE,   // OUT 9
	TRUE,   // IN 9
	FALSE,  // OUT 10
	FALSE,  // IN 10
	TRUE,   // OUT 11
	TRUE,   // IN 11
	TRUE,   // OUT 12
	TRUE,   // IN 12
	FALSE,  // OUT 13
	FALSE,  // IN 13
	TRUE,   // OUT 14
	TRUE,   // IN 14
	TRUE,   // OUT 15
	TRUE,   // IN 15
};

#if  USB_SOF_EVENT > 0
Int32U  USB_SofNumbHold;
#endif

#if USB_DMA_DD_MAX_NUMB > 0

#pragma segment="USB_DMA_RAM"
#pragma location="USB_DMA_RAM"
#pragma data_alignment=128
__no_init pUSB_DmaDesc_t USB_DDCA[ENP_MAX_NUMB];

#pragma location="USB_DMA_RAM"
__no_init USB_DmaDesc_t USB_DmaDesc[USB_DMA_DD_MAX_NUMB];
pUSB_DmaDesc_t DmaFree[USB_DMA_DD_MAX_NUMB];

#if USB_DMA_ID_MAX_NUMB > 0
#pragma location="USB_DMA_RAM"
__no_init DmaIsoPacket_t USB_DmaIsoDesc[USB_DMA_ID_MAX_NUMB];
pDmaIsoPacket_t DmaIsoFree[USB_DMA_ID_MAX_NUMB];
#endif // USB_DMA_ID_MAX_NUMB > 0
#endif // USB_DMA_DD_MAX_NUMB > 0

static void isp1301_write(UInt8 reg, UInt8 val)
{
	I2C_STS_bit.TDI = 1;
	//I2C_RX = 1;
	I2C_TX = 0x15A;          	// Send ISP1301 address, R/W=0
	I2C_TX = reg;            	// Specify register
	I2C_TX = 0x200 | val;    	// Set new value and send STOP condition
	while(!I2C_STS_bit.TDI);
}

static int USB_Cmd(UInt16 command, UInt8 data)
{
	UInt32 save, tmp = 0;
	
	ENTR_CRT_SECTION(save);
	USBDevIntClr = bmUSB_CommDataFullInterrupt | bmUSB_CommRegEmptyInterrupt;
	
	USBCmdCode = ((command & 0xFF) << 16) + USB_CMD_WR;
	while((USBDevIntSt & bmUSB_CommRegEmptyInterrupt) == 0);
	
	USBDevIntClr = bmUSB_CommRegEmptyInterrupt;
	
	switch(command)
	{
		case CMD_USB_SET_ADDRESS:
		case CMD_USB_CFG_DEV:
  		case CMD_USB_SET_MODE:
  		case CMD_USB_SET_DEV_STAT:
    		USBCmdCode = (data << 16) + USB_DATA_WR;
    		while((USBDevIntSt & bmUSB_CommRegEmptyInterrupt) == 0);
    		break;
		
  		case CMD_USB_RD_FRAME_NUMB:
  		case CMD_USB_RD_TEST_REG:
    		USBCmdCode = (command << 16) + USB_DATA_RD;
    		while ((USBDevIntSt & bmUSB_CommDataFullInterrupt) == 0);
    		USBDevIntClr = bmUSB_CommDataFullInterrupt;
    		tmp = USBCmdData;
    		USBCmdCode = (command << 16) + USB_DATA_RD;
    		while ((USBDevIntSt & bmUSB_CommDataFullInterrupt) == 0);
    		tmp |= USBCmdData << 8;
    		break;
		
		case CMD_USB_GET_DEV_STAT:
		case CMD_USB_GET_ERROR:
		case CMD_USB_RD_ERROR_STAT:
		case CMD_USB_CLR_BUF:
			USBCmdCode = (command << 16) + USB_DATA_RD;
			while ((USBDevIntSt & bmUSB_CommDataFullInterrupt) == 0);
			tmp = USBCmdData;
			break;
			
		default:
			switch (command & 0x1E0)
			{
				case CMD_USB_SEL_EP:
				case CMD_USB_SEL_CLR_INT_EP:
					USBCmdCode = (command << 16) + USB_DATA_RD;
					while ((USBDevIntSt & bmUSB_CommDataFullInterrupt) == 0);
					tmp = USBCmdData;
					break;
				
				case CMD_USB_SET_EP_STAT:
					USBCmdCode = (data << 16) + USB_DATA_WR;
					while ((USBDevIntSt & bmUSB_CommRegEmptyInterrupt) == 0);
					break;
			}
			break;
		}
		
		EXT_CRT_SECTION(save);
		return tmp;
}

static Int8U USB_EpIntrClr(USB_Endpoint_t EndPoint)
{
	volatile Int32U TO = 100;
	Int32U cpu_sr;
	// Disable interrupt and save current state of the interrupt flags
	ENTR_CRT_SECTION(cpu_sr);
	// the hardware will clear the CDFULL bit in the Device Interrupt Status register
	// USBDevIntClr = bmUSB_CommDataFullInterrupt;

	USBEpIntClr = 1 << EndPoint;
	// add some little delay may be is needed bacause the USB engine and Core
	// works on differents frequency domains
	__no_operation();
	__no_operation();
	while ((USBDevIntSt & bmUSB_CommDataFullInterrupt) == 0)
	{
		assert(--TO);
	}
	EXT_CRT_SECTION(cpu_sr);
	return(USBCmdData);
}

void USB_HwInit(void)	// OK
{
	// Init SOF number hold
#if USB_SOF_EVENT > 0
  	USB_SofNumbHold = 0;
#endif
	
	AUTOCLK_CTRL_bit.USB_SLAVE = 1;   // disable clock power down
  	USB_CTRL_bit.SLAVE_HCLK_CTRL = 1; // enable USB Slave HCLK
     
  	OTG_clock_control_bit.DEV_CLK_ON = 1;
  	OTG_clock_control_bit.AHB_CLK_ON = 1;
  	OTG_clock_control_bit.I2C_CLK_ON = 1;
  	OTG_clock_control_bit.OTG_CLK_ON = 1;
  
  	isp1301_write(0x04, 0x04); // set DAT_SE0 bit in Mode Control 1
	
	USB_CTRL_bit.DEV_NEED_CLK_ENA = 1;

	// Enable USB clock (48 MHz)
	USB_CTRL_bit.P = 0x1;           // post-divider=4 (P=2)
	USB_CTRL_bit.M = 192;           // multiplier=192 (M=192)
	USB_CTRL_bit.USB_Clken1 = 1;    // enable clock to PLL input
	USB_CTRL_bit.POWER_DOWN = 1;    // start up PLL

	while (USB_CTRL_bit.PLL_LOCK == 0); // wait for PLL to lock

	USB_CTRL_bit.USB_Clken2 = 1;    // direct PLL output to USB block
	
	// Disable USB interrupts
  	SIC1_IntEnable(Sub1USB_dev_lp_int, DISABLE_IRQ);
	
#if 0 != USB_DEV_PRIORITY
	SIC1_IntEnable(Sub1USB_dev_hp_int, DISABLE_IRQ);
#endif

#if USB_DMA_DD_MAX_NUMB > 0
	SIC1_IntEnable(Sub1USB_dev_dma_int, DISABLE_IRQ);
#endif

	// Disconnect device
	USB_ConnectRes(FALSE);

	// enable suspend mode AP_CLK = 0
	USB_Cmd(CMD_USB_SET_MODE, 0);    // init to default value
	
	// Set address 0
	USB_SetDefAdd();
	// clear all pending interrupts
  	USBEpIntClr = 0xFFFFFFFF;
  	// Init controls endpoints
  	USB_HwReset();
	// Init Device status
  	UsbSetDevState(UsbDevStatusUnknow);
	// Init Device state var
 	USB_DevStatus.Data = USB_Cmd(CMD_USB_GET_DEV_STAT,0);
	
	////////////////////////////////////////////
	////////////////////////////////////////////
	/////////// 인터럽트 방식 //////////////////////
  	// Install and Enable USB interrupts
  	// Low priority:
  	//SIC1_IRQInstall(USB_ISR, Sub1USB_dev_lp_int, HIGH, LEVEL, TYPE_IRQ);
  	//SIC1_IntEnable(Sub1USB_dev_lp_int, ENABLE_IRQ);
	////////////////////////////////////////////
  
  // High priority:
#if 0 != USB_DEV_PRIORITY
	SIC1_IRQInstall(USB_ISR, Sub1USB_dev_hp_int, HIGH, LEVEL, TYPE_IRQ);
	SIC1_IntEnable(Sub1USB_dev_hp_int, ENABLE_IRQ);
#endif
  
  // DMA:
#if USB_DMA_DD_MAX_NUMB > 0
	SIC1_IRQInstall(USB_ISR, Sub1USB_dev_dma_int, HIGH, LEVEL, TYPE_IRQ);
	SIC1_IntEnable(Sub1USB_dev_dma_int, ENABLE_IRQ);
#endif	
}

void USB_HwReset(void)	// OK
{
	// Disable all endpoint interrupts
	USBEpIntEn  = 0;
	// Assign high priority interrupt line
	USBDevIntPri = USB_DEV_PRIORITY;
	// USB_Configure
	USB_Configure(FALSE);
	// Set EP priority
	USBEpIntPri = USB_EP_PRIORITY;
	// Control EP Init
	USB_RealizeEp(&USB_CtrlEpDescr0,&USB_CtrlEpExtDescr0,TRUE);
	USB_RealizeEp(&USB_CtrlEpDescr1,&USB_CtrlEpExtDescr1,TRUE);

#if USB_DMA_DD_MAX_NUMB > 0
	// Disable All DMA interrupts
	USBDMAIntEn     = 0;
	// DMA Disable
	USBEpDMADis     = 0xFFFFFFFF;
	// DMA Request clear
	USBDMARClr      = 0xFFFFFFFF;
	// End of Transfer Interrupt Clear
	USBEoTIntClr    = 0xFFFFFFFF;
	// New DD Request Interrupt Clear
	USBNDDRIntClr   = 0xFFFFFFFF;
	// System Error Interrupt Clear
	USBSysErrIntClr = 0xFFFFFFFF;
	for(Int32U i = 0; i < ENP_MAX_NUMB; ++i)
	{
		USB_DDCA[i] = NULL;
	}

	for(Int32U i = 0; i < USB_DMA_DD_MAX_NUMB; ++i)
	{
		DmaFree[i] = &USB_DmaDesc[i];
	}

#if USB_DMA_ID_MAX_NUMB > 0
	for(Int32U i = 0; i < USB_DMA_ID_MAX_NUMB; ++i)
	{
		DmaIsoFree[i] = &USB_DmaIsoDesc[i];
	}
#endif // USB_DMA_ID_MAX_NUMB > 0

	// Set USB UDCA Head register
	USBUDCAH = (Int32U)&USB_DDCA;
	// Enable DMA interrupts
	USBDMAIntEn = DMA_INT_ENABLE_MASK;
#else
	USBEpDMADis = 0xFFFFFFFF;
#endif

	// Enable Device interrupts
	USBDevIntEn = bmUSB_SlowInterrupt | bmUSB_DevStatusInterrupt |
	   (2==USB_DEV_PRIORITY ? bmUSB_FastInterrupt  : 0)|
	   (USB_SOF_EVENT       ? bmUSB_FrameInterrupt : 0)|
	   (USB_ERROR_EVENT     ? bmUSB_ErrorInterrupt : 0);	
}

USB_ErrorCodes_t USB_RealizeEp(const UsbStandardEpDescriptor_t * pEP_Desc, const UsbEP_ExtData_t * pUsbEP_ExtData, Boolean Enable)	// OK
{
	USB_Endpoint_t EP = (USB_Endpoint_t)USB_EpLogToPhysAdd(pEP_Desc->bEndpointAddress);
	Int32U Mask = (1 << EP);
#if USB_DMA_DD_MAX_NUMB > 0
	Int32U i;
#if USB_DMA_ID_MAX_NUMB > 0
	Int32U j;
#endif // USB_DMA_ID_MAX_NUMB > 0
#endif // USB_DMA_DD_MAX_NUMB > 0
  	if (Enable)
  	{
    	// Set EP status
    	EpCnfg[EP].Status  = NOT_READY;
    	// Init EP flags
    	EpCnfg[EP].Flags = 0;
    	EpCnfg[EP].bDMA_Transfer  = pUsbEP_ExtData->DMA_Transfer;
    	EpCnfg[EP].bDoubleBuffered = UsbEpDoubleBuffType[EP];
    	// Set endpoint type
    	EpCnfg[EP].EpType = (UsbEpTransferType_t)pEP_Desc->bmAttributes.TransferType;
    	// Init EP max packet size
    	EpCnfg[EP].MaxSize = pEP_Desc->wMaxPacketSize;
  		#if USB_DMA_DD_MAX_NUMB > 0
    	if(EpCnfg[EP].bDMA_Transfer)
    	{
      		// search of not used DMA Descriptor
      		for (i = 0; USB_DMA_DD_MAX_NUMB > i; ++i)
      		{
        		if(DmaFree[i] != NULL)
        		{
          			break;
        		}
      		}
      		if(USB_DMA_DD_MAX_NUMB <= i)
      		{
        		return (USB_DMA_DESC_OVERFLOW);
      		}

#if USB_DMA_ID_MAX_NUMB > 0
      		if(UsbEpTransferIsochronous == EpCnfg[EP].EpType)
      		{
        		// search of not used DMA Iso Descriptor
        		for (j = 0; USB_DMA_ID_MAX_NUMB > j; ++j)
        		{
          			if(DmaIsoFree[j] != NULL)
          			{
            			break;
          			}
        		}
        		if(USB_DMA_ID_MAX_NUMB <= j)
        		{
          			return (USB_DMA_DESC_OVERFLOW);
        		}
        		USB_DmaDesc[i].Isochronous = 1;
        		EpCnfg[EP].pDmaIsoPacket = DmaIsoFree[j];
        		DmaIsoFree[j] = NULL;
      		}
      		else
      		{
        		USB_DmaDesc[i].Isochronous = 0;
        		EpCnfg[EP].pDmaIsoPacket = NULL;
      		}
#else
      		USB_DmaDesc[i].Isochronous = 0;
#endif // USB_DMA_DD_MAX_NUMB > 0

      		// Set DD
      		USB_DDCA[EP] = EpCnfg[EP].pUSB_DmaDesc = DmaFree[i];
      		DmaFree[i] = NULL;

      		EpCnfg[EP].pUSB_DmaDesc->pNextDD        = NULL;
      		EpCnfg[EP].pUSB_DmaDesc->NextDDValid    = FALSE;
      		EpCnfg[EP].pUSB_DmaDesc->DmaMode        = UsbDmaNormalMode;
      		EpCnfg[EP].pUSB_DmaDesc->pDmaBuffer     = NULL;
      		EpCnfg[EP].pUSB_DmaDesc->DmaBufferLegtn = 0;
      		EpCnfg[EP].pUSB_DmaDesc->MaxPacketSize  = EpCnfg[EP].MaxSize;
      		EpCnfg[EP].pUSB_DmaDesc->Status         = UsbDmaNoServiced;
    	}
    	else
    	{
      		// Disable DMA Transfer
      		USBEpDMADis = 1UL << EP;
    	}
#else
    	// Disable DMA Transfer
    	USBEpDMADis = 1UL << EP;
#endif // USB_DMA_DD_MAX_NUMB > 0

    	if (EP & 1)
    	{
      		EpCnfg[EP].AvbBuff = EpCnfg[EP].bDoubleBuffered + 1;
    	}
    	else
    	{
      		EpCnfg[EP].AvbBuff = 0;
    	}

		// Clear  Realize interrupt bit
		USBDevIntClr = bmUSB_EPRealizeInterrupt;
		// Realize endpoint
		USBReEp |= Mask;
		// Set endpoint maximum packet size
		USBEpInd     = EP;
		USBEpMaxPSize = pEP_Desc->wMaxPacketSize;
		// Wait for Realize complete
		while ((USBDevIntSt & bmUSB_EPRealizeInterrupt) == 0);

		if(0 == EpCnfg[EP].bDMA_Transfer)
		{
		  // Enable endpoint interrupt
		  USBEpIntEn |= Mask;
		}
	}
  	else
  	{
		// Disable relevant endpoint and interrupt
		USBReEp    &= ~Mask;
		USBEpIntEn &= ~Mask;
		// Disable DMA Transfer
		USBEpDMADis = Mask;
		EpCnfg[EP].MaxSize = 0;

	#if USB_DMA_DD_MAX_NUMB > 0
		// relase DMA Descriptor
		if(NULL != EpCnfg[EP].pUSB_DmaDesc)
		{
			for (i = 0; USB_DMA_DD_MAX_NUMB > i; ++i)
			{
				if(DmaFree[i] == NULL)
				{
					DmaFree[i] = EpCnfg[EP].pUSB_DmaDesc;
					EpCnfg[EP].pUSB_DmaDesc = NULL;
					break;
				}
			}
		}
#if USB_DMA_ID_MAX_NUMB > 0
		// relase DMA Iso Descriptor
		if(NULL != EpCnfg[EP].pDmaIsoPacket)
		{
			for (i = 0; USB_DMA_ID_MAX_NUMB > i; ++i)
			{
				if(DmaIsoFree[i] == NULL)
				{
					DmaIsoFree[i] = EpCnfg[EP].pDmaIsoPacket;
					EpCnfg[EP].pDmaIsoPacket = NULL;
					break;
				}
			}
		}
#endif // USB_DMA_ID_MAX_NUMB > 0
#endif // USB_DMA_DD_MAX_NUMB > 0
	}
  	return(USB_OK);	
}

void USB_SetAdd(UInt32 DevAdd)	// OK
{
  USB_Cmd(CMD_USB_SET_ADDRESS, DevAdd | 0x80);
  USB_Cmd(CMD_USB_SET_ADDRESS, DevAdd | 0x80);
}

void USB_ConnectRes(BOOL conn)	// OK
{
	USB_Cmd(CMD_USB_SET_DEV_STAT, (conn ? bmUSB_Connect : 0));
	
	int save;
	
	ENTR_CRT_SECTION(save);
	
	isp1301_write(conn ? 0x006 : 0x007, 0x01);	// Send OTG Control (Clear/Set) register address                 
	
	EXT_CRT_SECTION(save);
}

void USB_Configure (Boolean Configure)	// OK
{
  USB_Cmd(CMD_USB_CFG_DEV, Configure);
}

void USB_SetStallEP (USB_Endpoint_t EP, Boolean Stall)
{
	Boolean CurrStallStatus;
	assert((USBReEp & (1UL<<EP)));  // check whether is a realized EP
	USB_GetStallEP(EP,&CurrStallStatus);
	if(CurrStallStatus != Stall)
	{
		if ((EP & 1) && !Stall)
		{
			EpCnfg[EP].AvbBuff = EpCnfg[EP].bDoubleBuffered+1;
		}
		else
		{
			EpCnfg[EP].AvbBuff = 0;
		}
		USB_Cmd(CMD_USB_SET_EP_STAT | EP, (Stall ? bmUSB_EpStall : 0));
	}
}


void USB_StallCtrlEP (void)
{
	EpCnfg[CTRL_ENP_OUT].AvbBuff = 0;
	EpCnfg[CTRL_ENP_IN].AvbBuff  = EpCnfg[CTRL_ENP_IN].bDoubleBuffered + 1;
	USB_Cmd(CMD_USB_SET_EP_STAT | CTRL_ENP_OUT, bmUSB_EpCondStall);
}

void USB_GetStallEP (USB_Endpoint_t EndPoint, pBoolean pStall)	// OK
{
	assert((USBReEp & (1UL<<EndPoint)));  // check whether is a realized EP
	*pStall = (USB_Cmd(CMD_USB_SEL_EP | EndPoint, 0) & bmUSB_EpStallStatus) != 0;
}

int TestCount = 0;

void USB_EP_IO(USB_Endpoint_t EP)
{
	Int32U Data, Count;

  	if(EpCnfg[EP].Status != BEGIN_SERVICED && EpCnfg[EP].Status != NO_SERVICED)
  	{
    	volatile int dummu = 0;
    	return;
  	}
	
  	if(EP & 1)
  	{
    // IN
#if USB_DMA_DD_MAX_NUMB > 0
		if(EpCnfg[EP].bDMA_Transfer)
		{
			// Set Data buffer
			EpCnfg[EP].pUSB_DmaDesc->pDmaBuffer     = EpCnfg[EP].pBuffer;
#if USB_DMA_ID_MAX_NUMB > 0
			// Set Iso packet descrptor
			if(EpCnfg[EP].pUSB_DmaDesc->Isochronous)
			{
				// Iso packet descriptor
				EpCnfg[EP].pUSB_DmaDesc->pDmaIsoPacket = EpCnfg[EP].pDmaIsoPacket;
				// Set Data size
				EpCnfg[EP].pDmaIsoPacket->PacketLength = EpCnfg[EP].Size;
				// Number of packets
				EpCnfg[EP].pUSB_DmaDesc->DmaBufferLegtn = 1;
			}
			else
			{
				// Set Data size
				EpCnfg[EP].pUSB_DmaDesc->DmaBufferLegtn = EpCnfg[EP].Size;
			}
			// Set DMA status
			EpCnfg[EP].pUSB_DmaDesc->Status         = 0;
			// Enable DMA Transfer
			USBEpDMAEn = 1UL << EP;
			if(0 == EpCnfg[EP].pUSB_DmaDesc->Isochronous)
			{
				// Trigger transfer
				Int32U EpReg = USB_Cmd(CMD_USB_SEL_EP | EP,0);
				if(0 == (EpReg & 0x60))
				{
					// Retrigger DMA Transfer
					USBDMARSet = 1 << EP;
				}
			}
#else
		// Set Data size
			EpCnfg[EP].pUSB_DmaDesc->DmaBufferLegtn = EpCnfg[EP].Size;
			// Set DMA status
			EpCnfg[EP].pUSB_DmaDesc->Status         = 0;
			// Enable DMA Transfer
			USBEpDMAEn = 1UL << EP;
			// Trigger transfer
			Int32U EpReg = USB_Cmd(CMD_USB_SEL_EP | EP,0);
			if(0 == (EpReg & 0x60))
			{
				// Retrigger DMA Transfer
				USBDMARSet = 1 << EP;
			}

#endif // USB_DMA_ID_MAX_NUMB > 0
		}
		else
		{
#endif
			Count = EpCnfg[EP].Size - EpCnfg[EP].Offset;

			while(EpCnfg[EP].AvbBuff)
			{
				if(Count == 0 && !EpCnfg[EP].bZeroPacket)
				{
					break;
				}

				// Set Status
				EpCnfg[EP].Status = BEGIN_SERVICED;
				// Get data size
				if(EpCnfg[EP].bZeroPacketPossible && Count == EpCnfg[EP].MaxSize)
				{
					EpCnfg[EP].bZeroPacketPossible = 0;
					EpCnfg[EP].bZeroPacket = 1;
				}

				Count = MIN(Count,EpCnfg[EP].MaxSize);
				Int32U Offset = EpCnfg[EP].Offset;
				EpCnfg[EP].Offset += Count;
				// Convert EP physical address to logical and set write enable bit
				USBCtrl = ((EP << 1) & 0x3C) | bmUSB_CtrlWrEna;
				USBTxPLen = Count;
				// Write data to SIE buffer
				if(Count)
				{
					do
					{
						assert(USBCtrl_bit.WR_EN);
						Data = *(EpCnfg[EP].pBuffer+Offset++);
						if (--Count)
						{
							Data |= (Int32U)(*(EpCnfg[EP].pBuffer+Offset++))<<8;
							if (--Count)
							{
								Data |= (Int32U)(*(EpCnfg[EP].pBuffer+Offset++))<<16;
								if (--Count)
								{
									Data |= (Int32U)(*(EpCnfg[EP].pBuffer+Offset++))<<24;
									--Count;
								}
							}
						}
						USBTxData = Data;
					}
					while (Count);
					assert(!USBCtrl_bit.WR_EN);
				}
				else
				{
					EpCnfg[EP].bZeroPacket = 0;
					do
					{
						USBTxData = 0;
					}
					while (USBCtrl_bit.WR_EN);
				}

				USBCtrl = 0;

				--EpCnfg[EP].AvbBuff;
				USB_Cmd(CMD_USB_SEL_EP | EP, 0);
				USB_Cmd(CMD_USB_VAL_BUF, 0);
				Count = EpCnfg[EP].Size - EpCnfg[EP].Offset;
			}

			if(!EpCnfg[EP].bZeroPacket && !Count)
			{
				EpCnfg[EP].Status = COMPLETE;
				//call callback function
				if(EpCnfg[EP].pFn)
				{
					((void(*)(USB_Endpoint_t))EpCnfg[EP].pFn)(EP);
				}
			}
#if USB_DMA_DD_MAX_NUMB > 0
		}
#endif // USB_DMA_DD_MAX_NUMB > 0
	}
	else
  	{
    // OUT
#if USB_DMA_DD_MAX_NUMB > 0
		if(EpCnfg[EP].bDMA_Transfer)
		{
			// Set Data buffer
			EpCnfg[EP].pUSB_DmaDesc->pDmaBuffer     = EpCnfg[EP].pBuffer;
			#if USB_DMA_ID_MAX_NUMB > 0
			// Set Iso packet descrptor
			if(EpCnfg[EP].pUSB_DmaDesc->Isochronous)
			{
				// Iso packet descriptor
				EpCnfg[EP].pUSB_DmaDesc->pDmaIsoPacket = EpCnfg[EP].pDmaIsoPacket;
				// Set Data size
				EpCnfg[EP].pUSB_DmaDesc->DmaBufferLegtn = 1;
			}
			else
			{
				// Set Data size
				EpCnfg[EP].pUSB_DmaDesc->DmaBufferLegtn = EpCnfg[EP].Size;
			}
			// Set DMA status
			EpCnfg[EP].pUSB_DmaDesc->Status         = 0;
			// Enable DMA Transfer
			USBEpDMAEn = 1UL << EP;
			if(0 == EpCnfg[EP].pUSB_DmaDesc->Isochronous)
			{
				// Trigger transfer
				Int32U EpReg = USB_Cmd(CMD_USB_SEL_EP | EP,0);
				if (0x60 == (EpReg & 0x60))
				{
					// Retrigger DMA Transfer
					USBDMARSet = 1 << EP;
				}
			}
			#else
			// Set Data size
			EpCnfg[EP].pUSB_DmaDesc->DmaBufferLegtn = EpCnfg[EP].Size;
			// Set DMA status
			EpCnfg[EP].pUSB_DmaDesc->Status         = 0;
			// Enable DMA Transfer
			USBEpDMAEn = 1UL << EP;
			// Trigger transfer
			Int32U EpReg = USB_Cmd(CMD_USB_SEL_EP | EP,0);
			if ((EP & 1) && !(EpReg & 0x60))
			{
				// Retrigger DMA Transfer
				USBDMARSet = 1 << EP;
			}
			#endif // USB_DMA_ID_MAX_NUMB > 0
		}
    	else
    	{
  #endif
      while(EpCnfg[EP].AvbBuff)
      {
		  if(EP == ENP2_OUT)
			  TestCount = 1;
		  
        // Convert EP physical address to logical and set read enable bit
        USBCtrl = ((EP << 1) & 0x3C) | bmUSB_CtrlRdEna;
        while (USBRxPLen_bit.PKT_RDY == 0);
        // Get data size
        Count = USBRxPLen_bit.PKT_LNGTH;
        if(Count > (EpCnfg[EP].Size - EpCnfg[EP].Offset))
        {
          EpCnfg[EP].Status = BUFFER_OVERRUN;
          EpCnfg[EP].Size = EpCnfg[EP].Offset;
          break;
        }
        else if (Count < EpCnfg[EP].MaxSize)
        {
          EpCnfg[EP].Status = BUFFER_UNDERRUN;
          EpCnfg[EP].Size = EpCnfg[EP].Offset + Count;
        }
        else
        {
          EpCnfg[EP].Status = BEGIN_SERVICED;
        }

        Int32U Offset = EpCnfg[EP].Offset;
        EpCnfg[EP].Offset += Count;

        // Read data from SIE buffer
        do
        {
          //assert(RCVEPKTLEN_bit.DV);
          Data = USBRxData;
          // because zero lenght packe is possible
          if(Count)
          {
            *(EpCnfg[EP].pBuffer+Offset++) = Data;
            if (--Count)
            {
              Data >>= 8;
              *(EpCnfg[EP].pBuffer+Offset++) = Data;
              if (--Count)
              {
                Data >>= 8;
                *(EpCnfg[EP].pBuffer+Offset++) = Data;
                if (--Count)
                {
                  --Count;
                  Data >>= 8;
                  *(EpCnfg[EP].pBuffer+Offset++) = Data;
                }
              }
            }
          }
        }
        while (Count);
        assert(!USBRxPLen_bit.DV);

        USBCtrl = 0;
        --EpCnfg[EP].AvbBuff;
        USB_Cmd(CMD_USB_SEL_EP | EP, 0);
        if(USB_Cmd(CMD_USB_CLR_BUF, 0) & bmUSB_PacketOverWritten)
        {
          EpCnfg[EP].Status = SETUP_OVERWRITE;
          return;
        }
        if (!(Count = (EpCnfg[EP].Size - EpCnfg[EP].Offset)))
        {
          EpCnfg[EP].Status = COMPLETE;
          break;
        }
      }

      if (EpCnfg[EP].Status != BEGIN_SERVICED && EpCnfg[EP].Status != NO_SERVICED)
      {
        //call callback function
        if(EpCnfg[EP].pFn)
        {
          ((void(*)(USB_Endpoint_t))EpCnfg[EP].pFn)(EP);
        }
      }
#if USB_DMA_DD_MAX_NUMB > 0
    }
#endif // USB_DMA_DD_MAX_NUMB > 0
  }
}

USB_Endpoint_t USB_EpLogToPhysAdd (Int8U EpLogAdd)	// OK
{
	USB_Endpoint_t Address = (USB_Endpoint_t)((EpLogAdd & 0x0F)<<1);
	if(EpLogAdd & 0x80)
	{
		++Address;
	}
	return(Address);
}

void USB_StatusPhase (Boolean In)
{
	if(In)
	{
		USB_IO_Data(CTRL_ENP_IN,NULL,0,NULL);
	}
}

void USB_ISR (void)
{
	Int32U Val;

  	USB_INTR_ENTRY_HOOK();
  	if (SIC1_RSR_bit.USB_dev_lp_int)
  	{
#if USB_ERROR_EVENT > 0
    	// USB engine error interrupt
    	if(USBDevIntSt_bit.ERR_INT)
    	{
      		USBDevIntClr = bmUSB_ErrorInterrupt;
      		USB_ERR_HOOK(USB_Cmd(CMD_USB_RD_ERROR_STAT,0));
    	}
#endif
#if USB_SOF_EVENT > 0 && 1 != USB_DEV_PRIORITY
    	// Frame interrupt
    	if(USBDevIntSt_bit.FRAME)
    	{
      		USBDevIntClr = bmUSB_FrameInterrupt;
#if USB_SOF_FRAME_NUMB > 0
      		USB_FRAME_HOOK(USB_Cmd(CMD_USB_RD_FRAME_NUMB,0));
#else
      		USB_FRAME_HOOK(0);
#endif
    	}
#endif
    	// Device Status interrupt
    	if(USBDevIntSt_bit.DEV_STAT)
    	{
      		// Clear Device status interrupt
      		USBDevIntClr = bmUSB_DevStatusInterrupt;
      		// Get device status
      		USB_DevStatus.Data = USB_Cmd(CMD_USB_GET_DEV_STAT,0);
      		// Device connection status
      		if(USB_DevStatus.ConnectChange)
      		{
        		UsbDevConnectCallback(USB_DevStatus.Connect);
      		}
      		// Device suspend status
      		if(USB_DevStatus.SuspendChange)
      		{
        		UsbDevSuspendCallback(USB_DevStatus.Suspend);
      		}
      		// Device reset
      		if(USB_DevStatus.Reset)
      		{
        		USB_HwReset();
        		UsbDevResetCallback();
      		}
    	}

		// Slow EP interrupt
		while(USBDevIntSt_bit.EP_SLOW)
    	{
      		Int32U Mask = 1;
      		USB_Endpoint_t EP = CTRL_ENP_OUT;
      		Int32U EpIntr;
      		EpIntr  = USBEpIntSt;
      		EpIntr &= USBEpIntEn;
#if 2 == USB_DEV_PRIORITY
      		EpIntr &= ~USB_EP_PRIORITY; // clear high priority EPs interrutp flags
#endif // 2 == USB_DEV_PRIORITY
      		while (EpIntr)
      		{
        		if(EpIntr & Mask)
        		{
          			Val = USB_EpIntrClr(EP) ^ ((EP & 1)?((1<<6)|(1<<5)):0);
          			if (!EpCnfg[EP].bDoubleBuffered)
          			{
            			Val &= ~(1<<6);
          			}
					
          			switch (Val & ((1<<6)|(1<<5)))
          			{
          				case 0:
            				EpCnfg[EP].AvbBuff = 0;
            				break;
          				case (1<<5):
            				EpCnfg[EP].AvbBuff = 1;
            				break;
          				case (1<<6):
            				EpCnfg[EP].AvbBuff = 1;
            				break;
          				case (1<<5) | (1<<6):
            				EpCnfg[EP].AvbBuff = 2;
            				break;
          			}

          			if(Val & bmUSB_EpSetupPacket)
          			{
            			// only ctrl EP can receive setup packets
            			assert(EP == CTRL_ENP_OUT);
            			EpCnfg[CTRL_ENP_IN].AvbBuff  = 1;
            			// init IO to receive Setup packet
            			USB_IO_Data(CTRL_ENP_IN,NULL,(Int32U)-1,NULL);
            			USB_IO_Data(CTRL_ENP_OUT, UsbEp0SetupPacket.Data,sizeof(UsbSetupPacket_t),NULL);

            			// reset EP IO ctrl
            			if (UsbEp0SetupPacket.mRequestType.Dir == UsbDevice2Host)
            			{
              				USB_StatusHandler(CTRL_ENP_OUT);
            			}

            			USB_SetupHandler();

            			if(EpCnfg[CTRL_ENP_OUT].Status == STALLED)
            			{
              				USB_StallCtrlEP();
            			}
            			break;
          			}
          			else
          			{
            			if(EP == CTRL_ENP_OUT)
            			{
              				if(UsbEp0SetupPacket.mRequestType.Dir == UsbDevice2Host && EpCnfg[CTRL_ENP_OUT].pFn)
              				{
                				((void(*)(USB_Endpoint_t))EpCnfg[CTRL_ENP_OUT].pFn)(CTRL_ENP_OUT);
                				break;
              				}
            			}
            			else if(EP == CTRL_ENP_IN)
            			{
              				if(UsbEp0SetupPacket.mRequestType.Dir == UsbHost2Device && EpCnfg[CTRL_ENP_IN].pFn)
              				{
                				((void(*)(USB_Endpoint_t))EpCnfg[CTRL_ENP_IN].pFn)(CTRL_ENP_IN);
                				break;
              				}
            			}
						
            			assert(EpCnfg[EP].AvbBuff <= (EpCnfg[EP].bDoubleBuffered + 1));
            			USB_EP_IO(EP);
          			}
          			break;
        		}
				
        		++EP; Mask <<= 1;
      		}
      // Clear Slow EP interrupt
      // EPs' pending interrupts are cleared
      		if(EpIntr == 0)
      		{
        		USBDevIntClr = bmUSB_SlowInterrupt;
      		}
    	}
  	}

  	USB_INTR_EXIT_HOOK();
}