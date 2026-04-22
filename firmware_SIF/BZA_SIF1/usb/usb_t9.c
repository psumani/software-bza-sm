#define USB_T9_GLOBAL
#include "usb_t9.h"

static UsbDevCtrl_t UsbDevCtrl;
static UInt32 InData;

void UsbCoreInit (void)	// OK
{
	UsbDevCtrl.State.DS      = UsbDevStatusUnknow;
  	UsbDevCtrl.State.Suspend = FALSE;
  	UsbDevCtrl.Feature.RemoteWakeupEnable = FALSE;
  	UsbDevCtrl.Feature.SelfPowered = USB_SELF_POWERED;
#if USB_HIGH_SPEED > 0
  	UsbDevCtrl.HighSpeed = 0;
#endif // USB_HIGH_SPEED > 0
  	// Init HW
  	USB_HwInit();
}

Int32U UsbCoreReq (UsbCoreReqType_t Type)
{
  switch(Type)
  {
  case UsbCoreReqDevState:
    return(UsbDevCtrl.State.DS);
  case UsbCoreReqDevSusState:
    return(UsbDevCtrl.State.Suspend);
  case UsbCoreReqConfiquration:
    return(UsbDevCtrl.Configuration);
  case UsbCoreReqInterface:
    return(UsbDevCtrl.Interfaces);
  case UsbCoreReqDevOwnAddress:
    return(UsbDevCtrl.DevAdd);
  case UsbCoreReqWakeUpEnableStatus:
    return(UsbDevCtrl.Feature.RemoteWakeupEnable);
  case UsbCoreReqSelfPoweredStatus:
    return(USB_SELF_POWERED);
#if USB_HIGH_SPEED > 0
  case UsbCoreReqSpeed:
    return(UsbDevCtrl.HighSpeed);
#endif // USB_HIGH_SPEED > 0
  }
  return((Int32U) -1);
}

void UsbSetDevState(UsbT9DevState_t DevState)	// OK
{
	pUsbStandardInterfaceDescriptor_t pInterface;
	if(UsbDevCtrl.State.DS == UsbDevStatusConfigured)
	{
		// deconfigure device
		for (Int32U i = 0; i < UsbDevCtrl.Interfaces; ++i)
		{
			pInterface = UsbFindInterface(UsbDevCtrl.pCnfg,i,UsbDevCtrl.AlternateSetting[i]);
			UsbEpInterfaceCnfg(pInterface,FALSE);
		}
	}
	
	switch (DevState)
	{
		case UsbDevStatusAttached:
		case UsbDevStatusPowered:
		case UsbDevStatusDefault:
			USB_Configure(FALSE);
			USB_SetDefAdd();  // Set address 0
			USB_CONFIGURE_HOOK(NULL);
			UsbDevCtrl.DevAdd = UsbDevCtrl.Configuration = 0;
			break;
			
		case UsbDevStatusAddress:
			USB_Configure(FALSE);
			UsbDevCtrl.Configuration = 0;
			break;
			
		case UsbDevStatusConfigured:
			// configure device
			for (Int32U i = 0; i < UsbDevCtrl.Interfaces; ++i)
			{
			pInterface = UsbFindInterface(UsbDevCtrl.pCnfg,i,UsbDevCtrl.AlternateSetting[i]);
			UsbEpInterfaceCnfg(pInterface,TRUE);
			}
			USB_Configure(TRUE);
			break;
			
		default:  // unknown state - disconnected or in process of a connection
			USB_Configure(FALSE);
			USB_CONFIGURE_HOOK(NULL);
			UsbDevCtrl.DevAdd = UsbDevCtrl.Configuration = 0;
	}
	UsbDevCtrl.State.DS = DevState;
}

void UsbDevConnectCallback (Boolean Connect)	// OK
{
	UsbSetDevState(Connect?UsbDevStatusAttached:UsbDevStatusUnknow);
	USB_CONNECT_HOOK(Connect);
}

void UsbDevSuspendCallback (Boolean Suspend)	// OK
{
	UsbDevCtrl.State.Suspend = Suspend ? UsbDevStatusSuspend : UsbDevStatusNoSuspend;
	USB_SUSPEND_HOOK(Suspend);	
}

void UsbDevResetCallback (void)	// OK
{
	UsbSetDevState(UsbDevStatusDefault);
	USB_RESET_HOOK();
}

Int32U USB_T9_Size(Int32U Size,Int32U HostExpSize)	// OK
{
	Int32U ActSize = HostExpSize;
	if(Size < HostExpSize)
	{
		ActSize = Size;
		EpCnfg[CTRL_ENP_IN].bZeroPacketPossible = 1;
	}
	return(ActSize);
}

void USB_SetupHandler (void)
{
	switch(UsbEp0SetupPacket.mRequestType.Type)
	{
		// Standard
		case UsbTypeStandart:
		// Decoding standard request
			switch (UsbEp0SetupPacket.bRequest)
			{
				case GET_STATUS:
					UsbGetStatus();
					break;
				case CLEAR_FEATURE:
					UsbClearFeature();
					break;
				case SET_FEATURE:
					UsbSetFeature();
					break;
				case SET_ADDRESS:
					UsbSetAddress();
					break;
				case GET_DESCRIPTOR:
					if(UsbEp0SetupPacket.mRequestType.Recipient == UsbRecipientDevice)
					{
						UsbGetDescriptor();
					}
					// Only get descriptor for device is standard request
					//else if ((UsbEp0SetupPacket.mRequestType.Dir == UsbDevice2Host) &&
					//         (USB_GET_DESCRIPTOR_HOOK(&UsbEp0SetupPacket) == UsbPass))
					//{
					//}
					else
					{
						USB_T9_ERROR_REQUEST();
					}
					break;
				case SET_DESCRIPTOR:
					// Optional (only for configuration and string descriptors)
					UsbSetDescriptor();
					break;
				case GET_CONFIGURATION:
					UsbGetConfiguration();
					break;
				case SET_CONFIGURATION:
					UsbSetConfiguration();
					break;
				case GET_INTERFACE:
					UsbGetInterface();
					break;
				case SET_INTERFACE:
					UsbSetInterface();
					break;
				case SYNCH_FRAME:
					UsbSynchFrame();
					break;
				default:
					USB_T9_ERROR_REQUEST();
			}
			break;
		// Class
		case UsbTypeClass:
			if(USB_CLASS_REQUEST_HOOK(&UsbEp0SetupPacket) != UsbPass)
			{
				USB_T9_ERROR_REQUEST();
			}
			else
			{
			}
			break;
		// Vendor
		case UsbTypeVendor:
			if( USB_VENDOR_REQUEST_HOOK(&UsbEp0SetupPacket) != UsbPass)
			{
				USB_T9_ERROR_REQUEST();
			}
			else
			{
			}
			break;
		// Other
		default:
			USB_T9_ERROR_REQUEST();
	}
}

void USB_StatusHandler (USB_Endpoint_t EP)	// OK
{
	if (UsbEp0SetupPacket.mRequestType.Dir == UsbDevice2Host)
	{
		USB_StatusPhase(CTRL_ENP_OUT);
		EpCnfg[CTRL_ENP_OUT].pFn = (void *)USB_StatusEndHandler;
	}
	else
	{
		USB_StatusPhase(CTRL_ENP_IN);
		EpCnfg[CTRL_ENP_IN].pFn = (UsbEp0SetupPacket.bRequest == SET_ADDRESS)
								   ?(void *)USB_AddStatusEndHandler
								   :(void *)USB_StatusEndHandler;
	}
}

static void USB_StatusEndHandler (USB_Endpoint_t EP)
{
	USB_IO_Data(CTRL_ENP_IN, NULL, (Int32U) - 1, NULL);
	USB_IO_Data(CTRL_ENP_OUT, NULL, (Int32U) - 1, NULL);
}

static
void USB_AddStatusEndHandler (USB_Endpoint_t EP)
{
  // Device address is set after status phase of set address request
	UsbDevCtrl.DevAdd = UsbEp0SetupPacket.wValue.Lo;
	USB_SetAdd(UsbDevCtrl.DevAdd);
	if(UsbDevCtrl.DevAdd)
	{
		UsbSetDevState(UsbDevStatusAddress);
	}
	else
	{
		// when address is 0 put device init configuration state
		UsbSetDevState(UsbDevStatusDefault);
	}
	USB_IO_Data(CTRL_ENP_IN ,NULL,(Int32U)-1,NULL);
	USB_IO_Data(CTRL_ENP_OUT,NULL,(Int32U)-1,NULL);
}

static pUsbStandardInterfaceDescriptor_t UsbFindInterface (UsbStandardConfigurationDescriptor_t * pConfiguration, Int32U Interface, Int32U AlternateSetting)	// OK
{
	pUsbStandardInterfaceDescriptor_t pData;
	assert(pConfiguration != NULL);
	// Find Interface
	for( pData = (UsbStandardInterfaceDescriptor_t *)pConfiguration; 
		 (Int8U*)pData < (Int8U *)pConfiguration + pConfiguration->wTotalLength; 
		 pData =(UsbStandardInterfaceDescriptor_t *)((Int8U *)pData + pData->bLength))
	{
		if((pData->bDescriptorType == UsbDescriptorInterface) &&
		(pData->bInterfaceNumber == Interface) &&
		(pData->bAlternateSetting == AlternateSetting))
		{
			return(pData);
		}
	}
	return(NULL);
}

static UsbStandardConfigurationDescriptor_t * UsbFindConfiguration(Int32U Configuration)
{
#if USB_HIGH_SPEED > 0
	const Int8U ** ppCfgArray = (const Int8U**)UsbDescArray[(UsbDevCtrl.HighSpeed?USB_HS_CFG_ARRAY:USB_FS_CFG_ARRAY)];
#else
	const Int8U ** ppCfgArray = (const Int8U**)UsbDescArray[USB_FS_CFG_ARRAY];
#endif
	pUsbStandardConfigurationDescriptor_t pData = (pUsbStandardConfigurationDescriptor_t)*ppCfgArray;
	while((pData = (pUsbStandardConfigurationDescriptor_t)*ppCfgArray) != NULL)
	{
		if(pData->bDescriptorType == UsbDescriptorConfiguration)
		{
			if(pData->bConfigurationValue == Configuration)
			{
				return(pData);
			}
		}
		++*ppCfgArray;
	}
	return(NULL);
}

static pUsbStandardEpDescriptor_t UsbFindEP(pUsbStandardInterfaceDescriptor_t pInterface, pUsbStandardEpDescriptor_t pEp)	// OK
{
	pUsbStandardEpDescriptor_t pEpNext;
	static UInt32 ep_numbers;
  	assert(pInterface != NULL);
	
	if (pEp == NULL)
	{
		ep_numbers = pInterface->bNumEndpoints;
		pEpNext = (pUsbStandardEpDescriptor_t)(((pInt8U)pInterface)+pInterface->bLength);
	}
	else
	{
		pEpNext = (pUsbStandardEpDescriptor_t)(((pInt8U)pEp) + pEp->bLength);
	}
	// Find Interface
	for(;ep_numbers != 0 && pEpNext->bLength; pEpNext = (pUsbStandardEpDescriptor_t)(((pInt8U)pEpNext) + pEpNext->bLength))
	{
		if(pEpNext->bDescriptorType == UsbDescriptorEp)
		{
			--ep_numbers;
		  	return(pEpNext);
		}
		else if (pEpNext->bDescriptorType == UsbDescriptorInterface || pEpNext->bDescriptorType == UsbDescriptorConfiguration)
		{
			break;
		}
	}
	
	return NULL;
}

const UsbEP_ExtData_t * USB_EP_ExtFind(Int8U EP)	// OK	
{
#if USB_HIGH_SPEED > 0
	const UsbEP_ExtDesc_t ** pEP_ExtCfg = ((const UsbEP_ExtDesc_t **)UsbDescArray[(UsbDevCtrl.HighSpeed?USB_HS_EP_EXT_ARRAY:USB_FS_EP_EXT_ARRAY)]);
#else
	UsbEP_ExtDesc_t ** pEP_ExtCfg = ((UsbEP_ExtDesc_t **)UsbDescArray[USB_FS_EP_EXT_ARRAY]);
#endif
	while(*pEP_ExtCfg)
	{
		if ((*pEP_ExtCfg)->Configuration == UsbDevCtrl.Configuration && (*pEP_ExtCfg)->EndpointAddress == EP)
		{
			return(&((*pEP_ExtCfg)->EP_ExtData));
		}
		++pEP_ExtCfg;
	}
	return(NULL);
}

inline static UsbCommStatus_t UsbSetConfigurtonState (Int32U Configuration)
{
	pUsbStandardConfigurationDescriptor_t pCnfg;
	if(Configuration)
	{
		// Find configuration
		pCnfg = UsbFindConfiguration(Configuration);
		if(pCnfg == NULL)
		{
			return(UsbFault);
		}

		// deinit current configuration
		UsbSetDevState(UsbDevStatusAddress);
		USB_CONFIGURE_HOOK(NULL);
		UsbDevCtrl.pCnfg = pCnfg;

		// Set Interface and Alternative Setting
		UsbDevCtrl.Configuration = Configuration;
		UsbDevCtrl.Feature.RemoteWakeupEnable = 0;
		UsbDevCtrl.Feature.SelfPowered = pCnfg->bmAttributes.SelfPowered?1:0;
		// configure all existing interfaces alternative  setting 0
		// Whether the interface exist into current configuration?
		UsbDevCtrl.Interfaces = pCnfg->bNumInterfaces;
		for(Int32U i = 0; i < UsbDevCtrl.Interfaces; i++)
		{
			UsbDevCtrl.AlternateSetting[i] = 0;
		}
		UsbSetDevState(UsbDevStatusConfigured);
		USB_CONFIGURE_HOOK(&UsbDevCtrl);
	}
	else
	{
		USB_CONFIGURE_HOOK(NULL);
		UsbSetDevState(UsbDevStatusAddress);
	}
	return(UsbPass);
}

inline static UsbCommStatus_t UsbDevStatus(Int16U Index)
{
	if(Index == 0)
	{
		InData = ((Int32U)UsbDevCtrl.Feature.Data) & 0xFF;
		USB_IO_Data(CTRL_ENP_IN,(pInt8U)&InData,2,(void*)USB_StatusHandler);
		return(UsbPass);
	}
	return(UsbFault);
}

inline static UsbCommStatus_t UsbInterfaceStatus(Int16U Index)
{
	InData = 0;
	USB_IO_Data(CTRL_ENP_IN, (pInt8U)&InData, 2, (void*)USB_StatusHandler);
	return(UsbPass);
}

inline static UsbCommStatus_t UsbEpStatus(Int16U Index)
{
	if((Index & 0x7F) > 16)
	{
		return(UsbFault);
	}
	InData = 0;
	USB_GetStallEP(USB_EpLogToPhysAdd(Index),(pBoolean)&InData);
	USB_IO_Data(CTRL_ENP_IN,(pInt8U)&InData,2,(void*)USB_StatusHandler);
	return(UsbPass);
}

inline static void UsbGetStatus (void)
{
	if((UsbDevCtrl.State.DS >= UsbDevStatusAddress) && 
	// Length must be 2
	(UsbEp0SetupPacket.wLength.Word == 2) &&
	// Direction of data from device
	(UsbEp0SetupPacket.mRequestType.Dir == 1) &&
	// wValue must be 0
	(UsbEp0SetupPacket.wValue.Word == 0) )
	{
		// This request is valid only for Address and Configured device's states
		switch(UsbEp0SetupPacket.mRequestType.Recipient)
		{
			case UsbRecipientDevice:
				if(UsbDevStatus(UsbEp0SetupPacket.wIndex.Word) != UsbPass)
				{
					USB_T9_ERROR_REQUEST();
				}
				break;
			case UsbRecipientInterface:
				if(UsbInterfaceStatus(UsbEp0SetupPacket.wIndex.Word) != UsbPass)
				{
					USB_T9_ERROR_REQUEST();
				}
				break;
			case UsbRecipientEndpoint:
				if(UsbEpStatus(UsbEp0SetupPacket.wIndex.Word) != UsbPass)
				{
					USB_T9_ERROR_REQUEST();
				}
				break;
			default:
				USB_T9_ERROR_REQUEST();
		}
	}
	else
	{
		USB_T9_ERROR_REQUEST();
	}
}

inline static UsbCommStatus_t UsbClearDevFeature(Int16U Feature,Int16U Index)
{
	if((Index != 0) || (Feature != UsbDeviceRemoteWakeupSelector))
	{
		return(UsbFault);
	}
	UsbDevCtrl.Feature.RemoteWakeupEnable = 0;
	return(UsbPass);
}

inline static UsbCommStatus_t UsbClearInterfaceFeature(Int16U Feature,Int16U Index)
{
	return(UsbFault);
}

inline static UsbCommStatus_t UsbClearEpFeature(Int16U Feature,Int16U Index)
{
	USB_Endpoint_t UsbEpAdd;
	if(((Index & 0x7F) > 16) || (Feature != UsbEpHaltSelector))
	{
		return(UsbFault);
	}
	UsbEpAdd = USB_EpLogToPhysAdd(Index);
	USB_SetStallEP(UsbEpAdd,FALSE);
	USB_EP_UNSTALL_HOOK(UsbEpAdd);
	return(UsbPass);
}

inline static void UsbClearFeature (void)
{
	if((UsbDevCtrl.State.DS >= UsbDevStatusAddress) &&
	// Length must be 0
	(UsbEp0SetupPacket.wLength.Word == 0))
	{
		switch(UsbEp0SetupPacket.mRequestType.Recipient)
		{
			case UsbRecipientDevice:
				if(UsbClearDevFeature(UsbEp0SetupPacket.wValue.Word,UsbEp0SetupPacket.wIndex.Word) == UsbPass)
				{
					USB_StatusHandler(CTRL_ENP_OUT);
				}
				else
				{
					USB_T9_ERROR_REQUEST();
				}
				break;
			case UsbRecipientInterface:
				if((UsbDevCtrl.State.DS > UsbDevStatusAddress) &&
				(UsbClearInterfaceFeature(UsbEp0SetupPacket.wValue.Word,UsbEp0SetupPacket.wIndex.Word) == UsbPass))
				{
					USB_IO_Data(CTRL_ENP_IN,NULL,0,(void*)USB_StatusHandler);
				}
				else
				{
					USB_T9_ERROR_REQUEST();
				}
				break;
			case UsbRecipientEndpoint:
				if(((UsbDevCtrl.State.DS > UsbDevStatusAddress) || ((UsbEp0SetupPacket.wIndex.Word & 0x7F) == 0)) &&
				(UsbClearEpFeature(UsbEp0SetupPacket.wValue.Word,UsbEp0SetupPacket.wIndex.Word) == UsbPass))
				{
					USB_StatusHandler(CTRL_ENP_OUT);
				}
				else
				{
					USB_T9_ERROR_REQUEST();
				}
				break;
			default:
				USB_T9_ERROR_REQUEST();
		}
	}
	else
	{
		USB_T9_ERROR_REQUEST();
	}
}

inline static UsbCommStatus_t UsbSetDevFeature(Int16U Feature,Int16U Index)
{
	if((Index != 0) || (Feature != UsbDeviceRemoteWakeupSelector))
	{
		return(UsbFault);
	}
	UsbDevCtrl.Feature.RemoteWakeupEnable = 1;
	return(UsbPass);
}

inline static UsbCommStatus_t UsbSetInterfaceFeature(Int16U Feature,Int16U Index)
{
	return(UsbFault);
}

inline static UsbCommStatus_t UsbSetEpFeature(Int16U Feature,Int16U Index)
{
	USB_Endpoint_t UsbEpAdd;
	if(((Index & 0x7F) > 16) || (Feature != UsbEpHaltSelector))
	{
		return(UsbFault);
	}

	UsbEpAdd = USB_EpLogToPhysAdd(Index);
	USB_SetStallEP(UsbEpAdd,TRUE);
	USB_EP_STALL_HOOK(UsbEpAdd);
	return(UsbPass);
}

inline static void UsbSetFeature (void)
{
	if((UsbDevCtrl.State.DS >= UsbDevStatusAddress) &&
	// Length must be 0
	(UsbEp0SetupPacket.wLength.Word == 0))
	{
		switch(UsbEp0SetupPacket.mRequestType.Recipient)
		{
			case UsbRecipientDevice:
				if(UsbSetDevFeature(UsbEp0SetupPacket.wValue.Word,UsbEp0SetupPacket.wIndex.Word) == UsbPass)
				{
					USB_StatusHandler(CTRL_ENP_OUT);
				}
				else
				{
					USB_T9_ERROR_REQUEST();
				}
				break;
			case UsbRecipientInterface:
				if((UsbDevCtrl.State.DS > UsbDevStatusAddress) &&
				(UsbSetInterfaceFeature(UsbEp0SetupPacket.wValue.Word,UsbEp0SetupPacket.wIndex.Word) == UsbPass))
				{
					USB_StatusHandler(CTRL_ENP_OUT);
				}
				else
				{
					USB_T9_ERROR_REQUEST();
				}
				break;
			case UsbRecipientEndpoint:
				if(((UsbDevCtrl.State.DS > UsbDevStatusAddress) || ((UsbEp0SetupPacket.wIndex.Word & 0x7F) == 0)) &&
				(UsbSetEpFeature(UsbEp0SetupPacket.wValue.Word,UsbEp0SetupPacket.wIndex.Word) == UsbPass))
				{
					USB_StatusHandler(CTRL_ENP_OUT);
				}
				else
				{
					USB_T9_ERROR_REQUEST();
				}
				break;
			default:
				USB_T9_ERROR_REQUEST();
		}
	}
	else
	{
		USB_T9_ERROR_REQUEST();
	}
}

inline static void UsbSetAddress (void)
{
	if((UsbDevCtrl.State.DS >= UsbDevStatusDefault) &&
	(UsbEp0SetupPacket.mRequestType.Recipient == 0) &&
	(UsbEp0SetupPacket.wIndex.Word  == 0) &&
	(UsbEp0SetupPacket.wLength.Word == 0) &&
	(UsbEp0SetupPacket.wValue.Word < 128))
	{
		USB_StatusHandler(CTRL_ENP_IN);
	}
	else
	{
		USB_T9_ERROR_REQUEST();
	}
}

inline static UsbCommStatus_t UsbGetDescriptorDevice(Int8U Index)
{
	if(Index == 0)
	{
		USB_IO_Data(CTRL_ENP_IN,
			   (Int8U *)&UsbStandardDeviceDescriptorStr,
				USB_T9_Size(UsbStandardDeviceDescriptorStr.bLength,UsbEp0SetupPacket.wLength.Word),
			   (void*)USB_StatusHandler);
		return(UsbPass);
	}
	return(UsbFault);
}

inline static UsbCommStatus_t UsbGetDescriptorConfiguration(Int8U Index)
{
	pUsbStandardConfigurationDescriptor_t pCfg;
	if (Index >= UsbStandardDeviceDescriptorStr.bNumConfigurations)
	{
		return(UsbFault);
	}
	#if USB_HIGH_SPEED > 0
	pCfg = (pUsbStandardConfigurationDescriptor_t)(*(Int8U **)UsbDescArray[(UsbDevCtrl.HighSpeed?USB_HS_CFG_ARRAY:USB_FS_CFG_ARRAY)] + Index);
	#else
	pCfg = (pUsbStandardConfigurationDescriptor_t)(*(Int8U **)UsbDescArray[USB_FS_CFG_ARRAY] + Index);
	#endif // USB_HIGH_SPEED > 0
	USB_IO_Data(CTRL_ENP_IN,
			 (pInt8U)pCfg,
			  USB_T9_Size(pCfg->wTotalLength,UsbEp0SetupPacket.wLength.Word),
			 (void*)USB_StatusHandler);
	return(UsbPass);
}

inline static UsbCommStatus_t UsbGetDescriptorString(Int8U Index)
{
Int8U **ppData;
#if USB_HIGH_SPEED > 0
pInt8U pLangStr = (pInt8U)UsbDescArray[(UsbDevCtrl.HighSpeed?USB_HS_LANG_STR:USB_FS_LANG_STR)];
#else
pInt8U pLangStr = (pInt8U)UsbDescArray[USB_FS_LANG_STR];
#endif // USB_HIGH_SPEED > 0
Int32U i;
  if(Index == 0)
  {
    USB_IO_Data(CTRL_ENP_IN,
                pLangStr,
                USB_T9_Size(pLangStr[UsbDescLengthOffset],UsbEp0SetupPacket.wLength.Word),
               (void*)USB_StatusHandler);
  }
  else
  {
    Int32U LanguagesOffset = 0;
    // Find Languages index
    for(i = 2; i < pLangStr[UsbDescLengthOffset]; i+=2)
    {
      if((pLangStr[i] == UsbEp0SetupPacket.wIndex.Lo) &&
         (pLangStr[i+1] == UsbEp0SetupPacket.wIndex.Hi))
      {
        break;
      }
      ++LanguagesOffset;
    }
    if(i >= pLangStr[UsbDescLengthOffset])
    {
      return(UsbFault);
    }
    // Find String index
  #if USB_HIGH_SPEED > 0
    for(ppData = (*((Int8U***)UsbDescArray[(UsbDevCtrl.HighSpeed?USB_HS_STR_ARRAY:USB_FS_STR_ARRAY)] + LanguagesOffset));
  #else
    for(ppData = (*((Int8U***)UsbDescArray[USB_FS_STR_ARRAY] + LanguagesOffset));
  #endif // USB_HIGH_SPEED > 0
        ppData ;
        ++ppData)
    {
      if(--Index == 0)
      {
        break;
      }
    }
    if(ppData == NULL)
    {
      return(UsbFault);
    }

    USB_IO_Data(CTRL_ENP_IN,
               (pInt8U)*ppData,
                USB_T9_Size(*(*ppData+UsbDescLengthOffset),UsbEp0SetupPacket.wLength.Word),
               (void*)USB_StatusHandler);
  }
  return(UsbPass);
}

#if USB_HIGH_SPEED > 0
inline static UsbCommStatus_t UsbGetQualifierDescriptor(Int8U Index)
{
  USB_IO_Data(CTRL_ENP_IN,
             (Int8U *)&UsbQualifierDescriptor,
              USB_T9_Size(UsbQualifierDescriptor.bLength,UsbEp0SetupPacket.wLength.Word),
             (void*)USB_StatusHandler);
  return(UsbPass);
}		
		
inline static
UsbCommStatus_t UsbGetOtherSpeedDescriptorConfiguration(Int8U Index)
{
pUsbStandardConfigurationDescriptor_t pCfg;
  if (Index >= UsbStandardDeviceDescriptorStr.bNumConfigurations)
  {
     return(UsbFault);
  }
  pCfg = (pUsbStandardConfigurationDescriptor_t)(*(Int8U **)UsbDescArray[(UsbDevCtrl.HighSpeed?USB_HS_OTHER_CFG_ARRAY:USB_FS_OTHER_CFG_ARRAY)] + Index);
  USB_IO_Data(CTRL_ENP_IN,
             (pInt8U)pCfg,
              USB_T9_Size(pCfg->wTotalLength,UsbEp0SetupPacket.wLength.Word),
             (void*)USB_StatusHandler);
  return(UsbPass);
}		
#endif // USB_HIGH_SPEED > 0		

inline static void UsbGetDescriptor (void)
{
  if(UsbDevCtrl.State.DS >= UsbDevStatusDefault)
  {
    switch(UsbEp0SetupPacket.wValue.Hi)
    {
    case UsbDescriptorDevice:
      if(UsbGetDescriptorDevice(UsbEp0SetupPacket.wValue.Lo) != UsbPass)
      {
        USB_T9_ERROR_REQUEST();
      }
      else
      {
      }
      break;
    case UsbDescriptorConfiguration:
      if(UsbGetDescriptorConfiguration(UsbEp0SetupPacket.wValue.Lo) != UsbPass)
      {
        USB_T9_ERROR_REQUEST();
      }
      else
      {
      }
      break;
    case UsbDescriptorString:
      if(UsbGetDescriptorString(UsbEp0SetupPacket.wValue.Lo) != UsbPass)
      {
        USB_T9_ERROR_REQUEST();
      }
      else
      {
      }
      break;
  #if USB_HIGH_SPEED > 0
    case UsbDescriptorDeviceQualifier:
      if(UsbGetQualifierDescriptor(UsbEp0SetupPacket.wValue.Lo) != UsbPass)
      {
        USB_T9_ERROR_REQUEST();
      }
      else
      {
      }
      break;
    case UsbDescriptorOtherSeedConfiguration:
      if(UsbGetOtherSpeedDescriptorConfiguration(UsbEp0SetupPacket.wValue.Lo) != UsbPass)
      {
        USB_T9_ERROR_REQUEST();
      }
      else
      {
      }
      break;
  #endif // USB_HIGH_SPEED > 0
    default:
      if (USB_GET_DESCRIPTOR_HOOK(&UsbEp0SetupPacket) != UsbPass)
      {
        USB_T9_ERROR_REQUEST();
      }
      else
      {
      }
    }
  }
  else
  {
    USB_T9_ERROR_REQUEST();
  }
}		
		
inline static void UsbSetDescriptor(void)
{
  if(UsbDevCtrl.State.DS >= UsbDevStatusAddress)
  {
    // This request is valid only for Address state and Configured state.
    // If supported
    USB_T9_ERROR_REQUEST();
  }
  else
  {
    USB_T9_ERROR_REQUEST();
  }
}		
		
inline static void UsbGetConfiguration(void)
{
  if((UsbDevCtrl.State.DS >= UsbDevStatusAddress) &&
     (UsbEp0SetupPacket.wValue.Word == 0) &&
     (UsbEp0SetupPacket.wIndex.Word == 0) &&
     (UsbEp0SetupPacket.wLength.Word == 1))
  {
    InData = UsbCoreReq(UsbCoreReqConfiquration);
    USB_IO_Data(CTRL_ENP_IN,(pInt8U)&InData,1,(void*)USB_StatusHandler);
  }
  else
  {
    USB_T9_ERROR_REQUEST();
  }
}		
		
inline static void UsbSetConfiguration(void)
{
  if((UsbDevCtrl.State.DS >= UsbDevStatusAddress) &&
     (UsbEp0SetupPacket.wIndex.Word == 0) &&
     (UsbEp0SetupPacket.wLength.Word == 0) &&
     (UsbSetConfigurtonState(UsbEp0SetupPacket.wValue.Lo) == UsbPass))
  {
    USB_StatusHandler(CTRL_ENP_OUT);
  }
  else
  {
    USB_T9_ERROR_REQUEST();
  }
}		
		
inline static void UsbGetInterface (void)
{
  if((UsbDevCtrl.State.DS == UsbDevStatusConfigured) &&
     (UsbEp0SetupPacket.wIndex.Word <= UsbDevCtrl.Interfaces) &&
     (UsbEp0SetupPacket.wLength.Word == 1) &&
     (UsbEp0SetupPacket.wValue.Word == 0))
  {
    USB_IO_Data(CTRL_ENP_IN,
               (pInt8U)&UsbDevCtrl.AlternateSetting[UsbEp0SetupPacket.wIndex.Word],
                1,
               (void*)USB_StatusHandler);
  }
  else
  {
    USB_T9_ERROR_REQUEST();
  }
}		
		
inline static void UsbSetInterface (void)
{
pUsbStandardInterfaceDescriptor_t pInterface, pInterfaceCurrent;

  if((UsbDevCtrl.State.DS == UsbDevStatusConfigured) &&
     (UsbEp0SetupPacket.wLength.Word == 0))
  {

    // Whether the interface is exist into current configuration?
    if((pInterface = UsbFindInterface(UsbDevCtrl.pCnfg,
                                      UsbEp0SetupPacket.wIndex.Word,
                                      UsbEp0SetupPacket.wValue.Word)) == NULL)
    {
      USB_T9_ERROR_REQUEST();
      return;
    }

    // deconfigure current alternative setting EPs
    pInterfaceCurrent =  UsbFindInterface(UsbDevCtrl.pCnfg,
                                          UsbEp0SetupPacket.wIndex.Word,
                                          UsbDevCtrl.AlternateSetting[UsbEp0SetupPacket.wIndex.Word]);
    assert(pInterfaceCurrent);
    UsbEpInterfaceCnfg(pInterfaceCurrent,FALSE);
    // set new alternative settings
    UsbDevCtrl.AlternateSetting[UsbEp0SetupPacket.wIndex.Word] = UsbEp0SetupPacket.wValue.Word;
    // configure EPs
    UsbEpInterfaceCnfg(pInterface,TRUE);

    USB_CONFIGURE_HOOK(&UsbDevCtrl);
    USB_IO_Data(CTRL_ENP_IN,NULL,0,(void*)USB_StatusHandler);
  }
  else
  {
    USB_T9_ERROR_REQUEST();
  }
}
		
static void UsbEpInterfaceCnfg(pUsbStandardInterfaceDescriptor_t pInterface, BOOL Configure)	// OK
{
	pUsbStandardEpDescriptor_t pEp = NULL;
	const UsbEP_ExtData_t * pUsbEP_ExtData;

	assert(pInterface);
	while((pEp = UsbFindEP(pInterface,pEp)) != NULL)
	{
		pUsbEP_ExtData = USB_EP_ExtFind(pEp->bEndpointAddress);
		assert(pUsbEP_ExtData);
		USB_RealizeEp(pEp,pUsbEP_ExtData,Configure);
	}
}
		
inline static void UsbSynchFrame (void)
{
  if( USB_SOF_EVENT &&
     (UsbDevCtrl.State.DS == UsbDevStatusConfigured) &&
     (UsbEp0SetupPacket.wLength.Word == 2) &&
     (UsbEp0SetupPacket.wValue.Word == 0))
  {
  #if USB_SOF_EVENT > 0
    InData = USB_GetFrameNumb();
  #else
    InData = 0;
  #endif
    USB_IO_Data(CTRL_ENP_IN,(pInt8U)&InData,2,(void*)USB_StatusHandler);
  }
  else
  {
    USB_T9_ERROR_REQUEST();
  }
}