#include "BZA_SIF.h"


double 				SlopeChkRawdata[DEF_MAX_SLOPECHECK_RAW];

void InitDeviceControl(void)
{
	// P1 - input bit - 15, 16, 17 
	P1_MUX_SET = 0x00038000;
	P1_DIR_CLR = 0x00038000;
	P1_OUTP_CLR = 0x00038000;  	
	
	// P2 - input bit - 0 ~ 12
	// p2.08 - Ice Cfg done
	P2_MUX_SET = 0x00001FFF;
	P2_OUTP_SET = 0x00001FFF;
	P2_DIR_CLR = 0x00001FFF;
	//P2_OUTP_CLR = 0x00001FFF;
	
	P3_MUX_SET = 0x00000003;
	P3_OUTP_SET = 0x00000003;
	
	// Off Led
	P1_OUTP_CLR_bit.P1_20 = 1;
	P1_OUTP_CLR_bit.P1_21 = 1;
	P1_OUTP_CLR_bit.P1_22 = 1;
	P1_OUTP_CLR_bit.P1_23 = 1;
	
	// Dir Output
	P1_DIR_SET_bit.P1_20 = 1;
	P1_DIR_SET_bit.P1_21 = 1;
	P1_DIR_SET_bit.P1_22 = 1;
	P1_DIR_SET_bit.P1_23 = 1;
	
	// Select GPIO
	P1_MUX_SET_bit.P1_20 = 1;
	P1_MUX_SET_bit.P1_21 = 1;
	P1_MUX_SET_bit.P1_22 = 1;
	P1_MUX_SET_bit.P1_23 = 1;

	// P3 GPIO initialize
	P3_OUTP_CLR_bit.GPIO_00 = 1;
	P3_OUTP_CLR_bit.GPIO_01 = 1;
	
	P3_OUTP_CLR_bit.GPIO_02 = 1;
	P3_OUTP_CLR_bit.GPIO_03 = 1;
	P3_OUTP_CLR_bit.GPIO_04 = 1;
	P3_OUTP_CLR_bit.GPIO_05 = 1;
	
	// P3 GPO initialize
	P3_OUTP_CLR_bit.GPO_00 = 1;		// J9 - CS
	P3_OUTP_CLR_bit.GPO_01 = 1;		// 
	P3_OUTP_CLR_bit.GPO_02 = 1;		// J9 - SCK
	P3_OUTP_CLR_bit.GPO_03 = 1;		// J9 - DATA
	
	P3_OUTP_SET_bit.GPO_04 = 1;		// ICE CS0
	P3_OUTP_SET_bit.GPO_05 = 1;		// ICE CS1 미사용
	P3_OUTP_CLR_bit.GPO_06 = 1;		// 

	P3_OUTP_SET_bit.GPO_07 = 1;		// ICE FLASH ROM CS#
	P3_OUTP_CLR_bit.GPO_08 = 1;		// ICE RESETB
	
	P3_OUTP_CLR_bit.GPO_09 = 1;		// 
	P3_OUTP_CLR_bit.GPO_10 = 1;		// 
	P3_OUTP_CLR_bit.GPO_11 = 1;		// 
	
	P3_OUTP_SET_bit.GPO_12 = 1;		// DWR1 - IOA - Always Read 'H' 
	P3_OUTP_SET_bit.GPO_13 = 1;		// DWR2 - IOB - Always Read 'H'
	
	P3_OUTP_CLR_bit.GPO_14 = 0;		// DOE1 - Buffer active 'L'
	P3_OUTP_CLR_bit.GPO_15 = 0;		// DOE2 - Buffer active 'L'
	P3_OUTP_CLR_bit.GPO_16 = 0;		// DOE3 - Buffer active 'L'
}

// 0 : LED9, 1 : LED11, 2 : LED10, 3 : LED7, 4 : EXT

void OnLed_Y(bool on)		
{
	if(on)
	{
		P1_OUTP_SET_bit.P1_20 = 1;
	}
	else
	{
		P1_OUTP_CLR_bit.P1_20 = 1;
	}
}

void ToggleLed_Y(void)		
{
	if(P1_OUTP_STATE_bit.P1_20 == 0)
		P1_OUTP_SET_bit.P1_20 = 1;
	else
		P1_OUTP_CLR_bit.P1_20 = 1;
}

void OnLed0(bool on)		
{
	if(on)
		P1_OUTP_SET_bit.P1_21 = 1;
	else
		P1_OUTP_CLR_bit.P1_21 = 1;
}

void OnLed1(bool on)		
{
	if(on)
		P1_OUTP_SET_bit.P1_23 = 1;
	else
		P1_OUTP_CLR_bit.P1_23 = 1;
}

void OnLed2(bool on)		
{
	if(on)
		P1_OUTP_SET_bit.P1_22 = 1;
	else
		P1_OUTP_CLR_bit.P1_22 = 1;
}

void ICE_BzaCommStat(bool bset)
{
	if(bset) P3_OUTP_CLR_bit.GPO_09 = 1;
    else P3_OUTP_SET_bit.GPO_09 = 1;
}

void ICE_BzaFlowStat(bool bset)
{
	if(bset) P1_OUTP_CLR_bit.P1_20 = 1;
    else P1_OUTP_SET_bit.P1_20 = 1;
}

void OnLed3(bool on)
{
	if(on)
		P3_OUTP_SET_bit.GPO_01 = 1;
	else
		P3_OUTP_CLR_bit.GPO_01 = 1;
}

void OnLed4(bool on)
{
	if(on)
		P3_OUTP_SET_bit.GPO_14 = 1;
	else
		P3_OUTP_CLR_bit.GPO_14 = 1;
}

void ToggleLed0(void)		
{
	if(P1_OUTP_STATE_bit.P1_21 == 0)
		P1_OUTP_SET_bit.P1_21 = 1;
	else
		P1_OUTP_CLR_bit.P1_21 = 1;
}

void ToggleLed1(void)		
{
	if(P1_OUTP_STATE_bit.P1_23 == 0)
		P1_OUTP_SET_bit.P1_23 = 1;
	else
		P1_OUTP_CLR_bit.P1_23 = 1;
}

void ToggleLed2(void)		
{
	if(P1_OUTP_STATE_bit.P1_22 == 0)
		P1_OUTP_SET_bit.P1_22 = 1;
	else
		P1_OUTP_CLR_bit.P1_22 = 1;
}

void ToggleLed3(void)		
{
	if(P3_OUTP_STATE_bit.GPO_01 == 0)
		P3_OUTP_SET_bit.GPO_01 = 1;
	else
		P3_OUTP_CLR_bit.GPO_01 = 1;
}

void ToggleLed4(void)		
{
	if(P3_OUTP_STATE_bit.GPO_14 == 0)
		P3_OUTP_SET_bit.GPO_14 = 1;
	else
		P3_OUTP_CLR_bit.GPO_14 = 1;
}



inline void OutCmdDO(int ch, bool bLev)		
{
	if(ch == 1) 
	{
		if(bLev) P3_OUTP_SET_bit.GPIO_03 = 1;
		else P3_OUTP_CLR_bit.GPIO_03 = 1;
	}
	else if(ch == 2) 
	{
		if(bLev) P3_OUTP_SET_bit.GPIO_04 = 1;
		else P3_OUTP_CLR_bit.GPIO_04 = 1;
	}
	else if(ch == 3) 
	{
		if(bLev) P3_OUTP_SET_bit.GPIO_05 = 1;
		else P3_OUTP_CLR_bit.GPIO_05 = 1;
	}
	else
	{
		if(bLev) P3_OUTP_SET_bit.GPIO_02 = 1;
		else P3_OUTP_CLR_bit.GPIO_02 = 1;
	}
}

void Set_IceResetB(bool on)	
{
	if(on)
	{
		P3_OUTP_CLR_bit.GPO_08 = 1;  // Active 'L'
	}
	else
	{
		P3_OUTP_SET_bit.GPO_08 = 1;
	}
}

bool proc_chk_run(void)
{
	int ch;
	bool bret = false;
	
	
	for(ch=0; ch < MAX_DEV_CHANNEL; ch++)
	{
		if(m_pSysConfig->EnaZIM[ch] == 0) continue;
		if(m_pSysConfig->ChkZIM[ch] == 0) continue;
		
		if(m_pGlobalVar->mChVar[ch].Start > 0)
		{
			bret = true;
			break;
		}
	}
	return bret;
}

bool CheckIceCfgDone(void)	
{
	if(P2_INP_STATE_bit.P2_8) 
	{
		return true;
	}
	return false;
}

void apply_req_dds_dcsignal(int ch)
{
	st_zim_dds_flow* pflow = &m_pGlobalVar->mChVar[ch].flow_dds_sig;
	st_zim_dds* preqdds = &m_pGlobalVar->mChVar[ch].mreqdevice.dds_sig;
	st_zim_dds* pdds = &m_pGlobalVar->mChVar[ch].mdevice.dds_sig;
	
	double dConst = DEF_DDS_SIG_CONST_LOW;
	
	m_pGlobalVar->mChVar[ch].bSigLowFreq = 1;
	
	pflow->req.ctrl = DDS_SIG_DEFAULT_CTRL;
	pflow->req.freq = (uint)(DEF_MONDCCTRL_FREQ * dConst);
	pdds->frequency = DEF_MONDCCTRL_FREQ;

	preqdds->reset = 0;
	pdds->reset = preqdds->reset;
	preqdds->pwdn = 0;
	preqdds->Half = 0;
	pflow->req.phase = (uint)(preqdds->Phase * (double)DEF_DDS_PHASE_CONST) & 0xFFF;
	pdds->Phase = preqdds->Phase;
	pdds->pwdn = preqdds->pwdn;
	pdds->Half = preqdds->Half;
}

void apply_req_dds_signal(int ch)
{
	double dConst = DEF_DDS_SIG_CONST_LOW;
	st_zim_dds* preqdds = &m_pGlobalVar->mChVar[ch].mreqdevice.dds_sig;
	st_zim_dds* pdds = &m_pGlobalVar->mChVar[ch].mdevice.dds_sig;
	st_zim_dds_flow* pflow = &m_pGlobalVar->mChVar[ch].flow_dds_sig;
	
	double dMaxFreq = (double)MIN_EIS_CYC_POINT * 32.0 * preqdds->frequency; // 100KHz = 102,400,000
	int UB = (int)log2((double)MAX_EIS_ADC_MCLK / dMaxFreq);
	
	if(UB < 0)
	{
		m_pGlobalVar->mChVar[ch].bSigLowFreq = 0;
		dConst = DEF_DDS_SIG_CONST_HI;
	}
	else
	{
		 m_pGlobalVar->mChVar[ch].bSigLowFreq = 1;
	}
	
	

	pflow->req.ctrl = DDS_SIG_DEFAULT_CTRL;
	pflow->req.freq = (uint)(preqdds->frequency * dConst);
	pdds->frequency = preqdds->frequency;
	
	
	if(preqdds->reset == TRUE) 
	{
		pflow->req.ctrl |= DDS_RESET;
	}
	pdds->reset = preqdds->reset;

	if(preqdds->pwdn == 1) 
	{
		pflow->req.ctrl |= DDS_PD_DAC;
	}
	else if(preqdds->pwdn == 2) 
	{
		pflow->req.ctrl |= DDS_PD_CLK;
	}
	else if(preqdds->pwdn == 3) 
	{
		pflow->req.ctrl |= DDS_PD_ALL;
	}
	
	pdds->pwdn = preqdds->pwdn;

	if(preqdds->reset == TRUE || preqdds->pwdn > 0)
	{
		return;
	}

	
	if(preqdds->Half > 0)
	{
		pflow->req.ctrl |= DDS_OPENBIT;
	}
	else
	{
		pflow->req.ctrl &= CLR_DDS_OPENBIT;
	}
		
	if(preqdds->Half == 2)  // 2-full
	{
		pflow->req.ctrl |= DDS_DIV2;	
	}
	else
	{
		pflow->req.ctrl &= CLR_DDS_DIV2;	
	}

	pflow->req.phase = (uint)(preqdds->Phase * (double)DEF_DDS_PHASE_CONST) & 0xFFF;
	pdds->Phase = preqdds->Phase;
	
	pdds->Half = preqdds->Half;

}

double FixedPoint(double Value,int FixPnt)
{
	double x;
	double y;
	double z;
	x = ceil(log10(Value));
	y = pow(10.0,((double)FixPnt-x)); // 유효자리수 설정
	z = (int)(Value * y + 0.5)/ y;
	return z;
}

void apply_req_dds_clock(int ch)
{
	st_zim_dds* preqdds = &m_pGlobalVar->mChVar[ch].mreqdevice.dds_clk;
	st_zim_dds* pdds = &m_pGlobalVar->mChVar[ch].mdevice.dds_clk;
	st_zim_dds_flow* pflow = &m_pGlobalVar->mChVar[ch].flow_dds_clk;

	pflow->req.ctrl = DDS_CLK_DEFAULT_CTRL;
	pflow->req.freq = (uint)(preqdds->frequency * (double)DEF_DDS_CLK_CONST);
	pdds->frequency = preqdds->frequency;
	
	pflow->req.phase = (uint)(preqdds->Phase * (double)DEF_DDS_PHASE_CONST);	
	pdds->Phase = preqdds->Phase;
	
	if(preqdds->Half > 0)
	{
		pflow->req.ctrl |= DDS_OPENBIT;
	}
	else
	{
		pflow->req.ctrl &= CLR_DDS_OPENBIT;
	}

	pdds->Half = preqdds->Half;
	
	if(preqdds->reset == TRUE) 
	{
		pflow->req.ctrl |= DDS_RESET;
	}
	pdds->reset = preqdds->reset;

	if(preqdds->pwdn == 1) 
	{
		pflow->req.ctrl |= DDS_PD_DAC;
	}
	else if(preqdds->pwdn == 2) 
	{
		pflow->req.ctrl |= DDS_PD_CLK;
	}
	else if(preqdds->pwdn == 3) 
	{
		pflow->req.ctrl |= DDS_PD_ALL;
	}
	else
	{
		pflow->req.ctrl &= DDS_PD_CLR;
	}
	pdds->pwdn = preqdds->pwdn;

}

void apply_adc_ac_cfg(int ch)
{
	ushort tmp;
	
	st_zim_adc_flow* pflow = &m_pGlobalVar->mChVar[ch].flow_adc_ac;
	st_zim_adc_ac_cfg* preqcfg = &m_pGlobalVar->mChVar[ch].mreqdevice.adc_ac.cfg;
	st_zim_adc_ac_cfg* pcfg = &m_pGlobalVar->mChVar[ch].mdevice.adc_ac.cfg;
	
	tmp = ((preqcfg->vac_flt << 6) & 0xC0);
	tmp |= ((preqcfg->vac_osr << 4) & 0x30);
	tmp |= ((preqcfg->iac_flt << 2) & 0xC);
	tmp |= (preqcfg->iac_osr & 0x3);
	
	pflow->req = tmp;
	pcfg->vac_flt = preqcfg->vac_flt;
	pcfg->vac_osr = preqcfg->vac_osr;
	pcfg->iac_flt = preqcfg->iac_flt;
	pcfg->iac_osr = preqcfg->iac_osr;
}

inline void proc_SetLowMclk(int ch, ushort bLow)
{
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do;
	
	preqdo->data &= DEF_DEVDO_DDSMCLK_LOW;
	
	if(bLow == 0) preqdo->data |= DEF_DEVDO_DDSMCLK_HI;

	set_device_DO(ch);
}

inline void set_dds_sig_dc(int ch)
{
	ushort buf;
	st_zim_dds_flow* pflowddssig = &m_pGlobalVar->mChVar[ch].flow_dds_sig;

	if(pflowddssig->stat.freq !=  pflowddssig->req.freq || pflowddssig->stat.phase !=  pflowddssig->req.phase)
	{
		m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl = DDS_SIG_RESET;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl) == _ERROR)
		{
			return;
		}
		
		m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl |= DDS_HLB;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl) == _ERROR)
		{
			return;
		}
			
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((pflowddssig->req.freq  >> 14) & 0x3FFF);
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
			
		m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl &= DDS_HLB_CLR;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl) == _ERROR)
		{
			return;
		}
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(pflowddssig->req.freq  & 0x3FFF);	
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		
		m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl = 0;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl) == _ERROR)
		{
			return;
		}
		pflowddssig->stat.freq  =  pflowddssig->req.freq;
		pflowddssig->stat.phase  =  pflowddssig->req.phase;
		m_pGlobalVar->m_msRefreshDC = 0;
	}
	if(m_pGlobalVar->m_msRefreshDC > 50)
	{
		m_pGlobalVar->m_msRefreshDC = 0;

		buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(pflowddssig->req.phase & 0xFFF);
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		
		pflowddssig->stat.phase  =  pflowddssig->req.phase;

	}
}

inline void set_dds_sig(int ch)
{
	ushort buf;
	st_zim_dds_flow* pflowddssig = &m_pGlobalVar->mChVar[ch].flow_dds_sig;
	
	proc_SetLowMclk(ch, m_pGlobalVar->mChVar[ch].bSigLowFreq);
	
	if(pflowddssig->stat.freq !=  pflowddssig->req.freq)
	{
		buf = pflowddssig->req.ctrl & 0x2FFF;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
	
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(pflowddssig->req.freq & 0x3FFF);
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}

		buf = pflowddssig->req.ctrl | 0x1000;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((pflowddssig->req.freq >> 14) & 0x3FFF);
		
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		
		pflowddssig->stat.freq  =  pflowddssig->req.freq;
	}
	
	if(pflowddssig->stat.phase !=  pflowddssig->req.phase)
	{

		buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(pflowddssig->req.phase & 0xFFF);
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		pflowddssig->stat.phase  =  pflowddssig->req.phase;
	}
	
	if(pflowddssig->stat.ctrl !=  pflowddssig->req.ctrl)
	{
		buf = pflowddssig->req.ctrl & 0x3FFF;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		pflowddssig->stat.ctrl  =  pflowddssig->req.ctrl;
	}
}

inline void set_dds_clk(int ch)
{
	ushort buf;
	st_zim_dds_flow* pflowddsclk = &m_pGlobalVar->mChVar[ch].flow_dds_clk;
	if(pflowddsclk->stat.freq !=  pflowddsclk->req.freq)
	{

		buf = pflowddsclk->req.ctrl & 0x2FFF;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(pflowddsclk->req.freq & 0x3FFF);
		if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		buf = pflowddsclk->req.ctrl | 0x1000;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((pflowddsclk->req.freq >> 14) & 0x3FFF);
		if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,buf) == _ERROR)
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

double Polynomial(int ch, double x)     
{         
	double y = 0;         
	double xn = 0;   
	int i;
	
	for (i = 0; i < DEF_RTD_COEF_LEN; i++)         
	{             
		if (m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.factor == DEF_ADC_RTD_CONST_PT1000) 
		{
			y += pRTD_Coef->pt1000Correction[i] * xn;     
		}
		else 
		{
			y += pRTD_Coef->pt100Correction[i] * xn;     
		}      
		xn *= x;         
	} 
	
	return y;     
}  

// from https://github.com/ulikoehler/UliEngineering/blob/master/UliEngineering/Physics/R 
//
/// <summary>     
/// Returns the temperature from the resistance of RTD     
/// </summary>     
/// <param name="r">The resistance of RTD.</param>     
/// <param name="r0">The resistance of RTD at 0 °C.</param>     
/// <param name="standard">Callendar-Van Dusen coefficients, use ptxIPTS68 or ptxITS9    
/// <param name="poly">The Polynomial coefficients.</param>     
/// <returns></returns>    
double ResistanceToTemperature(int ch, double r)
{         
	double A;  
	double B;
	     
	double r0;
	double t;
	
	if(pRTD_Coef->StandardType == DEF_RTD_STANDARDTYPE_IPTS68)
	{
		A = pRTD_Coef->ptxIPTS68[0];
		B = pRTD_Coef->ptxIPTS68[1];
	}
	else
	{
		A = pRTD_Coef->ptxITS90[0]; 
		B = pRTD_Coef->ptxITS90[1]; 
	}

	if (m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.factor == DEF_ADC_RTD_CONST_PT1000) 
	{
		r0 = 1000.0;
	}
	else 
	{
		r0 = 100.0;
	}

	t = ((-r0 * A + sqrt(r0 * r0 * A * A - 4 * r0 * B * (r0 - r))) / (2.0 * r0 * B));

	if (r < r0)
	{
		t += Polynomial(ch,r); 
	}
 	return t;     
} 

inline void proc_adc_rtd_cfg(int ch)
{
	st_zim_rtd* preqrtd = &m_pGlobalVar->mChVar[ch].mreqdevice.adc_rtd;
	st_zim_rtd* prtd = &m_pGlobalVar->mChVar[ch].mdevice.adc_rtd;
	UNS_8 tmp = 0;
	
	if(preqrtd->config.data != prtd->config.data)
	{
		if(ICE_write_byte(ch, ICE_CMD_RTD_CFG, preqrtd->config.data) == _ERROR)
		{
			return;
		}
		prtd->config.data = preqrtd->config.data;
	}
	else
	{
		if(ICE_read_byte(ch, ICE_CMD_RTD_CFG, &tmp) == _ERROR) return;
		if(preqrtd->config.data != tmp) prtd->config.data = tmp;
	}
	
}	

inline void proc_adc_rtd(int ch)
{
	UNS_16 tmp = 0;
	st_zim_rtd* prtd = &m_pGlobalVar->mChVar[ch].mdevice.adc_rtd;
	
	if(prtd->config.data & 0x2) 
	{
		proc_adc_rtd_cfg(ch);
		return;
	}
	
	if(ICE_read_16bits(ch, ICE_CMD_RTD_DTA,&tmp) == _ERROR)
	{
		return;
	}
	
	prtd->data.fault = tmp & 0x1;
	prtd->data.adcval = tmp >> 1;
	
	if(prtd->data.adcval == 0) prtd->data.fault = 1;
	if(prtd->data.fault == 1)
	{
		if(isnan(m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.factor))
		{
			prtd->data.Rvalue = 100.0;
		}
		else
		{
			if (m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.factor == DEF_ADC_RTD_CONST_PT1000) 
			{
				prtd->data.Rvalue = 1000.0;
			}
			else 
			{
				prtd->data.Rvalue = 100.0;
			}
		}
		prtd->data.Tvalue = 0.0;
		m_pGlobalVar->mChVar[ch].mChStatInf.Temperature = prtd->data.Tvalue;
		prtd->config.data |= 0x6;
		
		if(ICE_write_byte(ch, ICE_CMD_RTD_CFG, prtd->config.data) == _ERROR)
		{
			return;
		}
	}
	else
	{
		prtd->data.Rvalue = prtd->data.adcval * m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.factor;
		prtd->data.Rvalue = prtd->data.adcval * m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.factor;
		prtd->data.Tvalue = ResistanceToTemperature(ch, prtd->data.Rvalue); 
		if(m_pGlobalVar->mChVar[ch].bCalib == 0)
		{
			prtd->data.Tvalue = prtd->data.Tvalue 
							* m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.gain 
							+ m_pSysConfig->mZimCfg[ch].ranges.rtd_rng.offset;
		}
		prtd->data.Tvalue = floor(prtd->data.Tvalue * 100.0 + 0.5) * 0.01;
		m_pGlobalVar->mChVar[ch].mChStatInf.Temperature = prtd->data.Tvalue;
		proc_adc_rtd_cfg(ch);
	}
}	

int proc_read_version(int ch)
{
	UNS_16 tmp = 0;
	
	if(ICE_read_16bits(ch, ICE_CMD_FWVERSION,&tmp) == _ERROR)
	{
			return _ERROR;
	}
	m_pSysConfig->mZimCfg[ch].info.ZimFWVersion = tmp;
	
	return _NO_ERROR;
}	

int CheckThermoStat(int ch)
{
	UNS_8 data = 0;
	
	if(ICE_read_byte(ch, ICE_CMD_DEVICE_DO, &data) == _ERROR)
	{
		return -1;
	}

	if(m_pGlobalVar->mChVar[ch].FlagOverT == 0)
	{
		if(data & 0x80)
		{
			if(m_pGlobalVar->mChVar[ch].OverT_Timer > 3000) 
			{
				
				m_pGlobalVar->mChVar[ch].FlagOverT = 1;
				return 1;
			}
		}
		else
		{
			m_pGlobalVar->mChVar[ch].OverT_Timer = 0;
		}
	}
	else
	{
		if(data & 0x80)
		{
			m_pGlobalVar->mChVar[ch].OverT_Timer = 0;
			return 1;
		}
		else
		{
			if(m_pGlobalVar->mChVar[ch].OverT_Timer > 3000) 
			{
				m_pGlobalVar->mChVar[ch].FlagOverT = 0;
			}
			else
			{
				return 1;
			}
		}
	}
	
	return 0;
}



inline void proc_adc_ac_cfg(int ch)
{
    UNS_8 tmp = 0;
	st_zim_adc_flow* pflow = &m_pGlobalVar->mChVar[ch].flow_adc_ac;
	
	if(pflow->stat != pflow->req)
	{
		tmp = (pflow->req & 0xFF);
		if(ICE_write_byte(ch, ICE_CMD_ACADC_DEVICE, tmp) == _ERROR)
		{
			return;
		}
		pflow->req = (ushort)tmp;	
		pflow->stat = pflow->req;	
	}
	else
	{
		if(ICE_read_byte(ch, ICE_CMD_ACADC_DEVICE, &tmp) == _ERROR) return;
		if(pflow->req != tmp) pflow->stat = tmp;
	}
}

inline void proc_adc_ac_data(int ch)
{
	INT_32 tmpi;
	INT_32 tmpv;

	
	st_zim_adc_ac* pac = &m_pGlobalVar->mChVar[ch].mdevice.adc_ac;
	if(ICE_read_adc24bit(ch, ICE_CMD_IACADC_VAL, &tmpi) == _ERROR)
	{
		return;
	}
	
	pac->data.iac.adcval = tmpi;
	pac->data.iac.value = (double)tmpi * m_pSysConfig->mZimCfg[ch].ranges.iac_rng[m_pGlobalVar->mChVar[ch].mChStatInf.Iac_in_rngno].factor * (-1.0);
	
	if(ICE_read_adc24bit(ch, ICE_CMD_VACADC_VAL, &tmpv) == _ERROR)
	{			   
		return;
	}
	
	pac->data.vac.adcval = tmpv;
	pac->data.vac.value = (double)tmpv * m_pSysConfig->mZimCfg[ch].ranges.vac_rng.factor;
	if(m_pGlobalVar->mChVar[ch].bCalib == 0)
	{
		pac->data.vac.value = pac->data.vac.value
						* m_pSysConfig->mZimCfg[ch].ranges.vac_rng.gain
						+ m_pSysConfig->mZimCfg[ch].ranges.vac_rng.offset;
	}
}

inline void proc_adc_vdc_data(int ch)
{
	INT_32 tmp;
	
	st_zim_adc_vdc* pvdc = &m_pGlobalVar->mChVar[ch].mdevice.adc_vdc;
	if(ICE_read_adc24bit(ch, ICE_CMD_VDCADC_VAL, &tmp) == _ERROR)
	{		 	  
		return;
	}
	
	pvdc->adcval = tmp;
	pvdc->value = (double)tmp
			* m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[m_pGlobalVar->mChVar[ch].mChStatInf.Vdc_rngno].factor;
	if(m_pGlobalVar->mChVar[ch].bCalib == 0)
	{
		pvdc->value = pvdc->value 
					* m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[m_pGlobalVar->mChVar[ch].mChStatInf.Vdc_rngno].gain 
					+ m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[m_pGlobalVar->mChVar[ch].mChStatInf.Vdc_rngno].offset;
	}
	
	if(m_pGlobalVar->mChVar[ch].mChStatInf.ZimType == DEV_BZA60)
	{
		pvdc->value = floor(pvdc->value * 1000000.0 + 0.5) * 0.000001;
	}
	else
	{
		pvdc->value = floor(pvdc->value * 100000.0 + 0.5) * 0.00001;
	}
		
	m_pGlobalVar->mChVar[ch].mChStatInf.Vdc = pvdc->value;
}

inline void proc_eis_cfg(int ch)
{
	st_zim_eisdev* preqeisdev = &m_pGlobalVar->mChVar[ch].mreqdevice.eis;
	st_zim_eisdev* peisdev = &m_pGlobalVar->mChVar[ch].mdevice.eis;
	UNS_8 tmp = 0;
	if(peisdev->config != preqeisdev->config)
	{
		if(ICE_write_byte(ch, ICE_CMD_EIS_CFG, preqeisdev->config) == _ERROR)
		{
			return;
		}
		
		peisdev->config = preqeisdev->config;
	}
	else
	{
		if(ICE_read_byte(ch, ICE_CMD_EIS_CFG, &tmp) == _ERROR) return;
		if(preqeisdev->config != tmp) peisdev->config = tmp;
	}
	
	if(peisdev->points != preqeisdev->points)
	{
		if(ICE_write_byte(ch, ICE_CMD_EIS_SETPNTS, preqeisdev->points) == _ERROR)
		{
			return;
		}
		peisdev->points = preqeisdev->points;
	}
	else
	{
		if(ICE_read_byte(ch, ICE_CMD_EIS_SETPNTS, &tmp) == _ERROR) return;
		if(preqeisdev->points != tmp) peisdev->points = tmp;
	}
}

inline bool ChkLowLimit(int ch)
{
	bool bret = false;
	double tmp1;
	double tmp2;
	
	tmp1 = fabs(m_pGlobalVar->mChVar[ch].mdevice.adc_ac.data.vac.value);
	tmp2 = DEF_LLIMIT_VACSTABLE;

	if(tmp1 <=  tmp2) bret = true;
	return bret;
}
	
inline bool ChkHighLimit(int ch)
{
	bool bret = true;
	double tmp1;
	double tmp2;
	
	tmp1 = fabs(m_pGlobalVar->mChVar[ch].mdevice.adc_ac.data.vac.value);
	tmp2 = DEF_HLIMIT_VACSTABLE;

	if(tmp1 <= tmp2) bret = false;
	return bret;
}

inline int Get_Rng_A(int ch)
{
	int rng = 0; 
	int orng = 0; 
	double maxA = 0.0;
	double tmp = 0.0;

	if(m_pGlobalVar->mChVar[ch].mChStatInf.Veoc == 0.0 || m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower == 0.0) return 0;
	maxA = fabs(m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower / m_pGlobalVar->mChVar[ch].mChStatInf.Veoc);
	
	while(1)
	{
		tmp =m_pSysConfig->mZimCfg[ch].ranges.iac_rng[rng].realmax;
		
		if(maxA < tmp)
		{
			orng ++;
			tmp = tmp * 0.2;
			if(maxA < tmp)
			{
				orng ++;
				if((DEF_MAX_IAC_RNGCNT - 1) <= rng) break;
			}
			else break;
		}
		else break;
		
		rng ++;
	}
	
	return orng;
}

inline void proc_auto_vdc_proc(int ch)
{
	if(m_pGlobalVar->mChVar[ch].AutoVdcRange == 0) return;
	
	st_zim_adc_vdc * pvdc = &m_pGlobalVar->mChVar[ch].mdevice.adc_vdc;
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do;
	
	double dtmp = fabs(pvdc->value);
	double dtmp1 = m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].realmax * 1.1;
	double dtmp2 = m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[1].realmax *0.95;
	
	
	
	if(dtmp > dtmp1) 
	{
		if(m_pGlobalVar->mChVar[ch].mChStatInf.Vdc_rngno == 1)
		{
			m_pGlobalVar->mChVar[ch].CntVdcChg ++;
			if(m_pGlobalVar->mChVar[ch].CntVdcChg >= 2)
			{
				preqdo->data |= DEF_DEVDO_VDC_RNG0;
			}
		}
		else
		{
			m_pGlobalVar->mChVar[ch].CntVdcChg = 0;
		}
	}
	else if(dtmp < dtmp2) 
	{
		if(m_pGlobalVar->mChVar[ch].mChStatInf.Vdc_rngno == 0)
		{
			m_pGlobalVar->mChVar[ch].CntVdcChg ++;
			if(m_pGlobalVar->mChVar[ch].CntVdcChg >= 2)
			{
				preqdo->data &= DEF_DEVDO_VDC_RNG1;
			}
		}
		else
		{
			m_pGlobalVar->mChVar[ch].CntVdcChg = 0;
		}
	}
}

void proc_power_VAC(int ch, bool bOn)
{
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do;
	
	if(bOn == false) preqdo->data |= DEF_DEVDO_VAC_PWROFF;
	else preqdo->data &= DEF_DEVDO_VAC_PWRON;
}

inline bool check_power_VAC(int ch)
{
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do;
	
	if(preqdo->data & DEF_DEVDO_VAC_PWROFF) return false;
	return true;
}

void proc_eis_setrange(int ch,int setrange) 
{
	ushort buf;
	int irng;
	
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do;

	irng = 0;
	if(m_pGlobalVar->mChVar[ch].bCalib == 0) irng = Get_Rng_A(ch);
	
	if(irng < setrange)
	{
		irng = setrange;
	}
			   
	buf = (ushort)((irng << 1) & 0xE);
	preqdo->data &= 0xFFF1;
	preqdo->data |= buf;
}

inline void proc_default_setrange(int ch)
{
	ushort buf;
	int curr_rng;
	int irng;
	
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do;
	
	curr_rng = (preqdo->data >> 1 & 0x7);
	irng = Get_Rng_A(ch);
	if(curr_rng == irng) return;
	
	if(curr_rng > irng)
	{
		irng = curr_rng; 
	}
	buf = (ushort)((irng << 1) & 0xE);
	preqdo->data &= 0xFFF1;
	preqdo->data |= buf;
}

void proc_eis_LoadOn(int ch, ushort loadon)
{
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do;

	if (loadon == 1) preqdo->data |= DEF_DEVDO_CONT_SD;
	else  
	{
		preqdo->data &= DEF_DEVDO_CONT_CLRSD;
	}
	m_pGlobalVar->mChVar[ch].mChStatInf.LoadOn = loadon;
}

inline void NR_FFT(int iAddr,ushort Ns) // data[0...2*Ns-1]
{ 
	int 		i, j, k;
	int 		nTotal, iSize, nMax, istep;
	float 		wtemp, wpr, wr, wpi, wi,theta; 
	float		Itempr, Itempi; 
	float		Vtempr, Vtempi;

	st_zim_eis_raw_val* pBuf1;
	st_zim_eis_raw_val* pBuf2;
	st_zim_eis_raw_val fBuf[2];


	j = 1; 
	nTotal = Ns * 2; 
	
	for(i=1; i<nTotal; i+=2) {
		if(j > i) {
			//SwapMem
			pBuf1 = (st_zim_eis_raw_val*)iAddr + (j-1);
			pBuf2 = (st_zim_eis_raw_val*)iAddr + (i-1);
			memcpy((void*)fBuf,(void*)pBuf1,DEF_EIS_RAWVAL_SIZE); 
			memcpy((void*)pBuf1,(void*)pBuf2,DEF_EIS_RAWVAL_SIZE);
			memcpy((void*)pBuf2,(void*)fBuf,DEF_EIS_RAWVAL_SIZE);
			//SwapMem
			pBuf1 = (st_zim_eis_raw_val*)iAddr + j;
			pBuf2 = (st_zim_eis_raw_val*)iAddr + i;
			memcpy((void*)fBuf,(void*)pBuf1,DEF_EIS_RAWVAL_SIZE); 
			memcpy((void*)pBuf1,(void*)pBuf2,DEF_EIS_RAWVAL_SIZE);
			memcpy((void*)pBuf2,(void*)fBuf,DEF_EIS_RAWVAL_SIZE);
		} 
		k = Ns; 
		while(k >= 2 && j > k) { 
			j -= k; 
			k >>= 1; 
		} 
		j += k; 
	} 

	nMax = 2; 
	iSize = DEF_EIS_RAWVAL_SIZE * 2;

	while(nTotal > nMax) {
		istep = nMax << 1; 
		if(nMax == 0) theta = 0.0;
		else theta = 2.0 * PI / nMax; //
		theta = 2.0 * PI / nMax; //
		wtemp = sin(0.5 * theta); 

		wpr = -2.0 * wtemp * wtemp; 
		wpi = sin(theta); 
		wr = 1.0; 
		wi = 0.0; 
		for(k=1; k<nMax; k+=2) { 
			for(i=k; i<=nTotal; i+=istep) { 
				j = i + nMax; 
				pBuf1 = (st_zim_eis_raw_val*)iAddr + (i-1);
				pBuf2 = (st_zim_eis_raw_val*)iAddr + (j-1);
				memcpy((void*)&fBuf,(void*)pBuf1,iSize);
				
				Itempr = wr * pBuf2->iac - wi * (pBuf2+1)->iac; 
				Itempi = wr * (pBuf2+1)->iac + wi * pBuf2->iac; 
				Vtempr = wr * pBuf2->vac - wi * (pBuf2+1)->vac; 
				Vtempi = wr * (pBuf2+1)->vac + wi * pBuf2->vac;


				pBuf1->iac += Itempr; 
				pBuf1->vac += Vtempr; 
				(pBuf1+1)->iac += Itempi; 
				(pBuf1+1)->vac += Vtempi;

				pBuf2->iac = fBuf[0].iac - Itempr; 
				pBuf2->vac = fBuf[0].vac - Vtempr; 
				(pBuf2+1)->iac = fBuf[1].iac - Itempi; 
				(pBuf2+1)->vac = fBuf[1].vac - Vtempi;
			} 
			wtemp = wr;
			wr = wr * wpr - wi * wpi + wr; 
			wi = wi * wpr + wtemp * wpi + wi; 
		} 
		nMax = istep; 
	} 
	theta = Ns / 2.0;
	for(i=0; i<Ns; i++)
	{
		pBuf1 = (st_zim_eis_raw_val*)iAddr + i;
		pBuf1->iac /= theta; 
		pBuf1->vac /= theta; 
		(pBuf1+1)->iac /= theta; 
		(pBuf1+1)->vac /= theta;
	}
}

inline bool ChkEisCalVar(st_zim_Eis_Cal_info* pInfo)
{
	if (isnan(pInfo->n1) || isnan(pInfo->n2) || isnan(pInfo->n3)
		|| isnan(pInfo->d1)	|| isnan(pInfo->d2)	|| isnan(pInfo->d3))
	{
		return false;
	}
	
	if (pInfo->n1 == 0.0 && pInfo->n2 == 0.0 && pInfo->n3 == 0.0
		&& pInfo->d1 == 0.0	&& pInfo->d2 == 0.0	&& pInfo->d3 == 0.0)
	{
		return false;
	}
	return true;
}

inline bool ChkEisCalGainVar(st_zim_adci_rnginf*  pRng)
{
	if (pRng->gain1 == 1.0 || pRng->gain1 == 0.0 
		 || pRng->gain2 == 1.0 || pRng->gain2 == 0.0)
	{
		return false;
	}
	return true;
}

inline bool ChkSysCalVars(int ch)
{
	int i;
	st_zim_rnginf* pRanges = &m_pSysConfig->mZimCfg[ch].ranges;
	
	if(pRanges->rtd_rng.gain == 1.0 || pRanges->rtd_rng.offset == 0.0
	   || pRanges->vdc_rng[0].gain == 1.0 || pRanges->vdc_rng[0].offset == 0.0
		   || pRanges->vdc_rng[1].gain == 1.0 || pRanges->vdc_rng[1].offset == 0.0)
	{
		return false;
	}
	

	for(i=0; i<MAX_IAC_CTRL_RNGCNT; i++)
	{
		if(ChkEisCalVar(&pRanges->mEisIRngCalInfo[i]) == false)
		{
			return false;
		}
		
	}
	for(i=0; i<DEF_MAX_IAC_RNGCNT; i++)
	{
		if(ChkEisCalGainVar(&pRanges->iac_rng[i]) == false)
		{
			return false;
		}
	}
	
	
	return true;
}

inline void CompImpedanceItem(int ch, st_zim_eis_raw *praw, ushort cRng)
{
	st_zim_Eis_Cal_info* pEis_cal_info = &m_pSysConfig->mZimCfg[ch].ranges.mEisIRngCalInfo[cRng];
	st_zim_Eis_Cal_info* pEis_cal_info1 = &m_pSysConfig->mZimCfg[ch].ranges.mEisIRngCalInfo[DEF_HIFREQ_CALIBRANGE];
	
	double f = praw->freq;
	double fsq = f * f;
	double a;
	double b;
	double c;
	double d;
	double aa;
	double bb;

	if (ChkEisCalVar(pEis_cal_info1) == false)
	{
		return;
	}
	//pEis_cal_info1 = pEis_cal_info;
	if (ChkEisCalVar(pEis_cal_info) == false)
	{
		return;
	}
	
	a = 1 + pEis_cal_info1->n3 * fsq;
	b = (pEis_cal_info->n1 / f) + (pEis_cal_info1->n2 * f);
	c = 1 + pEis_cal_info1->d3 * fsq;
	d = (pEis_cal_info->d1 / f) + (pEis_cal_info1->d2 * f);

	if(c == 0.0 && d == 0.0)
	{
		praw->zdata.real = 0.0;
		praw->zdata.img = 0.0;
		return;
	}
		
	aa = (a * c + b * d) / (c * c + d * d);
	bb = (b * c - a * d) / (c * c + d * d);
		
	a = praw->zdata.real;
	b = praw->zdata.img;
	
	c = aa;
	d = bb;
	
	praw->zdata.real = (a * c - b * d);
	praw->zdata.img = (a * d + b * c);
}

bool proc_eis_data_conv(int ch)
{
	ushort nCycle;
	double dTemp;
	stCompdrift  mCompdrift;
	st_zim_eis_raw_val 	tRaw_val[MAX_EIS_RAW_POINT]; 
	st_zim_eis_status* pstatus = &m_pGlobalVar->mChVar[ch].mChStatInf.eis_status;
	st_zim_eis_raw* praw = &m_pGlobalVar->mChVar[ch].meis.eis_raw_new;
	st_zim_eis* peis = &m_pGlobalVar->mChVar[ch].meis;
	
	dTemp = 0.0;

	
	if(pstatus->cycpoint == 0)
	{
		pstatus->zdata.real = 0.0;
		pstatus->zdata.img = 0.0;
		pstatus->zdata.mag = 0.0;
		pstatus->zdata.phase = 0.0;
		
		m_pGlobalVar->mChVar[ch].mChStatInf.DispFreq = pstatus->freq;
		m_pGlobalVar->mChVar[ch].mChStatInf.DispMag = pstatus->zdata.mag;
		m_pGlobalVar->mChVar[ch].mChStatInf.DispPhase = pstatus->zdata.phase;
		return false;
	}
	
	nCycle = (ushort)floor(pstatus->LoadDatacnt / pstatus->cycpoint); //devide
	if(pstatus->cycle > nCycle) 
	{
		pstatus->cycle	=  nCycle;
	}
	else
	{
		nCycle = pstatus->cycle;
	}
	
	pstatus->cycle = nCycle;
	praw->freq = pstatus->freq;
	peis->eis_raw_new.Ns = pstatus->cycpoint * pstatus->cycle;
	
	memcpy(tRaw_val,praw->raw_val,sizeof(st_zim_eis_raw_val)*MAX_EIS_RAW_POINT); 
	
	if(RemoveTrend(tRaw_val,peis->eis_raw_new.raw_val,pstatus->totaldatacnt,pstatus->cycpoint,&mCompdrift) == false)
	{
		pstatus->zdata.real = 0.0;
		pstatus->zdata.img = 0.0;
		pstatus->zdata.mag = 0.0;
		pstatus->zdata.phase = 0.0;
		m_pGlobalVar->mChVar[ch].mChStatInf.DispFreq = pstatus->freq;
		m_pGlobalVar->mChVar[ch].mChStatInf.DispMag = pstatus->zdata.mag;
		m_pGlobalVar->mChVar[ch].mChStatInf.DispPhase = pstatus->zdata.phase;
		return false;
	}
	
	praw->zdata_iac.real = mCompdrift.IAC.real;
	praw->zdata_iac.img = mCompdrift.IAC.imag;
	praw->zdata_iac.mag = mCompdrift.IAC.Amplitude;
	praw->zdata_iac.phase = mCompdrift.IAC.Phase;
	
	praw->zdata_vac.real = mCompdrift.VAC.real;
	praw->zdata_vac.img = mCompdrift.VAC.imag;
	praw->zdata_vac.mag = mCompdrift.VAC.Amplitude;
	praw->zdata_vac.phase = mCompdrift.VAC.Phase;
   
	dTemp = (praw->zdata_iac.real * praw->zdata_iac.real) + (praw->zdata_iac.img * praw->zdata_iac.img);
	if(dTemp == 0.0)
	{
		praw->zdata.real = 0.0;
		praw->zdata.img = 0.0;
		praw->zdata.mag = 0.0;
		praw->zdata.phase = 0.0;
		memcpy(&pstatus->zdata,&praw->zdata,sizeof(st_zim_eis_zdata));
		m_pGlobalVar->mChVar[ch].mChStatInf.DispFreq = pstatus->freq;
		m_pGlobalVar->mChVar[ch].mChStatInf.DispMag = pstatus->zdata.mag;
		m_pGlobalVar->mChVar[ch].mChStatInf.DispPhase = pstatus->zdata.phase;
		return false;
	}
	else
	{
		praw->zdata.real = ((praw->zdata_vac.real * praw->zdata_iac.real) + (praw->zdata_vac.img * praw->zdata_iac.img)) / dTemp; //devide
		praw->zdata.img = ((praw->zdata_vac.img * praw->zdata_iac.real) - (praw->zdata_vac.real * praw->zdata_iac.img)) / dTemp;  //devide 
	}
	
	double dgain = 1.0;
	
	if(m_pGlobalVar->mChVar[ch].bCalib == 0)
	{
		CompImpedanceItem(ch, praw,m_pGlobalVar->mChVar[ch].mChStatInf.Iac_rngno); 
		praw->zdata.img = praw->zdata.img + (2.0 * PI * pstatus->freq * m_pSysConfig->mZimCfg[ch].ranges.mDummy[m_pGlobalVar->mChVar[ch].mChStatInf.Iac_rngno].Ls);
	}
	
	praw->zdata.mag = sqrt((praw->zdata.real * praw->zdata.real) + (praw->zdata.img * praw->zdata.img));
	praw->zdata.phase = atan2(praw->zdata.img, praw->zdata.real) * (double)180.0 / (double)PI;//angle in degree;

	if(m_pGlobalVar->mChVar[ch].bCalib == 0)
	{
		
		if(m_pGlobalVar->mChVar[ch].mChStatInf.Iac_rngno == 0 || m_pGlobalVar->mChVar[ch].mChStatInf.Iac_rngno == 2 
		   || m_pGlobalVar->mChVar[ch].mChStatInf.Iac_rngno == 4 || m_pGlobalVar->mChVar[ch].mChStatInf.Iac_rngno == 6) 
		{
			dgain = m_pSysConfig->mZimCfg[ch].ranges.iac_rng[m_pGlobalVar->mChVar[ch].mChStatInf.Iac_in_rngno].gain1;
		}
		else 
		{
			dgain = m_pSysConfig->mZimCfg[ch].ranges.iac_rng[m_pGlobalVar->mChVar[ch].mChStatInf.Iac_in_rngno].gain2;
		}
		
		if(dgain == 0.0) dgain = 1.0;
				
		praw->zdata.mag /= dgain;
		praw->zdata.real = praw->zdata.mag * cos(praw->zdata.phase * ((double)PI / 180.0));
        praw->zdata.img = praw->zdata.mag * sin(praw->zdata.phase * ((double)PI / 180.0));
		
	}
	
	memcpy(&pstatus->zdata,&praw->zdata,sizeof(st_zim_eis_zdata));
	
	m_pGlobalVar->mChVar[ch].mChStatInf.DispFreq = pstatus->freq;
	m_pGlobalVar->mChVar[ch].mChStatInf.DispMag = pstatus->zdata.mag;
	m_pGlobalVar->mChVar[ch].mChStatInf.DispPhase = pstatus->zdata.phase;
	
	return true;
}

inline bool proc_eis_chk_Control(int ch, double rate, double mag)
{
	int rng;
	int gain;
	double drng;
	double dLimitRate;

	
	rng = m_pGlobalVar->mChVar[ch].mChStatInf.Iac_rngno / 2;
	gain = m_pGlobalVar->mChVar[ch].mChStatInf.Iac_rngno % 2;

	drng = m_pSysConfig->mZimCfg[ch].ranges.iac_rng[rng].realmax * 0.5;
	
	
	if(gain) drng *= 0.2;
	
	dLimitRate = rate * 0.01 * drng;
	
	if(fabs(mag) < dLimitRate) 
	{
		return false;
	}
	return true;
}


inline  void ApplyCalcConfigADCForDelay(int ch) //Find OSR and number of points in a cycle
{
	st_zim_dds* pddsclk = &m_pGlobalVar->mChVar[ch].mdevice.dds_clk;
	st_zim_adc_ac_cfg* preqcfg = &m_pGlobalVar->mChVar[ch].mreqdevice.adc_ac.cfg;
	st_zim_dds* pddssig = &m_pGlobalVar->mChVar[ch].mdevice.dds_sig;
	int MinCycPoint = MIN_EIS_CYC_POINT;
	
	double dMaxFreq = (double)MIN_EIS_CYC_POINT * 32.0 * pddssig->frequency; // 100KHz = 102,400,000

	int nArg,osrArg;
	int LB,UB;
	int nMaxArg,osrMaxArg;
	int retPoint,cycles,nMaxCycle;
	
	int nPointSubH = 0;
	bool blow = true;
	
	double  dConstFlt = 2.0;
	
	if(m_pGlobalVar->mChVar[ch].mreqdevice.adc_ac.cfg.iac_flt == DEF_FLT_LOWLATENCY) dConstFlt = 4.0;
	
	pddssig->reset = 0;
	
	m_pGlobalVar->mChVar[ch].mFlow.SetDuration = 1.0;
	if(m_pGlobalVar->mChVar[ch].mChStatInf.TestStatus == DEF_TESTSTATUS_RUNNING)
	{
		if(m_pGlobalVar->mChVar[ch].mTech.type == TECH_QIS)
		{
			if(pddssig->frequency  < 100.0)	
			{
				m_pGlobalVar->mChVar[ch].mFlow.SetDuration = 0.3;
			}
		}
		else if(m_pGlobalVar->mChVar[ch].mTech.type == TECH_DCH)
		{
			m_pGlobalVar->mChVar[ch].mFlow.SetDuration = 0.3;
		}
	}
	

	if(pddssig->frequency >= DEF_FREQUENCY_SUBHAMONIC)
	{
		blow = false;
		osrArg = 0;
		retPoint  = 32;
		

		nPointSubH = 1025;
		pddsclk->frequency = ((pddssig->frequency * (double)retPoint) / nPointSubH) * 32.0;
		
		
		m_pGlobalVar->mChVar[ch].flow_dds_clk.req.freq = (uint)ceil((pddsclk->frequency * (double)DEF_DDS_CLK_CONST));
		pddsclk->frequency =   m_pGlobalVar->mChVar[ch].flow_dds_clk.req.freq / (double)DEF_DDS_CLK_CONST;
	
		m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq = (uint)floor(pddssig->frequency * DEF_DDS_SIG_CONST_HI);
		pddssig->frequency = m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq / DEF_DDS_SIG_CONST_HI;
		
		nMaxCycle = (int)MAX(DEF_EIS_MIN_CYCLE,m_pGlobalVar->mChVar[ch].mFlow.SetDuration/((1.0/pddsclk->frequency)* 32.0 * retPoint)); //최소 싸이클 2
		
		if(retPoint == 0) 
		{
			cycles = DEF_EIS_MIN_CYCLE;
			retPoint = (int)(MAX_EIS_POINT / DEF_EIS_MIN_CYCLE);
		}
		else 
		{
			cycles = (int)(MAX_EIS_POINT / retPoint);
		}

		cycles = MIN(nMaxCycle,cycles);
		
		if(m_pGlobalVar->mChVar[ch].mFlow.setcycle > 0)
		{
			cycles = MIN(cycles,m_pGlobalVar->mChVar[ch].mFlow.setcycle);
		}
		
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
	}
	else
	{
		osrMaxArg = 2;
		nMaxArg = 2; //4cycle 가능.
		
	
		m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq = (uint)(pddssig->frequency * DEF_DDS_SIG_CONST_LOW);
		pddssig->frequency = m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq / DEF_DDS_SIG_CONST_LOW;

		LB = (int)log2((double)MIN_EIS_ADC_MCLK / dMaxFreq);
		UB = (int)log2((double)MAX_EIS_ADC_MCLK / dMaxFreq);
		
		LB = MAX(0, LB-2);
		nArg = MIN(nMaxArg, LB);
		osrArg =MIN(osrMaxArg,(int)((UB - nArg) * 0.25)-1);
		osrArg = MAX(osrArg,0);
		
		retPoint = 	MinCycPoint * (int)pow(2.0,(double)nArg);
		if(retPoint == 0) 
		{
			cycles = DEF_EIS_MIN_CYCLE;
			retPoint = (int)(MAX_EIS_POINT / DEF_EIS_MIN_CYCLE);
		}
		else 
		{
			cycles = (int)(MAX_EIS_POINT / retPoint);
		}
		
		//nMaxCycle = MAX(DEF_EIS_MIN_CYCLE,(int)pow(2,(int)log2(pddssig->frequency * m_pGlobalVar->mChVar[ch].mFlow.SetDuration))); //최소 싸이클 2 
		nMaxCycle = (int)MAX(DEF_EIS_MIN_CYCLE,(int)floor(pddssig->frequency * m_pGlobalVar->mChVar[ch].mFlow.SetDuration));
		
		

		cycles = MIN(nMaxCycle,cycles);
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
		
		retPoint = MAX(retPoint,(int)pow(2,(int)log2(MAX_EIS_POINT/cycles)));
		
		if(m_pGlobalVar->mChVar[ch].mFlow.setcycle > 0)
		{
			cycles = MIN(cycles,m_pGlobalVar->mChVar[ch].mFlow.setcycle);
		}
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
		
		
		//VLP Mode-FLT 10, WB2-01
		m_pGlobalVar->mChVar[ch].flow_dds_clk.req.freq = (uint)(m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq * (double)retPoint * 32.0 * pow(dConstFlt,(double)osrArg)/DEF_DDS_MCLK_RATE_LOW); //128 = 125K/16M //
		pddsclk->frequency =   m_pGlobalVar->mChVar[ch].flow_dds_clk.req.freq / (double)DEF_DDS_CLK_CONST;
		
	}
	
	proc_SetLowMclk(ch, blow); 

	preqcfg->vac_osr = osrArg;
	preqcfg->iac_osr = osrArg;
	
	apply_adc_ac_cfg(ch);
	proc_adc_ac_cfg(ch);
}



void ApplyCalcConfigADC(int ch) //Find OSR and number of points in a cycle
{
	st_zim_eis_status* pStatus = &m_pGlobalVar->mChVar[ch].mChStatInf.eis_status;
	st_zim_dds* pddsclk = &m_pGlobalVar->mChVar[ch].mdevice.dds_clk;
	st_zim_adc_ac_cfg* preqcfg = &m_pGlobalVar->mChVar[ch].mreqdevice.adc_ac.cfg;
	st_zim_dds* pddssig = &m_pGlobalVar->mChVar[ch].mdevice.dds_sig;
	
	
	
	double  dMaxFreq = (double)MIN_EIS_CYC_POINT * 32.0 * pddssig->frequency;
	double  dConstFlt = 2.0;
	
	int nArg,osrArg;
	int LB,UB;
	int nMaxArg,osrMaxArg;
	int retPoint,cycles,nMaxCycle;
	int nPointSubH;
	int MinCycPoint = MIN_EIS_CYC_POINT;
	
	bool blow = true;

	if(m_pGlobalVar->mChVar[ch].mreqdevice.adc_ac.cfg.iac_flt == DEF_FLT_LOWLATENCY) dConstFlt = 4.0;

	m_pGlobalVar->mChVar[ch].mFlow.SetDuration = 1.0;
	if(m_pGlobalVar->mChVar[ch].mChStatInf.TestStatus == DEF_TESTSTATUS_RUNNING)
	{
		if(m_pGlobalVar->mChVar[ch].mTech.type == TECH_QIS)
		{
			if(pddssig->frequency  < 100.0)	
			{
				m_pGlobalVar->mChVar[ch].mFlow.SetDuration = 0.3;
			}
		}
		else if(m_pGlobalVar->mChVar[ch].mTech.type == TECH_DCH)
		{
			m_pGlobalVar->mChVar[ch].mFlow.SetDuration = 0.3;
		}
	}

	pddssig->reset = 0;

	if(pStatus->freq >= DEF_FREQUENCY_SUBHAMONIC)
	{
		blow = false;
		osrArg = 0;
		
		dMaxFreq = (double)MIN_EIS_CYC_POINT_H * 32.0 * pddssig->frequency;
		MinCycPoint = MIN_EIS_CYC_POINT_H;
		retPoint = MIN_EIS_CYC_POINT_H;
		nPointSubH = retPoint  * 32 + 1; 
		
		//MinCycPoint = MIN_EIS_CYC_POINT_H;
		//retPoint  = 32;
		//MinCycPoint = MIN_EIS_CYC_POINT_H;
		//dMaxFreq = (double)retPoint * 32.0 * pStatus->freq;
		//nPointSubH = MAX(floor((dMaxFreq/100000)/retPoint),1) * retPoint  * 32 + 1;
		//nPointSubH = 1025;
		
		pddsclk->frequency = ((pStatus->freq * (double)retPoint) / nPointSubH) * 32.0;
		
		
		m_pGlobalVar->mChVar[ch].flow_dds_clk.req.freq = (uint)ceil((pddsclk->frequency * (double)DEF_DDS_CLK_CONST));
		pddsclk->frequency =   m_pGlobalVar->mChVar[ch].flow_dds_clk.req.freq / (double)DEF_DDS_CLK_CONST;
	
//		(pddsclk->frequency  * nPointSubH) / (32.0 * retPoint)
		m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq = (uint)floor(pStatus->freq * DEF_DDS_SIG_CONST_HI);
		pddssig->frequency = m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq / DEF_DDS_SIG_CONST_HI;
		
		pStatus->freq = pddssig->frequency;

		nMaxCycle = (int)MAX(DEF_EIS_MIN_CYCLE,m_pGlobalVar->mChVar[ch].mFlow.SetDuration/((1.0/pddsclk->frequency)* 32.0 * retPoint)); //최소 싸이클 2 
		
		if(retPoint == 0) 
		{
			cycles = DEF_EIS_MIN_CYCLE;
			retPoint = (int)(MAX_EIS_POINT/cycles);
		}
		else 
		{
			cycles = (int)(MAX_EIS_POINT / retPoint);
		}
		cycles = MIN(nMaxCycle,cycles);
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
		
		if(m_pGlobalVar->mChVar[ch].mFlow.setcycle > 0)
		{
			cycles = MIN(cycles,m_pGlobalVar->mChVar[ch].mFlow.setcycle);
		}
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
	}
	else
	{
		m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq = (uint)(pStatus->freq * DEF_DDS_SIG_CONST_LOW);
		pddssig->frequency = m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq / DEF_DDS_SIG_CONST_LOW;
		pStatus->freq = pddssig->frequency;
		
		dMaxFreq = (double)MIN_EIS_CYC_POINT * 32.0 * pddssig->frequency;
		
		osrMaxArg = 2;
		nMaxArg = 2; //4cycle 가능.

		LB = (int)log2((double)MIN_EIS_ADC_MCLK / dMaxFreq);
		UB = (int)log2((double)MAX_EIS_ADC_MCLK / dMaxFreq);
		
		LB = MAX(0, LB-2);
		nArg = MIN(nMaxArg, LB);
		osrArg =MIN(osrMaxArg,(int)((UB - nArg) * 0.25)-1);
		osrArg = MAX(osrArg,0);
		
		retPoint = 	MinCycPoint * (int)pow(2.0,(double)nArg);
		
		
		//nMaxCycle = MAX(2,(int)pow(2,(int)log2(pddssig->frequency * 6))); //최소 싸이클 2 , 최대시간 6초
		//nMaxCycle = (int)MAX(MinCycleCnt,(int)pow(2,pddssig->frequency * m_pGlobalVar->mChVar[ch].mFlow.SetDuration)));
		
		nMaxCycle = (int)MAX(DEF_EIS_MIN_CYCLE,(int)floor(pStatus->freq * m_pGlobalVar->mChVar[ch].mFlow.SetDuration));

		if(retPoint == 0) 
		{
			cycles = DEF_EIS_MIN_CYCLE;
			retPoint = (int)(MAX_EIS_POINT/cycles);
		}
		else cycles = (int)(MAX_EIS_POINT / retPoint);
		
		cycles = MIN(nMaxCycle,cycles);
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);

		retPoint = MAX(retPoint,(int)pow(2,(int)log2(MAX_EIS_POINT/cycles)));
		
		if(m_pGlobalVar->mChVar[ch].mFlow.setcycle > 0)
		{
			cycles = MIN(cycles,m_pGlobalVar->mChVar[ch].mFlow.setcycle);
		}
		
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
		
		//VLP Mode-FLT 10, WB2-01
		m_pGlobalVar->mChVar[ch].flow_dds_clk.req.freq = (uint)(m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq * (double)retPoint * 32.0 * pow(dConstFlt,(double)osrArg)/DEF_DDS_MCLK_RATE_LOW); //128 = 125K/16M //
		pddsclk->frequency =   m_pGlobalVar->mChVar[ch].flow_dds_clk.req.freq / (double)DEF_DDS_CLK_CONST;
		
	}

	proc_SetLowMclk(ch, blow); 

	pStatus->cycle = cycles;
	pStatus->cycpoint = retPoint;
		
	m_pGlobalVar->mChVar[ch].meis.eis_raw_new.Ns = pStatus->cycpoint * pStatus->cycle;
	pStatus->totaldatacnt = pStatus->cycpoint * pStatus->cycle;
	pStatus->WorkDatacnt = 0;
	pStatus->LoadDatacnt = 0;
	
	
	m_pGlobalVar->mChVar[ch].mdevice.eis.points = pStatus->totaldatacnt;
	m_pGlobalVar->mChVar[ch].mChStatInf.RealSkip = MAX((pStatus->cycpoint / 32),1);
	

	preqcfg->vac_osr = osrArg;
	preqcfg->iac_osr = osrArg;
	
	apply_adc_ac_cfg(ch);
	proc_adc_ac_cfg(ch);
	
}

inline void proc_eis_SineForDelay(int ch)
{
	ushort buf;
	

	m_pGlobalVar->mChVar[ch].mdevice.dds_sig.frequency = DEF_SINECTRL_FREQ;
	m_pGlobalVar->mChVar[ch].mdevice.dds_sig.Phase = DEF_SINECTRL_PHASE;

	m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq =  (uint)(m_pGlobalVar->mChVar[ch].mdevice.dds_sig.frequency * (double)DEF_DDS_SIG_CONST_LOW);
	m_pGlobalVar->mChVar[ch].flow_dds_sig.req.phase = (uint)(m_pGlobalVar->mChVar[ch].mdevice.dds_sig.Phase * (double)DEF_DDS_PHASE_CONST);
	
	ApplyCalcConfigADCForDelay(ch);

	m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl = DDS_SIG_RESET;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq  & 0x3FFF);	
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl = DDS_SIG_RESET_H;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq  >> 14) & 0x3FFF);
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(m_pGlobalVar->mChVar[ch].flow_dds_sig.req.phase & 0xFFF);
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	m_pGlobalVar->mChVar[ch].flow_dds_sig.stat.phase  =  m_pGlobalVar->mChVar[ch].flow_dds_sig.req.phase;
	

	m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRL;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[ch].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[ch].flow_dds_clk.req.ctrl) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mChVar[ch].flow_dds_clk.req.freq & 0x3FFF);		
	if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[ch].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRLH;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[ch].flow_dds_clk.req.ctrl) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mChVar[ch].flow_dds_clk.req.freq >> 14) & 0x3FFF);
	if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[ch].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[ch].flow_dds_clk.req.ctrl) == _ERROR)
	{
		return;
	}
}

inline void proc_eis_init(int ch)
{
	ushort buf;

	st_zim_eis_status* pStatus = &m_pGlobalVar->mChVar[ch].mChStatInf.eis_status;
	st_zim_dds* pddssig = &m_pGlobalVar->mChVar[ch].mdevice.dds_sig;

	pddssig->Phase = DEF_SINECTRL_PHASE;
	m_pGlobalVar->mChVar[ch].flow_dds_sig.req.phase = (uint)(pddssig->Phase * (double)DEF_DDS_PHASE_CONST);
	
	ApplyCalcConfigADC(ch);
	
	m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRL;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq & 0x3FFF);	
	if(ICE_write_16bits(ch,ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRLH;
	if(ICE_write_16bits(ch,ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mChVar[ch].flow_dds_sig.req.freq >> 14) & 0x3FFF);
	if(ICE_write_16bits(ch,ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRL;
	if(ICE_write_16bits(ch,ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl) == _ERROR)
	{
		return;
	}
	/*
	buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(m_pGlobalVar->mChVar[ch].flow_dds_sig.req.phase & 0xFFF);
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	m_pGlobalVar->mChVar[ch].flow_dds_sig.stat.phase  =  m_pGlobalVar->mChVar[ch].flow_dds_sig.req.phase;
	
	
	m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRL;
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl) == _ERROR)
	{
		return;
	}
	*/

	
	m_pGlobalVar->mChVar[ch].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[ch].flow_dds_clk.req.ctrl) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mChVar[ch].flow_dds_clk.req.freq & 0x3FFF);		
	if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[ch].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRLH;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[ch].flow_dds_clk.req.ctrl) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mChVar[ch].flow_dds_clk.req.freq >> 14) & 0x3FFF);
	if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[ch].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[ch].flow_dds_clk.req.ctrl) == _ERROR)
	{
		return;
	}
	
	if(ICE_write_16bits(ch, ICE_CMD_EIS_IDX, 0x0000) == _ERROR)
	{
		return;
	}
	
	if(ICE_write_16bits(ch, ICE_CMD_EIS_SETPNTS, m_pGlobalVar->mChVar[ch].mdevice.eis.points) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)(m_pGlobalVar->mChVar[ch].mFlow.skipcycle * (double)pStatus->cycpoint);
	
	if(ICE_write_16bits(ch, ICE_CMD_EIS_SKIPCNT, buf) == _ERROR)
	{
		return;
	}
}

inline void proc_eis_start(int ch)
{

	stChStatusInf* pChStatus = &m_pGlobalVar->mChVar[ch].mChStatInf;
	
	pChStatus->Vdc = m_pGlobalVar->mChVar[ch].mdevice.adc_vdc.value;
	pChStatus->Temperature = m_pGlobalVar->mChVar[ch].mdevice.adc_rtd.data.Tvalue;
	
	m_pGlobalVar->mChVar[ch].mdevice.eis.config = DEF_CFG_EIS_START;
	
	if(ICE_write_byte(ch, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[ch].mdevice.eis.config) == _ERROR)
	{
		return;
	}
	
}

void proc_eis_reset(int ch)
{
	m_pGlobalVar->mChVar[ch].mdevice.eis.config = DEF_CFG_EIS_RESET;
	
	if(ICE_write_byte(ch, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[ch].mdevice.eis.config) == _ERROR)
	{
		return;
	}
	m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.status = DEF_EIS_STATUS_NONE;
}

inline void proc_eis_stop(int ch)
{
	m_pGlobalVar->mChVar[ch].mdevice.eis.config = DEF_CFG_EIS_STOP | DEF_CFG_EIS_START;
	
	if(ICE_write_byte(ch, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[ch].mdevice.eis.config) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[ch].mdevice.eis.config = DEF_CFG_EIS_RESET;
	
	if(ICE_write_byte(ch, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[ch].mdevice.eis.config) == _ERROR)
	{
		return;
	}
}

inline void proc_eis_chk_ing(int ch)
{
	ushort buf;
	ushort i;
	ushort j;
	int tmpi;
	int tmpv;
	ushort rawdatacnt;
	
	stChStatusInf* pChStatus = &m_pGlobalVar->mChVar[ch].mChStatInf;

	if(ICE_read_16bits(ch, ICE_CMD_EIS_POINTS, &buf) == _ERROR)
	{
		return;
	}
	rawdatacnt = buf & 0x0FFF;
	if(pChStatus->eis_status.LoadDatacnt < rawdatacnt)
	{
		pChStatus->eis_status.WorkDatacnt = pChStatus->eis_status.LoadDatacnt + MIN(10,(rawdatacnt - pChStatus->eis_status.LoadDatacnt));
	}
	else
	{
		pChStatus->eis_status.WorkDatacnt = rawdatacnt;
		if((buf & 0x8000) == 0x8000)
		{
			if(m_pGlobalVar->mChVar[ch].mTech.type == TECH_DCH)
			{
				
				proc_mon_dcControl(ch);

				m_pGlobalVar->mChVar[ch].mFlow.m_MsFlowdelayLimit = 2000;
				m_pGlobalVar->mChVar[ch].mFlow.m_MsFlowdelayStamp = 0;

				proc_eis_data_conv(ch);
				
				m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.status = DEF_EIS_STATUS_FIN;
			}
			else
			{
				pChStatus->eis_status.status = DEF_EIS_STATUS_FFT;
			}
			return;
		}
	}

	//pChStatus->eis_status.WorkDatacnt = buf & 0x0FFF;

	if(pChStatus->eis_status.LoadDatacnt < pChStatus->eis_status.WorkDatacnt)
	{
		for(i=pChStatus->eis_status.LoadDatacnt; i< pChStatus->eis_status.WorkDatacnt; i++)
		{
			if(ICE_read_adcDataSet(ch, ICE_CMD_EIS_DATA,&tmpi,&tmpv) == _ERROR)
			{
				return;
			}

			m_pGlobalVar->mChVar[ch].meis.eis_raw_new.raw_adc[i].iac = tmpi;
			m_pGlobalVar->mChVar[ch].meis.eis_raw_new.raw_adc[i].vac = tmpv;
			
			m_pGlobalVar->mChVar[ch].meis.eis_raw_new.raw_val[i].iac = (double)tmpi * m_pSysConfig->mZimCfg[ch].ranges.iac_rng[pChStatus->Iac_in_rngno].factor * (-1.0);
			
			
			m_pGlobalVar->mChVar[ch].meis.eis_raw_new.raw_val[i].vac = (double)tmpv * m_pSysConfig->mZimCfg[ch].ranges.vac_rng.factor;
			
			m_pGlobalVar->mChVar[ch].meis.eis_raw_new.raw_val[i].vac = m_pGlobalVar->mChVar[ch].meis.eis_raw_new.raw_val[i].vac
																	* m_pSysConfig->mZimCfg[ch].ranges.vac_rng.gain 
																	+ m_pSysConfig->mZimCfg[ch].ranges.vac_rng.offset;
			
		
			if(m_pGlobalVar->mChVar[ch].mChStatInf.RealSkip == 0) j = 0;
			else j = (i / m_pGlobalVar->mChVar[ch].mChStatInf.RealSkip) % MAX_EIS_RT_RAW_POINT;
			pChStatus->eis_status.Real_val[j].iac = m_pGlobalVar->mChVar[ch].meis.eis_raw_new.raw_val[i].iac;
			pChStatus->eis_status.Real_val[j].vac = m_pGlobalVar->mChVar[ch].meis.eis_raw_new.raw_val[i].vac;
		}
		pChStatus->eis_status.LoadDatacnt = pChStatus->eis_status.WorkDatacnt;
	}

}


bool proc_read_vdc_raw(int ch)
{
	INT_32 tmp;
	double value;

	if(ICE_read_adc24bit(ch, ICE_CMD_VDCADC_VAL, &tmp) == _ERROR)
	{
		return false;
	}
	value = (double)tmp
			* m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[m_pGlobalVar->mChVar[ch].mChStatInf.Vdc_rngno].factor;
	
	SlopeChkRawdata[m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.LoadDatacnt] 
		    = value 
			* m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[m_pGlobalVar->mChVar[ch].mChStatInf.Vdc_rngno].gain 
			+ m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[m_pGlobalVar->mChVar[ch].mChStatInf.Vdc_rngno].offset;
	
	m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.LoadDatacnt ++;
	
	if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.LoadDatacnt >= DEF_MAX_SLOPECHECK_RAW)
	{
		if(StationaryTest(SlopeChkRawdata,m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.LoadDatacnt,5) == true)
		{
			return true;
		}
		m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.LoadDatacnt = 0;
		m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.WorkDatacnt = DEF_MAX_SLOPECHECK_RAW;
	}
	return false;
}

inline void proc_eis_ControlFail(int ch)
{
	m_pGlobalVar->mChVar[ch].mChStatInf.LastError = DEF_LAST_ERROR_CONFAIL;
	m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.status = DEF_EIS_STATUS_EISSTOP;
	m_pGlobalVar->mChVar[ch].mFlow.m_MsFlowdelayLimit = 10; 
	m_pGlobalVar->mChVar[ch].mFlow.m_MsFlowdelayStamp = 0;
}

bool proc_eis_dcoff(int ch)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];

	pch->mChStatInf.BiasOn = 0;
	pch->flow_dds_sig.req.ctrl = DDS_SIG_PWDN; // Ctrl 0V;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,pch->flow_dds_sig.req.ctrl) == _ERROR)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	return true;
}

inline bool proc_eis_dcon(int ch)
{
	ushort buf;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	pch->mChStatInf.BiasOn = 1;
	
	pch->flow_dds_sig.req.ctrl = DDS_SIG_RESET;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,pch->flow_dds_sig.req.ctrl) == _ERROR)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	pch->mreqdevice.dds_sig.Phase = DEF_SINECTRL_PHASE;
	pch->mdevice.dds_sig.Phase = DEF_SINECTRL_PHASE;
    pch->flow_dds_sig.req.phase = (uint)(pch->mdevice.dds_sig.Phase * (double)DEF_DDS_PHASE_CONST);
	buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(pch->flow_dds_sig.req.phase & 0xFFF);
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	m_pGlobalVar->mChVar[ch].flow_dds_sig.stat.phase  =  m_pGlobalVar->mChVar[ch].flow_dds_sig.req.phase;
	
	return true;
}

bool proc_writedata(int ch)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	stDefTestData* pdata = m_pTestData[ch] + pch->mChStatInf.eis_status.rescount;
	int ierr = 0;
	if(pch->mTech.type == TECH_MON || pch->mTech.type == TECH_DCH)
	{
		ierr = pch->mChStatInf.TaskTimeStamp % pch->mFlow.m_MsSmplLimit;
	}

	if((pch->mChStatInf.eis_status.rescount+1) > SDRAM_DATA_COUNT)
	{
		return false;
	}
	
	pdata->mType = 0xF;
	pdata->TestTime = (pch->mChStatInf.RunTimeStamp - ierr) / 1000.0;
	pdata->nCycle = pch->mChStatInf.CycleNo;
	pdata->CycleTime = (pch->mChStatInf.CycleTimeStamp - ierr) / 1000.0;
	pdata->nTaskNo = pch->mChStatInf.TaskNo;
	pdata->TaskTime = (pch->mChStatInf.TaskTimeStamp - ierr) / 1000.0;

	pdata->RangeV = m_pSysConfig->mZimCfg[ch].ranges.vdc_rng[pch->mChStatInf.Vdc_rngno].realmax;
	
	pdata->Veoc = pch->mChStatInf.Veoc;
	pdata->Vdc = pch->mChStatInf.Vdc;
	
	if((pch->mChStatInf.Iac_rngno % 2) == 0)
	{
		pdata->RangeA = m_pSysConfig->mZimCfg[ch].ranges.iac_rng[pch->mChStatInf.Iac_in_rngno].realmax;
	}
	else
	{
		pdata->RangeA = m_pSysConfig->mZimCfg[ch].ranges.iac_rng[pch->mChStatInf.Iac_in_rngno].realmax * 0.2;	
	}

	pdata->Idc = pch->mChStatInf.Idc;  
	
	
	pdata->Temperature = pch->mChStatInf.Temperature;
	
	if(pch->mTech.type == TECH_MON)
	{
		pdata->fFreq = 0.0;			
		pdata->Zre = 0.0;
		pdata->Zim = 0.0;
	}
	else
	{
		pdata->fFreq = pch->mChStatInf.eis_status.freq;
		pdata->Zre = pch->mChStatInf.eis_status.zdata.real;
		pdata->Zim = pch->mChStatInf.eis_status.zdata.img;
	}
	pch->mChStatInf.eis_status.rescount ++;
	return  true;
}

inline void proc_eisflow_dcon(int ch)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];

	if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp && pch->mFlow.m_MsFlowdelayStamp < 10000)
	{
		pch->flow_dds_sig.req.ctrl = DDS_SIG_RESET;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,pch->flow_dds_sig.req.ctrl) == _ERROR)
		{
			pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
			return;
		}
		
		pch->mChStatInf.BiasOn = 1;
		pch->mFlow.m_MsFlowdelayStamp = 10000;
		pch->mFlow.m_MsFlowdelayLimit = 11000; 
	}
	else if( pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp && pch->mFlow.m_MsFlowdelayStamp < 20000)
	{
		proc_eis_SineForDelay(ch);//CHECK // proc_eis_dcon(ch);
		pch->mFlow.m_MsFlowdelayStamp = 20000;
		pch->mFlow.m_MsFlowdelayLimit = 21000; 
	}
	else if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp && pch->mFlow.m_MsFlowdelayStamp < 30000)
	{
		if(ChkLowLimit(ch) == true) 
		{
			pch->bChkSlope = 0;
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_ONDELAY;
			pch->mFlow.m_MsFlowdelayStamp = 0;
			pch->mFlow.m_MsFlowdelayLimit = 1000; 
			pch->mFlow.OndelayTimeStamp = 0;
		}
		else
		{
			pch->mFlow.m_MsFlowdelayStamp = 20000;
		}
	}
}

/*
inline void proc_mon_chkslope(int ch)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	if(pch->mFlow.ondelaystable == 1)
	{
		if(pch->bChkSlope == 0)
		{
			if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
			{
				pch->bChkSlope = 1;
				pch->mChStatInf.eis_status.WorkDatacnt = DEF_MAX_SLOPECHECK_RAW;
				pch->mChStatInf.eis_status.LoadDatacnt = 0;
				pch->m_msSlop = 0; 
			}
		}
		else if(pch->bChkSlope == 1)
		{
			if(pch->m_msSlop >= DEF_MAX_SLOPECHECK_TICK)
			{
				if(proc_read_vdc_raw(ch) == true)
				{
					pch->bChkSlope = 0;
					pch->mFlow.m_MsFlowdelayLimit = 10; 
					pch->mFlow.m_MsFlowdelayStamp = 0;
					pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_SAMPLE;
					//pch->mChStatInf.RunTimeStamp = 0;
					pch->mChStatInf.TaskTimeStamp = 0;
					//pch->mChStatInf.CycleTimeStamp = 0;
					pch->mFlow.m_MsDurCount = 0;
					pch->mFlow.m_MsDurCount1 = 0;
				}
				pch->m_msSlop = 0;
			}
		}
	}			
}
*/
inline void proc_eis_chkslope(int ch)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	if(pch->mFlow.ondelaystable == 1)
	{
		if(pch->bChkSlope == 0)
		{
			if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
			{
				pch->bChkSlope = 1;
				pch->mChStatInf.eis_status.WorkDatacnt = DEF_MAX_SLOPECHECK_RAW;
				pch->mChStatInf.eis_status.LoadDatacnt = 0;
				pch->m_msSlop = 0; 
			}
		}
		else if(pch->bChkSlope == 1)
		{
			if(pch->m_msSlop >= DEF_MAX_SLOPECHECK_TICK)
			{
				if(proc_read_vdc_raw(ch) == true)
				{
					pch->bChkSlope = 0;
					pch->mFlow.m_MsFlowdelayLimit = 10; 
					pch->mFlow.m_MsFlowdelayStamp = 0;
					pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_EIS_INIT;
				}
				pch->m_msSlop = 0;
			}
		}
	}			
}

bool proc_eis_main(int ch)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	ushort buf;
	double dfreq;
	
	if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_BEGIN)
	{
//		proc_power_VAC(ch, true);
		pch->mChStatInf.BiasOn = 0;
		dfreq = GetNextFreq(ch,&buf);
		if(dfreq == 0.0)
		{
			pch->mChStatInf.LastError = DEF_LAST_ERROR_ERRSCH;
			return false;
		}
		
		pch->mChStatInf.eis_status.freq = dfreq;
		
		proc_power_VAC(ch, true);
		
		pch->mChStatInf.RealSkip = 1;
		pch->mChStatInf.DispFreq = pch->mChStatInf.eis_status.freq;
		pch->mChStatInf.DispMag = 0.0;
		pch->mChStatInf.DispPhase = 0.0;
		
		pch->bChkSlope = 0;
		
		memset(pch->mChStatInf.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
		memcpy(&pch->meis.eis_raw, &pch->meis.eis_raw_new,sizeof(st_zim_eis_raw));
		memset(&pch->meis.eis_raw_new, 0x0,sizeof(st_zim_eis_raw));
		
		pch->meis.eis_raw.freq = pch->mChStatInf.eis_status.freq;
		pch->meis.eis_raw.Ns = pch->mChStatInf.eis_status.totaldatacnt;
		
		pch->flow_dds_sig.req.ctrl = DDS_SIG_PWDN; // DDS_SIG_RESET;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,pch->flow_dds_sig.req.ctrl) == _ERROR)
		{
			pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
			return false;
		}
				
		pch->flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
		if(ICE_write_16bits(ch, ICE_CMD_DDS_CLK,pch->flow_dds_clk.req.ctrl) == _ERROR)
		{
			pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
			return false;
		}
		
		pch->mdevice.eis.config = DEF_CFG_EIS_RESET;
		if(ICE_write_byte(ch, ICE_CMD_EIS_CFG, (UNS_8)pch->mdevice.eis.config) == _ERROR)
		{
			pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
			return false;
		}
		if(pch->mChStatInf.LoadOn == 0)
		{
			if(pch->mChStatInf.BiasOn == 1)
			{
				proc_eis_dcoff(ch);
			}
		}
		
		pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_LOADON;
		pch->mFlow.m_MsFlowdelayLimit = 50; 
		if(m_pGlobalVar->mChVar[ch].mTech.type == TECH_QIS)
		{
			pch->mFlow.m_MsFlowdelayLimit = 0; 
		}
		
		pch->mFlow.m_MsFlowdelayStamp = 0;
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_LOADON)
	{
		if(pch->mChStatInf.LoadOn == 0)
		{
			if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
			{
				proc_eis_LoadOn(ch, 1);
				pch->mFlow.m_MsFlowdelayStamp = 0;
				pch->mFlow.m_MsFlowdelayLimit = pch->mFlow.m_MsFlowdelayStamp + 100; 
				if(m_pGlobalVar->mChVar[ch].mTech.type == TECH_QIS)
				{
					pch->mFlow.m_MsFlowdelayLimit = 50; 
				}
				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_DCON;
			}
		}
		else
		{
			pch->mFlow.m_MsFlowdelayStamp = 0;
			pch->mFlow.m_MsFlowdelayLimit = 0; 
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_DCON;
			pch->mFlow.m_MsFlowdelayStamp = 0;
		}
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_DCON)
	{
		if(10000 <= pch->mFlow.OndelayTimeStamp) 
		{
			pch->mChStatInf.LastError = DEF_LAST_ERROR_VACSTABLE;
			return false;
		}
		else
		{
			if(pch->mChStatInf.BiasOn == 1)
			{
				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_ONDELAY;
				pch->mFlow.m_MsFlowdelayLimit = 0; 
				pch->mFlow.m_MsFlowdelayStamp = 0;
				pch->mFlow.OndelayTimeStamp = 0;
			}
			else
			{
				proc_eisflow_dcon(ch);
				
			}
		}
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_ONDELAY)
	{
		if(pch->mFlow.m_MsOndelayLimit <= pch->mFlow.OndelayTimeStamp)
		{
			pch->mFlow.m_MsFlowdelayLimit = 0; 
			pch->mFlow.m_MsFlowdelayStamp = 0;
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_EIS_INIT;
		}
		else
		{
			proc_eis_chkslope(ch);
		}
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_EIS_INIT)
	{
		if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
		{ 
			proc_adc_vdc_data(ch);
			
			proc_eis_init(ch);

			pch->meis.eis_raw.freq = pch->mChStatInf.eis_status.freq;
			pch->meis.eis_raw.Ns = pch->mChStatInf.eis_status.totaldatacnt;
		
		 	pch->mdevice.eis.config = 0;
			if(ICE_write_byte(ch, ICE_CMD_EIS_CFG, (UNS_8)pch->mdevice.eis.config) == _ERROR)
			{
				pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
				return false;
			}
			
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_RDY;
			if(m_pGlobalVar->mChVar[ch].mTech.type == TECH_QIS)
			{
				pch->mFlow.m_MsFlowdelayLimit = 200; 
			}
			else if(m_pGlobalVar->mChVar[ch].mTech.type == TECH_QIS)
			{
				pch->mFlow.m_MsFlowdelayLimit = 200; 
			}
			else
			{
				pch->mFlow.m_MsFlowdelayLimit = MIN(2000, MAX(200,(int)(500 / pch->mdevice.dds_sig.frequency)));
			}
			pch->mFlow.m_MsFlowdelayStamp = 0;

		}
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_RDY)
	{
		
		if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
		{
			proc_eis_start(ch);
			pch->mFlow.m_MsDurStamp = 0;
			pch->mFlow.m_MsFlowdelayLimit = 1; 
			pch->mFlow.m_MsFlowdelayStamp = 0;
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_ING;
		}
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_ING)
	{
		if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
		{
			pch->mFlow.m_MsFlowdelayLimit = 1; 
			pch->mFlow.m_MsFlowdelayStamp = 0;
			proc_eis_chk_ing(ch);
		}
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_FFT)
	{
		if(proc_eis_data_conv(ch) == false)
		{
			pch->mChStatInf.LastError = DEF_LAST_ERROR_FFT;
			return false;
		}

		if(proc_writedata(ch) == false)
		{
			pch->mChStatInf.LastError = DEF_LAST_ERROR_MEMORY;
			return false;
		}

		if(proc_eis_chk_Control(ch, 10.0,pch->meis.eis_raw_new.zdata_iac.mag) == true)
		{
			buf = 0;
			dfreq = GetNextFreq(ch,&buf);
			
			pch->mFlow.m_MsFlowdelayLimit = 10; 
			if(m_pGlobalVar->mChVar[ch].mTech.type == TECH_QIS) pch->mFlow.m_MsFlowdelayLimit = 0; 
			if(dfreq == 0.0)
			{				
				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_EISSTOP;
				pch->mFlow.m_MsFlowdelayStamp = 0;
				return true;
			}
			
			pch->mChStatInf.NextCycleNo = pch->mFlow.m_loopcnt;
			pch->mChStatInf.eis_status.freq = dfreq;
			
			if(pch->mFlow.timeproc == 1 && buf == 1)
			{
				if(pch->mChStatInf.RunTimeStamp >= pch->mFlow.m_MsEndTimeLimit)
				{
					pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_EISSTOP;
					pch->mFlow.m_MsFlowdelayStamp = 0;
					return true;
				}
				if(pch->mFlow.celloffwait == 1)
				{
					proc_eis_dcoff(ch);
					proc_eis_LoadOn(ch, 0);
				}
				else 
				{
					proc_eis_dcon(ch);
				}

				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_WAIT;
				return true;
			}

			
			memset(pch->mChStatInf.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
			memcpy(&pch->meis.eis_raw, &pch->meis.eis_raw_new,sizeof(st_zim_eis_raw));
			memset(&pch->meis.eis_raw_new, 0x0,sizeof(st_zim_eis_raw));
			
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_EIS_INIT;
			pch->mFlow.m_MsFlowdelayStamp = 0;
		}
		else
		{
			proc_eis_ControlFail(ch);
		}
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_WAIT)
	{
		if(pch->mChStatInf.TaskTimeStamp >= pch->mFlow.m_MsEndTimeLimit)
		{
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_EISSTOP;
			pch->mFlow.m_MsFlowdelayLimit = 10; 
			pch->mFlow.m_MsFlowdelayStamp = 0;
			return true;
		}
		else
		{
			if(pch->mFlow.m_MsDurLimit <= pch->mFlow.m_MsDurStamp)
			{
				memset(pch->mChStatInf.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
				memcpy(&pch->meis.eis_raw, &pch->meis.eis_raw_new,sizeof(st_zim_eis_raw));
				memset(&pch->meis.eis_raw_new, 0x0,sizeof(st_zim_eis_raw));
				
				if(pch->mFlow.celloffwait == 1)
				{
					pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_LOADON;
				}
				else 
				{
					pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_EIS_INIT;
				}
				pch->mFlow.m_MsFlowdelayLimit = 0; 
				pch->mFlow.m_MsFlowdelayStamp = 0;
			}
		}
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_EISSTOP)
	{
		proc_eis_dcoff(ch);
		proc_eis_stop(ch);
		
		pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_LOADOFF;
		pch->mFlow.m_MsFlowdelayLimit = 100; 
		pch->mFlow.m_MsFlowdelayStamp = 0;
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_LOADOFF)
	{
		
		if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
		{
			proc_eis_LoadOn(ch,0);
			pch->mFlow.m_MsFlowdelayLimit = 100; 
			pch->mFlow.m_MsFlowdelayStamp = 0;
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_FIN;
		}
	}		
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_FIN)
	{
		
		if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
		{
			if(m_pGlobalVar->mChVar[ch].mTech.type == TECH_DCH)
			{
				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_DCHSAMPLE;
			}
			else
			{
				proc_power_VAC(ch, false);
				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_END;
				//m_pGlobalVar->mChVar[ch].mChStatInf.NextTaskNo = 1;
			}
		}
		else
		{
			if(m_pGlobalVar->mChVar[ch].mTech.type == TECH_DCH)
			{
				if(m_pGlobalVar->m_msRefreshDC > 50)
				{
					m_pGlobalVar->m_msRefreshDC = 0;

					buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(m_pGlobalVar->mChVar[ch].flow_dds_sig.req.phase & 0xFFF);
					if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
					{
						return false;
					}
				}
			}
		}
	}
	return true;
}



void Flow_monitor(int ch)
{
	bool bWrite = false;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	uint dur = pch->mChStatInf.TaskTimeStamp - pch->mFlow.m_MsDurCount;
	
	if(pch->mFlow.m_MsSmplLimit <= dur)
	{
		pch->mFlow.m_MsDurCount = pch->mChStatInf.TaskTimeStamp - (pch->mChStatInf.TaskTimeStamp % pch->mFlow.m_MsSmplLimit);
		proc_adc_vdc_data(ch);
		if(proc_writedata(ch) == false)
		{
			pch->mChStatInf.LastError = DEF_LAST_ERROR_MEMORY;
			proc_stop_test(ch, pch->mChStatInf.LastError);
			return;
		}
		bWrite = true;
	}
	
	if(pch->mChStatInf.TaskTimeStamp >= pch->mFlow.m_MsEndTimeLimit)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_AUTOSTOP;
		if(bWrite == false)
		{
			proc_adc_vdc_data(ch);
			if(proc_writedata(ch) == false)
			{
				pch->mChStatInf.LastError = DEF_LAST_ERROR_MEMORY;
			}
		}
		proc_stop_test(ch, pch->mChStatInf.LastError);
	}
	
}

void Flow_discharger(int ch)
{
	ushort buf;
	bool bWrite = false;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	st_zim_dds_flow* pflowddssig = &m_pGlobalVar->mChVar[ch].flow_dds_sig;

	if(m_pGlobalVar->m_msRefreshDC > 50)
	{
		m_pGlobalVar->m_msRefreshDC = 0;

		buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(pflowddssig->req.phase & 0xFFF);
		if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
	}


	if(pch->mFlow.m_MsSmplLimit <= (pch->mChStatInf.TaskTimeStamp - pch->mFlow.m_MsDurCount))
	{
		
		pch->mFlow.m_MsDurCount = pch->mChStatInf.TaskTimeStamp - (pch->mChStatInf.TaskTimeStamp % pch->mFlow.m_MsSmplLimit);
		proc_adc_vdc_data(ch);
		if(proc_writedata(ch) == false)
		{
			pch->mChStatInf.LastError = DEF_LAST_ERROR_MEMORY;
			proc_stop_test(ch, pch->mChStatInf.LastError);
			return;
		}
		bWrite = true;
	}


	if(pch->mChStatInf.Vdc <= pch->mFlow.CutoffV)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_AUTOSTOP;
		if(bWrite == false)
		{
			proc_adc_vdc_data(ch);
			if(proc_writedata(ch) == false)
			{
				pch->mChStatInf.LastError = DEF_LAST_ERROR_MEMORY;
			}
		}
		proc_stop_test(ch, pch->mChStatInf.LastError);
		return;
	}
	
	if(pch->mTech.tech.dch.useir == 1)
	{
		if(pch->mFlow.m_MsDurLimit <= (pch->mChStatInf.TaskTimeStamp - pch->mFlow.m_MsDurCount1))
		{
			pch->mFlow.m_MsDurCount1 = pch->mChStatInf.TaskTimeStamp - (pch->mChStatInf.TaskTimeStamp % pch->mFlow.m_MsDurLimit);
			pch->mChStatInf.eis_status.freq  = GetNextFreq(ch,&buf);
			if(pch->mChStatInf.eis_status.freq  == 0.0)
			{
				pch->mChStatInf.LastError = DEF_LAST_ERROR_ERRSCH;
				proc_stop_test(ch, pch->mChStatInf.LastError);
				return;
			}
			memset(pch->mChStatInf.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
			memcpy(&pch->meis.eis_raw, &pch->meis.eis_raw_new,sizeof(st_zim_eis_raw));
			memset(&pch->meis.eis_raw_new, 0x0,sizeof(st_zim_eis_raw));
			
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_EIS_INIT;
			pch->mFlow.m_MsFlowdelayLimit = 0;
			pch->mFlow.m_MsFlowdelayStamp = 0;
		}
	}

}



void proc_stop_test(int ch, int errstat)
{

	m_pGlobalVar->mChVar[ch].Start = 0;
	m_pGlobalVar->mChVar[ch].mChStatInf.TaskNo = 0;
	m_pGlobalVar->mChVar[ch].mChStatInf.NextTaskNo = 0;
	m_pGlobalVar->mChVar[ch].mChStatInf.CycleNo = 0;
	m_pGlobalVar->mChVar[ch].mChStatInf.NextCycleNo = 0;
	m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.status = DEF_EIS_STATUS_NONE;
	if(errstat == DEF_LAST_ERROR_AUTOSTOP) m_pGlobalVar->mChVar[ch].mChStatInf.TestStatus = DEF_TESTSTATUS_FINISH;
	else m_pGlobalVar->mChVar[ch].mChStatInf.TestStatus = DEF_TESTSTATUS_STOP;
	m_pGlobalVar->mChVar[ch].mChStatInf.LastError  = errstat;
	m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus  = errstat;

	m_pGlobalVar->mChVar[ch].mFlow.m_MsFlowdelayLimit = 10; 
	m_pGlobalVar->mChVar[ch].mFlow.m_MsFlowdelayStamp = 0;
	
	m_pGlobalVar->mChVar[ch].CmdStop = 0;
	
	proc_eis_dcoff(ch);
	
	proc_eis_stop(ch);
	
	proc_eis_LoadOn(ch,0);
	
	proc_power_VAC(ch, false);
	
}




inline bool ChkDeviceErr(int ch)
{
	if(m_pGlobalVar->mChVar[ch].mdevice.adc_ac.data.iac.adcval == 0 
		&& m_pGlobalVar->mChVar[ch].mdevice.adc_vdc.adcval == 0
		&& m_pGlobalVar->mChVar[ch].mdevice.adc_ac.data.vac.adcval == 0 
		&& (m_pGlobalVar->mChVar[ch].mdevice.adc_rtd.data.adcval == 0 && m_pGlobalVar->mChVar[ch].mdevice.adc_rtd.data.fault == 0)) return true;
	
	return false;
}

bool chkTestCondition(int ch)
{
	bool bret = true;
	
	if(ChkSysCalVars(ch) == false) //warning
	{
		m_pGlobalVar->mChVar[ch].mChStatInf.TestStatus |= DEF_TESTSTATUS_NOTCAL;
	}
	else
	{
		m_pGlobalVar->mChVar[ch].mChStatInf.TestStatus &= ~DEF_TESTSTATUS_NOTCAL;
	}
	
	if(m_pGlobalVar->mChVar[ch].Start == 1) 
	{
		if(m_pGlobalVar->mChVar[ch].mdevice.adc_vdc.value < -2.0)
		{
			m_pGlobalVar->mChVar[ch].mChStatInf.LastError  = DEF_LAST_ERROR_CELLLOW;
			bret = false;
		}
		else if(m_pGlobalVar->mChVar[ch].FlagOverT == 1)
		{
			m_pGlobalVar->mChVar[ch].mChStatInf.LastError  = DEF_LAST_ERROR_OVERT;
			bret = false;
		}
		else if(m_pGlobalVar->mChVar[ch].mdevice.adc_ac.data.vac.value > DEF_HLIMIT_VACSTABLE)
		{
			m_pGlobalVar->mChVar[ch].mChStatInf.LastError  = DEF_LAST_ERROR_VACSTABLE;
			bret = false;
		}
	}
	else
	{
		if(m_pGlobalVar->mChVar[ch].mdevice.adc_vdc.value < -2.0)
		{
			m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus  = DEF_LAST_ERROR_CELLLOW;
			bret = false;
		}
		else 
		{
			if(m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus == DEF_LAST_ERROR_NOTRDY)
			{
				if(ChkLowLimit(ch) == true) 
				{
					m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus = DEF_LAST_ERROR_NONE;	
				}
			}	
			else
			{

				if(ChkHighLimit(ch) == true) 
				{
					m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus = DEF_LAST_ERROR_NOTRDY;
					bret = false;
				}
				else if(m_pGlobalVar->mChVar[ch].FlagOverT == 1)
				{
					m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus  = DEF_LAST_ERROR_OVERT;
					bret = false;
				}
				else
				{
					m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus  = DEF_LAST_ERROR_NONE;
				}
			}
		}
	}
	
	
	return bret;
}

void set_device_DO(int ch)
{
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do;
	st_zim_do* pdo = &m_pGlobalVar->mChVar[ch].mdevice.ctrl_do;
    UNS_8 tmp = 0;
	
	if((preqdo->data & 0x7F) != (pdo->data & 0x7F))
	{
		if(ICE_write_byte(ch, ICE_CMD_DEVICE_DO, preqdo->data) == _ERROR)
		{
			return;
		}
		
		if((preqdo->data & DEF_DEVDO_VDC_RNG0) == DEF_DEVDO_VDC_RNG0)
		{
			m_pGlobalVar->mChVar[ch].mChStatInf.Vdc_rngno = 0;
				
		}
		else
		{
			m_pGlobalVar->mChVar[ch].mChStatInf.Vdc_rngno = 1;
		}
		
		m_pGlobalVar->mChVar[ch].mChStatInf.Iac_rngno = (preqdo->data >> 1 & 0x7);
		m_pGlobalVar->mChVar[ch].mChStatInf.Iac_in_rngno = (preqdo->data >> 2 & 0x3);
		
		if((preqdo->data & DEF_DEVDO_CONT_SD) == DEF_DEVDO_CONT_SD)
		{
			m_pGlobalVar->mChVar[ch].mChStatInf.LoadOn = 1;
		}
		else
		{
			m_pGlobalVar->mChVar[ch].mChStatInf.LoadOn = 0;
		}
		
		pdo->data = preqdo->data;
	}
	else
	{
		if(ICE_read_byte(ch, ICE_CMD_DEVICE_DO, &tmp) == _ERROR) return;
		if(preqdo->data != tmp) 
		{
			pdo->data = tmp;
		}
	}
}


inline void proc_check_main(int ch)
{
	chkTestCondition(ch);
	if(m_pGlobalVar->mChVar[ch].Start == 0)
	{
		proc_default_setrange(ch);
	}
}

void AuxProc(int ch)
{
	if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.status == DEF_EIS_STATUS_ING) return;
	if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.status == DEF_EIS_STATUS_FFT) return;
	if(m_pGlobalVar->mChVar[ch].TmpResetICE > 0) return;			  
	proc_adc_rtd(ch);
	if(m_pGlobalVar->mChVar[ch].TmpResetICE > 0) return;
	proc_adc_vdc_data(ch);
	if(m_pGlobalVar->mChVar[ch].TmpResetICE > 0) return;
	proc_auto_vdc_proc(ch);
	if(m_pGlobalVar->mChVar[ch].mChStatInf.LoadOn == 0)
	{
		m_pGlobalVar->mChVar[ch].mChStatInf.Veoc = m_pGlobalVar->mChVar[ch].mChStatInf.Vdc;
		m_pGlobalVar->mChVar[ch].mChStatInf.Idc = 0.0;
	}
	else
	{
		if(m_pGlobalVar->mChVar[ch].mChStatInf.BiasOn == 1 && (m_pGlobalVar->mChVar[ch].mChStatInf.TestStatus & 0xF) == DEF_TESTSTATUS_RUNNING)
		{
			st_zim_adci_rnginf mrng = m_pSysConfig->mZimCfg[ch].ranges.iac_rng[m_pGlobalVar->mChVar[ch].mChStatInf.Iac_in_rngno];
			if((m_pGlobalVar->mChVar[ch].mChStatInf.Iac_rngno % 2) == 0)
			{
				m_pGlobalVar->mChVar[ch].mChStatInf.Idc = mrng.realmax * 0.5;
			}
			else
			{
				m_pGlobalVar->mChVar[ch].mChStatInf.Idc = mrng.realmax * mrng.controlgain * 0.5;
			}
		}
		else
		{
			m_pGlobalVar->mChVar[ch].mChStatInf.Idc = 0.0;
		}
	}
	if(m_pGlobalVar->mChVar[ch].TmpResetICE > 0) return;
	CheckThermoStat(ch);
	if(m_pGlobalVar->mChVar[ch].TmpResetICE > 0) return;
	
	proc_check_main(ch);
}

void DefaultDeviceProc(int ch)
{
	if(m_pGlobalVar->mChVar[ch].bTestMode < 2)
	{
		set_dds_sig(ch);
		set_dds_clk(ch);
		proc_eis_cfg(ch); 
		proc_adc_ac_cfg(ch);
	}
	else 
	{
		set_dds_sig_dc(ch);
	}
}

void RefreshFPGA(int ch)
{
	apply_req_dds_clock(ch);
	apply_req_dds_signal(ch);
	apply_adc_ac_cfg(ch);

	set_dds_sig(ch);
	set_dds_clk(ch);
	proc_eis_cfg(ch); //
	
	proc_adc_rtd_cfg(ch);
	proc_adc_ac_cfg(ch);	//
	set_device_DO(ch);
}





		
