#include "init.h"
#include "BZA_SIF.h"





int main()
{
    bool bFlag = true;

	Initialize();
	
    m_pGlobalVar->m_msFind = 0;
	m_pGlobalVar->m_FindCh = -1;
	
	m_pGlobalVar->m_MsI2CdelayStamp = 0;
	m_pGlobalVar->m_msRefreshDC = 0;
	m_pGlobalVar->m_msAux = 0;
	m_pGlobalVar->m_AuxCh = -1;
	m_pGlobalVar->m_msADC = 0;
	m_pGlobalVar->mStatusInf.mode = 1;
	m_pGlobalVar->mStatusInf.LastCh = -1;
	m_pGlobalVar->LedFlowStat = 1;
	
	while(bFlag)
	{	
		ICE_BzaCommStat(m_pGlobalVar->LedBusy);
		ICE_BzaFlowStat(m_pGlobalVar->LedFlow);
		
		m_pGlobalVar->mStatusInf.MaxChannel = GetMaxChannel();
		
		if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_SBZA || m_pSysConfig->mSIFCfg.Type == (byte)SIF_MBZA)
		{
			if(m_pGlobalVar->mStatusInf.mode == 2)
			{
				m_pGlobalVar->mStatusInf.mode = 0;
			}
	
			if(m_pGlobalVar->mStatusInf.mode == 1)
			{
				DeviceMainProc();
			}
		}

		if(m_pGlobalVar->mEthernetCfg.dhcp == TRUE)
		{
			check_DHCP_state(DHCP_SOCK_NUM); 
		}
				
		TCP_Poll(FIND_SOCK_NUM, 2001);
		TCP_Poll(TCP_SOCK_NUM, m_pConnCfg->mEthernetCfg.Port);
	}
}



