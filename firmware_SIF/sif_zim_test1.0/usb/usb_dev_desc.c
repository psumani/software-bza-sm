/*************************************************************************
 *
 *    Used with ICCARM and AARM.
 *
 *    (c) Copyright IAR Systems 2008
 *
 *    File name   : usb_desc.c
 *    Description : usb decriptors module
 *
 *    History :
 *    1. Date        : August 5, 2008
 *       Author      : Stanimir Bonev
 *       Description : Create
 *
 *    $Revision: 40642 $
 **************************************************************************/
#include "usb_desc.h"

#pragma data_alignment=4
const UsbStandardDeviceDescriptorStr_t UsbStandardDeviceDescriptorStr =
{
	sizeof(UsbStandardDeviceDescriptorStr_t),
	UsbDescriptorDevice,
	0x200,
	0,
	0,
	0,
	8,    //Ep0MaxSize,
	0x2393,//0xFFFF,
	0x0160,//0x0022,
	0x0000,
	iManufacturerStr,
	iProductStr,
	iSerialNumberStr,
	1,
};

#pragma data_alignment=4
const Int8U HidReportDescriptor[] =
{
	0x05, 0x01, // Usage Page (Generic Desktop)
	0x09, 0x02, // Usage (Mouse)
	0xA1, 0x01, // Collection (Application)
	0x09, 0x01, //  Usage (Pointer)
	0xA1, 0x00, //  Collection (Physical)
	0x05, 0x09, //    Usage Page (Buttons)
	0x75, 0x01, //    Report Size (1)
	0x95, 0x03, //    Report Count (3)
	0x19, 0x01, //    Usage Minimum?(01)
	0x29, 0x03, //    Usage Maximum (05)
	0x15, 0x00, //    Logical Minimum (0)
	0x25, 0x01, //    Logical Maximum (1)
	0x81, 0x02, //    Input(Data,Var,Abs)
	0x75, 0x05, //    Report Size (5)
	0x95, 0x01, //    Report Count (1)
	0x81, 0x03, //    Input(Const,Var,Abs)
	0x05, 0x01, //    Generic desktop
	0x75, 0x08, //    Report Size (8)
	0x95, 0x02, //    Report Count (2)
	0x09, 0x30, //    Usage(X)
	0x09, 0x31, //    Usage(Y)
	0x15, 0x80, //    Logical Minimum (-128)
	0x25, 0x7F, //    Logical Maximum (127)
	0x81, 0x06, //    Input(Data,Var,Rel)
	0xC0, 0xC0, // End collection x2
};

#pragma data_alignment=4
const Int8U HidDescriptor[] =
{
	sizeof(UsbHidDescriptor_t),
	Hid,
	_2BL(0x0111),
	0,
	1,
	HidReport,
	_2BL(sizeof(HidReportDescriptor)),
};

#pragma data_alignment=4
static const Int8U UsbFS_Cfg0[] =
{
	sizeof(UsbStandardConfigurationDescriptor_t),
	UsbDescriptorConfiguration,
	_2BL(sizeof(UsbStandardConfigurationDescriptor_t)+
	sizeof(UsbStandardInterfaceDescriptor_t)+
	//sizeof(UsbHidDescriptor_t)+
	sizeof(UsbStandardEpDescriptor_t) * 4),
	1,		// bNumInterfaces
	1,		// bConfigurationValue
	0,		// iConfiguration
	0xC0,		//UsbConfigurationCommmonAttr | (USB_REMOTE_WAKEUP?UsbRemoteWakeup:0) | (USB_SELF_POWERED?0:UsbSelfPowered),
	UsbConfigPower_mA(100),

	sizeof(UsbStandardInterfaceDescriptor_t),
	UsbDescriptorInterface,
	0,//HID_INTERFACE_0,																// bInterfaceNumber
	0,																				// bAlternateSetting
	4,																				// bNumEndpoints
	0, 						//UsbDeviceClassHumanInterface,							// bInterfaceClass
	0, 						//HID_BOOT_DEVICE?BootInterfaceSubclass:NoSubclass,		// bInterfaceSubClass
	0,						//HID_BOOT_DEVICE?Mouse:0,								// bInterfaceProtocol
	0,																				// iInterface

	//sizeof(UsbHidDescriptor_t),
	//Hid,
	//_2BL(0x0111),
	//0,
	//1,
	//HidReport,
	//_2BL(sizeof(HidReportDescriptor)),

	//sizeof(UsbStandardEpDescriptor_t),
	//UsbDescriptorEp,
	//UsbEpIn(ReportEpHid>>1),
	//UsbEpTransferInterrupt,
	//_2BL(ReportEpMaxSize),
	//ReportEpPollingPeriod,
	//0,

	sizeof(UsbStandardEpDescriptor_t),
	UsbDescriptorEp,
	UsbEpOut(ENP2_OUT>>1),
	UsbEpTransferBulk,
	_2BL(64),
	0,

	sizeof(UsbStandardEpDescriptor_t),
	UsbDescriptorEp,
	UsbEpIn(ENP2_IN>>1),
	UsbEpTransferBulk,
	_2BL(64),
	0,  

	sizeof(UsbStandardEpDescriptor_t),
	UsbDescriptorEp,
	UsbEpOut(ENP5_OUT>>1),
	UsbEpTransferBulk,
	_2BL(64),
	0,

	sizeof(UsbStandardEpDescriptor_t),
	UsbDescriptorEp,
	UsbEpIn(ENP5_IN>>1),
	UsbEpTransferBulk,
	_2BL(64),
	0,
};

static const Int8U * const UsbFS_CfgArray[] =
{
	UsbFS_Cfg0,
	NULL,
};
/*
static const UsbEP_ExtDesc_t UsbEPExt_Cfg0EP1 =
{
	1,                     // Configuration
	UsbEpIn(ReportEpHid>>1),  // EP address
	{
	0
	}
};*/

static const UsbEP_ExtDesc_t UsbEPExt_Cfg0EP2Out =
{
	1,                     // Configuration
	UsbEpOut(ENP2_OUT>>1),  // EP address    
	{
	0
	}
};

static const UsbEP_ExtDesc_t UsbEPExt_Cfg0EP2In =
{
	1,                     // Configuration
	UsbEpIn(ENP2_IN>>1),  // EP address  
	{
	0
	}
};

static const UsbEP_ExtDesc_t UsbEPExt_Cfg0EP5Out =
{
	1,                     // Configuration
	UsbEpOut(ENP5_OUT>>1),  // EP address    
	{
	0
	}
};

static const UsbEP_ExtDesc_t UsbEPExt_Cfg0EP5In =
{
	1,                     // Configuration
	UsbEpIn(ENP5_IN>>1),  // EP address  
	{
	0
	}
};
static const UsbEP_ExtDesc_t * const UsbFS_EPExtArray[] =
{
	//&UsbEPExt_Cfg0EP1,
	&UsbEPExt_Cfg0EP2Out,
	&UsbEPExt_Cfg0EP2In,
	&UsbEPExt_Cfg0EP5Out,
	&UsbEPExt_Cfg0EP5In,
};

#pragma data_alignment=4
const Int8U UsbLanguagesStr [] =
{
	// Length of LanguagesStr + 2
	4,
	// Desciptor Type
	UsbDescriptorString,
	// Languages  ID
	// Languages1 ID English
	0x09,0x04,
};

#pragma data_alignment=4
const Int8U ManufacturerStrLan1 [] =
{
	22, // length
	UsbDescriptorString,  // Descriptor
	'I',0,'A',0,'R',0,' ',0,'S',0,'y',0,'s',0,'t',0,'e',0,'m',0, // Str
};

#pragma data_alignment=4
const Int8U ProductStrLan1 [] =
{
	98, //length
	UsbDescriptorString, // Descriptor
	'I',0,'A',0,'R',0,' ',0,'E',0,'m',0,'b',0,'e',0,'d',0,'d',0,'e',0,
	'd',0,' ',0,'W',0,'o',0,'r',0,'k',0,'b',0,'e',0,'n',0,'c',0,'h',0,
	' ',0,'A',0,'R',0,'M',0,' ',0,'-',0,' ',0,'H',0,'I',0,'D',0,' ',0,
	'D',0,'e',0,'v',0,'i',0,'c',0,'e',0,' ',0,'e',0,'x',0,'a',0,'m',0,
	'p',0,'l',0,'e',0,'!',0
};

#pragma data_alignment=4
const Int8U SerialNumberStrLan1 [] =
{
	18, //length
	UsbDescriptorString, // Descriptor
	'0',0,'0',0,'0',0,'0',0,'0',0,'0',0,'0',0,'1',0, // Str
};

const Int8U * const UsbLanguages1Strings[] =
{
	// iManufacturerStr
	ManufacturerStrLan1,
	// iProductStr
	ProductStrLan1,
	// iSerialNumberStr
	SerialNumberStrLan1,
	// Terminator
	NULL
};

static const Int8U * const * const UsbFS_StringArray[] =
{
	UsbLanguages1Strings,
	NULL,
};

const void * const UsbDescArray[] =
{
	UsbFS_CfgArray,
	UsbFS_EPExtArray,
	UsbLanguagesStr,
	UsbFS_StringArray,
	NULL,
};
