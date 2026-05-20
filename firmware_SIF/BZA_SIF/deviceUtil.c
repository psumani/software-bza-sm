#include "BZA_SIF.h"


double 				SlopeChkRawdata[DEF_MAX_SLOPECHECK_RAW];
st_zim_eis_raw_val 	tRaw_val[MAX_EIS_RAW_POINT];
stCompdrift  mCompdrift;

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
	//P3_OUTP_CLR_bit.GPIO_00 = 1;
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
	//P3_OUTP_CLR_bit.GPO_05 = 1;		// ICE CS1 �̻��  P3_OUTP_SET_bit
	P3_OUTP_CLR_bit.GPO_06 = 1;		// 

	P3_OUTP_SET_bit.GPO_07 = 1;		// ICE FLASH ROM CS#
	P3_OUTP_CLR_bit.GPO_08 = 1;		// ICE RESETB
	
	P3_OUTP_CLR_bit.GPO_09 = 1;		// 
	P3_OUTP_CLR_bit.GPO_10 = 1;		// 
	//P3_OUTP_SET_bit.GPO_11 = 1;		// P3_OUTP_CLR_bit
	
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
	int bd = 0;
	bool bret = false;
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA)
	{
		if(m_pSysConfig->EnaZIM[bd] == 0 || m_pSysConfig->ChkZIM[bd] == 0) 
		{

		}
		else
		{
			if(m_pGlobalVar->mChVar[bd].Start > 0)
			{
				bret = true;
			}
		}
	}
	else
	{
		for(bd=0; bd < MAX_DEV_BOARD; bd++)
		{
			if(m_pSysConfig->EnaZIM[bd] == 0 || m_pSysConfig->ChkZIM[bd] == 0) 
			{
				continue;
			}
			
			if(m_pGlobalVar->mChVar[bd].Start > 0)
			{
				bret = true;
				break;
			}
		}
	}
	return bret;
}

bool  CheckIceCfgDone(void)	
{
	if(P2_INP_STATE_bit.P2_8) //
	{
		return true;
	}
	return false;
}

void apply_req_dds_dcsignal(int bd)
{
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return;
	}
	
	st_zim_dds_flow* pflow = &m_pGlobalVar->mChVar[bd].flow_dds_sig;
	st_zim_dds* preqdds = &m_pGlobalVar->mChVar[bd].mreqdevice.dds_sig;
	st_zim_dds* pdds = &m_pGlobalVar->mChVar[bd].mdevice.dds_sig;
	double dConst = DEF_DDS_SIG_CONST_LOW;
	
	m_pGlobalVar->mChVar[bd].bSigLowFreq = 1;
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

void apply_req_dds_signal(int bd)
{
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return;
	}
	
	double dConst = DEF_DDS_SIG_CONST_LOW;
	st_zim_dds* preqdds = &m_pGlobalVar->mChVar[bd].mreqdevice.dds_sig;
	st_zim_dds* pdds = &m_pGlobalVar->mChVar[bd].mdevice.dds_sig;
	st_zim_dds_flow* pflow = &m_pGlobalVar->mChVar[bd].flow_dds_sig;
	
	double dMaxFreq = (double)MIN_EIS_CYC_POINT * 32.0 * preqdds->frequency; // 100KHz = 102,400,000
	int UB = (int)log2((double)MAX_EIS_ADC_MCLK / dMaxFreq);
	
	if(UB < 0)
	{
		m_pGlobalVar->mChVar[bd].bSigLowFreq = 0;
		dConst = DEF_DDS_SIG_CONST_HI;
	}
	else
	{
		 m_pGlobalVar->mChVar[bd].bSigLowFreq = 1;
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
	y = pow(10.0,((double)FixPnt-x)); // ��ȿ�ڸ��� ����
	z = (int)(Value * y + 0.5)/ y;
	return z;
}

void apply_req_dds_clock(int bd)
{
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return;
	}
	
	st_zim_dds* preqdds = &m_pGlobalVar->mChVar[bd].mreqdevice.dds_clk;
	st_zim_dds* pdds = &m_pGlobalVar->mChVar[bd].mdevice.dds_clk;
	st_zim_dds_flow* pflow = &m_pGlobalVar->mChVar[bd].flow_dds_clk;

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

inline void proc_SetLowMclk(int bd, ushort bLow)
{
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return;
	}
	
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[bd].mreqdevice.ctrl_do;
	
	preqdo->data &= DEF_DEVDO_DDSMCLK_LOW;
	
	if(bLow == 0) preqdo->data |= DEF_DEVDO_DDSMCLK_HI;

	set_device_DO(bd);
}

inline void set_dds_sig_dc(int bd)
{
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return;
	}
	
	ushort buf;
	st_zim_dds_flow* pflowddssig = &m_pGlobalVar->mChVar[bd].flow_dds_sig;

	if(pflowddssig->stat.freq !=  pflowddssig->req.freq || pflowddssig->stat.phase !=  pflowddssig->req.phase)
	{
		m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl = DDS_SIG_RESET;
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl) == _ERROR)
		{
			return;
		}
		
		m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl |= DDS_HLB;
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl) == _ERROR)
		{
			return;
		}
			
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((pflowddssig->req.freq  >> 14) & 0x3FFF);
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
			
		m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl &= DDS_HLB_CLR;
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl) == _ERROR)
		{
			return;
		}
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(pflowddssig->req.freq  & 0x3FFF);	
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		
		m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl = 0;
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl) == _ERROR)
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
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		
		pflowddssig->stat.phase  =  pflowddssig->req.phase;

	}
}

inline void set_dds_sig(int bd)
{
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return;
	}
	
	ushort buf;
	st_zim_dds_flow* pflowddssig = &m_pGlobalVar->mChVar[bd].flow_dds_sig;
	
	proc_SetLowMclk(bd, m_pGlobalVar->mChVar[bd].bSigLowFreq);
	
	/*if(pflowddssig->stat.freq !=  pflowddssig->req.freq)
	{
		buf = pflowddssig->req.ctrl & 0x2FFF;
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
	
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(pflowddssig->req.freq & 0x3FFF);
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}

		buf = pflowddssig->req.ctrl | 0x1000;
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((pflowddssig->req.freq >> 14) & 0x3FFF);
		
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		
		pflowddssig->stat.freq  =  pflowddssig->req.freq;
	}*/
	
	if(pflowddssig->stat.phase !=  pflowddssig->req.phase)
	{

		buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(pflowddssig->req.phase & 0xFFF);
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		pflowddssig->stat.phase  =  pflowddssig->req.phase;
	}
	
	if(pflowddssig->stat.ctrl !=  pflowddssig->req.ctrl)
	{
		buf = pflowddssig->req.ctrl & 0x3FFF;
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		pflowddssig->stat.ctrl  =  pflowddssig->req.ctrl;
	}
}

inline void set_dds_clk(int bd)
{
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return;
	}
	
	ushort buf;
	st_zim_dds_flow* pflowddsclk = &m_pGlobalVar->mChVar[bd].flow_dds_clk;
	if(pflowddsclk->stat.freq !=  pflowddsclk->req.freq)
	{

		buf = pflowddsclk->req.ctrl & 0x2FFF;
		if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(pflowddsclk->req.freq & 0x3FFF);
		if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		buf = pflowddsclk->req.ctrl | 0x1000;
		if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((pflowddsclk->req.freq >> 14) & 0x3FFF);
		if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		pflowddsclk->stat.freq =  pflowddsclk->req.freq;
	}

	if(pflowddsclk->stat.phase !=  pflowddsclk->req.phase)
	{
		buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(pflowddsclk->req.phase & 0xFFF);

		if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		pflowddsclk->stat.phase  =  pflowddsclk->req.phase;
	}
	
	if(pflowddsclk->stat.ctrl !=  pflowddsclk->req.ctrl)
	{
		buf = pflowddsclk->req.ctrl & 0x3FFF;
		if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		pflowddsclk->stat.ctrl =  pflowddsclk->req.ctrl;
	}
}

double Polynomial(int bd, double x)     
{         
	double y = 0;         
	double xn = 0;   
	int i;
	
	for (i = 0; i < DEF_RTD_COEF_LEN; i++)         
	{             
		if (m_pSysConfig->mZimCfg[bd].ranges.Gen.rtd_rng.factor == DEF_ADC_RTD_CONST_PT1000) 
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
/// <param name="r0">The resistance of RTD at 0 ��C.</param>     
/// <param name="standard">Callendar-Van Dusen coefficients, use ptxIPTS68 or ptxITS9    
/// <param name="poly">The Polynomial coefficients.</param>     
/// <returns></returns>    
double ResistanceToTemperature(int bd, double r)
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

	if (m_pSysConfig->mZimCfg[bd].ranges.Gen.rtd_rng.factor == DEF_ADC_RTD_CONST_PT1000) 
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
		t += Polynomial(bd,r); 
	}
 	return t;     
} 

inline void proc_adc_rtd_cfg(int bd)
{
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return;
	}
	
	st_zim_rtd* preqrtd = &m_pGlobalVar->mChVar[bd].mreqdevice.adc_rtd;
	st_zim_rtd* prtd = &m_pGlobalVar->mChVar[bd].mdevice.adc_rtd;
	UNS_8 tmp = 0;
	
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)  
	{
		prtd->config.data = m_pGlobalVar->mChVar[0].mdevice.adc_rtd.config.data;
		preqrtd->config.data = m_pGlobalVar->mChVar[0].mreqdevice.adc_rtd.config.data;
	}
	else
	{
		if(preqrtd->config.data != prtd->config.data)
		{
			if(ICE_write_byte(bd, ICE_CMD_RTD_CFG, preqrtd->config.data) == _ERROR)
			{
				return;
			}
			prtd->config.data = preqrtd->config.data;
		}
		else
		{
			if(ICE_read_byte(bd, ICE_CMD_RTD_CFG, &tmp) == _ERROR) return;
			if(preqrtd->config.data != tmp) prtd->config.data = tmp;
		}
	}
}	

inline void proc_adc_rtd(int bd)
{
	UNS_16 tmp = 0;
	st_zim_rtd* prtd = &m_pGlobalVar->mChVar[bd].mdevice.adc_rtd;
	if(prtd->config.data & 0x2) 
	{
		proc_adc_rtd_cfg(bd);
		return;
	}

	if(ICE_read_16bits(bd, ICE_CMD_RTD_DTA,&tmp) == _ERROR)
	{
		return;
	}
	
	prtd->data.fault = tmp & 0x1;
	prtd->data.adcval = tmp >> 1;
	
	if(prtd->data.adcval == 0) prtd->data.fault = 1;
	if(prtd->data.fault == 1)
	{
		if(isnan(m_pSysConfig->mZimCfg[bd].ranges.Gen.rtd_rng.factor))
		{
			prtd->data.Rvalue = 100.0;
		}
		else
		{
			if (m_pSysConfig->mZimCfg[bd].ranges.Gen.rtd_rng.factor == DEF_ADC_RTD_CONST_PT1000) 
			{
				prtd->data.Rvalue = 1000.0;
			}
			else 
			{
				prtd->data.Rvalue = 100.0;
			}
		}
		prtd->data.Tvalue = 0.0;
		m_pGlobalVar->mChVar[bd].mChStatInf.Temperature = prtd->data.Tvalue;
		prtd->config.data |= 0x6;
		
		if(ICE_write_byte(bd, ICE_CMD_RTD_CFG, prtd->config.data) == _ERROR)
		{
			return;
		}
	}
	else
	{
		prtd->data.Rvalue = prtd->data.adcval * m_pSysConfig->mZimCfg[bd].ranges.Gen.rtd_rng.factor;
		prtd->data.Rvalue = prtd->data.adcval * m_pSysConfig->mZimCfg[bd].ranges.Gen.rtd_rng.factor;
		prtd->data.Tvalue = ResistanceToTemperature(bd, prtd->data.Rvalue); 
		if(m_pGlobalVar->mChVar[bd].bCalib == 0)
		{
			prtd->data.Tvalue = prtd->data.Tvalue 
							* m_pSysConfig->mZimCfg[bd].ranges.Gen.rtd_rng.gain 
							+ m_pSysConfig->mZimCfg[bd].ranges.Gen.rtd_rng.offset;
		}
		prtd->data.Tvalue = floor(prtd->data.Tvalue * 100.0 + 0.5) * 0.01;
		m_pGlobalVar->mChVar[bd].mChStatInf.Temperature = prtd->data.Tvalue;
		proc_adc_rtd_cfg(bd);
	}
}	

int proc_read_version(int bd)
{
	UNS_16 tmp = 0;
	
	if(ICE_read_16bits(bd, ICE_CMD_FWVERSION,&tmp) == _ERROR)
	{
			return _ERROR;
	}

	m_pSysConfig->mZimCfg[bd].info.ZimFWVersion = tmp;
	
	return _NO_ERROR;
}	

int CheckThermoStat(int bd)
{
	UNS_8 data = 0;
	
	if(ICE_read_byte(bd, ICE_CMD_DEVICE_DO, &data) == _ERROR)
	{
		return -1;
	}

	if(m_pGlobalVar->mChVar[bd].FlagOverT == 0)
	{
		if(data & 0x80)
		{
			if(m_pGlobalVar->mChVar[bd].OverT_Timer > 3000) 
			{
				
				m_pGlobalVar->mChVar[bd].FlagOverT = 1;
				return 1;
			}
		}
		else
		{
			m_pGlobalVar->mChVar[bd].OverT_Timer = 0;
		}
	}
	else
	{
		if(data & 0x80)
		{
			m_pGlobalVar->mChVar[bd].OverT_Timer = 0;
			return 1;
		}
		else
		{
			if(m_pGlobalVar->mChVar[bd].OverT_Timer > 3000) 
			{
				m_pGlobalVar->mChVar[bd].FlagOverT = 0;
			}
			else
			{
				return 1;
			}
		}
	}
	
	return 0;
}

void applyaux_adc_ac_cfg(int auxbd)
{
	uint8 tmp;
	
	tmp = m_pGlobalVar->mChVar[auxbd].mreqdevice.adc_ac.cfg.vac_flt;
	tmp |= (m_pGlobalVar->mChVar[auxbd].mreqdevice.adc_ac.cfg.vac_osr & 0x03);
	m_pGlobalVar->mChVar[auxbd].flow_adc_ac.req = tmp;
	memcpy(&m_pGlobalVar->mChVar[auxbd].mdevice.adc_ac.cfg,&m_pGlobalVar->mChVar[auxbd].mreqdevice.adc_ac.cfg,sizeof(st_zim_adc_ac_cfg));
}

void apply_adc_ac_cfg(int bd)
{
	//int    auxbd;
	ushort tmp;
	
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		if(m_pSysConfig->EnaZIM[bd] == FALSE) // || m_pSysConfig->ChkZIM[bd] == FALSE)
                  ;
		else
                  applyaux_adc_ac_cfg(bd);
	}
	else
	{
		tmp = ((m_pGlobalVar->mChVar[bd].mreqdevice.adc_ac.cfg.vac_flt << 6) & 0xC0);
		tmp |= ((m_pGlobalVar->mChVar[bd].mreqdevice.adc_ac.cfg.vac_osr << 4) & 0x30);
		tmp |= ((m_pGlobalVar->mChVar[bd].mreqdevice.adc_ac.cfg.iac_flt << 2) & 0xC);
		tmp |= (m_pGlobalVar->mChVar[bd].mreqdevice.adc_ac.cfg.iac_osr & 0x3);
		m_pGlobalVar->mChVar[bd].flow_adc_ac.req = tmp;
		memcpy(&m_pGlobalVar->mChVar[bd].mdevice.adc_ac.cfg,&m_pGlobalVar->mChVar[bd].mreqdevice.adc_ac.cfg,sizeof(st_zim_adc_ac_cfg));
	}
	
	/*if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0)
	{
		for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++)
		{
			if(m_pSysConfig->EnaZIM[bd] == FALSE || m_pSysConfig->ChkZIM[bd] == FALSE) continue;
			applyaux_adc_ac_cfg(auxbd);
		}
	}*/
}


inline void procaux_adc_ac_cfg(int auxbd)
{
    UNS_8 tmp;
	st_zim_adc_flow* pflow = &m_pGlobalVar->mChVar[auxbd].flow_adc_ac;
	SetDeviceBoard(auxbd);
	if(pflow->stat != pflow->req)
	{
		tmp = (pflow->req & 0xFF);
		if(ICE_write_byte(auxbd, ICE_AUX_CMD_ACADC_DEVICE, tmp) == _ERROR)
		{
			return;
		}
		pflow->req = (ushort)tmp;	
		pflow->stat = pflow->req;	
	}
	else
	{
		if(ICE_read_byte(auxbd, ICE_AUX_CMD_ACADC_DEVICE, &tmp) == _ERROR) return;
		if(pflow->req != tmp) pflow->stat = tmp;
	}
	
}

inline void proc_adc_ac_cfg(int bd)
{
	//int auxbd;
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA  && bd > 0) //
	{
		//for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++)
		if(m_pSysConfig->EnaZIM[bd] == FALSE) // || m_pSysConfig->ChkZIM[bd] == FALSE) 
                  ;
                else
                  procaux_adc_ac_cfg(bd);
	}
	else
	{
		UNS_8 tmp;
		st_zim_adc_flow* pflow = &m_pGlobalVar->mChVar[bd].flow_adc_ac;
		
		SetDeviceBoard(bd);
		if(pflow->stat != pflow->req)
		{
			tmp = (pflow->req & 0xFF);
			if(ICE_write_byte(bd, ICE_CMD_ACADC_DEVICE, tmp) == _ERROR)
			{
				return;
			}
			pflow->req = (ushort)tmp;	
			pflow->stat = pflow->req;	
		}
		else
		{
			if(ICE_read_byte(bd, ICE_CMD_ACADC_DEVICE, &tmp) == _ERROR) return;
			if(pflow->req != tmp) pflow->stat = tmp;
		}
	}
}

inline void procaux_adc_data(int auxbd)
{
	/*int auxch;
	INT_32 tmp[4];
	st_zim_adc_vdc* pvdc;

	if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE) 
	{
		for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++)
		{
			pvdc = &m_pGlobalVar->mChVar[auxbd].mdevice.adc_vdc[auxch];
			pvdc->adcval = 0x80000;
			pvdc->value = 0.0;
			m_pGlobalVar->mChVar[auxbd].mChStatInf.Vdc = 0.0; //[auxch] = 0.0;
		}
		return;
	}

	SetDeviceBoard(auxbd);
	
	if(m_pGlobalVar->mChVar[0].mChStatInf.eis_status.status >= DEF_EIS_STATUS_EIS_INIT && m_pGlobalVar->mChVar[0].mChStatInf.eis_status.status <= DEF_EIS_STATUS_EISSTOP)
	{
		if(ICE_read_adcDataSet(auxbd, ICE_CMDAUX_ADC_VAL1,&tmp[0],&tmp[1]) == _ERROR)
		{
			return;
		}
		if(ICE_read_adcDataSet(auxbd, ICE_CMDAUX_ADC_VAL2,&tmp[2],&tmp[3]) == _ERROR)
		{
			return;
		}
		for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++)
		{
			pvdc = &m_pGlobalVar->mChVar[auxbd].mdevice.adc_vdc[auxch];
			pvdc->adcval = tmp[auxch];
			
			pvdc->value = (double)tmp[auxch] 
						* m_pSysConfig->mZimCfg[auxbd].ranges.Aux.vdc_rng[0].factor;
			if(m_pGlobalVar->mChVar[0].bCalib == 0)
			{
				pvdc->value = pvdc->value 
						* m_pSysConfig->mZimCfg[auxbd].ranges.Aux.vdc_rng[0].gain 
						+ m_pSysConfig->mZimCfg[auxbd].ranges.Aux.vdc_rng[0].offset;
			}
			pvdc->value = floor(pvdc->value * 100000.0 + 0.5) * 0.00001;
			m_pGlobalVar->mChVar[auxbd].mChStatInf.Vdc = pvdc->value; //[auxch]
		}
	}*/
}

inline void proc_adc_vdc_data(int bd)
{
	int auxbd;
	int tmpv;
	st_zim_adc_vdc* pvdc;

	SetDeviceBoard(bd);
	
	if(ICE_read_adc24bit(bd, ICE_CMD_VDCADC_VAL, &tmpv) == _ERROR)
	{		 	  
		return;
	}
	pvdc = &m_pGlobalVar->mChVar[bd].mdevice.adc_vdc[0];
	pvdc->adcval = tmpv;
	
	pvdc->value = (double)tmpv * m_pSysConfig->mZimCfg[bd].ranges.Gen.vdc_rng[m_pGlobalVar->mChVar[bd].mChStatInf.Vdc_rngno].factor;
	if(m_pGlobalVar->mChVar[bd].bCalib == 0)
	{
		pvdc->value = pvdc->value 
				* m_pSysConfig->mZimCfg[bd].ranges.Gen.vdc_rng[m_pGlobalVar->mChVar[bd].mChStatInf.Vdc_rngno].gain 
				+ m_pSysConfig->mZimCfg[bd].ranges.Gen.vdc_rng[m_pGlobalVar->mChVar[bd].mChStatInf.Vdc_rngno].offset;
	}
		
	if(m_pGlobalVar->mChVar[bd].mChStatInf.ZimType == DEV_BZA60)
	{
		pvdc->value = floor(pvdc->value * 1000000.0 + 0.5) * 0.000001;
	}
	else
	{
		pvdc->value = floor(pvdc->value * 100000.0 + 0.5) * 0.00001;
	}	
	m_pGlobalVar->mChVar[bd].mChStatInf.Vdc = pvdc->value; //[0]
	
	
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA)
	{
		for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++)
		{
                  if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE) continue;
			proc_AUX_adc_vdc_data(auxbd); // procaux_adc_data(auxbd);
		}
	}
}

inline void procaux_eis_cfg(int bd)
{
	st_zim_eisdev* preqeisdev = &m_pGlobalVar->mChVar[bd].mreqdevice.eis;
	st_zim_eisdev* peisdev = &m_pGlobalVar->mChVar[bd].mdevice.eis;
	UNS_8 tmp = 0;
        UNS_16 tmp16 = 0;
	
	SetDeviceBoard(bd);
	
	if(peisdev->config != preqeisdev->config)
	{
		if(ICE_write_byte(bd, ICE_CMD_EIS_CFG, preqeisdev->config) == _ERROR)
		{
			return;
		}
		
		peisdev->config = preqeisdev->config;
	}
	else
	{
		if(ICE_read_byte(bd, ICE_CMD_EIS_CFG, &tmp) == _ERROR) return;
		if(preqeisdev->config != tmp) peisdev->config = tmp;
	}
	
	if(peisdev->points != preqeisdev->points)
	{
		if(ICE_write_byte(bd, ICE_CMD_EIS_SETPNTS, preqeisdev->points) == _ERROR)
		{
			return;
		}
		peisdev->points = preqeisdev->points;
	}
	else
	{
		if(ICE_read_16bits(bd, ICE_CMD_EIS_SETPNTS, &tmp16) == _ERROR) return;
		if(preqeisdev->points != tmp16) peisdev->points = tmp16;
	}
}

inline void proc_eis_cfg(int bd) // bd[0-3] any BZA type
{
	int auxbd;
	st_zim_eisdev* preqeisdev = &m_pGlobalVar->mChVar[bd].mreqdevice.eis;
	st_zim_eisdev* peisdev = &m_pGlobalVar->mChVar[bd].mdevice.eis;
	UNS_8 tmp = 0;
        UNS_16 tmp16 = 0;
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return;
	}
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0)
	{
		for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++) // not necessary
		{
			if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE) continue;
			procaux_eis_cfg(auxbd);
		}
	}

	SetDeviceBoard(bd);
	
	if(peisdev->config != preqeisdev->config)
	{
		if(ICE_write_byte(bd, ICE_CMD_EIS_CFG, preqeisdev->config) == _ERROR)
		{
			return;
		}
		
		peisdev->config = preqeisdev->config;
	}
	else
	{
		if(ICE_read_byte(bd, ICE_CMD_EIS_CFG, &tmp) == _ERROR) return;
		if(preqeisdev->config != tmp) peisdev->config = tmp;
	}
	
	if(peisdev->points != preqeisdev->points)
	{
		if(ICE_write_byte(bd, ICE_CMD_EIS_SETPNTS, preqeisdev->points) == _ERROR)
		{
			return;
		}
		peisdev->points = preqeisdev->points;
	}
	else
	{
		if(ICE_read_16bits(bd, ICE_CMD_EIS_SETPNTS, &tmp16) == _ERROR) return;
		if(preqeisdev->points != tmp16) peisdev->points = tmp16;
	}
}

inline bool ChkLowLimit(int bd)
{
	bool bret = false;
	double tmp1;
	double tmp2;
	
	tmp1 = fabs(m_pGlobalVar->mChVar[bd].mdevice.adc_ac.data.vac.value);
	tmp2 = DEF_LLIMIT_VACSTABLE;

	if(tmp1 <=  tmp2) bret = true;
	return bret;
}
	
inline bool ChkHighLimit(int bd)
{
	bool bret = true;
	double tmp1;
	double tmp2;
	
	tmp1 = fabs(m_pGlobalVar->mChVar[bd].mdevice.adc_ac.data.vac.value);
	tmp2 = DEF_HLIMIT_VACSTABLE;

	if(tmp1 <= tmp2) bret = false;
	return bret;
}

inline int Get_Rng_A(int bd)
{
	int rng = 0; 
	int orng = 0; 
	double maxA = 0.0;
	double tmp = 0.0;

	if(m_pGlobalVar->mChVar[bd].mChStatInf.Veoc == 0.0 || m_pSysConfig->mZimCfg[bd].ranges.Gen.mSafety.MaxPower == 0.0) return 0; //Veoc[0]
	maxA = fabs(m_pSysConfig->mZimCfg[bd].ranges.Gen.mSafety.MaxPower / m_pGlobalVar->mChVar[bd].mChStatInf.Veoc);
	
	while(1)
	{
		tmp =m_pSysConfig->mZimCfg[bd].ranges.Gen.iac_rng[rng].realmax;
		
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

inline void proc_auto_vdc_proc(int bd)
{
	if(m_pGlobalVar->mChVar[bd].AutoVdcRange == 0) return;
	
	st_zim_adc_vdc * pvdc = &m_pGlobalVar->mChVar[bd].mdevice.adc_vdc[0];
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[bd].mreqdevice.ctrl_do;
	
	double dtmp = fabs(pvdc->value);
	double dtmp1 = m_pSysConfig->mZimCfg[bd].ranges.Gen.vdc_rng[1].realmax * 1.1;
	double dtmp2 = m_pSysConfig->mZimCfg[bd].ranges.Gen.vdc_rng[1].realmax *0.95;
	
	
	
	if(dtmp > dtmp1) 
	{
		if(m_pGlobalVar->mChVar[bd].mChStatInf.Vdc_rngno == 1)
		{
			m_pGlobalVar->mChVar[bd].CntVdcChg ++;
			if(m_pGlobalVar->mChVar[bd].CntVdcChg >= 2)
			{
				preqdo->data |= DEF_DEVDO_VDC_RNG0;
			}
		}
		else
		{
			m_pGlobalVar->mChVar[bd].CntVdcChg = 0;
		}
	}
	else if(dtmp < dtmp2) 
	{
		if(m_pGlobalVar->mChVar[bd].mChStatInf.Vdc_rngno == 0)
		{
			m_pGlobalVar->mChVar[bd].CntVdcChg ++;
			if(m_pGlobalVar->mChVar[bd].CntVdcChg >= 2)
			{
				preqdo->data &= DEF_DEVDO_VDC_RNG1;
			}
		}
		else
		{
			m_pGlobalVar->mChVar[bd].CntVdcChg = 0;
		}
	}
}


void procaux_power_VAC(int bd, bool bOn) // bd, false=dc
{
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[bd].mreqdevice.ctrl_do;
	
	if(bOn == false) preqdo->data = DEF_AUX_DEVDO_DCSEL; // DEF_DEVAUXDO_VAC_PWROFF; bit operator changed
	else preqdo->data = DEF_AUX_DEVDO_ACSEL; // DEF_DEVAUXDO_VAC_PWRON;
}

void proc_power_VAC(int bd, bool bOn)
{
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[bd].mreqdevice.ctrl_do;
	
	if(bOn == false) preqdo->data |= DEF_DEVDO_VAC_PWROFF;
	else preqdo->data &= DEF_DEVDO_VAC_PWRON;
}

inline bool check_power_VAC(int bd) // how about Aux?
{
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[bd].mreqdevice.ctrl_do;
	
	if(preqdo->data & DEF_DEVDO_VAC_PWROFF) return false;
	return true;
}

void proc_eis_setrange(int bd,int setrange) 
{
	ushort buf;
	int irng;
	
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[bd].mreqdevice.ctrl_do;

	irng = 0;
	if(m_pGlobalVar->mChVar[bd].bCalib == 0) irng = Get_Rng_A(bd);
	
	if(irng < setrange)
	{
		irng = setrange;
	}
			   
	buf = (ushort)((irng << 1) & 0xE);
	preqdo->data &= 0xFFF1;
	preqdo->data |= buf;
}

inline void proc_default_setrange(int bd)
{
	ushort buf;
	int curr_rng;
	int irng;
	
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[bd].mreqdevice.ctrl_do;
	
	curr_rng = (preqdo->data >> 1 & 0x7);
	irng = Get_Rng_A(bd);
	if(curr_rng == irng) return;
	
	if(curr_rng > irng)
	{
		irng = curr_rng; 
	}
	buf = (ushort)((irng << 1) & 0xE);
	preqdo->data &= 0xFFF1;
	preqdo->data |= buf;
}

void proc_eis_LoadOn(int bd, ushort loadon)
{
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[bd].mreqdevice.ctrl_do;

	if (loadon == 1) preqdo->data |= DEF_DEVDO_CONT_SD;
	else  
	{
		preqdo->data &= DEF_DEVDO_CONT_CLRSD;
	}
	m_pGlobalVar->mChVar[bd].mChStatInf.LoadOn = loadon;
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

inline bool ChkEisCalVGainVar(st_zim_adcv_rnginf*  pRng)
{
	if (pRng->gain == 1.0 || pRng->offset == 0.0 )
	{
		return false;
	}
	return true;
}

inline bool ChkAuxSysCalVars(int bd)
{
	int i;
	int j;
	stZimCfg* pCfg = &m_pSysConfig->mZimCfg[bd];
	
	/* only when SIF_MCBZA, so ch=0 : Gen, others :Aux */
	if(pCfg->ranges.Gen.vdc_rng[0].gain == 1.0 || pCfg->ranges.Gen.vdc_rng[0].offset == 0.0)
	{
		return false;
	}
	
	
	for(j=0; j<MAX_IAC_CTRL_RNGCNT; j++)
	{
		if(ChkEisCalVar(&pCfg->ranges.Gen.mEisIRngCalInfo[j]) == false)
		{
			return false;
		}
	}
	
	for(i=0; i<DEF_MAX_IAC_RNGCNT; i++)
	{
		if(ChkEisCalGainVar(&pCfg->ranges.Gen.iac_rng[i]) == false)
		{
			return false;
		}
	}
	for(i=1; i<4; i++)
	{
		if(pCfg->ranges.Aux.vdc_rng[0].gain == 1.0 || pCfg->ranges.Aux.vdc_rng[0].offset == 0.0)
		{
			return false;
		}
		
		
		for(j=0; j<MAX_IAC_CTRL_RNGCNT; j++)
		{
			if(ChkEisCalVar(&pCfg->ranges.Aux.mEisIRngCalInfo[i][j]) == false)
			{
				return false;
			}
		}
		
		/*for(i=0; i<DEF_MAX_IAC_RNGCNT; i++)
		{
			if(ChkEisCalGainVar(&pCfg->ranges[i].iac_rng[i]) == false)
			{
				return false;
			}
		}*/
	}

	return true;
}

inline bool ChkSysCalVars(int bd)
{
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA)
	{
		return ChkAuxSysCalVars(bd);
	}
	
	int i;
	st_zimGen_rnginf* pRanges = &m_pSysConfig->mZimCfg[bd].ranges.Gen;
	
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



inline void CompImpedanceItem(int bd, int auxch, ushort cRng)
{
	st_zim_eis_raw *praw = &m_pGlobalVar->mChVar[bd].meis[auxch].eis_raw_new;
	// return;	
	double f = praw->freq;
	double fsq = f * f;
	double a;
	double b;
	double c;
	double d;
	double aa;
	double bb;
	
	st_zim_Eis_Cal_info* pEis_cal_info1;
	if(m_pSysConfig->mSIFCfg.Type != (byte)SIF_MCBZA || bd == 0)
	{
		pEis_cal_info1 = &m_pSysConfig->mZimCfg[bd].ranges.Gen.mEisIRngCalInfo[cRng];
	}
	else
	{
		if((m_pSysConfig->mSIFCfg.FirmwareVersion.Build %2) == 0)
		{
			pEis_cal_info1 = &m_pSysConfig->mZimCfg[bd].ranges.Aux.mEisIRngCalInfo[auxch][cRng];
		}
		else
		{
			pEis_cal_info1 = &m_pSysConfig->mZimCfg[bd].ranges.Aux.mEisIRngCalInfo[auxch][DEF_HIFREQ_CALIBRANGE];			
		}
	}
	
	if (ChkEisCalVar(pEis_cal_info1) == false)
	{
		return;
	}
	
	a = 1 + pEis_cal_info1->n3 * fsq;
	b = (pEis_cal_info1->n1 / f) + (pEis_cal_info1->n2 * f);
	c = 1 + pEis_cal_info1->d3 * fsq;
	d = (pEis_cal_info1->d1 / f) + (pEis_cal_info1->d2 * f);

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

inline void proc_init_eis_data(int bd)
{
	int AuxCh;
	st_zim_eis_status* pstatus = &m_pGlobalVar->mChVar[bd].mChStatInf.eis_status;
	
	m_pGlobalVar->mChVar[bd].mChStatInf.DispFreq = pstatus->freq;

	pstatus->zdata.real = 0.0; //zdata for main board
	pstatus->zdata.img = 0.0;
	pstatus->zdata.mag = 0.0;
	pstatus->zdata.phase = 0.0;
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)  //zdata for aux board
	{
		pstatus = &m_pGlobalVar->mChVar[0].mChStatInf.eis_status;
		m_pGlobalVar->mChVar[bd].mChStatInf.DispFreq = pstatus->freq;
		for(AuxCh=0; AuxCh<DEF_MAX_AUX_CHCNT; AuxCh ++)
		{
			pstatus->Aux_zdata[AuxCh+(bd-1)*4].real = 0.0;
			pstatus->Aux_zdata[AuxCh+(bd-1)*4].img = 0.0;
			pstatus->Aux_zdata[AuxCh+(bd-1)*4].mag = 0.0;
			pstatus->Aux_zdata[AuxCh+(bd-1)*4].phase = 0.0;
		
			m_pGlobalVar->mChVar[0].mChStatInf.DispMag[AuxCh+(bd-1)*4] = pstatus->Aux_zdata[AuxCh+(bd-1)*4].mag;
			m_pGlobalVar->mChVar[0].mChStatInf.DispPhase[AuxCh+(bd-1)*4] = pstatus->Aux_zdata[AuxCh+(bd-1)*4].phase;
		}
	}
}

bool proc_eis_data_conv_bd(int bd, int AuxCh) 
{
	bool bret = true;
	//int AuxCh = 0;
	//int MaxAuxCh = 1;
	ushort nCycle;
	double dgain = 1.0;
	double dTemp;
	
	st_zim_eis_status* pstatus = &m_pGlobalVar->mChVar[bd].mChStatInf.eis_status;
	st_zim_eis_status* pstatus_main = &m_pGlobalVar->mChVar[0].mChStatInf.eis_status;
	st_zim_eis_raw* praw;
	//st_zim_eis* peis;
	
	dTemp = 0.0;
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0) // AUX board
	{
		//if (AuxCh == 0) // 
		{
			nCycle = m_pGlobalVar->mChVar[0].mChStatInf.eis_status.cycle;
			pstatus->cycle	=  nCycle;
			pstatus = &m_pGlobalVar->mChVar[0].mChStatInf.eis_status;
		}
		pstatus->freq = pstatus_main->freq;
	}
	else // MAIN board 
	{
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
	}
	
	
	praw = &m_pGlobalVar->mChVar[bd].meis[AuxCh].eis_raw_new;
	praw->freq = pstatus->freq; //
	
	praw->Ns = pstatus->cycpoint * pstatus->cycle; //
	
	memcpy(tRaw_val,praw->raw_val,sizeof(st_zim_eis_raw_val)*MAX_EIS_RAW_POINT); 
	
	if(RemoveTrend(&tRaw_val[0],&(praw->raw_val[0]),pstatus->totaldatacnt,pstatus->cycpoint,&mCompdrift) == false)
	{
		if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
		{
			pstatus_main->Aux_zdata[(bd-1)*4+AuxCh].real = 0.0;
			pstatus_main->Aux_zdata[(bd-1)*4+AuxCh].img = 0.0;
			pstatus_main->Aux_zdata[(bd-1)*4+AuxCh].mag = 0.0;
			pstatus_main->Aux_zdata[(bd-1)*4+AuxCh].phase = 0.0;

			m_pGlobalVar->mChVar[0].mChStatInf.DispMag[(bd-1)*4+AuxCh] = pstatus_main->Aux_zdata[(bd-1)*4+AuxCh].mag;
			m_pGlobalVar->mChVar[0].mChStatInf.DispPhase[(bd-1)*4+AuxCh] = pstatus_main->Aux_zdata[(bd-1)*4+AuxCh].phase;
		}
		else
		{
			pstatus->zdata.real = 0.0;
			pstatus->zdata.img = 0.0;
			pstatus->zdata.mag = 0.0;
			pstatus->zdata.phase = 0.0;

			//m_pGlobalVar->mChVar[bd].mChStatInf.DispMag[AuxCh] = pstatus->zdata.mag;
			//m_pGlobalVar->mChVar[bd].mChStatInf.DispPhase[AuxCh] = pstatus->zdata.phase;
		}
		m_pGlobalVar->mChVar[bd].mChStatInf.DispFreq = pstatus->freq;
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

		if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
		{
			memcpy(&pstatus_main->Aux_zdata[(bd-1)*4+AuxCh],&praw->zdata,sizeof(st_zim_eis_zdata));

			m_pGlobalVar->mChVar[0].mChStatInf.DispMag[(bd-1)*4+AuxCh] = pstatus_main->Aux_zdata[(bd-1)*4+AuxCh].mag;
			m_pGlobalVar->mChVar[0].mChStatInf.DispPhase[(bd-1)*4+AuxCh] = pstatus_main->Aux_zdata[(bd-1)*4+AuxCh].phase;
		}
		else
		{
			memcpy(&pstatus->zdata,&praw->zdata,sizeof(st_zim_eis_zdata));

			//m_pGlobalVar->mChVar[bd].mChStatInf.DispMag[AuxCh] = pstatus->zdata.mag;
			//m_pGlobalVar->mChVar[bd].mChStatInf.DispPhase[AuxCh] = pstatus->zdata.phase;
		}
		m_pGlobalVar->mChVar[bd].mChStatInf.DispFreq = pstatus->freq;
		bret = false;
		return bret;//continue;
	}
	else
	{
		praw->zdata.real = ((praw->zdata_vac.real * praw->zdata_iac.real) + (praw->zdata_vac.img * praw->zdata_iac.img)) / dTemp; //devide
		praw->zdata.img = ((praw->zdata_vac.img * praw->zdata_iac.real) - (praw->zdata_vac.real * praw->zdata_iac.img)) / dTemp;  //devide 
	}
	
	dgain = 1.0;
	if (m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
		m_pGlobalVar->mChVar[bd].bCalib = m_pGlobalVar->mChVar[0].bCalib;
	
	if(m_pGlobalVar->mChVar[bd].bCalib == 0)
	{
		CompImpedanceItem(bd, AuxCh, m_pGlobalVar->mChVar[bd].mChStatInf.Iac_rngno); 
        if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
			praw->zdata.img = praw->zdata.img + (2.0 * PI * pstatus->freq * m_pSysConfig->mZimCfg[0].ranges.Gen.mDummy[m_pGlobalVar->mChVar[0].mChStatInf.Iac_rngno].Ls); // use main bd's dummy
		else
			praw->zdata.img = praw->zdata.img + (2.0 * PI * pstatus->freq * m_pSysConfig->mZimCfg[bd].ranges.Gen.mDummy[m_pGlobalVar->mChVar[bd].mChStatInf.Iac_rngno].Ls); //DEF_HIFREQ_CALIBRANGE
	}
	
	praw->zdata.mag = sqrt((praw->zdata.real * praw->zdata.real) + (praw->zdata.img * praw->zdata.img));
	praw->zdata.phase = atan2(praw->zdata.img, praw->zdata.real) * (double)180.0 / (double)PI;//angle in degree;

	if(m_pGlobalVar->mChVar[bd].bCalib == 0)
	{
		
		if(m_pGlobalVar->mChVar[bd].mChStatInf.Iac_rngno == 0 || m_pGlobalVar->mChVar[bd].mChStatInf.Iac_rngno == 2 
			|| m_pGlobalVar->mChVar[bd].mChStatInf.Iac_rngno == 4 || m_pGlobalVar->mChVar[bd].mChStatInf.Iac_rngno == 6) 
		{
			if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
				dgain = m_pSysConfig->mZimCfg[bd].ranges.Aux.iac_gain[AuxCh][m_pGlobalVar->mChVar[bd].mChStatInf.Iac_in_rngno].iac_gain1; //
			else
				dgain = m_pSysConfig->mZimCfg[bd].ranges.Gen.iac_rng[m_pGlobalVar->mChVar[bd].mChStatInf.Iac_in_rngno].gain1;
		}
		else 
		{
			if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
				dgain = m_pSysConfig->mZimCfg[bd].ranges.Aux.iac_gain[AuxCh][m_pGlobalVar->mChVar[bd].mChStatInf.Iac_in_rngno].iac_gain2;
			else
				dgain = m_pSysConfig->mZimCfg[bd].ranges.Gen.iac_rng[m_pGlobalVar->mChVar[bd].mChStatInf.Iac_in_rngno].gain2;
		}
		
		if(dgain == 0.0) dgain = 1.0;
				
		praw->zdata.mag /= dgain;
		praw->zdata.real = praw->zdata.mag * cos(praw->zdata.phase * ((double)PI / 180.0));
		praw->zdata.img = praw->zdata.mag * sin(praw->zdata.phase * ((double)PI / 180.0));
		
	}
	
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		memcpy(&pstatus_main->Aux_zdata[(bd-1)*4+AuxCh],&praw->zdata,sizeof(st_zim_eis_zdata));

		m_pGlobalVar->mChVar[0].mChStatInf.DispMag[(bd-1)*4+AuxCh] = pstatus_main->Aux_zdata[(bd-1)*4+AuxCh].mag;
		m_pGlobalVar->mChVar[0].mChStatInf.DispPhase[(bd-1)*4+AuxCh] = pstatus_main->Aux_zdata[(bd-1)*4+AuxCh].phase;
	}
	else
	{
		memcpy(&pstatus->zdata,&praw->zdata,sizeof(st_zim_eis_zdata));

		//m_pGlobalVar->mChVar[bd].mChStatInf.DispMag[AuxCh] = pstatus->zdata.mag;
		//m_pGlobalVar->mChVar[bd].mChStatInf.DispPhase[AuxCh] = pstatus->zdata.phase;
	}
	m_pGlobalVar->mChVar[bd].mChStatInf.DispFreq = pstatus->freq;
	
	return bret;
}

bool proc_eis_data_conv(int bd) // if MCBZA, bd is 0
{
	int Auxbd;
	bool bret = true;
	st_zim_eis_status* pstatus = &m_pGlobalVar->mChVar[bd].mChStatInf.eis_status;

	if(pstatus->cycpoint == 0)
	{
		m_pGlobalVar->mChVar[bd].mChStatInf.DispFreq = pstatus->freq;

		if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA) // && bd == 0
		{	
			for(Auxbd=0; Auxbd<MAX_DEV_BOARD; Auxbd ++)
			{
				if(m_pSysConfig->EnaZIM[Auxbd] == FALSE || m_pSysConfig->ChkZIM[Auxbd] == FALSE)
                	continue;
				proc_init_eis_data(Auxbd);
			}
		}
		else
		{
			proc_init_eis_data(bd);
		}
		return false;
	}
	bret = proc_eis_data_conv_bd(bd, 0); //
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0) 
	{
		for(Auxbd=1; Auxbd<MAX_DEV_BOARD; Auxbd ++) //Auxbd=1; //
		{
			if(bret == false) break;
			if(m_pSysConfig->EnaZIM[Auxbd] == FALSE || m_pSysConfig->ChkZIM[Auxbd] == FALSE || m_pGlobalVar->mChVar[0].mChStatInf.ConnCBL[Auxbd-1] == 0)
                continue;
			for (int ch = 0; ch < 4; ch++)
			{
				bret = proc_eis_data_conv_bd(Auxbd, ch);
				if(bret == false) break;
			}
		}
	}
	
	return bret;
}

inline bool proc_eis_chk_Control(int bd, double rate, double mag)
{
	int rng;
	int gain;
	double drng;
	double dLimitRate;

	
	rng = m_pGlobalVar->mChVar[bd].mChStatInf.Iac_rngno / 2;
	gain = m_pGlobalVar->mChVar[bd].mChStatInf.Iac_rngno % 2;

	drng = m_pSysConfig->mZimCfg[bd].ranges.Gen.iac_rng[rng].realmax * 0.5;
	
	
	if(gain) drng *= 0.2;
	
	dLimitRate = rate * 0.01 * drng;
	
	if(fabs(mag) < dLimitRate) 
	{
		return false;
	}
	return true;
}


inline  void ApplyCalcConfigADCForDelay(int bd) //Find OSR and number of points in a cycle
{
	st_zim_dds* pddsclk = &m_pGlobalVar->mChVar[bd].mdevice.dds_clk;
	st_zim_adc_ac_cfg* preqcfg = &m_pGlobalVar->mChVar[bd].mreqdevice.adc_ac.cfg;
	st_zim_dds* pddssig = &m_pGlobalVar->mChVar[bd].mdevice.dds_sig;
	int MinCycPoint = MIN_EIS_CYC_POINT;
	
	double dMaxFreq = (double)MIN_EIS_CYC_POINT * 32.0 * pddssig->frequency; // 100KHz = 102,400,000

	int nArg,osrArg;
	int LB,UB;
	int nMaxArg,osrMaxArg;
	int retPoint,cycles,nMaxCycle;
	
	int nPointSubH = 0;
	bool blow = true;
	
	double  dConstFlt = 2.0;
	
	if(m_pGlobalVar->mChVar[bd].mreqdevice.adc_ac.cfg.iac_flt == DEF_FLT_LOWLATENCY) dConstFlt = 4.0;
	
	pddssig->reset = 0;
	
	m_pGlobalVar->mChVar[bd].mFlow.SetDuration = 1.0;
	if(m_pGlobalVar->mChVar[bd].mChStatInf.TestStatus == DEF_TESTSTATUS_RUNNING)
	{
		if(m_pGlobalVar->mChVar[bd].mTech.type == TECH_QIS)
		{
			if(pddssig->frequency  < 100.0)	
			{
				m_pGlobalVar->mChVar[bd].mFlow.SetDuration = 0.3;
			}
		}
		else if(m_pGlobalVar->mChVar[bd].mTech.type == TECH_DCH)
		{
			m_pGlobalVar->mChVar[bd].mFlow.SetDuration = 0.3;
		}
	}
	

	if(pddssig->frequency >= DEF_FREQUENCY_SUBHAMONIC)
	{
		blow = false;
		osrArg = 0;
		retPoint  = 32;
		

		nPointSubH = 1025;
		pddsclk->frequency = ((pddssig->frequency * (double)retPoint) / nPointSubH) * 32.0;
		
		
		m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq = (uint)ceil((pddsclk->frequency * (double)DEF_DDS_CLK_CONST));
		pddsclk->frequency =   m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq / (double)DEF_DDS_CLK_CONST;
	
		m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq = (uint)floor(pddssig->frequency * DEF_DDS_SIG_CONST_HI);
		pddssig->frequency = m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq / DEF_DDS_SIG_CONST_HI;
		
		nMaxCycle = (int)MAX(DEF_EIS_MIN_CYCLE,m_pGlobalVar->mChVar[bd].mFlow.SetDuration/((1.0/pddsclk->frequency)* 32.0 * retPoint)); //�ּ� ����Ŭ 2
		
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
		
		if(m_pGlobalVar->mChVar[bd].mFlow.setcycle > 0)
		{
			cycles = MIN(cycles,m_pGlobalVar->mChVar[bd].mFlow.setcycle);
		}
		
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
	}
	else
	{
		osrMaxArg = 2;
		nMaxArg = 2; //4cycle ����.
		
	
		m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq = (uint)(pddssig->frequency * DEF_DDS_SIG_CONST_LOW);
		pddssig->frequency = m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq / DEF_DDS_SIG_CONST_LOW;

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
		
		//nMaxCycle = MAX(DEF_EIS_MIN_CYCLE,(int)pow(2,(int)log2(pddssig->frequency * m_pGlobalVar->mChVar[bd].mFlow.SetDuration))); //�ּ� ����Ŭ 2 
		nMaxCycle = (int)MAX(DEF_EIS_MIN_CYCLE,(int)floor(pddssig->frequency * m_pGlobalVar->mChVar[bd].mFlow.SetDuration));
		
		

		cycles = MIN(nMaxCycle,cycles);
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
		
		retPoint = MAX(retPoint,(int)pow(2,(int)log2(MAX_EIS_POINT/cycles)));
		
		if(m_pGlobalVar->mChVar[bd].mFlow.setcycle > 0)
		{
			cycles = MIN(cycles,m_pGlobalVar->mChVar[bd].mFlow.setcycle);
		}
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
		
		
		//VLP Mode-FLT 10, WB2-01
		m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq = (uint)(m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq * (double)retPoint * 32.0 * pow(dConstFlt,(double)osrArg)/DEF_DDS_MCLK_RATE_LOW); //128 = 125K/16M //
		pddsclk->frequency =   m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq / (double)DEF_DDS_CLK_CONST;
		
	}
	
	proc_SetLowMclk(bd, blow); 

	preqcfg->vac_osr = osrArg;
	preqcfg->iac_osr = osrArg;
	
	apply_adc_ac_cfg(bd);
	proc_adc_ac_cfg(bd);
}



void ApplyCalcConfigADC(int bd) //Find OSR and number of points in a cycle
{
	st_zim_eis_status* pStatus = &m_pGlobalVar->mChVar[bd].mChStatInf.eis_status;
	st_zim_dds* pddsclk = &m_pGlobalVar->mChVar[bd].mdevice.dds_clk;
	st_zim_adc_ac_cfg* preqcfg = &m_pGlobalVar->mChVar[bd].mreqdevice.adc_ac.cfg;
	st_zim_dds* pddssig = &m_pGlobalVar->mChVar[bd].mdevice.dds_sig;
	
	
	
	double  dMaxFreq = (double)MIN_EIS_CYC_POINT * 32.0 * pddssig->frequency;
	double  dConstFlt = 2.0;
	
	int nArg,osrArg;
	int LB,UB;
	int nMaxArg,osrMaxArg;
	int retPoint,cycles,nMaxCycle;
	int nPointSubH;
	int MinCycPoint = MIN_EIS_CYC_POINT;
	
	bool blow = true;

	if(m_pGlobalVar->mChVar[bd].mreqdevice.adc_ac.cfg.iac_flt == DEF_FLT_LOWLATENCY) dConstFlt = 4.0;

	m_pGlobalVar->mChVar[bd].mFlow.SetDuration = 1.0;
	if(m_pGlobalVar->mChVar[bd].mChStatInf.TestStatus == DEF_TESTSTATUS_RUNNING)
	{
		if(m_pGlobalVar->mChVar[bd].mTech.type == TECH_QIS)
		{
			if(pddssig->frequency  < 100.0)	
			{
				m_pGlobalVar->mChVar[bd].mFlow.SetDuration = 0.3;
			}
		}
		else if(m_pGlobalVar->mChVar[bd].mTech.type == TECH_DCH)
		{
			m_pGlobalVar->mChVar[bd].mFlow.SetDuration = 0.3;
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
		
		
		m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq = (uint)ceil((pddsclk->frequency * (double)DEF_DDS_CLK_CONST));
		pddsclk->frequency =   m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq / (double)DEF_DDS_CLK_CONST;
	
//		(pddsclk->frequency  * nPointSubH) / (32.0 * retPoint)
		m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq = (uint)floor(pStatus->freq * DEF_DDS_SIG_CONST_HI);
		pddssig->frequency = m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq / DEF_DDS_SIG_CONST_HI;
		
		pStatus->freq = pddssig->frequency;

		nMaxCycle = (int)MAX(DEF_EIS_MIN_CYCLE,m_pGlobalVar->mChVar[bd].mFlow.SetDuration/((1.0/pddsclk->frequency)* 32.0 * retPoint)); //�ּ� ����Ŭ 2 
		
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
		
		if(m_pGlobalVar->mChVar[bd].mFlow.setcycle > 0)
		{
			cycles = MIN(cycles,m_pGlobalVar->mChVar[bd].mFlow.setcycle);
		}
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
	}
	else
	{
		m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq = (uint)(pStatus->freq * DEF_DDS_SIG_CONST_LOW);
		pddssig->frequency = m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq / DEF_DDS_SIG_CONST_LOW;
		pStatus->freq = pddssig->frequency;
		
		dMaxFreq = (double)MIN_EIS_CYC_POINT * 32.0 * pddssig->frequency;
		
		osrMaxArg = 2;
		nMaxArg = 2; //4cycle ����.

		LB = (int)log2((double)MIN_EIS_ADC_MCLK / dMaxFreq);
		UB = (int)log2((double)MAX_EIS_ADC_MCLK / dMaxFreq);
		
		LB = MAX(0, LB-2);
		nArg = MIN(nMaxArg, LB);
		osrArg =MIN(osrMaxArg,(int)((UB - nArg) * 0.25)-1);
		osrArg = MAX(osrArg,0);
		
		retPoint = 	MinCycPoint * (int)pow(2.0,(double)nArg);
		
		
		//nMaxCycle = MAX(2,(int)pow(2,(int)log2(pddssig->frequency * 6))); //�ּ� ����Ŭ 2 , �ִ�ð� 6��
		//nMaxCycle = (int)MAX(MinCycleCnt,(int)pow(2,pddssig->frequency * m_pGlobalVar->mChVar[bd].mFlow.SetDuration)));
		
		nMaxCycle = (int)MAX(DEF_EIS_MIN_CYCLE,(int)floor(pStatus->freq * m_pGlobalVar->mChVar[bd].mFlow.SetDuration));

		if(retPoint == 0) 
		{
			cycles = DEF_EIS_MIN_CYCLE;
			retPoint = (int)(MAX_EIS_POINT/cycles);
		}
		else cycles = (int)(MAX_EIS_POINT / retPoint);
		
		cycles = MIN(nMaxCycle,cycles);
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);

		retPoint = MAX(retPoint,(int)pow(2,(int)log2(MAX_EIS_POINT/cycles)));
		
		if(m_pGlobalVar->mChVar[bd].mFlow.setcycle > 0)
		{
			cycles = MIN(cycles,m_pGlobalVar->mChVar[bd].mFlow.setcycle);
		}
		
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
		
		//VLP Mode-FLT 10, WB2-01
		m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq = (uint)(m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq * (double)retPoint * 32.0 * pow(dConstFlt,(double)osrArg)/DEF_DDS_MCLK_RATE_LOW); //128 = 125K/16M //
		pddsclk->frequency =   m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq / (double)DEF_DDS_CLK_CONST;
		
	}

	proc_SetLowMclk(bd, blow); 

	pStatus->cycle = cycles;
	pStatus->cycpoint = retPoint;
		
	m_pGlobalVar->mChVar[bd].meis[0].eis_raw_new.Ns = pStatus->cycpoint * pStatus->cycle;
	pStatus->totaldatacnt = pStatus->cycpoint * pStatus->cycle;
	pStatus->WorkDatacnt = 0;
	pStatus->LoadDatacnt = 0;
	
	
	m_pGlobalVar->mChVar[bd].mdevice.eis.points = pStatus->totaldatacnt;
	m_pGlobalVar->mChVar[bd].mChStatInf.RealSkip = MAX((pStatus->cycpoint / 32),1);
	

	preqcfg->vac_osr = osrArg;
	preqcfg->iac_osr = osrArg;
	
	apply_adc_ac_cfg(bd);
	proc_adc_ac_cfg(bd);
	
}

inline void proc_eis_SineForDelay(int bd)
{
	ushort buf;
	

	m_pGlobalVar->mChVar[bd].mdevice.dds_sig.frequency = DEF_SINECTRL_FREQ;
	m_pGlobalVar->mChVar[bd].mdevice.dds_sig.Phase = DEF_SINECTRL_PHASE;

	m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq =  (uint)(m_pGlobalVar->mChVar[bd].mdevice.dds_sig.frequency * (double)DEF_DDS_SIG_CONST_LOW);
	m_pGlobalVar->mChVar[bd].flow_dds_sig.req.phase = (uint)(m_pGlobalVar->mChVar[bd].mdevice.dds_sig.Phase * (double)DEF_DDS_PHASE_CONST);
	
	ApplyCalcConfigADCForDelay(bd);

	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return;
	}

	m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl = DDS_SIG_RESET;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq  & 0x3FFF);	
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl = DDS_SIG_RESET_H;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq  >> 14) & 0x3FFF);
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(m_pGlobalVar->mChVar[bd].flow_dds_sig.req.phase & 0xFFF);
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	m_pGlobalVar->mChVar[bd].flow_dds_sig.stat.phase  =  m_pGlobalVar->mChVar[bd].flow_dds_sig.req.phase;
	

	m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRL;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq & 0x3FFF);		
	if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRLH;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq >> 14) & 0x3FFF);
	if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl) == _ERROR)
	{
		return;
	}
}

inline bool proc_eis_init(int bd) // when MCBZA, bd=0
{
	int auxbd;
	ushort buf;

	st_zim_eis_status* pStatus = &m_pGlobalVar->mChVar[bd].mChStatInf.eis_status;
	st_zim_dds* pddssig = &m_pGlobalVar->mChVar[bd].mdevice.dds_sig;

	pddssig->Phase = DEF_SINECTRL_PHASE;
	m_pGlobalVar->mChVar[bd].flow_dds_sig.req.phase = (uint)(pddssig->Phase * (double)DEF_DDS_PHASE_CONST);
	
	ApplyCalcConfigADC(bd);


	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0)
	{
		for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++)
		{
            if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE)
                continue;
            ApplyCalcConfigADC(auxbd); //
			SetDeviceBoard(auxbd);
			// dds clk 
			m_pGlobalVar->mChVar[auxbd].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
			if(ICE_write_16bits(auxbd, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[auxbd].flow_dds_clk.req.ctrl) == _ERROR)
			{
				return false;
			}
		
			buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mChVar[auxbd].flow_dds_clk.req.freq & 0x3FFF);		
			if(ICE_write_16bits(auxbd, ICE_CMD_DDS_CLK,buf) == _ERROR)
			{
				return false;
			}
			
			m_pGlobalVar->mChVar[auxbd].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRLH;
			if(ICE_write_16bits(auxbd, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[auxbd].flow_dds_clk.req.ctrl) == _ERROR)
			{
				return false;
			}
			
			buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mChVar[auxbd].flow_dds_clk.req.freq >> 14) & 0x3FFF);
			if(ICE_write_16bits(auxbd, ICE_CMD_DDS_CLK,buf) == _ERROR)
			{
				return false;
			}
			
			m_pGlobalVar->mChVar[auxbd].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
			if(ICE_write_16bits(auxbd, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[auxbd].flow_dds_clk.req.ctrl) == _ERROR)
			{
				return false;
			}			

			if(ICE_write_16bits(auxbd, ICE_CMD_EIS_IDX, 0x0000) == _ERROR)
			{
				return false;
			}
			
			if(ICE_write_16bits(auxbd, ICE_CMD_EIS_SETPNTS, m_pGlobalVar->mChVar[0].mdevice.eis.points) == _ERROR)
			{
				return false;
			}
			
			buf = (ushort)(m_pGlobalVar->mChVar[0].mFlow.skipcycle * (double)pStatus->cycpoint);
			
			if(ICE_write_16bits(auxbd, ICE_CMD_EIS_SKIPCNT, buf) == _ERROR)
			{
				return false;
			}
		}
	}
	
	SetDeviceBoard(bd);
	
	m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRL;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl) == _ERROR)
	{
		return false;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq & 0x3FFF);	
	if(ICE_write_16bits(bd,ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return false;
	}
	
	m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRLH;
	if(ICE_write_16bits(bd,ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl) == _ERROR)
	{
		return false;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mChVar[bd].flow_dds_sig.req.freq >> 14) & 0x3FFF);
	if(ICE_write_16bits(bd,ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return false;
	}
	
	/*m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRL;
	if(ICE_write_16bits(bd,ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl) == _ERROR)
	{
		return;
	}*/
	/*
	buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(m_pGlobalVar->mChVar[bd].flow_dds_sig.req.phase & 0xFFF);
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	m_pGlobalVar->mChVar[bd].flow_dds_sig.stat.phase  =  m_pGlobalVar->mChVar[bd].flow_dds_sig.req.phase;
	
	
	m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRL;
	if(ICE_write_16bits(bd,ICE_CMD_DDS_SIG,m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl) == _ERROR)
	{
		return;
	}
	*/
	
	
	m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl) == _ERROR)
	{
		return false;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq & 0x3FFF);		
	if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return false;
	}
	
	m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRLH;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl) == _ERROR)
	{
		return false;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq >> 14) & 0x3FFF);
	if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return false;
	}
	
	m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl) == _ERROR)
	{
		return false;
	}
	
	if(ICE_write_16bits(bd, ICE_CMD_EIS_IDX, 0x0000) == _ERROR)
	{
		return false;
	}
	
	if(ICE_write_16bits(bd, ICE_CMD_EIS_SETPNTS, m_pGlobalVar->mChVar[bd].mdevice.eis.points) == _ERROR)
	{
		return false;
	}
	
	buf = (ushort)(m_pGlobalVar->mChVar[bd].mFlow.skipcycle * (double)pStatus->cycpoint);
	
	if(ICE_write_16bits(bd, ICE_CMD_EIS_SKIPCNT, buf) == _ERROR)
	{
		return false;
	}

	return true;
}

inline bool proc_eis_start(int bd) // when MCBZA, bd=0
{
	int auxbd;
	int auxch;
	stChStatusInf* pChStatus = &m_pGlobalVar->mChVar[bd].mChStatInf;
	
	pChStatus->Vdc = m_pGlobalVar->mChVar[bd].mdevice.adc_vdc[0].value;
	pChStatus->Temperature = m_pGlobalVar->mChVar[bd].mdevice.adc_rtd.data.Tvalue;
	
        SetDeviceBoard(bd);
	m_pGlobalVar->mChVar[bd].mdevice.eis.config = DEF_CFG_EIS_START;
	for(int b=0; b < DEF_MAX_AUX_BDCNT; b++)
	{
        m_pGlobalVar->mChVar[0].mChStatInf.ConnCBL[b] = 1;
    }
	if(ICE_write_byte(bd, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[bd].mdevice.eis.config) == _ERROR)
	{
		return false;
	}
	
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0)
	{
		for(auxbd=1; auxbd < DEF_MAX_AUX_CHCNT; auxbd++)
		{
			if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE) continue;
			SetDeviceBoard(auxbd);
			
			//pChStatus = &m_pGlobalVar->mChVar[auxbd].mChStatInf;
			for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch ++)
			{
				//pChStatus->Vdc[auxch] = m_pGlobalVar->mChVar[auxbd].mdevice.adc_vdc[auxch].value;
                                pChStatus->Aux_Vdc[(auxbd-1)*4+auxch] = m_pGlobalVar->mChVar[auxbd].mdevice.adc_vdc[auxch].value;
			}
			m_pGlobalVar->mChVar[auxbd].mdevice.eis.config = DEF_CFG_EIS_START;
			if(ICE_write_byte(auxbd, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[auxbd].mdevice.eis.config) == _ERROR)
			{
				return false;
			}
		}
	}	
	return true;
}

void proc_eis_reset(int bd) // any bd any BZA type
{
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA)
	{
		m_pGlobalVar->mChVar[bd].mdevice.eis.config = DEF_CFG_EIS_RESET;
			
		if(ICE_write_byte(bd, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[bd].mdevice.eis.config) == _ERROR)
		{
			return;
		}
		m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.status = DEF_EIS_STATUS_NONE;
	}	
	else
	{
		m_pGlobalVar->mChVar[bd].mdevice.eis.config = DEF_CFG_EIS_RESET;
			
		if(ICE_write_byte(bd, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[bd].mdevice.eis.config) == _ERROR)
		{
			return;
		}
		m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.status = DEF_EIS_STATUS_NONE;
	}
}



inline void proc_eis_stop(int bd) // when MCBZA bd=0
{
	int auxbd = 0;
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA)
	{
		 
		
		m_pGlobalVar->mChVar[bd].mdevice.eis.config = DEF_CFG_EIS_STOP | DEF_CFG_EIS_START;
		if(ICE_write_byte(bd, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[bd].mdevice.eis.config) == _ERROR)
		{
			return;
		}
		for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++) 
		{
			if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE) continue;
			SetDeviceBoard(auxbd);
			m_pGlobalVar->mChVar[auxbd].mdevice.eis.config = DEF_CFG_EIS_STOP | DEF_CFG_EIS_START;
			if(ICE_write_byte(auxbd, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[auxbd].mdevice.eis.config) == _ERROR)
			{
				return;
			}
		}

		m_pGlobalVar->mChVar[bd].flow_dds_clk.stat.freq = 0;
		m_pGlobalVar->mChVar[bd].flow_dds_clk.req.freq = (uint)(3200.0 * (double)DEF_DDS_CLK_CONST);
	}	
	else
	{
		m_pGlobalVar->mChVar[bd].mdevice.eis.config = DEF_CFG_EIS_STOP | DEF_CFG_EIS_START;
		if(ICE_write_byte(bd, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[bd].mdevice.eis.config) == _ERROR)
		{
			return;
		}
	}
	SetDeviceBoard(bd);
	m_pGlobalVar->mChVar[bd].mdevice.eis.config = DEF_CFG_EIS_RESET;		
	if(ICE_write_byte(bd, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[bd].mdevice.eis.config) == _ERROR)
	{
		return;
	}
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0)
	{
		for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++) 
		{
			if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE) continue;
			SetDeviceBoard(auxbd);
			m_pGlobalVar->mChVar[auxbd].mdevice.eis.config = DEF_CFG_EIS_RESET;		
			if(ICE_write_byte(auxbd, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[auxbd].mdevice.eis.config) == _ERROR)
			{
				return;
			}
		}
	}
	SetDeviceBoard(bd);
	m_pGlobalVar->mChVar[bd].mdevice.eis.config = 0;		
	if(ICE_write_byte(bd, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[bd].mdevice.eis.config) == _ERROR)
	{
		return;
	}
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0)
	{
		for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++) 
		{
			if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE) continue;
			SetDeviceBoard(auxbd);
			m_pGlobalVar->mChVar[auxbd].mdevice.eis.config = 0;		
			if(ICE_write_byte(auxbd, ICE_CMD_EIS_CFG, m_pGlobalVar->mChVar[auxbd].mdevice.eis.config) == _ERROR)
			{
				return;
			}
		}
	}
}

inline void proc_eis_chk_ing(int bd) //when MCBZA, bd=0
{
	ushort buf[4];
	ushort i;
	ushort j;
	int tmp[4];
	int AuxCh = 0, bd_index = 0;
	ushort rawdatacnt[4];
	
	stChStatusInf* pChStatus = &m_pGlobalVar->mChVar[bd].mChStatInf;
	stChStatusInf* pChStatus_bd;

	//
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA)
	{
		m_pGlobalVar->bd_idx ++;
		if(m_pGlobalVar->bd_idx >= m_pGlobalVar->mStatusInf.MaxBoard)m_pGlobalVar->bd_idx = 0;
		bd_index = m_pGlobalVar->bd_idx;

		if (m_pGlobalVar->mChVar[0].eis_got_all_point == true && m_pGlobalVar->mChVar[1].eis_got_all_point == true &&
			m_pGlobalVar->mChVar[2].eis_got_all_point == true && m_pGlobalVar->mChVar[3].eis_got_all_point == true)
		{
			// can be updated aux values before corresponding main values
			for(bd_index=1; bd_index<MAX_DEV_BOARD; bd_index++)
			{
				if(m_pSysConfig->EnaZIM[bd_index] == FALSE || m_pSysConfig->ChkZIM[bd_index] == FALSE) continue;
				//for(AuxCh=0; AuxCh<DEF_MAX_AUX_CHCNT; AuxCh++)
				//{
					for(i=0; i<pChStatus->eis_status.WorkDatacnt; i++)
					{
						m_pGlobalVar->mChVar[bd_index].meis[3].eis_raw_new.raw_adc[i].iac = m_pGlobalVar->mChVar[bd_index].meis[2].eis_raw_new.raw_adc[i].iac = m_pGlobalVar->mChVar[bd_index].meis[1].eis_raw_new.raw_adc[i].iac = m_pGlobalVar->mChVar[bd_index].meis[0].eis_raw_new.raw_adc[i].iac = m_pGlobalVar->mChVar[0].meis[0].eis_raw_new.raw_adc[i].iac;
						m_pGlobalVar->mChVar[bd_index].meis[3].eis_raw_new.raw_val[i].iac = m_pGlobalVar->mChVar[bd_index].meis[2].eis_raw_new.raw_val[i].iac = m_pGlobalVar->mChVar[bd_index].meis[1].eis_raw_new.raw_val[i].iac = m_pGlobalVar->mChVar[bd_index].meis[0].eis_raw_new.raw_val[i].iac = m_pGlobalVar->mChVar[0].meis[0].eis_raw_new.raw_val[i].iac;
						
						//pChStatus->eis_status.Aux_Real_val[AuxCh+bd_index*4][j].iac = m_pGlobalVar->mChVar[bd_index].meis[AuxCh].eis_raw_new.raw_val[i].iac;			
					}
				//}				
			}
			if(m_pGlobalVar->mChVar[0].mTech.type == TECH_DCH)
			{
				proc_mon_dcControl(0);
	
				m_pGlobalVar->mChVar[0].mFlow.m_MsFlowdelayLimit = 2000;
				m_pGlobalVar->mChVar[0].mFlow.m_MsFlowdelayStamp = 0;

				proc_eis_data_conv(0);
				m_pGlobalVar->mChVar[0].mChStatInf.eis_status.status = DEF_EIS_STATUS_FIN;
				if(proc_writedata(0) == false)
				{
					m_pGlobalVar->mChVar[0].mChStatInf.LastError = DEF_LAST_ERROR_MEMORY;
				}

				m_pGlobalVar->mChVar[0].eis_got_all_point = FALSE;
				m_pGlobalVar->mChVar[1].eis_got_all_point = FALSE;
				m_pGlobalVar->mChVar[2].eis_got_all_point = FALSE; 
				m_pGlobalVar->mChVar[3].eis_got_all_point = FALSE;
                return;
			}
			pChStatus->eis_status.status = DEF_EIS_STATUS_FFT;
			m_pGlobalVar->mChVar[0].eis_got_all_point = FALSE;
			m_pGlobalVar->mChVar[1].eis_got_all_point = FALSE;
			m_pGlobalVar->mChVar[2].eis_got_all_point = FALSE; 
			m_pGlobalVar->mChVar[3].eis_got_all_point = FALSE;
			return;
		}
	}
	else
	{
		bd_index = bd;
	}

	if((m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd_index == 0) || m_pSysConfig->mSIFCfg.Type != (byte)SIF_MCBZA)
	{ // 
		SetDeviceBoard(bd_index);
		if(ICE_read_16bits(bd_index, ICE_CMD_EIS_POINTS, &buf[0]) == _ERROR)
		{
			return;
		}
	
		rawdatacnt[0] = buf[0] & 0x0FFF;
		if(pChStatus->eis_status.LoadDatacnt < rawdatacnt[0])
		{
			pChStatus->eis_status.WorkDatacnt = pChStatus->eis_status.LoadDatacnt + MIN(10,(rawdatacnt[0] - pChStatus->eis_status.LoadDatacnt));
		}
		else
		{
			pChStatus->eis_status.WorkDatacnt = rawdatacnt[0];
			
			
			if((buf[0] & 0x8000) == 0x8000)
			{
				if (buf[0] == 0x8000)
				{
                    pChStatus->eis_status.status = DEF_EIS_STATUS_EIS_INIT;
					return;
				}
				
				if(m_pGlobalVar->mChVar[bd_index].mTech.type == TECH_DCH)
				{
					if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA)
					{
						m_pGlobalVar->mChVar[bd_index].eis_got_all_point = true; 
						if (m_pGlobalVar->mChVar[0].eis_got_all_point == true && m_pGlobalVar->mChVar[1].eis_got_all_point == true &&
							m_pGlobalVar->mChVar[2].eis_got_all_point == true && m_pGlobalVar->mChVar[3].eis_got_all_point == true)
						{
							for(bd_index=1; bd_index<MAX_DEV_BOARD; bd_index++)
							{
								if(m_pSysConfig->EnaZIM[bd_index] == FALSE || m_pSysConfig->ChkZIM[bd_index] == FALSE) continue;
								for(i=0; i<pChStatus->eis_status.WorkDatacnt; i++)
								{
									m_pGlobalVar->mChVar[bd_index].meis[3].eis_raw_new.raw_adc[i].iac = m_pGlobalVar->mChVar[bd_index].meis[2].eis_raw_new.raw_adc[i].iac = m_pGlobalVar->mChVar[bd_index].meis[1].eis_raw_new.raw_adc[i].iac = m_pGlobalVar->mChVar[bd_index].meis[0].eis_raw_new.raw_adc[i].iac = m_pGlobalVar->mChVar[0].meis[0].eis_raw_new.raw_adc[i].iac;
									m_pGlobalVar->mChVar[bd_index].meis[3].eis_raw_new.raw_val[i].iac = m_pGlobalVar->mChVar[bd_index].meis[2].eis_raw_new.raw_val[i].iac = m_pGlobalVar->mChVar[bd_index].meis[1].eis_raw_new.raw_val[i].iac = m_pGlobalVar->mChVar[bd_index].meis[0].eis_raw_new.raw_val[i].iac = m_pGlobalVar->mChVar[0].meis[0].eis_raw_new.raw_val[i].iac;
											
								}				
							}
							proc_mon_dcControl(0);
	
							m_pGlobalVar->mChVar[0].mFlow.m_MsFlowdelayLimit = 2000;
							m_pGlobalVar->mChVar[0].mFlow.m_MsFlowdelayStamp = 0;
			
							proc_eis_data_conv(0);
							
							m_pGlobalVar->mChVar[0].mChStatInf.eis_status.status = DEF_EIS_STATUS_FIN;
							if(proc_writedata(0) == false)
							{
								m_pGlobalVar->mChVar[0].mChStatInf.LastError = DEF_LAST_ERROR_MEMORY;
							}
							m_pGlobalVar->mChVar[0].eis_got_all_point = FALSE;
							m_pGlobalVar->mChVar[1].eis_got_all_point = FALSE;
							m_pGlobalVar->mChVar[2].eis_got_all_point = FALSE; 
							m_pGlobalVar->mChVar[3].eis_got_all_point = FALSE;
							return;
						}
					}
					else
					{
						proc_mon_dcControl(bd_index);
		
						m_pGlobalVar->mChVar[bd_index].mFlow.m_MsFlowdelayLimit = 2000;
						m_pGlobalVar->mChVar[bd_index].mFlow.m_MsFlowdelayStamp = 0;
		
						proc_eis_data_conv(bd_index);
						
						m_pGlobalVar->mChVar[bd_index].mChStatInf.eis_status.status = DEF_EIS_STATUS_FIN;
					}
				}
				else
				{
					if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd_index == 0)
					{
						m_pGlobalVar->mChVar[bd_index].eis_got_all_point = true;
					}
					else
						pChStatus->eis_status.status = DEF_EIS_STATUS_FFT;
				}
				//return;
			}
		}
		
		//pChStatus->eis_status.WorkDatacnt = buf & 0x0FFF;
	
		if(pChStatus->eis_status.LoadDatacnt < pChStatus->eis_status.WorkDatacnt)
		{
			for(i=pChStatus->eis_status.LoadDatacnt; i< pChStatus->eis_status.WorkDatacnt; i++)
			{
				if(ICE_read_adcDataSet(bd_index, ICE_CMD_EIS_DATA,&tmp[0],&tmp[1]) == _ERROR) 
				{
					if(i != pChStatus->eis_status.LoadDatacnt) // if SPI failed, start at i 
						pChStatus->eis_status.LoadDatacnt = i;
					return;
				}
				
				
				m_pGlobalVar->mChVar[bd_index].meis[0].eis_raw_new.raw_adc[i].iac = tmp[0];
				m_pGlobalVar->mChVar[bd_index].meis[0].eis_raw_new.raw_adc[i].vac = tmp[1];
				
				m_pGlobalVar->mChVar[bd_index].meis[0].eis_raw_new.raw_val[i].iac = (double)tmp[0] * m_pSysConfig->mZimCfg[bd_index].ranges.Gen.iac_rng[pChStatus->Iac_in_rngno].factor * (-1.0);
				m_pGlobalVar->mChVar[bd_index].meis[0].eis_raw_new.raw_val[i].vac = (double)tmp[1] * m_pSysConfig->mZimCfg[bd_index].ranges.Gen.vac_rng.factor;
				m_pGlobalVar->mChVar[bd_index].meis[0].eis_raw_new.raw_val[i].vac = m_pGlobalVar->mChVar[bd_index].meis[0].eis_raw_new.raw_val[i].vac
																		* m_pSysConfig->mZimCfg[bd_index].ranges.Gen.vac_rng.gain 
																		+ m_pSysConfig->mZimCfg[bd_index].ranges.Gen.vac_rng.offset;
				
			
				if(m_pGlobalVar->mChVar[bd_index].mChStatInf.RealSkip == 0) j = 0;
				else j = (i / m_pGlobalVar->mChVar[bd_index].mChStatInf.RealSkip) % MAX_EIS_RT_RAW_POINT;
				
				pChStatus->eis_status.Real_val[j].iac = m_pGlobalVar->mChVar[bd_index].meis[0].eis_raw_new.raw_val[i].iac; // for main board
				pChStatus->eis_status.Real_val[j].vac = m_pGlobalVar->mChVar[bd_index].meis[0].eis_raw_new.raw_val[i].vac;
				
			}
			pChStatus->eis_status.LoadDatacnt = pChStatus->eis_status.WorkDatacnt;
		}
	}
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd_index > 0) // MCBZA, bd=0
	{
		//for(bd_index=1; bd_index<MAX_DEV_BOARD; bd_index++) 
		{
			if(m_pSysConfig->EnaZIM[bd_index] == FALSE || m_pSysConfig->ChkZIM[bd_index] == FALSE)
			{
				m_pGlobalVar->mChVar[bd_index].eis_got_all_point = true; 	
				return;
			}
			pChStatus_bd = &m_pGlobalVar->mChVar[bd_index].mChStatInf;
			SetDeviceBoard(bd_index);
			if(ICE_read_16bits(bd_index, ICE_CMD_EIS_POINTS, &buf[bd_index]) == _ERROR)
			{
				return;
			}

			rawdatacnt[bd_index] = buf[bd_index] & 0x0FFF;
			if(pChStatus_bd->eis_status.LoadDatacnt < rawdatacnt[bd_index])
			{
				pChStatus_bd->eis_status.WorkDatacnt = pChStatus_bd->eis_status.LoadDatacnt + MIN(10,(rawdatacnt[bd_index] - pChStatus_bd->eis_status.LoadDatacnt));
			}
			else
			{
				pChStatus_bd->eis_status.WorkDatacnt = rawdatacnt[bd_index];
				
				
				if((buf[bd_index] & 0x8000) == 0x8000)
				{
					m_pGlobalVar->mChVar[bd_index].eis_got_all_point = true;  
				}
			}
		}
		//for(bd_index=1; bd_index<MAX_DEV_BOARD; bd_index++) 
		{
			if(m_pSysConfig->EnaZIM[bd_index] == FALSE || m_pSysConfig->ChkZIM[bd_index] == FALSE) return; //continue;
			pChStatus_bd = &m_pGlobalVar->mChVar[bd_index].mChStatInf;
			if(pChStatus_bd->eis_status.LoadDatacnt < pChStatus_bd->eis_status.WorkDatacnt)
			{
				for(i=pChStatus_bd->eis_status.LoadDatacnt; i< pChStatus_bd->eis_status.WorkDatacnt; i++)
				{
					if(ICE_read_adc24bit_x4(bd_index, ICE_CMD_EIS_DATA,&tmp) == _ERROR) // ICE_readaux_adcDataSet
					{
						if(i != pChStatus->eis_status.LoadDatacnt)
							pChStatus_bd->eis_status.LoadDatacnt = i;
						return;
					}
					for(AuxCh=0; AuxCh<DEF_MAX_AUX_CHCNT; AuxCh++)
					{
						
						//m_pGlobalVar->mChVar[bd_index].meis[AuxCh].eis_raw_new.raw_adc[i].iac = m_pGlobalVar->mChVar[0].meis[0].eis_raw_new.raw_adc[i].iac;
						m_pGlobalVar->mChVar[bd_index].meis[AuxCh].eis_raw_new.raw_adc[i].vac = tmp[AuxCh];
						
						//m_pGlobalVar->mChVar[bd_index].meis[AuxCh].eis_raw_new.raw_val[i].iac = m_pGlobalVar->mChVar[0].meis[0].eis_raw_new.raw_val[i].iac;
						m_pGlobalVar->mChVar[bd_index].meis[AuxCh].eis_raw_new.raw_val[i].vac = (double)tmp[AuxCh] * m_pSysConfig->mZimCfg[bd_index].ranges.Aux.vac_rng[AuxCh].factor; // need to alter to right range
						m_pGlobalVar->mChVar[bd_index].meis[AuxCh].eis_raw_new.raw_val[i].vac = m_pGlobalVar->mChVar[bd_index].meis[AuxCh].eis_raw_new.raw_val[i].vac
																			* m_pSysConfig->mZimCfg[bd_index].ranges.Aux.vac_rng[AuxCh].gain 
																			+ m_pSysConfig->mZimCfg[bd_index].ranges.Aux.vac_rng[AuxCh].offset;
						if(m_pGlobalVar->mChVar[bd].mChStatInf.RealSkip == 0) j = 0;
						else j = (i / m_pGlobalVar->mChVar[bd].mChStatInf.RealSkip) % MAX_EIS_RT_RAW_POINT;

						pChStatus->eis_status.Aux_Real_val[AuxCh+(bd_index-1)*4][j].iac = m_pGlobalVar->mChVar[bd_index].meis[AuxCh].eis_raw_new.raw_val[i].iac;
						pChStatus->eis_status.Aux_Real_val[AuxCh+(bd_index-1)*4][j].vac = m_pGlobalVar->mChVar[bd_index].meis[AuxCh].eis_raw_new.raw_val[i].vac;
						
					}
						
				}
				pChStatus_bd->eis_status.LoadDatacnt = pChStatus_bd->eis_status.WorkDatacnt;
			}			
		}
	}
	

}


bool proc_read_vdc_raw(int bd)
{
	
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return true;
	}
	
	INT_32 tmp;
	double value;

	if(ICE_read_adc24bit(bd, ICE_CMD_VDCADC_VAL, &tmp) == _ERROR)
	{
		return false;
	}
	value = (double)tmp
			* m_pSysConfig->mZimCfg[bd].ranges.Gen.vdc_rng[m_pGlobalVar->mChVar[bd].mChStatInf.Vdc_rngno].factor;
	
	SlopeChkRawdata[m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.LoadDatacnt] 
		    = value 
			* m_pSysConfig->mZimCfg[bd].ranges.Gen.vdc_rng[m_pGlobalVar->mChVar[bd].mChStatInf.Vdc_rngno].gain 
			+ m_pSysConfig->mZimCfg[bd].ranges.Gen.vdc_rng[m_pGlobalVar->mChVar[bd].mChStatInf.Vdc_rngno].offset;
	
	m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.LoadDatacnt ++;
	
	if(m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.LoadDatacnt >= DEF_MAX_SLOPECHECK_RAW)
	{
		if(StationaryTest(SlopeChkRawdata,m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.LoadDatacnt,5) == true)
		{
			return true;
		}
		m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.LoadDatacnt = 0;
		m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.WorkDatacnt = DEF_MAX_SLOPECHECK_RAW;
	}
	return false;
}

inline void proc_eis_ControlFail(int bd)
{
	m_pGlobalVar->mChVar[bd].mChStatInf.LastError = DEF_LAST_ERROR_CONFAIL;
	m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.status = DEF_EIS_STATUS_EISSTOP;
	m_pGlobalVar->mChVar[bd].mFlow.m_MsFlowdelayLimit = 10; 
	m_pGlobalVar->mChVar[bd].mFlow.m_MsFlowdelayStamp = 0;
}

bool proc_eis_dcoff(int bd)
{
	
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];

	SetDeviceBoard(bd);
	
	pch->mChStatInf.BiasOn = 0;
	pch->flow_dds_sig.req.ctrl = DDS_SIG_PWDN; // Ctrl 0V;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,pch->flow_dds_sig.req.ctrl) == _ERROR)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	return true;
}

inline bool proc_eis_dcon(int bd)
{
	
	ushort buf;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	pch->mChStatInf.BiasOn = 1;
	
	SetDeviceBoard(bd);
	
	pch->flow_dds_sig.req.ctrl = DDS_SIG_RESET;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,pch->flow_dds_sig.req.ctrl) == _ERROR)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	pch->mreqdevice.dds_sig.Phase = DEF_SINECTRL_PHASE;
	pch->mdevice.dds_sig.Phase = DEF_SINECTRL_PHASE;
    pch->flow_dds_sig.req.phase = (uint)(pch->mdevice.dds_sig.Phase * (double)DEF_DDS_PHASE_CONST);
	buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(pch->flow_dds_sig.req.phase & 0xFFF);
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	m_pGlobalVar->mChVar[bd].flow_dds_sig.stat.phase  =  m_pGlobalVar->mChVar[bd].flow_dds_sig.req.phase;
	
	return true;
}

bool proc_writedata(int bd) // when MCBZA, bd=0
{
	int AuxBd = 0;
	int AuxCh = 0;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	stDefTestData* pdata = m_pTestData[bd] + pch->mChStatInf.eis_status.rescount;
	int ierr = 0;
	bool ActiveZ = true;
	bool ActiveAux = false;

	if(pch->mTech.type == TECH_MON || pch->mTech.type == TECH_DCH)
	{
		ierr = pch->mChStatInf.TaskTimeStamp / pch->mFlow.m_MsSmplLimit;
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

	if((pch->mChStatInf.Iac_rngno % 2) == 0)
	{
		pdata->RangeA = m_pSysConfig->mZimCfg[0].ranges.Gen.iac_rng[m_pGlobalVar->mChVar[bd].mChStatInf.Iac_in_rngno].realmax;
	}
	else
	{
		pdata->RangeA = m_pSysConfig->mZimCfg[0].ranges.Gen.iac_rng[pch->mChStatInf.Iac_in_rngno].realmax * 0.2;	
	}
	
	
	pdata->RangeV = m_pSysConfig->mZimCfg[bd].ranges.Gen.vdc_rng[pch->mChStatInf.Vdc_rngno].realmax;
	
	
		
	pdata->Veoc = pch->mChStatInf.Veoc; //[0]
	pdata->Vdc = pch->mChStatInf.Vdc; //[0]
	
	
	
	pdata->Idc = pch->mChStatInf.Idc;  
	pdata->Temperature = pch->mChStatInf.Temperature;

	if(pch->mTech.type == TECH_MON)	ActiveZ = false;
	else if(pch->mTech.type == TECH_DCH)	
	{
		if(pch->mTech.tech.dch.useir == 0) ActiveZ = false;
	}
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0) ActiveAux = true;
	
	if(ActiveZ == false)
	{
		pdata->fFreq = 0.0;			
		pdata->Zre = 0.0;
		pdata->Zim = 0.0;
	}
	else
	{
		pdata->fFreq = pch->mChStatInf.eis_status.freq;
		pdata->Zre = pch->mChStatInf.eis_status.zdata.real; // for main board
		pdata->Zim = pch->mChStatInf.eis_status.zdata.img;
	}
	
	
	for(AuxBd=0; AuxBd < DEF_MAX_AUX_BDCNT; AuxBd++)
	{
		for(AuxCh=0; AuxCh < DEF_MAX_AUX_CHCNT; AuxCh++)
		{
			if(ActiveAux == true)
			{
				pdata->mData[AuxBd].mData[AuxCh].Veoc = (pch)->mChStatInf.Aux_Veoc[AuxBd*4+AuxCh]; //[AuxCh];
				pdata->mData[AuxBd].mData[AuxCh].Vdc = pch->mChStatInf.Aux_Vdc[AuxBd*4+AuxCh];
			}
			else
			{
				pdata->mData[AuxBd].mData[AuxCh].Veoc = 0.0;
				pdata->mData[AuxBd].mData[AuxCh].Vdc = 0.0;
			}
			if(ActiveZ == false || ActiveAux == false)
			{
				pdata->mData[AuxBd].mData[AuxCh].Zre = 0.0;
				pdata->mData[AuxBd].mData[AuxCh].Zim = 0.0;
			}
			else
			{
				pdata->mData[AuxBd].mData[AuxCh].Zre = (pch)->mChStatInf.eis_status.Aux_zdata[AuxCh+AuxBd*4].real; //(pch+AuxBd+1)
				pdata->mData[AuxBd].mData[AuxCh].Zim = (pch)->mChStatInf.eis_status.Aux_zdata[AuxCh+AuxBd*4].img; //(pch+AuxBd+1)
			}
		}
	}
	
	pch->mChStatInf.eis_status.rescount ++;
	return  true;
}

inline void proc_eisflow_dcon(int bd)
{

	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];

	if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp && pch->mFlow.m_MsFlowdelayStamp < 10000)
	{
		pch->flow_dds_sig.req.ctrl = DDS_SIG_RESET;
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,pch->flow_dds_sig.req.ctrl) == _ERROR)
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
		proc_eis_SineForDelay(bd);//CHECK // proc_eis_dcon(ch);
		pch->mFlow.m_MsFlowdelayStamp = 20000;
		pch->mFlow.m_MsFlowdelayLimit = 21000; 
	}
	else if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp && pch->mFlow.m_MsFlowdelayStamp < 30000)
	{
		if(ChkLowLimit(bd) == true) 
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

inline void proc_eis_chkslope(int bd)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
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
				if(proc_read_vdc_raw(bd) == true)
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

bool proc_eis_begin(int bd) // when MCBZA, bd=0 
{
	int auxbd;
	int auxch;
	volatile double dfreq;
	ushort buf;
	
	m_pGlobalVar->mChVar[bd].mChStatInf.BiasOn = 0; 
	dfreq = GetNextFreq(bd,&buf);
	
	if(dfreq == 0.0)
	{
		m_pGlobalVar->mChVar[bd].mChStatInf.LastError = DEF_LAST_ERROR_ERRSCH;
		return false;
	}

	proc_power_VAC(bd, true);

	m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.freq = dfreq;
	m_pGlobalVar->mChVar[bd].mChStatInf.RealSkip = 1;
	m_pGlobalVar->mChVar[bd].mChStatInf.DispFreq = m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.freq;
	

	m_pGlobalVar->mChVar[bd].bChkSlope = 0;
	m_pGlobalVar->mChVar[bd].mFlow.m_MsFlowdelayLimit = 50; 
	
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0)
	{
		if(m_pSysConfig->EnaZIM[bd] == FALSE || m_pSysConfig->ChkZIM[bd] == FALSE)
            return false;
		memset(&m_pGlobalVar->mChVar[bd].meis[bd].eis_raw_new, 0x0,sizeof(st_zim_eis_raw));

		for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++) 
		{
			if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE)
                continue;
			procaux_power_VAC(auxbd, true); 
			m_pGlobalVar->mChVar[auxbd].mChStatInf.BiasOn = 0;	
			m_pGlobalVar->mChVar[auxbd].mChStatInf.eis_status.freq = dfreq;
			m_pGlobalVar->mChVar[auxbd].mChStatInf.RealSkip = 1;
			m_pGlobalVar->mChVar[auxbd].mChStatInf.DispFreq = m_pGlobalVar->mChVar[auxbd].mChStatInf.eis_status.freq; /* same code with above */
		
			for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++) // 
			{
				m_pGlobalVar->mChVar[0].mChStatInf.DispMag[auxch+(auxbd-1)*4] = 0.0;
				m_pGlobalVar->mChVar[0].mChStatInf.DispPhase[auxch+(auxbd-1)*4] = 0.0;
				
				memset(&m_pGlobalVar->mChVar[0].mChStatInf.eis_status.Aux_Real_val[auxch+(auxbd-1)*4][0],0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
				memset(&m_pGlobalVar->mChVar[0].mChStatInf.eis_status.Aux_Real_val[auxch+(auxbd-1)*4][0],0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT); //
				memcpy(&m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw, &m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw_new,sizeof(st_zim_eis_raw));
				memset(&m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw_new, 0x0,sizeof(st_zim_eis_raw));
				
				m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw.freq = m_pGlobalVar->mChVar[0].mChStatInf.eis_status.freq;
				m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw.Ns = m_pGlobalVar->mChVar[0].mChStatInf.eis_status.totaldatacnt;	
			}
			m_pGlobalVar->mChVar[auxbd].bChkSlope = 0;
			m_pGlobalVar->mChVar[auxbd].mFlow.m_MsFlowdelayLimit = 50; 
		}
	}
	SetDeviceBoard(bd);
	
	set_device_DO(bd);
	
	m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl = DDS_SIG_PWDN; // DDS_SIG_RESET;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[bd].flow_dds_sig.req.ctrl) == _ERROR)
	{
		m_pGlobalVar->mChVar[bd].mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
			
	m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_CLK,m_pGlobalVar->mChVar[bd].flow_dds_clk.req.ctrl) == _ERROR)
	{
		m_pGlobalVar->mChVar[bd].mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	m_pGlobalVar->mChVar[bd].mdevice.eis.config = DEF_CFG_EIS_RESET;
	if(ICE_write_byte(bd, ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mChVar[bd].mdevice.eis.config) == _ERROR)
	{
		m_pGlobalVar->mChVar[bd].mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}

	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0) //
	{
		for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++)
		{
            if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE)
                continue;
			SetDeviceBoard(auxbd);
			setaux_device_DO(auxbd);

			m_pGlobalVar->mChVar[auxbd].mdevice.eis.config = DEF_CFG_EIS_RESET;
			if(ICE_write_byte(auxbd, ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mChVar[auxbd].mdevice.eis.config) == _ERROR)
			{
				m_pGlobalVar->mChVar[auxbd].mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
				return false;
			}
		}
	}

	if(m_pGlobalVar->mChVar[bd].mChStatInf.LoadOn == 0)
	{
		if(m_pGlobalVar->mChVar[bd].mChStatInf.BiasOn == 1)
		{
			proc_eis_dcoff(bd);
		}
	}
	m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.status = DEF_EIS_STATUS_LOADON;
	if(m_pGlobalVar->mChVar[bd].mTech.type == TECH_QIS)
	{
		m_pGlobalVar->mChVar[bd].mFlow.m_MsFlowdelayLimit = 0; 
	}
	
	m_pGlobalVar->mChVar[bd].mFlow.m_MsFlowdelayStamp = 0;
	
	return true;
}

bool proc_eis_FFT(int bd) // when MCBZA, bd=0
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	int auxbd;
	int auxch;
	volatile double dfreq;
	ushort buf;
	if(proc_eis_data_conv(bd) == false)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_FFT;
		return false;
	}

	if(proc_writedata(bd) == false)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_MEMORY;
		return false;
	}

	if(proc_eis_chk_Control(bd, 5.0,pch->meis[0].eis_raw_new.zdata_iac.mag) == true) // 10.0
	{
		buf = 0;
		dfreq = GetNextFreq(bd,&buf);
		
		pch->mFlow.m_MsFlowdelayLimit = 10; 
		if(m_pGlobalVar->mChVar[bd].mTech.type == TECH_QIS) pch->mFlow.m_MsFlowdelayLimit = 0; 
		if(dfreq == 0.0)
		{				
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_EISSTOP;
			pch->mFlow.m_MsFlowdelayStamp = 0;
			return true;
		}
		
		pch->mChStatInf.NextCycleNo = pch->mFlow.m_loopcnt;
		pch->mChStatInf.eis_status.freq = dfreq;
		if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0)
		{
			for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++)
			{
				m_pGlobalVar->mChVar[auxbd].mChStatInf.eis_status.freq = dfreq;
			}			
		}
		if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0 && (m_pGlobalVar->mChVar[bd].mTech.type == TECH_HFR))
		{
			for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++) 
			{
				if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE)
					continue;
				procaux_power_VAC(auxbd, false); 
				SetDeviceBoard(auxbd);
				setaux_device_DO(auxbd);
				if(ICE_write_byte(auxbd, ICE_CMD_EIS_CFG, (UNS_8)0) == _ERROR)
				{
					m_pGlobalVar->mChVar[auxbd].mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
					return false;
				}
			}
		}
		if(pch->mFlow.timeproc == 1 && buf == 1) // not EIS, QIS
		{
			if(pch->mChStatInf.RunTimeStamp >= pch->mFlow.m_MsEndTimeLimit)
			{
				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_EISSTOP;
				pch->mFlow.m_MsFlowdelayStamp = 0;
				return true;
			}
			if(pch->mFlow.celloffwait == 1)
			{
				proc_eis_dcoff(bd);
				proc_eis_LoadOn(bd, 0);
			}
			else 
			{
				proc_eis_dcon(bd);
			}
			
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_WAIT;
			return true;
		}

		pch->mChStatInf.CycleNo = pch->mChStatInf.NextCycleNo;
		
		/*for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++)  // what is channel for MAIN board? guess only using ch=0
		{
			memset(&pch->mChStatInf.eis_status.Aux_Real_val[auxch+(bd-1)*4][0],0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT); 
			memcpy(&pch->meis[auxch].eis_raw, &m_pGlobalVar->mChVar[bd].meis[auxch].eis_raw_new,sizeof(st_zim_eis_raw)); 
			memset(&pch->meis[auxch].eis_raw_new, 0x0,sizeof(st_zim_eis_raw));  
		}*/
		if(m_pSysConfig->mSIFCfg.Type != (byte)SIF_MCBZA || bd==0)
		{
			memset(&pch->mChStatInf.eis_status.Real_val[bd],0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
			memcpy(&pch->meis[bd].eis_raw, &m_pGlobalVar->mChVar[bd].meis[bd].eis_raw_new,sizeof(st_zim_eis_raw));
			memset(&pch->meis[bd].eis_raw_new, 0x0,sizeof(st_zim_eis_raw));		
		}

		if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0)
		{
			for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++)
			{
				for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++)
				{
					memset(&m_pGlobalVar->mChVar[0].mChStatInf.eis_status.Aux_Real_val[auxch+(auxbd-1)*4][0],0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
					memcpy(&m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw, &m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw_new,sizeof(st_zim_eis_raw));
					memset(&m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw_new, 0x0,sizeof(st_zim_eis_raw));
				}
			}
		}

		
		pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_EIS_INIT;
		pch->mFlow.m_MsFlowdelayStamp = 0;
		
	}
	else
	{
		proc_eis_ControlFail(bd);
	}
	return true;
}

bool proc_eis_wait(int bd) // when MCBZA, bd=0
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	int auxbd;
	int auxch;
	
	if(pch->mChStatInf.TaskTimeStamp >= pch->mFlow.m_MsEndTimeLimit)
	{
		pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_EISSTOP;
		pch->mFlow.m_MsFlowdelayLimit = 10; 
		pch->mFlow.m_MsFlowdelayStamp = 0;
		
	}
	else
	{
		if(pch->mFlow.m_MsDurLimit <= pch->mFlow.m_MsDurStamp)
		{
			/*for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++)
			{
				memset(&pch->mChStatInf.eis_status.Aux_Real_val[auxch+(bd-1)*4][0],0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
				memcpy(&pch->meis[auxch].eis_raw, &m_pGlobalVar->mChVar[bd].meis[auxch].eis_raw_new,sizeof(st_zim_eis_raw));
				memset(&pch->meis[auxch].eis_raw_new, 0x0,sizeof(st_zim_eis_raw));
			}*/
			if(m_pSysConfig->mSIFCfg.Type != (byte)SIF_MCBZA || bd==0)
			{
				memset(&pch->mChStatInf.eis_status.Real_val[0],0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
				memcpy(&pch->meis[0].eis_raw, &m_pGlobalVar->mChVar[bd].meis[0].eis_raw_new,sizeof(st_zim_eis_raw));
				memset(&pch->meis[0].eis_raw_new, 0x0,sizeof(st_zim_eis_raw));		
			}

			if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0)
			{
				for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++)
				{
					for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++)
					{
						memset(&m_pGlobalVar->mChVar[auxbd].mChStatInf.eis_status.Aux_Real_val[auxch+(auxbd-1)*4][0],0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
						memcpy(&m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw, &m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw_new,sizeof(st_zim_eis_raw));
						memset(&m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw_new, 0x0,sizeof(st_zim_eis_raw));
					}
				}
			}
			
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
	
	return true;
}

bool proc_eis_main(int bd) // when MCBZA, bd=0
{
	ushort buf;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	int auxbd = 0;

	if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_BEGIN)
	{
		return proc_eis_begin(bd);
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_LOADON)
	{
		if(pch->mChStatInf.LoadOn == 0)
		{
			if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
			{
				proc_eis_LoadOn(bd, 1);
				pch->mFlow.m_MsFlowdelayStamp = 0;
				pch->mFlow.m_MsFlowdelayLimit = pch->mFlow.m_MsFlowdelayStamp + 100; 
				if(pch->mTech.type == TECH_QIS)
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
				proc_eisflow_dcon(bd);
				
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
			pch->mFlow.m_MsOndelayLimit = 0;
		}
		else
		{
			proc_eis_chkslope(bd);
		}
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_EIS_INIT)
	{
		if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
		{ 
			proc_adc_vdc_data(bd);
			if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0 && m_pGlobalVar->mChVar[bd].mTech.type == TECH_HFR)
			{
				for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++) 
				{
					if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE)
						continue;
					procaux_power_VAC(auxbd, true); 
					SetDeviceBoard(auxbd);
					setaux_device_DO(auxbd);
				}
			}
			if(proc_eis_init(bd))
			{
				pch->meis[0].eis_raw.freq = pch->mChStatInf.eis_status.freq;
				pch->meis[0].eis_raw.Ns = pch->mChStatInf.eis_status.totaldatacnt;
				 pch->mdevice.eis.config = DEF_CFG_EIS_RESET; //0;
				
				if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0) //
				{
					for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++) 
					{
						if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE) continue;
						SetDeviceBoard(auxbd);
						m_pGlobalVar->mChVar[auxbd].mdevice.eis.config = DEF_CFG_EIS_RESET;
						if(ICE_write_byte(auxbd, ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mChVar[auxbd].mdevice.eis.config) == _ERROR)
						{
							pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
							return false; // can be the problem when boards are removed during eis
						}					
					}
				}
				 
				SetDeviceBoard(bd);
				if(ICE_write_byte(bd, ICE_CMD_EIS_CFG, (UNS_8)pch->mdevice.eis.config) == _ERROR)
				{
					pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
					return false;
				}
				
				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_RDY;
				if(m_pGlobalVar->mChVar[bd].mTech.type == TECH_QIS)
				{
					pch->mFlow.m_MsFlowdelayLimit = 200; 
				}
				else if(m_pGlobalVar->mChVar[bd].mTech.type == TECH_QIS)
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
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_RDY)
	{
		
		if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
		{
			if(proc_eis_start(bd))
			{
				pch->mFlow.m_MsDurStamp = 0;
				pch->mFlow.m_MsFlowdelayLimit = 50; 
				pch->mFlow.m_MsFlowdelayStamp = 0;
				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_ING;				
			}
		}
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_ING)
	{
		if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
		{
			pch->mFlow.m_MsFlowdelayLimit = 1; 
			pch->mFlow.m_MsFlowdelayStamp = 0;
			proc_eis_chk_ing(bd);
		}
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_FFT)
	{
		return proc_eis_FFT(bd);
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_WAIT)
	{
		return proc_eis_wait(bd);
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_EISSTOP)
	{
		proc_eis_dcoff(bd);
		proc_eis_stop(bd);
		
		pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_LOADOFF;
		pch->mFlow.m_MsFlowdelayLimit = 100; 
		pch->mFlow.m_MsFlowdelayStamp = 0;
	}
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_LOADOFF)
	{
		
		if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
		{
			proc_eis_LoadOn(bd,0);
			pch->mFlow.m_MsFlowdelayLimit = 100; 
			pch->mFlow.m_MsFlowdelayStamp = 0;
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_FIN;
		}
	}		
	else if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_FIN)
	{
		if(m_pGlobalVar->mChVar[bd].mTech.type == TECH_DCH)
		{
			if(pch->mFlow.m_MsFlowdelayLimit <= pch->mFlow.m_MsFlowdelayStamp)
			{
				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_DCHSAMPLE;
				if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA)
				{
					for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++) 
					{
						if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE)
							continue;
						procaux_power_VAC(auxbd, false);
						m_pGlobalVar->mChVar[auxbd].mdevice.eis.config = DEF_CFG_EIS_RESET;
						if(ICE_write_byte(auxbd, ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mChVar[auxbd].mdevice.eis.config) == _ERROR)
						{
							pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
							return false; // 
						}
					}
					for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++) 
					{
						if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE)
							continue;
						m_pGlobalVar->mChVar[auxbd].mdevice.eis.config = 0;
						if(ICE_write_byte(auxbd, ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mChVar[auxbd].mdevice.eis.config) == _ERROR)
						{
							pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
							return false; //
						}
						m_pGlobalVar->m_msTmp = 0;
					}
				}
			}
			else
			{
				if(m_pGlobalVar->m_msRefreshDC > 50)
				{
					m_pGlobalVar->m_msRefreshDC = 0;

					buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(m_pGlobalVar->mChVar[bd].flow_dds_sig.req.phase & 0xFFF);
					if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
					{
						return false;
					}
				}
			}
		}
		else
		{
			proc_power_VAC(bd, false);
			if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA)
			{
				for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++) 
				{
					if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE)
						continue;
					procaux_power_VAC(auxbd, false);
				}
				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_END;
				m_pGlobalVar->mChVar[bd].mChStatInf.NextTaskNo = 1;
			}
		}
		
		/*		
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
		*/
	}
	return true;
}



void Flow_monitor(int bd)
{
	bool bWrite = false;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	uint dur = pch->mChStatInf.TaskTimeStamp - pch->mFlow.m_MsDurCount;
	
	if(pch->mFlow.m_MsSmplLimit <= dur)
	{
		pch->mFlow.m_MsDurCount = pch->mChStatInf.TaskTimeStamp - (pch->mChStatInf.TaskTimeStamp % pch->mFlow.m_MsSmplLimit);
		proc_adc_vdc_data(bd);
		if(proc_writedata(bd) == false)
		{
			pch->mChStatInf.LastError = DEF_LAST_ERROR_MEMORY;
			proc_stop_test(bd, pch->mChStatInf.LastError);
			return;
		}
		bWrite = true;
	}
	
	if(pch->mChStatInf.TaskTimeStamp >= pch->mFlow.m_MsEndTimeLimit)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_AUTOSTOP;
		if(bWrite == false)
		{
			proc_adc_vdc_data(bd);
			if(proc_writedata(bd) == false)
			{
				pch->mChStatInf.LastError = DEF_LAST_ERROR_MEMORY;
			}
		}
		proc_stop_test(bd, pch->mChStatInf.LastError);
	}
	
}

void Flow_discharger(int bd) // if MCBZA, bd=0
{
	int auxbd;
	int auxch;
	ushort buf;
	bool bWrite = false;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	st_zim_dds_flow* pflowddssig = &m_pGlobalVar->mChVar[bd].flow_dds_sig;

	if(m_pGlobalVar->m_msRefreshDC > 50)
	{
		m_pGlobalVar->m_msRefreshDC = 0;

		buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(pflowddssig->req.phase & 0xFFF);
		if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
	}


	if(pch->mFlow.m_MsSmplLimit <= (pch->mChStatInf.TaskTimeStamp - pch->mFlow.m_MsDurCount) && m_pGlobalVar->m_msTmp > 50)
	{
		
		pch->mFlow.m_MsDurCount = pch->mChStatInf.TaskTimeStamp - (pch->mChStatInf.TaskTimeStamp % pch->mFlow.m_MsSmplLimit);
		proc_adc_vdc_data(bd);
		if(proc_writedata(bd) == false)
		{
			pch->mChStatInf.LastError = DEF_LAST_ERROR_MEMORY;
			proc_stop_test(bd, pch->mChStatInf.LastError);
			return;
		}
		bWrite = true;
	}


	if(pch->mChStatInf.Vdc <= pch->mFlow.CutoffV) //[0]
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_AUTOSTOP;
		if(bWrite == false)
		{
			proc_adc_vdc_data(bd);
			if(proc_writedata(bd) == false)
			{
				pch->mChStatInf.LastError = DEF_LAST_ERROR_MEMORY;
			}
		}
		proc_stop_test(bd, pch->mChStatInf.LastError);
		return;
	}
	
	if(pch->mTech.tech.dch.useir == 1)
	{
		if(pch->mFlow.m_MsDurLimit <= (pch->mChStatInf.TaskTimeStamp - pch->mFlow.m_MsDurCount1))
		{
			pch->mFlow.m_MsDurCount1 = pch->mChStatInf.TaskTimeStamp - (pch->mChStatInf.TaskTimeStamp % pch->mFlow.m_MsDurLimit);
			pch->mChStatInf.eis_status.freq  = GetNextFreq(bd,&buf);
			if(pch->mChStatInf.eis_status.freq  == 0.0)
			{
				pch->mChStatInf.LastError = DEF_LAST_ERROR_ERRSCH;
				proc_stop_test(bd, pch->mChStatInf.LastError);
				return;
			}
			
			if(m_pSysConfig->mSIFCfg.Type != (byte)SIF_MCBZA || bd==0)
			{
				memset(&pch->mChStatInf.eis_status.Real_val[0],0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
				memcpy(&pch->meis[0].eis_raw, &m_pGlobalVar->mChVar[bd].meis[0].eis_raw_new,sizeof(st_zim_eis_raw));
				memset(&pch->meis[0].eis_raw_new, 0x0,sizeof(st_zim_eis_raw));		
			}
			/*for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++)
			{
				memset(&pch->mChStatInf.eis_status.Aux_Real_val[auxch+(bd-1)*4][0],0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
				memcpy(&pch->meis[auxch].eis_raw, &m_pGlobalVar->mChVar[bd].meis[auxch].eis_raw_new,sizeof(st_zim_eis_raw));
				memset(&pch->meis[auxch].eis_raw_new, 0x0,sizeof(st_zim_eis_raw));
			}*/

			if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0)
			{
				for(auxbd=1; auxbd<MAX_DEV_BOARD; auxbd++)
				{
					for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++)
					{
						memset(&m_pGlobalVar->mChVar[auxbd].mChStatInf.eis_status.Aux_Real_val[auxch+(bd-1)*4][0],0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
						memcpy(&m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw, &m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw_new,sizeof(st_zim_eis_raw));
						memset(&m_pGlobalVar->mChVar[auxbd].meis[auxch].eis_raw_new, 0x0,sizeof(st_zim_eis_raw));
					}
				}
			}
			
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_BEGIN; //DEF_EIS_STATUS_EIS_INIT;
			pch->mFlow.m_MsFlowdelayLimit = 0;
			pch->mFlow.m_MsFlowdelayStamp = 0;
		}
	}

}


void proc_stop_test(int bd, int errstat)
{

	m_pGlobalVar->mChVar[bd].Start = 0;
	m_pGlobalVar->mChVar[bd].mChStatInf.TaskNo = 0;
	m_pGlobalVar->mChVar[bd].mChStatInf.NextTaskNo = 0;
	//m_pGlobalVar->mChVar[bd].mChStatInf.CycleNo = 0;
	//m_pGlobalVar->mChVar[bd].mChStatInf.NextCycleNo = 0;
	m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.status = DEF_EIS_STATUS_NONE;
	if(errstat == DEF_LAST_ERROR_AUTOSTOP) m_pGlobalVar->mChVar[bd].mChStatInf.TestStatus = DEF_TESTSTATUS_FINISH;
	else m_pGlobalVar->mChVar[bd].mChStatInf.TestStatus = DEF_TESTSTATUS_STOP;
	m_pGlobalVar->mChVar[bd].mChStatInf.LastError  = errstat;
	m_pGlobalVar->mChVar[bd].mChStatInf.ErrorStatus  = errstat;

	m_pGlobalVar->mChVar[bd].mFlow.m_MsFlowdelayLimit = 10; 
	m_pGlobalVar->mChVar[bd].mFlow.m_MsFlowdelayStamp = 0;
	
	m_pGlobalVar->mChVar[bd].CmdStop = 0;
	
	proc_eis_dcoff(bd);
	proc_eis_stop(bd);
	proc_eis_LoadOn(bd,0);
	proc_power_VAC(bd, false);

	// remove z data

}




inline bool ChkDeviceErr(int bd)
{
	if(m_pGlobalVar->mChVar[bd].mdevice.adc_ac.data.iac.adcval == 0 
		&& m_pGlobalVar->mChVar[bd].mdevice.adc_vdc[0].adcval == 0
		&& m_pGlobalVar->mChVar[bd].mdevice.adc_ac.data.vac.adcval == 0 
		&& (m_pGlobalVar->mChVar[bd].mdevice.adc_rtd.data.adcval == 0 && m_pGlobalVar->mChVar[bd].mdevice.adc_rtd.data.fault == 0)) return true;
	
	return false;
}

bool chkTestCondition(int bd)
{
	bool bret = true;
	
	if(ChkSysCalVars(bd) == false) //warning
	{
		m_pGlobalVar->mChVar[bd].mChStatInf.TestStatus |= DEF_TESTSTATUS_NOTCAL;
	}
	else
	{
		m_pGlobalVar->mChVar[bd].mChStatInf.TestStatus &= ~DEF_TESTSTATUS_NOTCAL;
	}
	
	if(m_pGlobalVar->mChVar[bd].Start == 1) 
	{
		if(m_pGlobalVar->mChVar[bd].mdevice.adc_vdc[0].value < -2.0)
		{
			m_pGlobalVar->mChVar[bd].mChStatInf.LastError  = DEF_LAST_ERROR_CELLLOW;
			bret = false;
		}
		else if(m_pGlobalVar->mChVar[bd].FlagOverT == 1)
		{
			m_pGlobalVar->mChVar[bd].mChStatInf.LastError  = DEF_LAST_ERROR_OVERT;
			bret = false;
		}
		else if(m_pGlobalVar->mChVar[bd].mdevice.adc_ac.data.vac.value > DEF_HLIMIT_VACSTABLE)
		{
			m_pGlobalVar->mChVar[bd].mChStatInf.LastError  = DEF_LAST_ERROR_VACSTABLE;
			bret = false;
		}
	}
	else
	{
		if(m_pGlobalVar->mChVar[bd].mdevice.adc_vdc[0].value < -2.0)
		{
			m_pGlobalVar->mChVar[bd].mChStatInf.ErrorStatus  = DEF_LAST_ERROR_CELLLOW;
			bret = false;
		}
		else 
		{
			if(m_pGlobalVar->mChVar[bd].mChStatInf.ErrorStatus == DEF_LAST_ERROR_NOTRDY)
			{
				if(ChkLowLimit(bd) == true) 
				{
					m_pGlobalVar->mChVar[bd].mChStatInf.ErrorStatus = DEF_LAST_ERROR_NONE;	
				}
			}	
			else
			{

				if(ChkHighLimit(bd) == true) 
				{
					m_pGlobalVar->mChVar[bd].mChStatInf.ErrorStatus = DEF_LAST_ERROR_NOTRDY;
					bret = false;
				}
				else if(m_pGlobalVar->mChVar[bd].FlagOverT == 1)
				{
					m_pGlobalVar->mChVar[bd].mChStatInf.ErrorStatus  = DEF_LAST_ERROR_OVERT;
					bret = false;
				}
				else
				{
					m_pGlobalVar->mChVar[bd].mChStatInf.ErrorStatus  = DEF_LAST_ERROR_NONE;
				}
			}
		}
	}
	
	
	return bret;
}

void set_device_DO(int bd)
{
	
	
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[bd].mreqdevice.ctrl_do;
	st_zim_do* pdo = &m_pGlobalVar->mChVar[bd].mdevice.ctrl_do;
    UNS_8 tmp = 0;
	
	
	
	if((preqdo->data & 0x7F) != (pdo->data & 0x7F))
	{
		if(ICE_write_byte(bd, ICE_CMD_DEVICE_DO, preqdo->data) == _ERROR)
		{
			return;
		}
		if(preqdo->data & 0x10)
			m_pGlobalVar->mChVar[bd].mChStatInf.Vdc_rngno = 1;
		else
			m_pGlobalVar->mChVar[bd].mChStatInf.Vdc_rngno = 0;
		m_pGlobalVar->mChVar[bd].mChStatInf.Iac_rngno = (preqdo->data >> 1 & 0x7);
		m_pGlobalVar->mChVar[bd].mChStatInf.Iac_in_rngno = (preqdo->data >> 2 & 0x3);
		
		if((preqdo->data & DEF_DEVDO_CONT_SD) == DEF_DEVDO_CONT_SD)
		{
			m_pGlobalVar->mChVar[bd].mChStatInf.LoadOn = 1;
		}
		else
		{
			m_pGlobalVar->mChVar[bd].mChStatInf.LoadOn = 0;
		}
		
		pdo->data = preqdo->data;
	}
	else
	{
		if(ICE_read_byte(bd, ICE_CMD_DEVICE_DO, &tmp) == _ERROR) return;
		if(preqdo->data != tmp) 
		{
			pdo->data = tmp;
		}
	}
}

void setaux_device_DO(int bd)
{
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[bd].mreqdevice.ctrl_do;
	st_zim_do* pdo = &m_pGlobalVar->mChVar[bd].mdevice.ctrl_do;
    UNS_8 tmp = 0;
	
	if((preqdo->data & 0x7F) != (pdo->data & 0x7F))
	{
		if(ICE_write_byte(bd, ICE_AUX_CMD_DEVICE_DO, preqdo->data) == _ERROR)
		{
			return;
		}
		if(preqdo->data & 0x10)
			m_pGlobalVar->mChVar[bd].mChStatInf.Vdc_rngno = 1;
		else
			m_pGlobalVar->mChVar[bd].mChStatInf.Vdc_rngno = 0;
	
		m_pGlobalVar->mChVar[bd].mChStatInf.Iac_rngno = m_pGlobalVar->mChVar[0].mChStatInf.Iac_rngno; // not measure Iac 
		m_pGlobalVar->mChVar[bd].mChStatInf.Iac_in_rngno = m_pGlobalVar->mChVar[0].mChStatInf.Iac_in_rngno;
		
		/*if((preqdo->data & DEF_DEVDO_CONT_SD) == DEF_DEVDO_CONT_SD)
		{
			m_pGlobalVar->mChVar[bd].mChStatInf.LoadOn = 1;
		}
		else
		{
			m_pGlobalVar->mChVar[bd].mChStatInf.LoadOn = 0;
		}*/
		
		pdo->data = preqdo->data;
	}
	else
	{
		if(ICE_read_byte(bd, ICE_AUX_CMD_DEVICE_DO, &tmp) == _ERROR) return;
		if(preqdo->data != tmp) 
		{
			pdo->data = tmp;
		}
	}
}

inline void proc_check_main(int bd)
{
	chkTestCondition(bd);
	if(m_pGlobalVar->mChVar[bd].Start == 0)
	{
		proc_default_setrange(bd);
	}
}

void clear_impedance(int bd)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	pch->mChStatInf.eis_status.zdata.real = 0; // for main board
	pch->mChStatInf.eis_status.zdata.img = 0;

	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA)
	{
		for(int auxbd=0; auxbd<DEF_MAX_AUX_BDCNT; auxbd++) 
		{
			if(m_pSysConfig->EnaZIM[auxbd] == FALSE || m_pSysConfig->ChkZIM[auxbd] == FALSE)
                continue;
			for(int auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++) // 
			{
				(pch)->mChStatInf.eis_status.Aux_zdata[auxch+auxbd*4].real = 0; 
				(pch)->mChStatInf.eis_status.Aux_zdata[auxch+auxbd*4].img = 0; 
			}
		}
	}
}

void AuxProc(int bd)
{
	//int auxbd;
	//int auxch;
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return;
	}
	
	if(m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.status == DEF_EIS_STATUS_ING) return;
	if(m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.status == DEF_EIS_STATUS_FFT) return;
	//if(m_pGlobalVar->mChVar[bd].mChStatInf.eis_status.status == DEF_EIS_STATUS_FIN) clear_impedance(bd);
	
	if(m_pGlobalVar->mChVar[bd].TmpResetICE > 0) return;			  
	proc_adc_rtd(bd);
	if(m_pGlobalVar->mChVar[bd].TmpResetICE > 0) return;
	proc_adc_vdc_data(bd);
	if(m_pGlobalVar->mChVar[bd].TmpResetICE > 0) return;
	proc_auto_vdc_proc(bd);
	if(m_pGlobalVar->mChVar[bd].mChStatInf.LoadOn == 0)
	{
		m_pGlobalVar->mChVar[bd].mChStatInf.Idc = 0.0;
		//for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++)
		{
			m_pGlobalVar->mChVar[bd].mChStatInf.Veoc= m_pGlobalVar->mChVar[bd].mChStatInf.Vdc; //[auxch]
		}
		
		if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0)
		{
			for(int auxbd=0; auxbd<DEF_MAX_AUX_BDCNT; auxbd++)
			{
				for(int auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++)
				{
					m_pGlobalVar->mChVar[0].mChStatInf.Aux_Veoc[auxch+4*auxbd]= m_pGlobalVar->mChVar[0].mChStatInf.Aux_Vdc[auxch+4*auxbd];
				}
			}
		}
		
		
	}
	else
	{
		if(m_pGlobalVar->mChVar[bd].mChStatInf.BiasOn == 1 && (m_pGlobalVar->mChVar[bd].mChStatInf.TestStatus & 0xF) == DEF_TESTSTATUS_RUNNING)
		{
			st_zim_adci_rnginf mrng = m_pSysConfig->mZimCfg[bd].ranges.Gen.iac_rng[m_pGlobalVar->mChVar[bd].mChStatInf.Iac_in_rngno];
			if((m_pGlobalVar->mChVar[bd].mChStatInf.Iac_rngno % 2) == 0)
			{
				m_pGlobalVar->mChVar[bd].mChStatInf.Idc = mrng.realmax * 0.5;
			}
			else
			{
				m_pGlobalVar->mChVar[bd].mChStatInf.Idc = mrng.realmax * mrng.controlgain * 0.5;
			}
		}
		else
		{
			m_pGlobalVar->mChVar[bd].mChStatInf.Idc = 0.0;
		}
	}
	if(m_pGlobalVar->mChVar[bd].TmpResetICE > 0) return;
	CheckThermoStat(bd);
	if(m_pGlobalVar->mChVar[bd].TmpResetICE > 0) return;
	
	proc_check_main(bd);
}

void DefaultDeviceProc(int bd)
{
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		return;
	}
	
	if(m_pGlobalVar->mChVar[bd].bTestMode < 2)
	{
		set_dds_sig(bd);
		set_dds_clk(bd);
		proc_eis_cfg(bd); 
		proc_adc_ac_cfg(bd);
	}
	else 
	{
		set_dds_sig_dc(bd);
	}
	
}

void RefreshFPGA(int bd)
{
	apply_req_dds_clock(bd);
	apply_req_dds_signal(bd);
	apply_adc_ac_cfg(bd);

	set_dds_sig(bd);
        if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
          set_AUX_dds_clk(bd);
        }
	else
	{
          set_dds_clk(bd);
        }
	proc_eis_cfg(bd); //
	
	proc_adc_rtd_cfg(bd);
	proc_adc_ac_cfg(bd);	//
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
	{
		setaux_device_DO(bd);
	}
	else
	{
		set_device_DO(bd);
	}
}

void reload_eis_rawval(int bd) 
{
	ushort i;
	int tmp[4];
	int AuxCh = 0;
	
	stChStatusInf* pChStatus = &m_pGlobalVar->mChVar[bd].mChStatInf;
	if(ICE_write_16bits(bd, ICE_CMD_EIS_IDX, 0x0000) == _ERROR)
	{
		return;// false;
	}
	if((m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd == 0) || m_pSysConfig->mSIFCfg.Type != (byte)SIF_MCBZA) // main bd
	{
		for(i=0; i< pChStatus->eis_status.WorkDatacnt; i++)
		{
			if(ICE_read_adcDataSet(bd, ICE_CMD_EIS_DATA,&tmp[0],&tmp[1]) == _ERROR) 
			{
				return;
			}
			m_pGlobalVar->mChVar[bd].meis[0].eis_raw_new.raw_adc[i].iac = tmp[0];
			m_pGlobalVar->mChVar[bd].meis[0].eis_raw_new.raw_adc[i].vac = tmp[1];
			
			m_pGlobalVar->mChVar[bd].meis[0].eis_raw_new.raw_val[i].iac = (double)tmp[0] * m_pSysConfig->mZimCfg[bd].ranges.Gen.iac_rng[pChStatus->Iac_in_rngno].factor * (-1.0);
			m_pGlobalVar->mChVar[bd].meis[0].eis_raw_new.raw_val[i].vac = (double)tmp[1] * m_pSysConfig->mZimCfg[bd].ranges.Gen.vac_rng.factor;
			m_pGlobalVar->mChVar[bd].meis[0].eis_raw_new.raw_val[i].vac = m_pGlobalVar->mChVar[bd].meis[0].eis_raw_new.raw_val[i].vac
																	* m_pSysConfig->mZimCfg[bd].ranges.Gen.vac_rng.gain 
																	+ m_pSysConfig->mZimCfg[bd].ranges.Gen.vac_rng.offset;
			
		}
	}
	else if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0) // MCBZA auxbd
	{
		if(m_pSysConfig->EnaZIM[bd] == FALSE || m_pSysConfig->ChkZIM[bd] == FALSE) return; 
		
		for(i=0; i< pChStatus->eis_status.WorkDatacnt; i++)
		{
			if(ICE_read_adc24bit_x4(bd, ICE_CMD_EIS_DATA,&tmp) == _ERROR) // ICE_readaux_adcDataSet
			{
				return;
			}
			for(AuxCh=0; AuxCh<DEF_MAX_AUX_CHCNT; AuxCh++)
			{
				m_pGlobalVar->mChVar[bd].meis[AuxCh].eis_raw_new.raw_adc[i].iac = m_pGlobalVar->mChVar[0].meis[0].eis_raw_new.raw_adc[i].iac;
				m_pGlobalVar->mChVar[bd].meis[AuxCh].eis_raw_new.raw_adc[i].vac = tmp[AuxCh];
				
				m_pGlobalVar->mChVar[bd].meis[AuxCh].eis_raw_new.raw_val[i].iac = m_pGlobalVar->mChVar[0].meis[0].eis_raw_new.raw_val[i].iac;
				m_pGlobalVar->mChVar[bd].meis[AuxCh].eis_raw_new.raw_val[i].vac = (double)tmp[AuxCh] * m_pSysConfig->mZimCfg[bd].ranges.Aux.vac_rng[AuxCh].factor; //
				m_pGlobalVar->mChVar[bd].meis[AuxCh].eis_raw_new.raw_val[i].vac = m_pGlobalVar->mChVar[bd].meis[AuxCh].eis_raw_new.raw_val[i].vac
																	* m_pSysConfig->mZimCfg[bd].ranges.Aux.vac_rng[AuxCh].gain 
																	+ m_pSysConfig->mZimCfg[bd].ranges.Aux.vac_rng[AuxCh].offset; //
			
			}
		}
	}
	m_pGlobalVar->mChVar[0].mChStatInf.eis_status.status = DEF_EIS_STATUS_EISSTOP;
}



		
