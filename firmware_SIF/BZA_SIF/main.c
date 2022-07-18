#include "init.h"
#include "BZA_SIF.h"

inline int GetMaxChannel(void)
{
	int  MaxCh = MAX_DEV_CHANNEL;
	
	if(m_pSysConfig->mSIFCfg.Type != (byte)SIF_MBZA)
	{
		MaxCh = 1;
	}
	return MaxCh;
}

inline void CmdResetProc(void)	
{
	if(m_pGlobalVar->ResetICE == 1)
	{
		if(m_pGlobalVar->CmdResetICE == 2)
		{
			m_pGlobalVar->ResetICE = 2;
			m_pGlobalVar->CmdResetICE = 0;
			m_pGlobalVar->m_msReset = 0;
			Set_IceResetB(false);
			
		}
	}
	else if(m_pGlobalVar->ResetICE == 2)
	{
		if(m_pGlobalVar->m_msReset >= 100)
		{
			m_pGlobalVar->ResetICE = 0;
		}
	}
	else if(m_pGlobalVar->ResetICE == 3)
	{
		if(m_pGlobalVar->m_msReset >= 100)
		{
			Set_IceResetB(false);
			m_pGlobalVar->ResetICE = 2;
		}
	}
	else
	{
		m_pGlobalVar->ResetICE = 0;
	}
}

int main()
{
    bool bFlag = true;

	Initialize();
	
    m_pGlobalVar->m_msFind = 0;
	m_pGlobalVar->m_MsI2CdelayStamp = 0;
	m_pGlobalVar->m_msAux = 0;
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
				if(m_pGlobalVar->ResetICE == 0)
				{
					DeviceMainProc();
				}
				else
				{
					CmdResetProc();
				}
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



