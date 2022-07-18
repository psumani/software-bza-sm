#include "init.h"
#include "sif_zim.h"

int main()
{
    bool bFlag = true;

	Initialize();
	
    
	m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp = 0;
	m_pGlobalVar->mStatusInf.m_msAux = 0;
	m_pGlobalVar->mStatusInf.m_msReset = 0;
	m_pGlobalVar->mStatusInf.m_msADC = 0;
	
	while(bFlag)
	{	
		ICE_BzaCommStat(m_pGlobalVar->LedBusy);
		if(m_pGlobalVar->ResetICE == 0)
		{
			if(m_pGlobalVar->TmpResetICE > 0)
			{
				if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					m_pGlobalVar->TmpResetICE = 0;
					continue;
				}
				m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_ERRCOMMZIM;
				if(m_pGlobalVar->mStatusInf.m_msReset >= 100) //500
				{
					if(m_pGlobalVar->TmpResetICE == 1)
					{
						Set_IceResetB(false);
						m_pGlobalVar->TmpResetICE = 2;
					}
					else if(m_pGlobalVar->TmpResetICE == 2)
					{
						InitDevice();
						m_pGlobalVar->TmpResetICE = 3;
					}
					else if(m_pGlobalVar->TmpResetICE == 3)
					{
						m_pGlobalVar->TmpResetICE = 4;
					}
					else if(m_pGlobalVar->TmpResetICE == 4)
					{
						m_pGlobalVar->TmpResetICE = 0;
					}
					m_pGlobalVar->mStatusInf.m_msReset = 0;
				}
			}
			else
			{

				if(m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp > 1000)
				{
					m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp = 0;

					if(m_pGlobalVar->mStatusInf.devicecount == 0) 
					{
						if(ScanZIM(0,0x50) == _NO_ERROR)
						{
							m_pGlobalVar->devchk = 1;
							InitDevice();
							m_pGlobalVar->mStatusInf.devicecount = 1;
							SetJsonAbout(); 
						}
						else
						{
							m_pGlobalVar->devchk = 0;
						}
					}
					else
					{
						if(m_pGlobalVar->devchk == 0)
						{
							m_pGlobalVar->devchk = 1;
							InitDevice();
						}
						else
						{
							if(proc_read_version() == _ERROR)
							{
								m_pGlobalVar->mStatusInf.devicecount = 0;
								m_pGlobalVar->devchk = 0;
								Set_IceResetB(false);
							}
							else
							{
								m_pGlobalVar->devchk = 1;
							}
						}
					}
				}
			}
			
			if(m_pGlobalVar->mStatusInf.devicecount > 0 && m_pGlobalVar->devchk == 1)
			{
				proc_main();
			}
			else
			{
				if(m_pGlobalVar->mStatusInf.m_msAux >= 500)
				{
					ToggleLed_Y();
					m_pGlobalVar->mStatusInf.m_msAux = 0;
					m_pGlobalVar->mStatusInf.mdevice.adc_vdc.adcval = 0x800000;
					m_pGlobalVar->mStatusInf.mdevice.adc_vdc.value = 0.0;
					m_pGlobalVar->mStatusInf.mdevice.adc_rtd.data.fault = 1;
					m_pGlobalVar->mStatusInf.mdevice.adc_rtd.data.adcval = 0x4000;
					m_pGlobalVar->mStatusInf.mdevice.adc_rtd.data.Tvalue = 0.0;
					m_pGlobalVar->mStatusInf.mdevice.adc_rtd.data.Rvalue = 100.0;
					m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_NOZIM;
				}
			}
		}
		else
		{
			m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp = 0;
			OnLed_Y(false);
		}
		
		if(m_pGlobalVar->mStatusInf.m_msDisp >= 500)
		{
			m_pGlobalVar->mStatusInf.m_msDisp = 0;
			LCD_Refresh();
		}
        
        if(m_pGlobalVar->mEthernetCfg.dhcp == TRUE)
		{
			check_DHCP_state(DHCP_SOCK_NUM); 
		}
		TCP_Poll(FIND_SOCK_NUM,2001);
		TCP_Poll(TCP_SOCK_NUM,m_pConnCfg->mEthernetCfg.Port);
        HTTP_Server();
	}
}



