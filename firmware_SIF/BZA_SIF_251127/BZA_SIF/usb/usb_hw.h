#include "defines/type.h"

#ifndef __USB_HW_H
#define __USB_HW_H

#ifdef USB_HW_GLOBAL
#define USB_HW_EXTERN
#else
#define USB_HW_EXTERN  extern
#endif

typedef union _UsbDevStat_t
{
	Int8U Data;
	struct
	{
		Int8U  Connect        : 1;
		Int8U  ConnectChange  : 1;
		Int8U  Suspend        : 1;
		Int8U  SuspendChange  : 1;
		Int8U  Reset          : 1;
		Int8U                 : 3;
	};
} UsbDevStat_t;

typedef enum _USB_DevStatusReqType_t
{
	USB_DevConnectStatus = 0, USB_SuspendStatus, USB_ResetStatus
} USB_DevStatusReqType_t;

typedef enum _USB_ErrorCodes_t
{
	USB_OK = 0,USB_PLL_ERROR, USB_INTR_ERROR,
	USB_EP_OCCUPIER, USB_MEMORY_FULL, USB_BUF_OVERFLOW,
	USB_EP_NOT_VALID, UB_EP_SETUP_UNDERRUN, USB_EP_STALLED,
	UB_EP_SETUP_OVERWRITE, USB_EP_FATAL_ERROR, USB_DMA_DESC_OVERFLOW
} USB_ErrorCodes_t;

typedef enum _USB_Endpoint_t
{
	CTRL_ENP_OUT=0, CTRL_ENP_IN,
	ENP1_OUT      , ENP1_IN    ,
	ENP2_OUT      , ENP2_IN    ,
	ENP3_OUT      , ENP3_IN    ,
	ENP4_OUT      , ENP4_IN    ,
	ENP5_OUT      , ENP5_IN    ,
	ENP6_OUT      , ENP6_IN    ,
	ENP7_OUT      , ENP7_IN    ,
	ENP8_OUT      , ENP8_IN    ,
	ENP9_OUT      , ENP9_IN    ,
	ENP10_OUT     , ENP10_IN   ,
	ENP11_OUT     , ENP11_IN   ,
	ENP12_OUT     , ENP12_IN   ,
	ENP13_OUT     , ENP13_IN   ,
	ENP14_OUT     , ENP14_IN   ,
	ENP15_OUT     , ENP15_IN   ,
	ENP_MAX_NUMB
} USB_Endpoint_t;

typedef enum _USB_IO_Status_t
{
	NOT_READY = 0, NO_SERVICED, BEGIN_SERVICED, COMPLETE, BUFFER_UNDERRUN, BUFFER_OVERRUN,
	SETUP_OVERWRITE, STALLED, NOT_VALID
} USB_IO_Status_t;

#if USB_DMA_DD_MAX_NUMB > 0
typedef enum _UsbDmaStateCode_t
{
	UsbDmaNoServiced = 0,UsbDmaBeingServiced,
	UsbDmaNormalCompletion, UsbDmaDataUnderrun,
	UsbDmaDataOverrun = 8, UsbDmaSystemError,
} UsbDmaStateCode_t;

typedef enum
{
	UsbDmaNormalMode = 0, UsbDmaAtleMode,
} UsbDmaMode_t;

#pragma pack(1)
typedef struct _DmaIsoPacket_t
{
	Int32U  PacketLength 			:16;
	Int32U  PacketValid  			: 1;
	Int32U  FrameNumb 			  :15;
} DmaIsoPacket_t, *pDmaIsoPacket_t;

typedef struct _USB_DmaDesc_t
{
	void * pNextDD;
	union
	{
		Int32U Ctrl;
		struct
		{
			Int32U DmaMode 		 	: 2;
			Int32U NextDDValid   	: 1;
			Int32U 				 	: 1;
			Int32U Isochronous 	 	: 1;
			Int32U MaxPacketSize 	:11;
			Int32U DmaBufferLegtn 	:16;
		};
	};
	pInt8U pDmaBuffer;
	union
	{
		Int32U Status;
		struct
		{
			Int32U	DdRetired		: 1;
			Int32U	DdState 		: 4;
			Int32U	PacketValid		: 1;
			Int32U	LsByteExtr		: 1;
			Int32U	MsByteExtr		: 1;
			Int32U	MessLenPos		: 6;
			Int32U					: 2;
			Int32U	PresentCnt		:16;
		};
	};
	pDmaIsoPacket_t pDmaIsoPacket;
} USB_DmaDesc_t, *pUSB_DmaDesc_t;
#pragma pack()
#endif // USB_DMA_DD_MAX_NUMB > 0

typedef struct _EpCnfg_t
{
  	Int32U              MaxSize;
  	UsbEpTransferType_t EpType;
  	void *              pFn;
  	Int32U              Offset;
  	Int32U              Size;
  	USB_IO_Status_t     Status;
  	pInt8U              pBuffer;
  	Int8U               AvbBuff;
	union
	{
		Int8U Flags;
		struct
		{
			Int8U bDoubleBuffered     : 1;
			Int8U bDMA_Transfer       : 1;
			Int8U bZeroPacket         : 1;
			Int8U bZeroPacketPossible : 1;
		};
	};
#if USB_DMA_DD_MAX_NUMB > 0
	pUSB_DmaDesc_t pUSB_DmaDesc;
#if USB_DMA_ID_MAX_NUMB > 0
	pDmaIsoPacket_t pDmaIsoPacket;
#endif // USB_DMA_ID_MAX_NUMB > 0
#endif // USB_DMA_DD_MAX_NUMB > 0

} EpCnfg_t, *pEpCnfg_t;

#define CMD_USB_SEL_EP              0x00
#define CMD_USB_SEL_CLR_INT_EP      0x40
#define CMD_USB_SET_EP_STAT         0x140
#define CMD_USB_SET_ADDRESS         0xD0
#define CMD_USB_CFG_DEV             0xD8
#define CMD_USB_CLR_BUF             0xF2
#define CMD_USB_SET_MODE            0xF3
#define CMD_USB_RD_FRAME_NUMB       0xF5
#define CMD_USB_VAL_BUF             0xFA
#define CMD_USB_RD_ERROR_STAT       0xFB
#define CMD_USB_RD_TEST_REG         0xFD
#define CMD_USB_SET_DEV_STAT        0x1FE
#define CMD_USB_GET_DEV_STAT        0xFE
#define CMD_USB_GET_ERROR           0xFF

#define USB_CMD_WR                  0x00000500
#define USB_DATA_WR                 0x00000100
#define USB_DATA_RD                 0x00000200

#define bmUSB_FrameInterrupt        0x00000001
#define bmUSB_FastInterrupt         0x00000002
#define bmUSB_SlowInterrupt         0x00000004
#define bmUSB_DevStatusInterrupt    0x00000008
#define bmUSB_CommRegEmptyInterrupt 0x00000010
#define bmUSB_CommDataFullInterrupt 0x00000020
#define bmUSB_RxPacketInterrupt     0x00000040
#define bmUSB_TxPacketInterrupt     0x00000080
#define bmUSB_EPRealizeInterrupt    0x00000100
#define bmUSB_ErrorInterrupt        0x00000200

#define bmUSB_Connect               0x00000001
#define bmUSB_ConnectChange         0x00000002
#define bmUSB_Suspend               0x00000004
#define bmUSB_SuspendChange         0x00000008
#define bmUSB_BusReset              0x00000010

#define bmUSB_EpStall               0x00000001
#define bmUSB_EpStallStatus         0x00000002
#define bmUSB_EpSetupPacket         0x00000004
#define bmUSB_EpPOStatus            0x00000010
#define bmUSB_EpCondStall           0x00000080

#define bmUSB_CtrlRdEna             0x00000001
#define bmUSB_CtrlWrEna             0x00000002

#define bmUSB_PacketOverWritten     0x00000001

#define bmUSB_HP_Frame              0x00000001
#define bmUSB_HP_FastEp             0x00000002


#define USB_EP_VALID(pEP) (0 != pEP->MaxSize)

typedef struct _UsbEP_ExtData_t
{
	Boolean DMA_Transfer;
} UsbEP_ExtData_t, *pUsbEP_ExtData_t;

USB_HW_EXTERN EpCnfg_t EpCnfg[ENP_MAX_NUMB];

void USB_HwInit(void);
void USB_HwReset(void);
USB_ErrorCodes_t USB_RealizeEp(const UsbStandardEpDescriptor_t * pEP_Desc, const UsbEP_ExtData_t * pUsbEP_ExtData, Boolean Enable);

void USB_SetAdd(UInt32 DevAdd);
#define USB_SetDefAdd() USB_SetAdd(0)

void USB_ConnectRes(Boolean conn);
void USB_Configure (Boolean Configure);

void USB_SetStallEP (USB_Endpoint_t EP, Boolean Stall);
void USB_StallCtrlEP (void);
void USB_GetStallEP (USB_Endpoint_t EndPoint, pBoolean pStall);

void USB_EP_IO(USB_Endpoint_t EP);
USB_Endpoint_t USB_EpLogToPhysAdd (Int8U EpLogAdd);

void USB_StatusPhase (Boolean In);

void USB_ISR (void);

#endif