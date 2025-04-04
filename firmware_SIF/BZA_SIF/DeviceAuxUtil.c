#include "BZA_SIF.h"



int procaux_read_version(int bd)
{
	UNS_16 tmp = 0;
	
	if(ICE_read_16bits(bd, ICE_CMDAUX_FWVERSION,&tmp) == _ERROR)
	{
			return _ERROR;
	}

	m_pSysConfig->mZimCfg[bd].info.ZimFWVersion = tmp;
	
	return _NO_ERROR;
}	

inline void procaux_adc_ac_cfg(int auxbd)
{
    UNS_8 tmp;
	st_zim_adc_flow* pflow = &m_pGlobalVar->mChVar[auxbd].flow_adc_ac;
	SetDeviceBoard(auxbd);
	if(pflow->stat != pflow->req)
	{
		tmp = (pflow->req & 0xFF);
		if(ICE_write_byte(auxbd, ICE_CMD_ACADC_DEVICE, tmp) == _ERROR)
		{
			return;
		}
		pflow->req = (ushort)tmp;	
		pflow->stat = pflow->req;	
	}
	else
	{
		if(ICE_read_byte(auxbd, ICE_CMD_ACADC_DEVICE, &tmp) == _ERROR) return;
		if(pflow->req != tmp) pflow->stat = tmp;
	}
	
}