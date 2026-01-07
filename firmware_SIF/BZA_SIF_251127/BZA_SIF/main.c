#include "init.h"
#include "BZA_SIF.h"


int main()
{
    bool bFlag = true;

	Initialize();
	
		/* test for cmds */
        /*UNS_16 tmp = 0;
        ICE_read_16bits(0, ICE_CMD_FWVERSION,&tmp);
		m_pSysConfig->mZimCfg[0].info.ZimFWVersion = tmp;*/
		
		/*double frequency = 25600;
		m_pGlobalVar->mChVar[1].flow_dds_clk.req.freq = (uint)ceil((frequency * (double)DEF_DDS_CLK_CONST));
		m_pGlobalVar->mChVar[1].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL; //DDS_BIT28;
		set_AUX_dds_clk(1);*/
        
    m_pGlobalVar->m_msFind = 0;
	m_pGlobalVar->m_Findboard = -1;
	
	m_pGlobalVar->m_MsI2CdelayStamp = 0;
	m_pGlobalVar->m_msRefreshDC = 0;
	m_pGlobalVar->m_msAux = 0;
	m_pGlobalVar->bd_idx = -1;
	m_pGlobalVar->m_AuxCh = -1;
	m_pGlobalVar->m_msADC = 0;
	m_pGlobalVar->mStatusInf.mode = 1;
	m_pGlobalVar->mStatusInf.Lastbd = -1;
	m_pGlobalVar->LedFlowStat = 1;

	/*st_zimaux_rnginf tmp_rnginf;
	SetDeviceBoard(1); i2c_delay(1000);
	if(EepromWriteReadAndCRC(0,EEPROM_ADDR,EEP_ZIMRNG_ADDR,&m_pSysConfig->mZimCfg[1].ranges.Aux,sizeof(st_zimaux_rnginf))  == _ERROR)
	{
		test_var++;
	}
	SetDeviceBoard(2); i2c_delay(1000);
	if(EepromWriteReadAndCRC(0,EEPROM_ADDR,EEP_ZIMRNG_ADDR,&m_pSysConfig->mZimCfg[2].ranges.Aux,sizeof(st_zimaux_rnginf))  == _ERROR)
	{
		test_var++;
	}
	SetDeviceBoard(3); i2c_delay(1000);
	if(EepromWriteReadAndCRC(0,EEPROM_ADDR,EEP_ZIMRNG_ADDR,&m_pSysConfig->mZimCfg[3].ranges.Aux,sizeof(st_zimaux_rnginf))  == _ERROR)
	{
		test_var++;
	}
	while(1)
	{
		for(int bd=1;bd<4;bd++)
		{
			SetDeviceBoard(bd); i2c_delay(1000);
			memset(&tmp_rnginf,0x0,sizeof(st_zimaux_rnginf));
			if(EepromWriteReadAndCRC(0,EEPROM_ADDR,EEP_ZIMRNG_ADDR,&tmp_rnginf,sizeof(st_zimaux_rnginf))  == _ERROR)
			{
				test_var++;
			}
			for(int i=0;i<4;i++)
			{
				for(int j=0;j<4;j++)
				{
					if(m_pSysConfig->mZimCfg[bd].ranges.Aux.iac_gain[i][j].iac_gain1 != tmp_rnginf.iac_gain[i][j].iac_gain1)
						test_var2++;
					if(m_pSysConfig->mZimCfg[bd].ranges.Aux.iac_gain[i][j].iac_gain2 != tmp_rnginf.iac_gain[i][j].iac_gain2)
						test_var2++;
				}
			}
		}
	}*/

	while(bFlag)
	{	
		ICE_BzaCommStat(m_pGlobalVar->LedBusy);
		ICE_BzaFlowStat(m_pGlobalVar->LedFlow);
		
		m_pGlobalVar->mStatusInf.MaxBoard = GetMaxBoard();
		
		if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_SBZA || m_pSysConfig->mSIFCfg.Type == (byte)SIF_MBZA || m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA)
		{
			if(m_pGlobalVar->mStatusInf.mode == 2)
			{
				m_pGlobalVar->mStatusInf.mode = 0;
			}
	
			if(m_pGlobalVar->mStatusInf.mode == 1)
			{
				if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA) 
				{
					DeviceAuxProc();
				}
				else 
				{
					DeviceMainProc();
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



