#include "defines/type.h"

#ifndef __USB_DESC_H
#define __USB_DESC_H

#define UsbConfigPower_mA(mA)   ((mA)/2)
#define UsbEpOut(addr)          ((addr) | 0x00)
#define UsbEpIn(addr)           ((addr) | 0x80)

#define UsbDescLengthOffset     0
#define UsbDescDescriptorOffset 1

typedef enum _UsbDescriptorType_t
{
	UsbDescriptorDevice = 1, UsbDescriptorConfiguration, UsbDescriptorString,
	UsbDescriptorInterface, UsbDescriptorEp, UsbDescriptorDeviceQualifier,
	UsbDescriptorOtherSeedConfiguration, UsbDescriptorInterfacePower
} UsbDescriptorType_t;

typedef enum _UsbStringsIndex_t
{
	iLanguagesStr = 0, iManufacturerStr, iProductStr, iSerialNumberStr,
	iConfigurationStr,
	iInterface,
} UsbStringsIndex_t;

typedef enum _UsbDeviceClassses_t
{
/* USB Device Classes */
	UsbDeviceClassReserved = 0, UsbDeviceClassAudio,
	UsbDeviceClassCommunications,UsbDeviceClassHumanInterface,
	UsbDeviceClassMonitor,UsbDeviceClassPhysicalInterface,
	UsbDeviceClassPower,UsbDeviceClassPrinter,
	UsbDeviceClassStorage,UsbDeviceClassHub,
	UsbDeviceClassVendorSpecific = 0xFF
} UsbDeviceClassses_t;

typedef union _CnfgArtr_t
{
	UInt8 Data;
	struct
	{
		UInt8 Reserved      : 5;
		UInt8 RemoteWakeup  : 1;
		UInt8 SelfPowered   : 1;
		UInt8 MustBeOne     : 1;
	};
} CnfgArtr_t, * pCnfgArtr_t;

#define USBPowerMask          0x40
#define USBRemoteWakeUpMask   0x20

typedef enum _UsbConfigurationAttr_t
{
	UsbRemoteWakeup = 0x20, UsbSelfPowered = 0x40,  UsbConfigurationCommmonAttr = 0x80
} UsbConfigurationAttr_t;

typedef enum _UsbEpTransferType_t
{
	UsbEpTransferControl = 0, UsbEpTransferIsochronous,
	UsbEpTransferBulk,UsbEpTransferInterrupt
}UsbEpTransferType_t;

typedef enum _UsbEpSynchronizationType_t
{
	UsbEpSynchNoSynchronization = 0, UsbEpSynchAsynchronous = 1<<2,
	UsbEpSynchAdaptive = 2<<2, UsbEpSynchSynchronous = 3<<2
}UsbEpSynchronizationType_t;

typedef enum _UsbEpUsageType_t
{
	UsbEpUsageData = 0, UsbEpUsageFeedback = 1<<4,
	UsbEpUsageImplicit = 2<<4, UsbEpUsageReserved = 3<<4
}UsbEpUsageType_t;

typedef union _EpAttr_t
{
	UInt8 Data;
	struct
	{
		UInt8 TransferType        : 2;
		UInt8 SynchronizationType : 2;
		UInt8 UsageType           : 2;
	};
} EpAttr_t, * pEpAttr_t;

#pragma pack(1)

typedef struct _UsbStandardDeviceDescriptorStr_t
{
	UInt8       bLength;
	UInt8       bDescriptorType;
	UInt16      bcdUSB;
	UInt8       bDeviceClass;
	UInt8       bDeviceSubClass;
	UInt8       bDeviceProtocol;
	UInt8       bMaxPacketSize0;
	UInt16      idVendor;
	UInt16      idProduct;
	UInt16      bcdDevice;
	UInt8       iManufacturer;
	UInt8       iProduct;
	UInt8       iSerialNumber;
	UInt8       bNumConfigurations;
} UsbStandardDeviceDescriptorStr_t, * pUsbStandardDeviceDescriptorStr_t;

typedef struct _UsbStandardConfigurationDescriptor_t
{
	UInt8       bLength;
	UInt8       bDescriptorType;
	UInt16      wTotalLength;
	UInt8       bNumInterfaces;
	UInt8       bConfigurationValue;
	UInt8       iConfiguration;
	CnfgArtr_t  bmAttributes;
	UInt8       bMaxPower;
} UsbStandardConfigurationDescriptor_t, * pUsbStandardConfigurationDescriptor_t;

typedef struct _UsbStandardInterfaceDescriptor_t
{
	UInt8       bLength;
	UInt8       bDescriptorType;
	UInt8       bInterfaceNumber;
	UInt8       bAlternateSetting;
	UInt8       bNumEndpoints;
	UInt8       bInterfaceClass;
	UInt8       bInterfaceSubClass;
	UInt8       bInterfaceProtocol;
	UInt8       iInterface;
} UsbStandardInterfaceDescriptor_t, * pUsbStandardInterfaceDescriptor_t;

typedef struct _UsbStandardEpDescriptor_t
{
	UInt8       bLength;
	UInt8       bDescriptorType;
	UInt8       bEndpointAddress;
	EpAttr_t    bmAttributes;
	UInt16      wMaxPacketSize;
	UInt8       bInterval;
} UsbStandardEpDescriptor_t, * pUsbStandardEpDescriptor_t;

#if USB_HIGH_SPEED > 0
typedef struct _UsbStandardDeviceQualifierDescriptor_t
{
	UInt8       bLength;
	UInt8       bDescriptorType;
	UInt16      bcdUSB;
	UInt8       bDeviceClass;
	UInt8       bDeviceSubClass;
	UInt8       bDeviceProtocol;
	UInt8       bMaxPacketSize0;
	UInt8       bNumConfigurations;
	UInt8       bReserve;
} UsbStandardDeviceQualifierDescriptor_t, *pUsbStandardDeviceQualifierDescriptor_t;
#endif // USB_HIGH_SPEED > 0

#pragma pack()

#endif