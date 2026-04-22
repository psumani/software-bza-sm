#include "defines/type.h"

#ifndef __USB_T9_H
#define __USB_T9_H

#ifdef  USB_T9_GLOBAL
#define USB_T9_EXTERN
#else
#define USB_T9_EXTERN  extern
#endif

typedef enum _UsbCommStatus_t
{
	UsbPass = 0, UsbFault, UsbNotSupport,
} UsbCommStatus_t;

typedef enum _UsbT9DevState_t
{
  	UsbDevStatusUnknow = 0, UsbDevStatusAttached, UsbDevStatusPowered,
  	UsbDevStatusDefault, UsbDevStatusAddress, UsbDevStatusConfigured
} UsbT9DevState_t;

typedef enum _UsbSetupType_t
{
  	UsbTypeStandart = 0,UsbTypeClass,UsbTypeVendor,UsbTypeReserved
} UsbSetupType_t;

typedef enum _UsbSetupStandatRecuest_t
{
  	GET_STATUS = 0,CLEAR_FEATURE, Reserved0, SET_FEATURE, Reserved1,
  	SET_ADDRESS, GET_DESCRIPTOR, SET_DESCRIPTOR, GET_CONFIGURATION,
  	SET_CONFIGURATION, GET_INTERFACE, SET_INTERFACE, SYNCH_FRAME
} UsbSetupStandatRecuest_t;

typedef enum _UsbSetupRecipient_t
{
  	UsbRecipientDevice = 0,UsbRecipientInterface,UsbRecipientEndpoint,
  	UsbRecipientOther,UsbRecipientReserved
} UsbSetupRecipient_t;

typedef enum _UsbFeatureSelector_t
{
  	UsbEpHaltSelector= 0, UsbDeviceRemoteWakeupSelector, UsbTestModeSelector
} UsbFeatureSelector_t;

typedef enum _UsbCoreReqType_t
{
  	UsbCoreReqDevState = 0, UsbCoreReqDevSusState, UsbCoreReqConfiquration,
  	UsbCoreReqInterface,  UsbCoreReqDevOwnAddress,
  	UsbCoreReqWakeUpEnableStatus, UsbCoreReqSelfPoweredStatus,
  	UsbCoreReqSpeed,
} UsbCoreReqType_t;

typedef enum _UsbUserFuncResponse_t
{
  	UsbUserError = 0, UsbUserSendPacket, UsbUserReceivePacket, UsbUserSendAckn,
  	UsbUserStallCtrlEp,
} UsbUserFuncResponse_t;

typedef enum _UsbDataState_t
{
  	UsbHost2Device = 0, UsbDevice2Host
} UsbDataState_t;

#define UsbDevStatusNoSuspend 0
#define UsbDevStatusSuspend   1

#pragma pack(1)
typedef struct _UsbDevState_t
{
	UInt8 DS          : 3;
	UInt8             : 4;
	UInt8 Suspend     : 1;
} UsbDevState_t, * pUsbDevState_t;

typedef union _UsbRequestType_t
{
	Int8U mRequestTypeData;
	struct
	{
		Int8U Recipient : 5;
		Int8U Type      : 2;
		Int8U Dir       : 1;
	};
}UsbRequestType_t, * pUsbRequestType_t;

typedef union _TwoBytes_t
{
	Int16U Word;
	struct
	{
		Int8U Lo;
		Int8U Hi;
	};
}TwoBytes_t, * pTwoBytes_t;

typedef union _UsbSetupPacket_t
{
	Int8U Data[8];
	struct 
	{
		UsbRequestType_t  mRequestType;
		Int8U             bRequest;
		TwoBytes_t        wValue;
		TwoBytes_t        wIndex;
		TwoBytes_t        wLength;
	};
} UsbSetupPacket_t, * pUsbSetupPacket_t;
#pragma pack()

typedef union _UsbDefFeature_t
{
	UInt8 Data;
	struct
	{
		UInt8 SelfPowered         :1;
		UInt8 RemoteWakeupEnable  :1;
		UInt8                     :6;
	};
} UsbDefFeature_t, * pUsbDefFeature_t;

typedef struct _UsbDevCtrl_t
{
	UsbDevState_t     						State;
	UInt32            						Configuration;
	pUsbStandardConfigurationDescriptor_t 	pCnfg;
	UInt32            						Interfaces;
	UInt32            						AlternateSetting[USB_MAX_INTERFACE];
	UInt32            						DevAdd;
	UsbDefFeature_t   						Feature;
} UsbDevCtrl_t, * pUsbDevCtrl_t;

#define USB_T9_ERROR_REQUEST() EpCnfg[CTRL_ENP_OUT].Status = STALLED

USB_T9_EXTERN UsbSetupPacket_t UsbEp0SetupPacket;

void UsbCoreInit (void);
Int32U UsbCoreReq (UsbCoreReqType_t Type);

void UsbSetDevState (UsbT9DevState_t DevState);

void UsbDevConnectCallback (Boolean Connect);
void UsbDevSuspendCallback (Boolean Suspend);
void UsbDevResetCallback (void);

Int32U USB_T9_Size(Int32U Size,Int32U HostExpSize);

void USB_SetupHandler (void);
void USB_StatusHandler (USB_Endpoint_t EP);
static void USB_StatusEndHandler (USB_Endpoint_t EP);
static void USB_AddStatusEndHandler (USB_Endpoint_t EP);

static pUsbStandardInterfaceDescriptor_t UsbFindInterface(UsbStandardConfigurationDescriptor_t * pConfiguration, Int32U Interface, Int32U AlternateSetting);
static UsbStandardConfigurationDescriptor_t * UsbFindConfiguration(Int32U Configuration);

static void UsbEpInterfaceCnfg(pUsbStandardInterfaceDescriptor_t pInterface, Boolean Configure);

inline static UsbCommStatus_t UsbSetConfigurtonState (Int32U Configuration);
inline static UsbCommStatus_t UsbDevStatus(Int16U Index);
inline static UsbCommStatus_t UsbInterfaceStatus(Int16U Index);
inline static void UsbGetStatus (void);
inline static UsbCommStatus_t UsbClearDevFeature(Int16U Feature,Int16U Index);
inline static UsbCommStatus_t UsbClearInterfaceFeature(Int16U Feature,Int16U Index);
inline static UsbCommStatus_t UsbClearEpFeature(Int16U Feature,Int16U Index);
inline static void UsbClearFeature (void);
inline static UsbCommStatus_t UsbSetDevFeature(Int16U Feature,Int16U Index);
inline static UsbCommStatus_t UsbSetInterfaceFeature(Int16U Feature,Int16U Index);
inline static UsbCommStatus_t UsbSetEpFeature(Int16U Feature,Int16U Index);
inline static void UsbSetFeature (void);
inline static void UsbSetAddress (void);
inline static UsbCommStatus_t UsbGetDescriptorDevice(Int8U Index);
inline static UsbCommStatus_t UsbGetDescriptorConfiguration(Int8U Index);
inline static UsbCommStatus_t UsbGetDescriptorString(Int8U Index);

inline static void UsbGetDescriptor (void);
inline static void UsbSetDescriptor(void);
inline static void UsbGetConfiguration(void);
inline static void UsbSetConfiguration(void);
inline static void UsbGetInterface (void);
inline static void UsbSetInterface (void);

inline static void UsbSynchFrame (void);

#endif