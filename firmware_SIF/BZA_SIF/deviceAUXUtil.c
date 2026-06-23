#include "BZA_SIF.h"

inline void SetErrorProc(int ch)
{
	//test_var++;
	if(m_pGlobalVar->mChVar[ch].TmpResetICE == 0)
	{
		m_pGlobalVar->mChVar[ch].TmpResetICE = 1;
	}
}

inline void ICE_chip_deselect(void)
{
	P3_OUTP_SET_bit.GPO_04 = 1; //chip deselect
}

void set_AUX_dds_clk(int ch) // from set_dds_clk
{
	ushort buf; 
	st_zim_dds_flow* pflowddsclk = &m_pGlobalVar->mChVar[ch].flow_dds_clk;
	if(pflowddsclk->stat.freq !=  pflowddsclk->req.freq)
	{

                buf = DDS_CLK_RESET;//   pflowddsclk->req.ctrl & 0x2FFF;
		if(ICE_write_16bits(ch, ICE_AUX_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
                
		buf = DDS_CLK_DEFAULT_CTRL;//   pflowddsclk->req.ctrl & 0x2FFF;DDS_CLK_RESET
		if(ICE_write_16bits(ch, ICE_AUX_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(pflowddsclk->req.freq & 0x3FFF);
		if(ICE_write_16bits(ch, ICE_AUX_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		buf = DDS_CLK_DEFAULT_CTRLH; //pflowddsclk->req.ctrl | 0x1000;
		if(ICE_write_16bits(ch, ICE_AUX_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((pflowddsclk->req.freq >> 14) & 0x3FFF);
		if(ICE_write_16bits(ch, ICE_AUX_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
                buf = DDS_CLK_DEFAULT_CTRL;//   pflowddsclk->req.ctrl & 0x2FFF;DDS_CLK_RESET
		if(ICE_write_16bits(ch, ICE_AUX_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		pflowddsclk->stat.freq =  pflowddsclk->req.freq;
	}

	if(pflowddsclk->stat.phase !=  pflowddsclk->req.phase)
	{
		buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(pflowddsclk->req.phase & 0xFFF);

		if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		pflowddsclk->stat.phase  =  pflowddsclk->req.phase;
	}
	
	if(pflowddsclk->stat.ctrl !=  pflowddsclk->req.ctrl)
	{
		buf = pflowddsclk->req.ctrl & 0x3FFF;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		pflowddsclk->stat.ctrl =  pflowddsclk->req.ctrl;
	}
}

inline ushort CheckBoardCable(int bd)
{
	UNS_8 data = 0;
	
	if(ICE_read_byte(bd, ICE_CMD_DEVICE_DO, &data) == _ERROR)
	{
		return 0x0;
	}
	if((data & 0x80)  == 0x80) return 0x1;
	return 0x0;	
}		

/* run on AUX board only */
void proc_AUX_adc_vdc_data(int bd)
{
	int auxbd;
	int auxch;
	int tmpv[4];
	st_zim_adc_vdc* pvdc;

	auxbd = bd - 1;

	SetDeviceBoard(bd);
	
	if(m_pGlobalVar->mChVar[0].mChStatInf.eis_status.status <= DEF_EIS_STATUS_EIS_INIT || m_pGlobalVar->mChVar[0].mChStatInf.eis_status.status >= DEF_EIS_STATUS_EISSTOP) //
	{
		if(bd > 0 && m_pSysConfig->EnaZIM[bd] == TRUE && m_pSysConfig->ChkZIM[bd] == TRUE)
		{
			m_pGlobalVar->mChVar[0].mChStatInf.ConnCBL[auxbd] = CheckBoardCable(bd);
		}
		else
		{
			m_pGlobalVar->mChVar[0].mChStatInf.ConnCBL[auxbd] = 0x0;
		}
		
		if(m_pSysConfig->EnaZIM[bd] == FALSE || m_pSysConfig->ChkZIM[bd] == FALSE || m_pGlobalVar->mChVar[0].mChStatInf.ConnCBL[auxbd] == 0x0) 
		{
			for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++)
			{
				pvdc = &m_pGlobalVar->mChVar[bd].mdevice.adc_vdc[auxch];
				pvdc->adcval = 0x80000;
				pvdc->value = 0.0;
				//m_pGlobalVar->mChVar[bd].mChStatInf.Vdc[auxch] = 0.0;
				m_pGlobalVar->mChVar[0].mChStatInf.Aux_Vdc[auxbd*4+auxch] = 0.0; //
			}
			return;
		}
		
		
		if(ICE_read_adc24bit_x4(bd, ICE_AUX_CMD_V_ADC_VAL, &tmpv) == _ERROR)
		{		 	  
			return;
		}
		/* get adc_vdc[0~3]->value */
		for(auxch = 0; auxch<DEF_MAX_AUX_CHCNT; auxch++)
		{
			pvdc = &m_pGlobalVar->mChVar[bd].mdevice.adc_vdc[auxch];
			pvdc->adcval = tmpv[auxch];
			
			pvdc->value = (double)tmpv[auxch] * m_pSysConfig->mZimCfg[bd].ranges.Aux.vdc_rng[0].factor; //DEF_ADC_VDC_RNG0_FACTOR1

			if(m_pGlobalVar->mChVar[0].bCalib == 0)
			{
				pvdc->value = pvdc->value 
						* m_pSysConfig->mZimCfg[bd].ranges.Aux.vdc_rng[0].gain // 
						+ m_pSysConfig->mZimCfg[bd].ranges.Aux.vdc_rng[0].offset; //
			}
			if(m_pGlobalVar->mChVar[bd].mChStatInf.ZimType == DEV_BZA60)
			{
				pvdc->value = floor(pvdc->value * 1000000.0 + 0.5) * 0.000001;
			}
			else
			{
				pvdc->value = floor(pvdc->value * 100000.0 + 0.5) * 0.00001;
			}
			//m_pGlobalVar->mChVar[bd].mChStatInf.Vdc[auxch] = pvdc->value;
			m_pGlobalVar->mChVar[0].mChStatInf.Aux_Vdc[auxbd*4+auxch] = pvdc->value; //
		}		
	}
}

INT_32 ICE_read_adc24bit_x4(INT_32 ch, UNS_8 cmd, INT_32(* pdata)[4])
{
	INT_32 len;
	UNS_8 tx_buf; 
	UNS_8 rx_buf[12];
	INT_32 tmp = 0;
	
	if(m_pGlobalVar->OpenSPI == FALSE)
	{
		return _ERROR;
	}
	
	if(CheckIceCfgDone() == false)
	{
		return _ERROR;
	}
	SetDeviceBoard(ch);
	
	tx_buf = cmd | ICE_CMD_READ;;

	if(CheckStart() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}
	
	len = spi_write(ICE_SPI_NO, (void*)&tx_buf, 1);
	
	if (len != 1) 
	{
		ICE_chip_deselect();
		SetErrorProc(ch);
		return _ERROR;
	}

	len = spi_iceread(ICE_SPI_NO, (void*)rx_buf, 12);

	if(CheckResult() == false)
	{
		SetErrorProc(ch);
		return _ERROR;
	}

	for(int i=0;i<=3;i++)
	{
		tmp = (rx_buf[0+i*3] & 0xFF);
		tmp <<= 8;
		tmp |= (rx_buf[1+i*3] & 0xFF);
		tmp <<= 8;
		tmp |= (rx_buf[2+i*3] & 0xFF);
		tmp <<= 8;
		tmp &= 0xFFFFFF00;
		tmp /= 256;
		(*pdata)[i] = tmp;
	}
	
	return _NO_ERROR;
}