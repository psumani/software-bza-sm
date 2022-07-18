#include "sif_zim.h"


double 				SlopeChkRawdata[DEF_MAX_SLOPECHECK_RAW];


// 0 : LED9, 1 : LED11, 2 : LED10, 3 : LED7, 4 : EXT
inline void Device_delay(int cnt)
{
	int i;
	for(i=0; i<cnt; i++)
	{
	}
}

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

bool CheckIceCfgDone(void)	
{
	if(P2_INP_STATE_bit.P2_8) 
	{
		return true;
	}
	return false;
}


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

void apply_req_dds_signal(void)
{
	ushort blow = 1;
	double dConst = DEF_DDS_SIG_CONST_LOW;
	st_zim_dds* preqdds = &m_pGlobalVar->mStatusInf.mreqdevice.dds_sig;
	st_zim_dds* pdds = &m_pGlobalVar->mStatusInf.mdevice.dds_sig;
	st_zim_dds_flow* pflow = &m_pGlobalVar->mStatusInf.flow_dds_sig;
	
	double dMaxFreq = (double)MIN_EIS_CYC_POINT * 32.0 * preqdds->frequency; // 100KHz = 102,400,000
	int UB = (int)log2((double)MAX_EIS_ADC_MCLK / dMaxFreq);
	
	if(UB < 0)
	{
		blow = 0;
		dConst = DEF_DDS_SIG_CONST_HI;
	}
	
	proc_SetLowMclk(blow);
	
	pflow->req.ctrl = DDS_SIG_DEFAULT_CTRL;
	pflow->req.freq = (uint)(preqdds->frequency * dConst);
	pdds->frequency = preqdds->frequency;
	
	pflow->req.phase = (uint)(preqdds->Phase * (double)DEF_DDS_PHASE_CONST);
	pdds->Phase = preqdds->Phase;

	
	if(preqdds->Half == 1)
	{
		pflow->req.ctrl |= DDS_OPENBIT;
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

void apply_req_dds_clock(void)
{
	st_zim_dds* preqdds = &m_pGlobalVar->mStatusInf.mreqdevice.dds_clk;
	st_zim_dds* pdds = &m_pGlobalVar->mStatusInf.mdevice.dds_clk;
	st_zim_dds_flow* pflow = &m_pGlobalVar->mStatusInf.flow_dds_clk;

	pflow->req.ctrl = DDS_CLK_DEFAULT_CTRL;
	pflow->req.freq = (uint)(preqdds->frequency * (double)DEF_DDS_CLK_CONST);
	pdds->frequency = preqdds->frequency;
	
	pflow->req.phase = (uint)(preqdds->Phase * (double)DEF_DDS_PHASE_CONST);	
	pdds->Phase = preqdds->Phase;
	
	if(preqdds->Half == 1)
	{
		pflow->req.ctrl |= DDS_OPENBIT;
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

void apply_adc_ac_cfg(void)
{
	ushort tmp;
	
	st_zim_adc_flow* pflow = &m_pGlobalVar->mStatusInf.flow_adc_ac;
	st_zim_adc_ac_cfg* preqcfg = &m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.cfg;
	st_zim_adc_ac_cfg* pcfg = &m_pGlobalVar->mStatusInf.mdevice.adc_ac.cfg;
	
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

inline void set_dds_sig(void)
{
	ushort buf;
	
	if(m_pGlobalVar->mStatusInf.flow_dds_sig.stat.freq !=  m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq)
	{
		buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x2FFF;
		if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
	
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq & 0x3FFF);
		if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}

		buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl | 0x1000;
		if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq >> 14) & 0x3FFF);
		
		if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		
		m_pGlobalVar->mStatusInf.flow_dds_sig.stat.freq  =  m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq;
	}
	
	if(m_pGlobalVar->mStatusInf.flow_dds_sig.stat.phase !=  m_pGlobalVar->mStatusInf.flow_dds_sig.req.phase)
	{

		buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(m_pGlobalVar->mStatusInf.flow_dds_sig.req.phase & 0xFFF);
		if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		m_pGlobalVar->mStatusInf.flow_dds_sig.stat.phase  =  m_pGlobalVar->mStatusInf.flow_dds_sig.req.phase;
	}
	
	if(m_pGlobalVar->mStatusInf.flow_dds_sig.stat.ctrl !=  m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl)
	{
		buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x3FFF;
		if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		m_pGlobalVar->mStatusInf.flow_dds_sig.stat.ctrl  =  m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl;
	}
}

inline void set_dds_clk(void)
{
	ushort buf;
	
	if(m_pGlobalVar->mStatusInf.flow_dds_clk.stat.freq !=  m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq)
	{
		
		
		buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl & 0x2FFF;
		if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq & 0x3FFF);
		if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl | 0x1000;
		if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq >> 14) & 0x3FFF);
		if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		
		m_pGlobalVar->mStatusInf.flow_dds_clk.stat.freq =  m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq;
	}

	if(m_pGlobalVar->mStatusInf.flow_dds_clk.stat.phase !=  m_pGlobalVar->mStatusInf.flow_dds_clk.req.phase)
	{
		buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(m_pGlobalVar->mStatusInf.flow_dds_clk.req.phase & 0xFFF);

		if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		m_pGlobalVar->mStatusInf.flow_dds_clk.stat.phase  =  m_pGlobalVar->mStatusInf.flow_dds_clk.req.phase;
	}
	
	if(m_pGlobalVar->mStatusInf.flow_dds_clk.stat.ctrl !=  m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl)
	{
		buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl & 0x3FFF;
		if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			return;
		}
		m_pGlobalVar->mStatusInf.flow_dds_clk.stat.ctrl =  m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl;
	}
}

double Polynomial(double x)     
{         
	double y = 0;         
	double xn = 0;   
	int i;
	
	for (i = 0; i < DEF_RTD_COEF_LEN; i++)         
	{             
		if (m_pGlobalVar->ranges.rtd_rng.factor == DEF_ADC_RTD_CONST_PT1000) 
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
double ResistanceToTemperature(double r)
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

	if (m_pGlobalVar->ranges.rtd_rng.factor == DEF_ADC_RTD_CONST_PT1000) 
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
		t += Polynomial(r); 
	}
 	return t;     
} 


/*
double GetPlatinumRTD(double Rin) 
{
	double A = 3.9083E-3;
	double B = -5.775E-7;
	//double C = -4.183E-12;
	double R0 = 100.0;					// PT-100
	double Rt = Rin;
	double T;
	
	if(Rt < 100.0) Rt = 100.0; 	// - temp. remove
	
	
	T = (((-1.0) * R0 * A)
		+ sqrt((R0 * R0 * A * A)-(4.0 * R0 * B * (R0 - Rt))))
		/ (2 * R0 * B);
	
   return T;
} 
	
*/


inline void proc_adc_rtd_cfg(void)
{
	st_zim_rtd* preqrtd = &m_pGlobalVar->mStatusInf.mreqdevice.adc_rtd;
	st_zim_rtd* prtd = &m_pGlobalVar->mStatusInf.mdevice.adc_rtd;
	UNS_8 tmp = 0;
	
	if(preqrtd->config.data != prtd->config.data)
	{
		if(ICE_write_byte(ICE_CMD_RTD_CFG, preqrtd->config.data) == _ERROR)
		{
			return;
		}
		prtd->config.data = preqrtd->config.data;
	}
	else
	{
		if(ICE_read_byte(ICE_CMD_RTD_CFG, &tmp) == _ERROR) return;
		if(preqrtd->config.data != tmp) prtd->config.data = tmp;
	}
	
}	

inline void proc_adc_rtd(void)
{
	UNS_16 tmp = 0;
	st_zim_rtd* prtd = &m_pGlobalVar->mStatusInf.mdevice.adc_rtd;
	
	if(prtd->config.data & 0x2) 
	{
		proc_adc_rtd_cfg();
		return;
	}
	
	if(ICE_read_16bits(ICE_CMD_RTD_DTA,&tmp) == _ERROR)
	{
		return;
	}
	
	prtd->data.fault = tmp & 0x1;
	prtd->data.adcval = tmp >> 1;
	
	if(prtd->data.adcval == 0) prtd->data.fault = 1;
	if(prtd->data.fault == 1)
	{
		if (m_pGlobalVar->ranges.rtd_rng.factor == DEF_ADC_RTD_CONST_PT1000) 
		{
			prtd->data.Rvalue = 1000.0;
		}
		else 
		{
			prtd->data.Rvalue = 100.0;
		}
		prtd->data.Tvalue = 0.0;
		
		prtd->config.data |= 0x6;
		
		if(ICE_write_byte(ICE_CMD_RTD_CFG, prtd->config.data) == _ERROR)
		{
			return;
		}
	}
	else
	{
		prtd->data.Rvalue = prtd->data.adcval * m_pGlobalVar->ranges.rtd_rng.factor;
		prtd->data.Tvalue = ResistanceToTemperature(prtd->data.Rvalue); 
//		prtd->data.Tvalue = GetPlatinumRTD(prtd->data.Rvalue);
		prtd->data.Tvalue = prtd->data.Tvalue 
						* m_pGlobalVar->ranges.rtd_rng.gain 
						+ m_pGlobalVar->ranges.rtd_rng.offset;
		proc_adc_rtd_cfg();
	}
}	

INT_32 proc_read_version(void)
{
	UNS_16 tmp = 0;
	if(ICE_read_16bits(ICE_CMD_FWVERSION,&tmp) == _ERROR)
	{
			return _ERROR;
	}
	m_pSysConfig->mZimCfg.ZimFWVersion = tmp;
	return _NO_ERROR;
}	

int CheckThermoStat(void)
{
	UNS_8 data = 0;
	if(ICE_read_byte(ICE_CMD_DEVICE_DO, &data) == _ERROR)
	{
		return -1;
	}

	if(m_pGlobalVar->FlagOverT == 0)
	{
		if(data & 0x80)
		{
			if(m_pGlobalVar->OverT_Timer > 3000) 
			{
				m_pGlobalVar->FlagOverT = 1;
				return 1;
			}
		}
		else
		{
			m_pGlobalVar->OverT_Timer = 0;
		}
	}
	else
	{
		if(data & 0x80)
		{
			m_pGlobalVar->OverT_Timer = 0;
			return 1;
		}
		else
		{
			if(m_pGlobalVar->OverT_Timer > 3000) 
			{
				m_pGlobalVar->FlagOverT = 0;
			}
			else
			{
				return 1;
			}
		}
	}
	
	return 0;
}



inline void set_device_DO(void)
{
	st_zim_do* preqdo = &m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do;
	st_zim_do* pdo = &m_pGlobalVar->mStatusInf.mdevice.ctrl_do;
    UNS_8 tmp = 0;
	if((preqdo->data & 0x7F) != (pdo->data & 0x7F))
	{
		if(ICE_write_byte(ICE_CMD_DEVICE_DO, preqdo->data) == _ERROR)
		{
			return;
		}
		
		if((preqdo->data & DEF_DEVDO_VDC_RNG0) == DEF_DEVDO_VDC_RNG0)
		{
			m_pGlobalVar->mStatusInf.vdc_rngno = 0;
		}
		else
		{
			m_pGlobalVar->mStatusInf.vdc_rngno = 1;
		}
		
		m_pGlobalVar->mStatusInf.iac_rngno = (preqdo->data >> 1 & 0x7);
		m_pGlobalVar->mStatusInf.iac_in_rngno = (preqdo->data >> 2 & 0x3);
		
		if((preqdo->data & DEF_DEVDO_CONT_SD) == DEF_DEVDO_CONT_SD)
		{
			m_pGlobalVar->mStatusInf.LoadOn = 1;
		}
		else
		{
			m_pGlobalVar->mStatusInf.LoadOn = 0;
		}
		
		pdo->data = preqdo->data;
		m_pGlobalVar->mStatusInf.meis.eis_status.iac_rngno = m_pGlobalVar->mStatusInf.iac_rngno;
		m_pGlobalVar->mStatusInf.meis.eis_status.iac_in_rngno = m_pGlobalVar->mStatusInf.iac_in_rngno;
		m_pGlobalVar->mStatusInf.meis.eis_status.vdc_rngno = m_pGlobalVar->mStatusInf.vdc_rngno;
	}
	else
	{
		if(ICE_read_byte(ICE_CMD_DEVICE_DO, &tmp) == _ERROR) return;
		if(preqdo->data != tmp) pdo->data = tmp;
	}
}


inline void proc_adc_ac_cfg(void)
{
    UNS_8 tmp = 0;
	st_zim_adc_flow* pflow = &m_pGlobalVar->mStatusInf.flow_adc_ac;
	
	if(pflow->stat != pflow->req)
	{
		tmp = (pflow->req & 0xFF);
		if(ICE_write_byte(ICE_CMD_ACADC_DEVICE, tmp) == _ERROR)
		{
			return;
		}
		pflow->req = (ushort)tmp;	
		pflow->stat = pflow->req;	
	}
	else
	{
		if(ICE_read_byte(ICE_CMD_ACADC_DEVICE, &tmp) == _ERROR) return;
		if(pflow->req != tmp) pflow->stat = tmp;
	}
}

inline void proc_adc_ac_data(void)
{
	INT_32 tmpi;
	INT_32 tmpv;
	
	st_zim_adc_ac* pac = &m_pGlobalVar->mStatusInf.mdevice.adc_ac;
	if(ICE_read_adc24bit(ICE_CMD_IACADC_VAL, &tmpi) == _ERROR)
	{
		return;
	}
	
	pac->data.iac.adcval = tmpi;
	pac->data.iac.value = (double)tmpi * m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].factor * (-1.0);
	pac->data.iac.value = pac->data.iac.value 
					* m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].gain 
					+ m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].offset;
	
	
	if(ICE_read_adc24bit(ICE_CMD_VACADC_VAL, &tmpv) == _ERROR)
	{			   
		return;
	}
	
	pac->data.vac.adcval = tmpv;
	pac->data.vac.value = (double)tmpv * m_pGlobalVar->ranges.vac_rng.factor;
	pac->data.vac.value = pac->data.vac.value
					* m_pGlobalVar->ranges.vac_rng.gain
					+ m_pGlobalVar->ranges.vac_rng.offset;
	/*
	UNS_32 tmp;
	st_zim_adc_ac* pac = &m_pGlobalVar->mStatusInf.mdevice.adc_ac;
	
	if(ICE_read_24bits(ICE_CMD_IACADC_VAL, &tmp) == _ERROR)
	{
		return;
	}
	pac->data.iac.adcval = tmp;
	if((tmp & 0x800000) == 0x800000) 
	{
		pac->data.iac.value = (double)(0x1000000 - tmp)
			* m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].factor
			* -1.0;
	}
	else 
	{
		pac->data.iac.value = (double)tmp
			* m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].factor;
	}

	pac->data.iac.value = pac->data.iac.value 
					* m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].gain 
					+ m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].offset;
	
	
	if(ICE_read_24bits(ICE_CMD_VACADC_VAL, &tmp) == _ERROR)
	{
		return;
	}
	
	pac->data.vac.adcval = tmp;
	pac->data.vac.value = pac->data.vac.adcval * m_pGlobalVar->ranges.vac_rng.factor;
	pac->data.vac.value += m_pGlobalVar->ranges.vac_rng.minimum;
	pac->data.value = pac->data.value 
					* m_pGlobalVar->ranges.vac_rng.gain 
					+ m_pGlobalVar->ranges.vac_rng.offset;
	*/
}

inline void proc_adc_vdc_data(void)
{
	INT_32 tmp;
	
	st_zim_adc_vdc* pvdc = &m_pGlobalVar->mStatusInf.mdevice.adc_vdc;
	if(ICE_read_adc24bit(ICE_CMD_VDCADC_VAL, &tmp) == _ERROR)
	{		 	  
		return;
	}
	
	pvdc->adcval = tmp;
	pvdc->value = (double)tmp
			* m_pGlobalVar->ranges.vdc_rng[m_pGlobalVar->mStatusInf.vdc_rngno].factor;
	/*	
	UNS_32 tmp;

	st_zim_adc_vdc* pvdc = &m_pGlobalVar->mStatusInf.mdevice.adc_vdc;
	if(ICE_read_adc24bit(ICE_CMD_VDCADC_VAL, &tmp) == _ERROR)
	{
		return;
	}
	pvdc->adcval = tmp;
	
	if((tmp & 0x800000) == 0x800000) 
	{
		pvdc->value = (double)(0x1000000 - tmp)
			* m_pGlobalVar->ranges.vdc_rng[m_pGlobalVar->mStatusInf.vdc_rngno].factor
			* -1.0;
	}
	else 
	{
		pvdc->value = (double)tmp
			* m_pGlobalVar->ranges.vdc_rng[m_pGlobalVar->mStatusInf.vdc_rngno].factor;
	}
	*/
	pvdc->value = pvdc->value 
				* m_pGlobalVar->ranges.vdc_rng[m_pGlobalVar->mStatusInf.vdc_rngno].gain 
				+ m_pGlobalVar->ranges.vdc_rng[m_pGlobalVar->mStatusInf.vdc_rngno].offset;
}

inline void proc_eis_cfg(void)
{
	st_zim_eisdev* preqeisdev = &m_pGlobalVar->mStatusInf.mreqdevice.eis;
	st_zim_eisdev* peisdev = &m_pGlobalVar->mStatusInf.mdevice.eis;
	UNS_8 tmp = 0;
	if(peisdev->config != preqeisdev->config)
	{
		if(ICE_write_byte(ICE_CMD_EIS_CFG, preqeisdev->config) == _ERROR)
		{
			return;
		}
		
		peisdev->config = preqeisdev->config;
	}
	else
	{
		if(ICE_read_byte(ICE_CMD_EIS_CFG, &tmp) == _ERROR) return;
		if(preqeisdev->config != tmp) peisdev->config = tmp;
	}
	
	if(peisdev->points != preqeisdev->points)
	{
		if(ICE_write_byte(ICE_CMD_EIS_SETPNTS, preqeisdev->points) == _ERROR)
		{
			return;
		}
		peisdev->points = preqeisdev->points;
	}
	else
	{
		if(ICE_read_byte(ICE_CMD_EIS_SETPNTS, &tmp) == _ERROR) return;
		if(preqeisdev->points != tmp) peisdev->points = tmp;
	}
}

inline void proc_CommErr(void)
{
	m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_ERRCOMMZIM;
	m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_LOADOFF;
	m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
	m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
	m_pGlobalVar->Stop  = DEF_EIS_LASTTESTSTATUS_ERRCOMMZIM;
}

inline bool ChkLowLimit(void)
{
	bool bret = false;
	double tmp1;
	double tmp2;
	
	tmp1 = fabs(m_pGlobalVar->mStatusInf.mdevice.adc_ac.data.vac.value);
	tmp2 = DEF_LLIMIT_VACSTABLE;

	if(tmp1 <=  tmp2) bret = true;
	return bret;
}
	
inline bool ChkHighLimit(void)
{
	bool bret = true;
	double tmp1;
	double tmp2;
	
	tmp1 = fabs(m_pGlobalVar->mStatusInf.mdevice.adc_ac.data.vac.value);
	tmp2 = DEF_HLIMIT_VACSTABLE;

	if(tmp1 <= tmp2) bret = false;
	return bret;
}

int Get_Rng_A(void)
{
	int rng = 0; 
	int orng = 0; 
	double maxA = 0.0;
	double tmp = 0.0;
	st_zim_adc_vdc * pvdc = &m_pGlobalVar->mStatusInf.mdevice.adc_vdc;
	
	if(pvdc->value == 0.0 || m_pGlobalVar->ranges.mSafety.MaxPower == 0.0) return 0;
	maxA = fabs(m_pGlobalVar->ranges.mSafety.MaxPower / pvdc->value);

	while(1)
	{
		if(rng == 1) tmp = DEF_IAC_RNG1_MAX;
		else if(rng == 2) tmp = DEF_IAC_RNG2_MAX;
		else if(rng == 3) tmp = DEF_IAC_RNG3_MAX;
		else tmp = DEF_IAC_RNG0_MAX;
		
		//tmp = m_pGlobalVar->ranges.iac_rng[rng].maximum;
		if(maxA < tmp)
		{
			orng ++;
			tmp = tmp * 0.2;
			//tmp = m_pGlobalVar->ranges.iac_rng[rng].maximum * 0.2; // 20201007 수정
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

void proc_auto_vdc_proc(void)
{
	if(m_pGlobalVar->mStatusInf.AutoVdcRange == 0) return;
	
	int type = m_pSysConfig->mZimCfg.cModel[0]-0x30;
	
	st_zim_adc_vdc * pvdc = &m_pGlobalVar->mStatusInf.mdevice.adc_vdc;
	st_zim_do* preqdo = &m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do;
	double dtmp = fabs(pvdc->value);
	double dtmp1 = m_pGlobalVar->ranges.vdc_rng[1].maximum * 1.1;
	double dtmp2 = m_pGlobalVar->ranges.vdc_rng[1].maximum *0.9;
	
	if(type == DEV_BZA100)
	{
		dtmp1 = m_pGlobalVar->ranges.vdc_rng[1].maximum * 1.02;
	}
	
	if(dtmp > dtmp1) 
	{
		preqdo->data |= DEF_DEVDO_VDC_RNG0;
	}
	else if(dtmp < dtmp2) 
	{
		preqdo->data &= DEF_DEVDO_VDC_RNG1;
	}
}

void proc_SetLowMclk(ushort bLow)
{
	st_zim_do* preqdo = &m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do;
	
	preqdo->data &= DEF_DEVDO_DDSMCLK_LOW;
	
	if(bLow == 0) preqdo->data |= DEF_DEVDO_DDSMCLK_HI;

	set_device_DO();
}

void proc_power_VAC(bool bOn)
{
	st_zim_do* preqdo = &m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do;
	
	if(bOn == false) preqdo->data |= DEF_DEVDO_VAC_PWROFF;
	else preqdo->data &= DEF_DEVDO_VAC_PWRON;
}

bool check_power_VAC(void)
{
	st_zim_do* preqdo = &m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do;
	
	if(preqdo->data & DEF_DEVDO_VAC_PWROFF) return false;
	return true;
}

void proc_eis_setrange(void)
{
	ushort buf;
	int irng;
	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
	st_zim_do* preqdo = &m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do;

	irng = 0;
	if(m_pGlobalVar->bCalib == 0) irng = Get_Rng_A();
	
	if(peis->eis_cond.iacrng > 0)
	{
		if(irng < (peis->eis_cond.iacrng - 1))
		{
			irng = peis->eis_cond.iacrng - 1; 
		}
	}
	
	buf = (ushort)((irng << 1) & 0xE);
	preqdo->data &= 0xFFF1;
	preqdo->data |= buf;
}

void proc_default_setrange(void)
{
	ushort buf;
	int curr_rng;
	int irng;
	
	st_zim_do* preqdo = &m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do;
	
	curr_rng = (preqdo->data >> 1 & 0x7);
	irng = Get_Rng_A();
	if(curr_rng == irng) return;
	
	if(curr_rng > irng)
	{
		irng = curr_rng; 
	}
	buf = (ushort)((irng << 1) & 0xE);
	preqdo->data &= 0xFFF1;
	preqdo->data |= buf;
}

void proc_eis_LoadOn(ushort loadon)
{
	st_zim_do* preqdo = &m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do;

	if (loadon == 1) preqdo->data |= DEF_DEVDO_CONT_SD;
	else  preqdo->data &= DEF_DEVDO_CONT_CLRSD;
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

inline bool ChkEisCalGainVar(st_zim_adc_rnginf*  pRng)
{
	if (pRng->gain == 1.0 || pRng->gain == 0.0 
		 || pRng->offset == 1.0 || pRng->offset == 0.0)
	{
		return false;
	}
	return true;
}

inline bool ChkSysCalVars()
{
	int i;
	st_zim_rnginf* pRanges = &m_pGlobalVar->ranges;
	
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

/*
inline void CompImpedanceTimeDelay(st_zim_eis_item *pItem)
{
	double Zre = pItem->zdata.real;
	double Zimg = pItem->zdata.img;
	double F = pItem->info.freq;
	double T = m_pGlobalVar->ranges.mEisIRngCalInfo[m_pGlobalVar->mStatusInf.iac_in_rngno].T;
	double M = (F * F * T * T) + 1;
	pItem->zdata.real = (Zre + (Zimg * F * T)) / M;
	pItem->zdata.img = (Zimg  - (Zre * F * T))/M;
}

*/

/*
inline void CompImpedanceItem(st_zim_eis_item *pItem)
{
	st_zim_Eis_Cal_info* pEis_cal_info = &m_pGlobalVar->ranges.mEisCalInfo;
	
	if (ChkEisCalVar(pEis_cal_info) == false)
	{
		return;
	}
	double f = pItem->info.freq;
	double fsq = f * f;
	double a = 1 + pEis_cal_info->n3 * fsq;
	double b = (pEis_cal_info->n1 / f) + (pEis_cal_info->n2 * f);
	double c = 1 + pEis_cal_info->d3 * fsq;
	double d = (pEis_cal_info->d1 / f) + (pEis_cal_info->d2 * f);
	
	double aa = (a * c + b * d) / ( c * c + d * d);
	double bb = (b * c - a * d) / (c * c + d * d);

	a = pItem->zdata.real;
	b = pItem->zdata.img;
	
	c = aa;
	d = bb;
	
	pItem->zdata.real = (a * c - b * d);
	pItem->zdata.img = (a * d + b * c);
}
*/



inline void CompImpedanceItem(st_zim_eis_item *pItem, ushort cRng)
{
	st_zim_Eis_Cal_info* pEis_cal_info = &m_pGlobalVar->ranges.mEisIRngCalInfo[cRng];
	
	if (ChkEisCalVar(pEis_cal_info) == false)
	{
		return;
	}
	double f = pItem->info.freq;
	double fsq = f * f;
	double a = 1 + pEis_cal_info->n3 * fsq;
	double b = (pEis_cal_info->n1 / f) + (pEis_cal_info->n2 * f);
	double c = 1 + pEis_cal_info->d3 * fsq;
	double d = (pEis_cal_info->d1 / f) + (pEis_cal_info->d2 * f);

	if(c == 0.0 && d == 0.0)
	{
		pItem->zdata.real = 0.0;
		pItem->zdata.img = 0.0;
		return;
	}
		
	double aa = (a * c + b * d) / (c * c + d * d);
	double bb = (b * c - a * d) / (c * c + d * d);
		
	a = pItem->zdata.real;
	b = pItem->zdata.img;
	
	c = aa;
	d = bb;
	
	pItem->zdata.real = (a * c - b * d);
	pItem->zdata.img = (a * d + b * c);
}

inline bool proc_eis_data_conv(int freqindex)
{
	ushort nCycle;
	double dTemp;
	stCompdrift  mCompdrift;
	st_zim_eis_raw_val 	tRaw_val[MAX_EIS_RAW_POINT]; 

	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
	st_zim_eis_raw* praw = &m_pGlobalVar->mStatusInf.meis.eis_raw[freqindex];
	st_zim_eis_item* pitem = &m_pGlobalVar->mStatusInf.meis.eis_item[freqindex];

	memcpy(&pitem->info, &praw->info,sizeof(st_zim_eis_info));
	
	dTemp = 0.0;

	if(peis->eis_raw[freqindex].info.cycpoint == 0)
	{
		pitem->zdata.real = 0.0;
		pitem->zdata.img = 0.0;
		pitem->zdata.mag = 0.0;
		pitem->zdata.phase = 0.0;
		m_pGlobalVar->mStatusInf.DispFreq = peis->eis_status.freq;
		m_pGlobalVar->mStatusInf.DispMag = pitem->zdata.mag;
		m_pGlobalVar->mStatusInf.DispPhase = pitem->zdata.phase;
		return false;
	}
	nCycle = (ushort)floor(peis->eis_status.LoadDatacnt / peis->eis_raw[freqindex].info.cycpoint); //devide
	if(peis->eis_raw[freqindex].info.cycle	>  nCycle) 
	{
		peis->eis_raw[freqindex].info.cycle	=  nCycle;
	}
	else
	{
		nCycle = peis->eis_raw[freqindex].info.cycle;
	}
	
	peis->eis_raw[freqindex].info.cycle = nCycle;
	
	peis->eis_raw[freqindex].info.Ns = peis->eis_raw[freqindex].info.cycpoint * peis->eis_raw[freqindex].info.cycle;


	memcpy(tRaw_val,praw->raw_val,sizeof(st_zim_eis_raw_val)*MAX_EIS_RAW_POINT); 
	
	if(RemoveTrend(tRaw_val,praw->raw_val,peis->eis_raw[freqindex].info.Ns,peis->eis_raw[freqindex].info.cycpoint,&mCompdrift) == false)
	{
		pitem->zdata.real = 0.0;
		pitem->zdata.img = 0.0;
		pitem->zdata.mag = 0.0;
		pitem->zdata.phase = 0.0;
		m_pGlobalVar->mStatusInf.DispFreq = peis->eis_status.freq;
		m_pGlobalVar->mStatusInf.DispMag = pitem->zdata.mag;
		m_pGlobalVar->mStatusInf.DispPhase = pitem->zdata.phase;
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
		pitem->zdata.real = 0.0;
		pitem->zdata.img = 0.0;
		pitem->zdata.mag = 0.0;
		pitem->zdata.phase = 0.0;
		m_pGlobalVar->mStatusInf.DispFreq = peis->eis_status.freq;
		m_pGlobalVar->mStatusInf.DispMag = pitem->zdata.mag;
		m_pGlobalVar->mStatusInf.DispPhase = pitem->zdata.phase;
		return false;
	}
	else
	{
		pitem->zdata.real = ((praw->zdata_vac.real * praw->zdata_iac.real)+(praw->zdata_vac.img * praw->zdata_iac.img)) / dTemp; //devide
		pitem->zdata.img = ((praw->zdata_vac.img * praw->zdata_iac.real)-(praw->zdata_vac.real * praw->zdata_iac.img)) / dTemp;  //devide 
	}
	
	double dgain = 1.0;
	
	if(m_pGlobalVar->bCalib == 0)
	{
		//2021/09/07 -------------------------------------------------------------------
		CompImpedanceItem(pitem,m_pGlobalVar->mStatusInf.iac_rngno); 
		pitem->zdata.img = pitem->zdata.img + (2.0 * PI * pitem->info.freq * m_pGlobalVar->ranges.mEirIrngCompLs.Ls[m_pGlobalVar->mStatusInf.iac_rngno]);
		//------------------------------------------------------------------------------

		//CompImpedanceItem(pitem);
		//CompImpedanceItem(pitem,m_pGlobalVar->mStatusInf.iac_rngno); 
		//pitem->zdata.img = pitem->zdata.img + (2.0 * PI * pitem->info.freq * m_pGlobalVar->ranges.mEirIrngCompLs.Ls[m_pGlobalVar->mStatusInf.iac_rngno]);
		//CompImpedanceTimeDelay(pitem); Time delay apply..nouse
	}
	//else
	//{
	//	pitem->zdata.img = pitem->zdata.img - (2.0 * PI * pitem->info.freq * m_pGlobalVar->ranges.mEirIrngCompLs.Ls[m_pGlobalVar->mStatusInf.iac_rngno]);
	//}
	
	
	
	peis->eis_raw[peis->eis_status.freqindex].info.iacrng = m_pGlobalVar->mStatusInf.iac_rngno;
	pitem->zdata.mag = sqrt((pitem->zdata.real * pitem->zdata.real) + (pitem->zdata.img * pitem->zdata.img));
	pitem->zdata.phase = atan2(pitem->zdata.img, pitem->zdata.real) * (double)180.0 / (double)PI;//angle in degree;

	if(m_pGlobalVar->bCalib == 0)
	{
		if(m_pGlobalVar->mStatusInf.iac_rngno == 0 || m_pGlobalVar->mStatusInf.iac_rngno == 2 
		   || m_pGlobalVar->mStatusInf.iac_rngno == 4 || m_pGlobalVar->mStatusInf.iac_rngno == 6) dgain = m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].gain;
		else dgain = m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].offset;
		
		if(dgain == 0.0) dgain = 1.0;
				
		pitem->zdata.mag /= dgain;
		pitem->zdata.real = pitem->zdata.mag * cos(pitem->zdata.phase * ((double)PI / 180.0));
        pitem->zdata.img = pitem->zdata.mag * sin(pitem->zdata.phase * ((double)PI / 180.0));
		
	}
	m_pGlobalVar->mStatusInf.DispFreq = peis->eis_status.freq;
	m_pGlobalVar->mStatusInf.DispMag = pitem->zdata.mag;
	m_pGlobalVar->mStatusInf.DispPhase = pitem->zdata.phase;
	
	return true;
}


bool proc_eis_chk_Control(double rate, double mag)
{
/*	int rng; testv
	int gain;
	double drng;
	double dLimitRate;

	rng = m_pGlobalVar->mStatusInf.meis.eis_status.iac_rngno / 2;
	gain = m_pGlobalVar->mStatusInf.meis.eis_status.iac_rngno % 2;

	drng = iRange[rng] * 0.5;
	
	
	if(gain) drng *= 0.2;
	
	dLimitRate = rate * 0.01 * drng;
	
	if(fabs(mag) < dLimitRate) 
	{
		return false;
	}*/
	return true;
}
/*
inline void proc_eis_1Kh_Sine(void)
{
	ushort buf;
	ushort buf1;
	int    ddssigfreq;
	int ddsclkfreq;
	st_zim_adc_ac_cfg* preqcfg = &m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.cfg;
	
	ddssigfreq = (ushort)((uint)(1000.0 * (double)DEF_DDS_SIG_CONST));
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ddssigfreq & 0x3FFF);		
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | ((ddssigfreq >> 14) & 0x3FFF);
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	
	buf1 = (ushort)((uint)(270.0 * DEF_DDS_PHASE_CONST));
	buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(buf1 & 0xFFF);
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}

	ddsclkfreq = (int)(ddssigfreq * 32.0 * 32.0 * pow(4.0,(double)1.0)/128.0); //128 = 125K/16M

	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(ddsclkfreq & 0x3FFF);		
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((ddsclkfreq >> 14) & 0x3FFF);
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_CLK_DEFAULT_CTRL & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	preqcfg->vac_osr = 1;
	preqcfg->iac_osr = 1;
	
	apply_adc_ac_cfg();
	proc_adc_ac_cfg();

}
*/

inline  void ApplyCalcConfigADCForDelay() //Find OSR and number of points in a cycle
{
	st_zim_dds* pddsclk = &m_pGlobalVar->mStatusInf.mdevice.dds_clk;
	st_zim_adc_ac_cfg* preqcfg = &m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.cfg;
	st_zim_dds* pddssig = &m_pGlobalVar->mStatusInf.mdevice.dds_sig;
	int MinCycPoint = MIN_EIS_CYC_POINT;
	int type = m_pSysConfig->mZimCfg.cModel[0]-0x30;
	
	double dMaxFreq = (double)MIN_EIS_CYC_POINT * 32.0 * pddssig->frequency; // 100KHz = 102,400,000
	double  dSubhFreq = DEF_FREQUENCY_SUBHAMONIC;
	int nArg,osrArg;
	int LB,UB;
	int nMaxArg,osrMaxArg;
	int retPoint,cycles,nMaxCycle;
	
	int nPointSubH = 0;
	bool blow = true;
	
	double  dConstFlt = 2.0;
	
	if(m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.cfg.iac_flt == DEF_FLT_LOWLATENCY) dConstFlt = 4.0;
	
	pddssig->reset = 0;
	
	if(type == DEV_BZA100HZ)
	{
		dSubhFreq = DEF_FREQUENCY_SUBH_HZ;
	}

	if(pddssig->frequency >= dSubhFreq)
	{
		blow = false;
		osrArg = 0;
		
		dMaxFreq = (double)MIN_EIS_CYC_POINT_H * 32.0 * pddssig->frequency;
		
		MinCycPoint = MIN_EIS_CYC_POINT_H;
		retPoint = MIN_EIS_CYC_POINT_H; // * 2;
		nPointSubH = retPoint  * 32 + 1; 
		//MinCycPoint = MIN_EIS_CYC_POINT_H;
		//retPoint  = 32;
		
		//dMaxFreq = (double)retPoint * 32.0 * peis->eis_cond.item[index].freq;
		//nPointSubH = MAX(floor((dMaxFreq/100000)/retPoint),1) * retPoint  * 32 + 1;
		//nPointSubH = 1025;
		
		pddsclk->frequency = ((pddssig->frequency * (double)retPoint) / nPointSubH) * 32.0;
		
		
		m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq = (uint)ceil((pddsclk->frequency * (double)DEF_DDS_CLK_CONST));
		pddsclk->frequency =   m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq / (double)DEF_DDS_CLK_CONST;

		m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq = (uint)floor(pddssig->frequency * DEF_DDS_SIG_CONST_HI);
		pddssig->frequency = m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq / DEF_DDS_SIG_CONST_HI;
		
		nMaxCycle = (int)MAX(2,2.0/((1.0/pddsclk->frequency)* 32.0 * retPoint)); //최소 싸이클 2 , 최대시간 4초
		
		if(retPoint == 0) cycles = 0;
		else cycles = (int)(MAX_EIS_POINT / retPoint);
		cycles = MIN(nMaxCycle,cycles);
		cycles = MAX(cycles,1);
		
	}
	else
	{
		osrMaxArg = 2;
		nMaxArg = 2; //4cycle 가능.
		
	
		m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq = (uint)(pddssig->frequency * DEF_DDS_SIG_CONST_LOW);
		pddssig->frequency = m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq / DEF_DDS_SIG_CONST_LOW;

		LB = (int)log2((double)MIN_EIS_ADC_MCLK / dMaxFreq);
		UB = (int)log2((double)MAX_EIS_ADC_MCLK / dMaxFreq);
		
		LB = MAX(0, LB-2);
		nArg = MIN(nMaxArg, LB);
		osrArg =MIN(osrMaxArg,(int)((UB - nArg) * 0.25)-1);
		osrArg = MAX(osrArg,0);
		
		retPoint = 	MinCycPoint * (int)pow(2.0,(double)nArg);
		nMaxCycle = MAX(2,(int)pow(2,(int)log2(pddssig->frequency * 6))); //최소 싸이클 2 , 최대시간 4초

		if(retPoint == 0) cycles = 0;
		else cycles = (int)(MAX_EIS_POINT / retPoint);
		cycles = MIN(nMaxCycle,cycles);
		cycles = MAX(cycles,1);
		
		retPoint = MAX(retPoint,(int)pow(2,(int)log2(MAX_EIS_POINT/cycles)));
		
		//VLP Mode-FLT 10, WB2-01
		m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq = (uint)(m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq * (double)retPoint * 32.0 * pow(dConstFlt,(double)osrArg)/DEF_DDS_MCLK_RATE_LOW); //128 = 125K/16M //
		pddsclk->frequency =   m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq / (double)DEF_DDS_CLK_CONST;
		
	}
	
	

	proc_SetLowMclk(blow); 

	preqcfg->vac_osr = osrArg;
	preqcfg->iac_osr = osrArg;
	
	apply_adc_ac_cfg();
	proc_adc_ac_cfg();
}

    

inline  void ApplyCalcConfigADC(int index) //Find OSR and number of points in a cycle
{
	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
	st_zim_dds* pddsclk = &m_pGlobalVar->mStatusInf.mdevice.dds_clk;
	st_zim_adc_ac_cfg* preqcfg = &m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.cfg;
	st_zim_dds* pddssig = &m_pGlobalVar->mStatusInf.mdevice.dds_sig;
	int MinCycPoint = MIN_EIS_CYC_POINT;
	double  dMaxFreq = (double)MIN_EIS_CYC_POINT * 32.0 * pddssig->frequency; // 100KHz = 102,400,000
	double  dSubhFreq = DEF_FREQUENCY_SUBHAMONIC;
	int nArg,osrArg;
	int LB,UB;
	int nMaxArg,osrMaxArg;
	int retPoint,cycles,nMaxCycle;
	int nPointSubH;
	int type = m_pSysConfig->mZimCfg.cModel[0]-0x30;
	double  dConstFlt = 2.0;
	
	if(m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.cfg.iac_flt == DEF_FLT_LOWLATENCY) dConstFlt = 4.0;
	
	bool blow = true;
	
	pddssig->reset = 0;
	
	if(type == DEV_BZA100HZ) 
	{
		dSubhFreq = DEF_FREQUENCY_SUBH_HZ;
	}

	if(peis->eis_cond.item[index].freq >= dSubhFreq)
	{
		blow = false;
		osrArg = 0;
		
		
		
		dMaxFreq = (double)MIN_EIS_CYC_POINT_H * 32.0 * pddssig->frequency;
		
		MinCycPoint = MIN_EIS_CYC_POINT_H;
		retPoint = MIN_EIS_CYC_POINT_H; // * 2;
		nPointSubH = retPoint  * 32 + 1; 
		//retPoint = 32;
		//MinCycPoint = MIN_EIS_CYC_POINT_H;
		//dMaxFreq = (double)retPoint * 32.0 * peis->eis_cond.item[index].freq;
		//nPointSubH = MAX(floor((dMaxFreq/100000)/retPoint),1) * retPoint  * 32 + 1;
		//nPointSubH = 1025;
		pddsclk->frequency = ((peis->eis_cond.item[index].freq * (double)retPoint) / nPointSubH) * 32.0;
		
		
		m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq = (uint)ceil((pddsclk->frequency * (double)DEF_DDS_CLK_CONST));
		pddsclk->frequency =   m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq / (double)DEF_DDS_CLK_CONST;
	
//		(pddsclk->frequency  * nPointSubH) / (32.0 * retPoint)
		m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq = (uint)floor(peis->eis_cond.item[index].freq * DEF_DDS_SIG_CONST_HI);
		pddssig->frequency = m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq / DEF_DDS_SIG_CONST_HI;
		
		peis->eis_cond.item[index].freq = pddssig->frequency;

		nMaxCycle = (int)MAX(DEF_EIS_MIN_CYCLE,2.0/((1.0/pddsclk->frequency)* 32.0 * retPoint)); //최소 싸이클 2 , 최대시간 2초
		
		if(retPoint == 0) cycles = 0;
		else cycles = (int)(MAX_EIS_POINT / retPoint);
		cycles = MIN(nMaxCycle,cycles);
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
	}
	else
	{
		m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq = (uint)(peis->eis_cond.item[index].freq * DEF_DDS_SIG_CONST_LOW);
		pddssig->frequency = m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq / DEF_DDS_SIG_CONST_LOW;
		peis->eis_cond.item[index].freq = pddssig->frequency;
		
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
		nMaxCycle = (int)MAX(DEF_EIS_MIN_CYCLE,(int)pow(2,(int)log2(pddssig->frequency)));
		
		if(retPoint == 0) cycles = 0;
		else cycles = (int)(MAX_EIS_POINT / retPoint);
		
		cycles = MIN(nMaxCycle,cycles);
		cycles = MAX(cycles,DEF_EIS_MIN_CYCLE);
		retPoint = MAX(retPoint,(int)pow(2,(int)log2(MAX_EIS_POINT/cycles)));
		
		
		//VLP Mode-FLT 10, WB2-01
		m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq = (uint)(m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq * (double)retPoint * 32.0 * pow(dConstFlt,(double)osrArg)/DEF_DDS_MCLK_RATE_LOW); //128 = 125K/16M //
		pddsclk->frequency =   m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq / (double)DEF_DDS_CLK_CONST;
		
	}
	
	

	proc_SetLowMclk(blow); 

	peis->eis_raw[index].info.cycle = cycles;
	peis->eis_raw[index].info.cycpoint = retPoint;
		
	peis->eis_raw[index].info.Ns = peis->eis_raw[index].info.cycpoint * peis->eis_raw[index].info.cycle;
	peis->eis_status.totaldatacnt = peis->eis_raw[index].info.cycpoint * peis->eis_raw[index].info.cycle;
	peis->eis_status.WorkDatacnt = 0;
	peis->eis_status.LoadDatacnt = 0;
	
	peis->eis_status.freq = peis->eis_cond.item[index].freq;
	peis->eis_raw[index].info.freq = peis->eis_status.freq;
	
	m_pGlobalVar->mStatusInf.mdevice.eis.points = peis->eis_status.totaldatacnt;
	m_pGlobalVar->mStatusInf.RealSkip = MAX((peis->eis_raw[index].info.cycpoint / 32),1);
	

	preqcfg->vac_osr = osrArg;
	preqcfg->iac_osr = osrArg;
	
	apply_adc_ac_cfg();
	proc_adc_ac_cfg();
	
}

inline void proc_eis_SineForDelay(void)
{
	ushort buf;
	
	st_zim_dds* pddssig = &m_pGlobalVar->mStatusInf.mdevice.dds_sig;
	m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.frequency = DEF_SINECTRL_FREQ;

	m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.Phase = DEF_SINECTRL_PHASE;
	pddssig->Phase = DEF_SINECTRL_PHASE;
	m_pGlobalVar->mStatusInf.flow_dds_sig.req.phase = (uint)(pddssig->Phase * (double)DEF_DDS_PHASE_CONST);
	
	ApplyCalcConfigADCForDelay();

	m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_RESET;
	buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq  & 0x3FFF);	
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_RESET_H;
	buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq  >> 14) & 0x3FFF);
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(m_pGlobalVar->mStatusInf.flow_dds_sig.req.phase & 0xFFF);
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	m_pGlobalVar->mStatusInf.flow_dds_sig.stat.phase  =  m_pGlobalVar->mStatusInf.flow_dds_sig.req.phase;
	

	m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRL;
	buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq & 0x3FFF);		
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRLH;
	buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq >> 14) & 0x3FFF);
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
}

inline void proc_eis_init(ushort index)
{
	ushort buf;

	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
	st_zim_dds* pddssig = &m_pGlobalVar->mStatusInf.mdevice.dds_sig;

	pddssig->Phase = 270.0;
	m_pGlobalVar->mStatusInf.flow_dds_sig.req.phase = (uint)(pddssig->Phase * (double)DEF_DDS_PHASE_CONST);

	ApplyCalcConfigADC(index);

	/*if(index == 0) m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_RESET;  //20201006 수정
	else */m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRL;
	buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq & 0x3FFF);	
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	
	/*if(index == 0) m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_RESET_H; //20201006 수정
	else */ m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRLH;

	buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x3FFF;
	
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mStatusInf.flow_dds_sig.req.freq >> 14) & 0x3FFF);
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
/*
	if(index == 0) //20201006 수정
	{
		buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(m_pGlobalVar->mStatusInf.flow_dds_sig.req.phase & 0xFFF);
		if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			return;
		}
		m_pGlobalVar->mStatusInf.flow_dds_sig.stat.phase  =  m_pGlobalVar->mStatusInf.flow_dds_sig.req.phase;
	}
	*/
	
	m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_DEFAULT_CTRL;
	buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return;
	}
	
	
	m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq & 0x3FFF);		
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRLH;
	buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq >> 14) & 0x3FFF);
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	if(ICE_write_16bits(ICE_CMD_EIS_IDX, 0x0000) == _ERROR)
	{
		return;
	}
	
	if(ICE_write_16bits(ICE_CMD_EIS_SETPNTS, m_pGlobalVar->mStatusInf.mdevice.eis.points) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)(peis->eis_cond.skipcycle * (double)peis->eis_raw[index].info.cycpoint);
	
	if(ICE_write_16bits(ICE_CMD_EIS_SKIPCNT, buf) == _ERROR)
	{
		return;
	}
}

inline void proc_eis_start(void)
{

	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
	peis->eis_raw[peis->eis_status.freqindex].info.msBegin = m_pGlobalVar->mStatusInf.m_MsTestStamp;
	m_pGlobalVar->mStatusInf.meis.eis_status.runidxTimeStamp = 0;
	peis->eis_raw[peis->eis_status.freqindex].info.iacrng = m_pGlobalVar->mStatusInf.iac_rngno;
	peis->eis_raw[peis->eis_status.freqindex].info.vdcrng = m_pGlobalVar->mStatusInf.vdc_rngno;
	peis->eis_raw[peis->eis_status.freqindex].info.vdc.begin = m_pGlobalVar->mStatusInf.mdevice.adc_vdc.value;
	peis->eis_raw[peis->eis_status.freqindex].info.rtd.begin = m_pGlobalVar->mStatusInf.mdevice.adc_rtd.data.Tvalue;
	
	m_pGlobalVar->mStatusInf.mdevice.eis.config = DEF_CFG_EIS_START;
	
	if(ICE_write_byte(ICE_CMD_EIS_CFG, m_pGlobalVar->mStatusInf.mdevice.eis.config) == _ERROR)
	{
		return;
	}
	
}

void proc_eis_reset(void)
{

	m_pGlobalVar->mStatusInf.mdevice.eis.config = DEF_CFG_EIS_RESET;
	
	if(ICE_write_byte(ICE_CMD_EIS_CFG, m_pGlobalVar->mStatusInf.mdevice.eis.config) == _ERROR)
	{
		return;
	}
	m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_NONE;
}

inline void proc_eis_stop(void)
{
	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
	peis->eis_status.FinTimeStamp = m_pGlobalVar->mStatusInf.m_MsTestStamp;
	peis->eis_status.status = DEF_EIS_STATUS_FIN;
	
	m_pGlobalVar->mStatusInf.mdevice.eis.config = DEF_CFG_EIS_STOP | DEF_CFG_EIS_START;
	
	if(ICE_write_byte(ICE_CMD_EIS_CFG, m_pGlobalVar->mStatusInf.mdevice.eis.config) == _ERROR)
	{
		return;
	}
	
	m_pGlobalVar->mStatusInf.mdevice.eis.config = DEF_CFG_EIS_RESET;
	
	if(ICE_write_byte(ICE_CMD_EIS_CFG, m_pGlobalVar->mStatusInf.mdevice.eis.config) == _ERROR)
	{
		return;
	}
}
/*
inline void proc_eis_chk_ing_test(void)
{
	ushort buf;
	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
	if(ICE_read_16bits(ICE_CMD_EIS_POINTS, &buf) == _ERROR)
	{
		return;
	}
	peis->eis_status.WorkDatacnt = buf & 0x0FFF;
}
*/

inline void proc_eis_chk_ing(void)
{
	ushort buf;
	ushort i;
	ushort j;
	int tmpi;
	int tmpv;
//	double dgain;
	
	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;

	if(ICE_read_16bits(ICE_CMD_EIS_POINTS, &buf) == _ERROR)
	{
		return;
	}
	peis->eis_status.WorkDatacnt = buf & 0x0FFF;
	
	if((buf & 0x8000) == 0x8000)
	{
		peis->eis_raw[peis->eis_status.freqindex].info.msEnd = m_pGlobalVar->mStatusInf.m_MsTestStamp;
		peis->eis_raw[peis->eis_status.freqindex].info.vdc.end = m_pGlobalVar->mStatusInf.mdevice.adc_vdc.value;
		peis->eis_raw[peis->eis_status.freqindex].info.rtd.end = m_pGlobalVar->mStatusInf.mdevice.adc_rtd.data.Tvalue;
		
		peis->eis_status.status = DEF_EIS_STATUS_FFT;
	}
	
	
	//peis->eis_status.LoadDatacnt = 0;
	if(peis->eis_status.LoadDatacnt < peis->eis_status.WorkDatacnt)
	{
		for(i=peis->eis_status.LoadDatacnt; i< peis->eis_status.WorkDatacnt; i++)
		{
			if(ICE_read_adcDataSet(ICE_CMD_EIS_DATA,&tmpi,&tmpv) == _ERROR)
			{
				return;
			}

			peis->eis_raw[peis->eis_status.freqindex].raw_adc[i].iac = tmpi;
			peis->eis_raw[peis->eis_status.freqindex].raw_adc[i].vac = tmpv;
			
			peis->eis_raw[peis->eis_status.freqindex].raw_val[i].iac = (double)tmpi * m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].factor; // * (-1.0); testv
		/*	if(m_pGlobalVar->bCalib == 0) 
			{
				if(i == 0 || i == 2 || i == 4 || i == 6) dgain = m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].gain;
				else dgain = m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].offset;
				if(dgain == 0.0) dgain = m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].gain;
				
				peis->eis_raw[peis->eis_status.freqindex].raw_val[i].iac = peis->eis_raw[peis->eis_status.freqindex].raw_val[i].iac * dgain;
			}*/
			
			peis->eis_raw[peis->eis_status.freqindex].raw_val[i].vac = (double)tmpv * m_pGlobalVar->ranges.vac_rng.factor;
			
			peis->eis_raw[peis->eis_status.freqindex].raw_val[i].vac = peis->eis_raw[peis->eis_status.freqindex].raw_val[i].vac
																	* m_pGlobalVar->ranges.vac_rng.gain 
																	+ m_pGlobalVar->ranges.vac_rng.offset;
			
			peis->eis_raw[peis->eis_status.freqindex].info.TotalPoint = peis->eis_status.WorkDatacnt;
			
			if(m_pGlobalVar->mStatusInf.RealSkip == 0) j = 0;
			else j = (i / m_pGlobalVar->mStatusInf.RealSkip) % MAX_EIS_RT_RAW_POINT;
			
			m_pGlobalVar->mStatusInf.meis.eis_status.Real_val[j].iac = peis->eis_raw[peis->eis_status.freqindex].raw_val[i].iac;
			m_pGlobalVar->mStatusInf.meis.eis_status.Real_val[j].vac = peis->eis_raw[peis->eis_status.freqindex].raw_val[i].vac;
		}
		peis->eis_status.LoadDatacnt = peis->eis_status.WorkDatacnt;
	}
}

inline void proc_rms_init(void)
{
	ushort buf;
	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
	st_zim_dds* pddsclk = &m_pGlobalVar->mStatusInf.mdevice.dds_clk;
	st_zim_adc_ac_cfg* preqcfg = &m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.cfg;
	
	peis->eis_status.freq = 2.0;

	pddsclk->frequency =  2.0 * 512.0 * 2048;
	m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq = (uint)(pddsclk->frequency * (double)DEF_DDS_CLK_CONST);
	pddsclk->reset = 0;
	memset(m_pGlobalVar->mStatusInf.meis.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
	m_pGlobalVar->mStatusInf.RealSkip = 1;
	
	peis->eis_status.totaldatacnt = 1024;
	peis->eis_status.WorkDatacnt = 0;
	peis->eis_status.LoadDatacnt = 0;
	m_pGlobalVar->mStatusInf.mdevice.eis.points = peis->eis_status.totaldatacnt;
	
	preqcfg->vac_osr = 3;
	preqcfg->iac_osr = 3;
	
	apply_adc_ac_cfg();
	proc_adc_ac_cfg();

	m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
	buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq & 0x3FFF);		
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}

	m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRLH;
	buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl & 0x3FFF;
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((m_pGlobalVar->mStatusInf.flow_dds_clk.req.freq >> 14) & 0x3FFF);
	if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
	{
		return;
	}
	
	if(ICE_write_16bits(ICE_CMD_EIS_IDX, 0x0000) == _ERROR)
	{
		return;
	}
	
	buf = 1024;
	if(ICE_write_16bits(ICE_CMD_EIS_SETPNTS, buf) == _ERROR)
	{
		return;
	}
	
	buf = 0;
	
	if(ICE_write_16bits(ICE_CMD_EIS_SKIPCNT, buf) == _ERROR)
	{
		return;
	}
	
}

inline void proc_read_rmsraw(void)
{
	ushort buf;
	ushort i;
	ushort j;
	int tmpi;
	int tmpv;
	
	st_zim_rmsraw* pRms = &m_pGlobalVar->mStatusInf.mRms;
	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
	
	if(ICE_read_16bits(ICE_CMD_EIS_POINTS, &buf) == _ERROR)
	{
		return;
	}
	peis->eis_status.WorkDatacnt = buf & 0x0FFF;
	
	if((buf & 0x8000) == 0x8000)
	{
		peis->eis_status.status = DEF_EIS_STATUS_FFT;
	}
	
	//peis->eis_status.LoadDatacnt = 0;
	if(peis->eis_status.LoadDatacnt < peis->eis_status.WorkDatacnt)
	{
		for(i=peis->eis_status.LoadDatacnt; i< peis->eis_status.WorkDatacnt; i++)
		{
			if(ICE_read_adcDataSet(ICE_CMD_EIS_DATA,&tmpi,&tmpv) == _ERROR)
			{
				return;
			}
			
			pRms->raw_adc[i].iac = tmpi;
			pRms->raw_adc[i].vac = tmpv;
			
			pRms->raw_val[i].iac = (double)tmpi * m_pGlobalVar->ranges.iac_rng[m_pGlobalVar->mStatusInf.iac_in_rngno].factor * (-1.0);
			pRms->raw_val[i].iac = pRms->raw_val[i].iac	
								* m_pGlobalVar->ranges.iac_rng[pRms->info.IRange].gain 
							 	+ m_pGlobalVar->ranges.iac_rng[pRms->info.IRange].offset;
			pRms->raw_val[i].vac = (double)tmpv * m_pGlobalVar->ranges.vac_rng.factor;
			pRms->raw_val[i].vac = pRms->raw_val[i].vac  
								* m_pGlobalVar->ranges.vac_rng.gain 
								+ m_pGlobalVar->ranges.vac_rng.offset;
			j = i % MAX_EIS_RT_RAW_POINT;
			m_pGlobalVar->mStatusInf.meis.eis_status.Real_val[j].iac = pRms->raw_val[i].iac;
			m_pGlobalVar->mStatusInf.meis.eis_status.Real_val[j].vac = pRms->raw_val[i].vac;
		}
		peis->eis_status.LoadDatacnt = peis->eis_status.WorkDatacnt;
	}

	return;
}

bool proc_read_vdc_raw(void)
{
	INT_32 tmp;
	double value;

	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
	
	if(ICE_read_adc24bit(ICE_CMD_VDCADC_VAL, &tmp) == _ERROR)
	{
		return false;
	}
	value = (double)tmp
			* m_pGlobalVar->ranges.vdc_rng[m_pGlobalVar->mStatusInf.vdc_rngno].factor;
	
	SlopeChkRawdata[peis->eis_status.LoadDatacnt] 
		    = value 
			* m_pGlobalVar->ranges.vdc_rng[m_pGlobalVar->mStatusInf.vdc_rngno].gain 
			+ m_pGlobalVar->ranges.vdc_rng[m_pGlobalVar->mStatusInf.vdc_rngno].offset;
	
	peis->eis_status.LoadDatacnt ++;
	
	if(peis->eis_status.LoadDatacnt >= DEF_MAX_SLOPECHECK_RAW)
	{
		if(StationaryTest(SlopeChkRawdata,peis->eis_status.LoadDatacnt,5) == true)
		{
			return true;
		}
		peis->eis_status.LoadDatacnt = 0;
		peis->eis_status.WorkDatacnt = DEF_MAX_SLOPECHECK_RAW;
	}
	return false;
}

inline void proc_rms_setrange(void)
{
	ushort buf;
	int irng;
	st_zim_do* preqdo = &m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do;
	
	preqdo->data &= DEF_DEVDO_CLRIRNG;
	irng = m_pGlobalVar->mStatusInf.mRms.info.IRange;
	buf = (ushort)((irng << 1) & 0xFFFC);
	preqdo->data |= buf;
}

inline void GetNoiseRMS(st_zim_rmsraw* pRms)
{
	st_zim_eis_raw_val 	sum;
	st_zim_eis_raw_val 	avg;
	double tmp;
	int i;
	int Ns = 1024;
	
	sum.iac = 0.0;
	sum.vac = 0.0;
	for (i = 0; i < Ns; i++)
	{		
			sum.iac += pRms->raw_val[i].iac;
			sum.vac += pRms->raw_val[i].vac;
	}
	avg.iac = sum.iac/Ns;
	avg.vac = sum.vac/Ns;
	
	sum.iac = 0.0;
	sum.vac = 0.0;
	for (i = 0; i < Ns; i++)
	{		
			tmp = pRms->raw_val[i].iac - avg.iac;
			sum.iac += tmp *tmp;
			tmp = pRms->raw_val[i].vac - avg.vac;
			sum.vac += tmp *tmp;
	}
	
	avg.iac = sum.iac/Ns;
	avg.vac = sum.vac/Ns;

	pRms->info.Irms = sqrt(avg.iac);
	pRms->info.Vrms = sqrt(avg.vac);
}

inline void proc_eis_ControlFail(void)
{
	m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_CONTFAIL;
	m_pGlobalVar->Stop  = DEF_EIS_LASTTESTSTATUS_FAIL;
	m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_EISSTOP;
	m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
	m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
}


inline bool chkTestCondition()
{

	/*if(m_pGlobalVar->mStatusInf.mdevice.adc_vdc.value < -2.0) testv
	{
		m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_FAIL;
		if(m_pGlobalVar->Start == 1) m_pGlobalVar->Stop  = DEF_EIS_LASTTESTSTATUS_FAIL;
		return false;
	}
	else if(m_pGlobalVar->FlagOverT == 1)
	{
		m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_OVERT;
		if(m_pGlobalVar->Start == 1) m_pGlobalVar->Stop  = DEF_EIS_LASTTESTSTATUS_OVERT;
		return false;
	}
	else if(m_pGlobalVar->mStatusInf.mdevice.adc_ac.data.vac.value > DEF_HLIMIT_VACSTABLE)
	{
		m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_NOTRDY;
		if(m_pGlobalVar->Start == 1) m_pGlobalVar->Stop  = DEF_EIS_LASTTESTSTATUS_VACSTABLE;
		return false;
	}
	*/
	return true;
}

inline void SetLastStatus(void)
{
	if(m_pGlobalVar->Stop == DEF_EIS_LASTTESTSTATUS_STOP) m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_MANUALSTOP;
	else if(m_pGlobalVar->Stop == DEF_EIS_LASTTESTSTATUS_FAIL) m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_ERRFAIL;
	else if(m_pGlobalVar->Stop == DEF_EIS_LASTTESTSTATUS_OVERT) m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_ERROVERT;
	else if(m_pGlobalVar->Stop == DEF_EIS_LASTTESTSTATUS_VACSTABLE) m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_ERRNOTREADY;
	else if(m_pGlobalVar->Stop == DEF_EIS_LASTTESTSTATUS_ERRCOMMZIM) m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_ERRCOMMZIM;
	else if(m_pGlobalVar->Stop == DEF_EIS_LASTTESTSTATUS_ERRRESETZIM  ) m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_ERRRESETZIM;
	else m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_AUTOSTOP;
	m_pGlobalVar->Stop = DEF_EIS_LASTTESTSTATUS_NONE;
}

inline void proc_Chk_Noise(void)
{
	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
	
	if(peis->eis_status.status == DEF_EIS_STATUS_BEGIN)
	{
		peis->eis_status.freq = 2.0;
		m_pGlobalVar->mStatusInf.DispFreq = peis->eis_status.freq;
		m_pGlobalVar->mStatusInf.DispMag = 0.0;
		m_pGlobalVar->mStatusInf.DispPhase = 0.0;
	
		m_pGlobalVar->mStatusInf.mdevice.eis.config = DEF_CFG_EIS_RESET;
		if(ICE_write_byte(ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mStatusInf.mdevice.eis.config) == _ERROR)
		{
			proc_CommErr();
			return;
		}

		memset(m_pGlobalVar->mStatusInf.mRms.raw_adc, 0x0,sizeof(st_zim_eis_raw_adc)*MAX_EIS_RAW_POINT);
		memset(m_pGlobalVar->mStatusInf.mRms.raw_val, 0x0,sizeof(st_zim_eis_raw_val)*MAX_EIS_RAW_POINT);
		
		proc_rms_setrange();
		
		peis->eis_status.status = DEF_EIS_STATUS_EIS_INIT;
		peis->eis_status.teststatus = DEF_EIS_TESTSTATUS_NCRUN;
		m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 1; 
		m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_EIS_INIT)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			
			proc_rms_init();

		 	m_pGlobalVar->mStatusInf.mdevice.eis.config = 0;
			if(ICE_write_byte(ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mStatusInf.mdevice.eis.config) == _ERROR)
			{
				proc_CommErr();
				return;
			}
			
			peis->eis_status.status = DEF_EIS_STATUS_RDY;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 1000; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;

		}
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_RDY)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			proc_eis_start();
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 1; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
			peis->eis_status.status = DEF_EIS_STATUS_ING;
		}
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_ING)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			proc_read_rmsraw();
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 1; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		}
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_FFT)
	{
		GetNoiseRMS(&m_pGlobalVar->mStatusInf.mRms);
		memcpy(&m_pGlobalVar->mStatusInf.meis.eis_status.RmsInfo,&m_pGlobalVar->mStatusInf.mRms.info,sizeof(st_zim_eis_rms_Inf));
		peis->eis_status.status = DEF_EIS_STATUS_EISSTOP;
		m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_FIN;
		m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
		m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_EISSTOP)
	{
		proc_eis_stop();
		peis->eis_status.status = DEF_EIS_STATUS_FIN;
		m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
		m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_FIN)
	{
		m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_NONE;

		m_pGlobalVar->bCalib = 0;
		m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_NONE;
		m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
		m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		m_pGlobalVar->Start = 0;
		SetLastStatus();
		m_pGlobalVar->mStatusInf.mdevice.eis.config = DEF_CFG_EIS_RESET;
		if(ICE_write_byte(ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mStatusInf.mdevice.eis.config) == _ERROR)
		{
			return;
		}

		
	}
}




inline void proc_sine_ctrl(void) 
{
	if(m_pGlobalVar->stat_sinectrl == 1)
	{
		m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_REFRESHVAC;
		m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do.data &= 0xFFF0;
		m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do.data |= (ushort)((4 << 1) & 0xE);
		m_pGlobalVar->stat_sinectrl = 2;
		m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_BASEDELAY; 
		m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
	}
	else if(m_pGlobalVar->stat_sinectrl == 2)	
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.reset = TRUE;
			m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.pwdn = 3;
			m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.frequency = DEF_SINECTRL_FREQ;
			m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.Phase = DEF_SINECTRL_PHASE;
			apply_req_dds_signal();

			m_pGlobalVar->stat_sinectrl = 3;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_BASEDELAY; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		}
	}
	else if(m_pGlobalVar->stat_sinectrl == 3)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do.data |= 0x1;
			m_pGlobalVar->stat_sinectrl = 4;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_BASEDELAY; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		}
	}
	else if(m_pGlobalVar->stat_sinectrl == 4)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.reset = FALSE;
			m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.pwdn = 0;
			m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.frequency = DEF_SINECTRL_FREQ;
			m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.Phase = DEF_SINECTRL_PHASE;
			apply_req_dds_signal();
			m_pGlobalVar->stat_sinectrl = 5;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_SINEDELAY; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		}
	}
	else if(m_pGlobalVar->stat_sinectrl == 5)
	{	
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			m_pGlobalVar->stat_sinectrl = 6;
		}
	}
	else if(m_pGlobalVar->stat_sinectrl == 6)
	{
		m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.reset = TRUE;
		m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.pwdn = 3;
		m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.frequency = DEF_SINECTRL_FREQ;
		m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.Phase = DEF_SINECTRL_PHASE;
		apply_req_dds_signal();
		m_pGlobalVar->stat_sinectrl = 7;
		m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_BASEDELAY; 
		m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
	}
	else if(m_pGlobalVar->stat_sinectrl == 7)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do.data &= 0xFFFE;
			m_pGlobalVar->stat_sinectrl = 8;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_CHKWAITDELAY; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		}
	}
	else if(m_pGlobalVar->stat_sinectrl == 8)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			m_pGlobalVar->stat_sinectrl = 9;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_CHKDELAY; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		}
	}
	else if(m_pGlobalVar->stat_sinectrl == 9)
	{
		if(ChkLowLimit() == true) 
		{
			if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
			{
				m_pGlobalVar->stat_sinectrl = 0;
				m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_NONE;
			}
		}
		else 
		{
			m_pGlobalVar->stat_sinectrl = 3;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_BASEDELAY; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		}
		
	}
	else if(m_pGlobalVar->stat_sinectrl == 99)
	{
		m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.reset = TRUE;
		m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.pwdn = 3;
		m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.frequency = DEF_SINECTRL_FREQ;
		m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.Phase = DEF_SINECTRL_PHASE;
		apply_req_dds_signal();
		m_pGlobalVar->stat_sinectrl = 100;
		m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_BASEDELAY; 
		m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
	}
	else if(m_pGlobalVar->stat_sinectrl == 100)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do.data &= 0xFFFE;
			m_pGlobalVar->stat_sinectrl = 0;
			m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_NONE;
		}
	}
}


/*
inline void proc_sine_ctrl(void) 
{
	if(m_pGlobalVar->stat_sinectrl == 1)
	{
		m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_REFRESHVAC;
		proc_power_VAC(false);
		m_pGlobalVar->stat_sinectrl = 2;
		m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_SINEDELAY; 
		m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
	}
	else if(m_pGlobalVar->stat_sinectrl == 2)	
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			proc_power_VAC(true);
			m_pGlobalVar->stat_sinectrl = 3;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_CHKWAITDELAY; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		}
	}
	else if(m_pGlobalVar->stat_sinectrl == 3)	
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			proc_power_VAC(true);
			m_pGlobalVar->stat_sinectrl = 4;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_CHKDELAY; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		}
	}
	else if(m_pGlobalVar->stat_sinectrl == 4)	
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			m_pGlobalVar->stat_sinectrl = 5;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_SINEDELAY; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		}
	}
	else if(m_pGlobalVar->stat_sinectrl == 5)
	{
		if(ChkLowLimit() == true) 
		{
			if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
			{
				m_pGlobalVar->stat_sinectrl = 6;
				m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 0; 
				m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
			}
		}
		else 
		{
			proc_power_VAC(false);
			m_pGlobalVar->stat_sinectrl = 2;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = DEF_SINECTRL_SINEDELAY; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		}
	}
	else if(m_pGlobalVar->stat_sinectrl == 99)
	{
		proc_power_VAC(true);
		m_pGlobalVar->stat_sinectrl = 0;
		m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_NONE;
	}
}
*/

inline void proc_eis_main(void)
{
	st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
	ushort buf;
	
	if(peis->eis_status.status == DEF_EIS_STATUS_BEGIN)
	{
		if(chkTestCondition() == false)
		{
			m_pGlobalVar->bCalib = 0;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
			m_pGlobalVar->Start = 0;
			SetLastStatus();
			return;
		}
		peis->eis_status.Veoc = m_pGlobalVar->mStatusInf.mdevice.adc_vdc.value;
		
		proc_power_VAC(true);
		
		m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_RUN;
		m_pGlobalVar->mStatusInf.RealSkip = 1;
		m_pGlobalVar->mStatusInf.meis.eis_status.freq = m_pGlobalVar->mStatusInf.meis.eis_cond.item[0].freq;
		m_pGlobalVar->mStatusInf.DispFreq = m_pGlobalVar->mStatusInf.meis.eis_status.freq;
		m_pGlobalVar->mStatusInf.DispMag = 0.0;
		m_pGlobalVar->mStatusInf.DispPhase = 0.0;
		m_pGlobalVar->mStatusInf.bChkSlope = 0;
		
		m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl = DDS_CLK_RESET;
		buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl & 0x3FFF;
		if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			proc_CommErr();
			return;
		}

		m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_PWDN | DDS_SIG_RESET; // Ctrl 0V;
		buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x3FFF;
		if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			proc_CommErr();
			return;
		}
		
		m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl = DDS_CLK_DEFAULT_CTRL;
		buf = m_pGlobalVar->mStatusInf.flow_dds_clk.req.ctrl & 0x3FFF;
		if(ICE_write_16bits(ICE_CMD_DDS_CLK,buf) == _ERROR)
		{
			proc_CommErr();
			return;
		}
		
		m_pGlobalVar->mStatusInf.mdevice.eis.config = DEF_CFG_EIS_RESET;
		if(ICE_write_byte(ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mStatusInf.mdevice.eis.config) == _ERROR)
		{
			proc_CommErr();
			return;
		}
		
		memset(m_pGlobalVar->mStatusInf.meis.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
		memset(peis->eis_item, 0x0,sizeof(st_zim_eis_item) * MAX_EIS_FREQ_CNT);
		memset(peis->eis_raw, 0x0,sizeof(st_zim_eis_raw) * MAX_EIS_FREQ_CNT);
		
		peis->eis_status.freqcount = peis->eis_cond.count;
		peis->eis_status.freqindex = 0;
		
		proc_eis_setrange();
		
		peis->eis_status.status = DEF_EIS_STATUS_LOADON;
		m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 1000; 
		m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_LOADON)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			proc_eis_LoadOn(1);
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 1000; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
			peis->eis_status.status = DEF_EIS_STATUS_DCON;
		}
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_DCON)
	{
		/*if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_RESET;
			buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x3FFF;
			if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
			{
				return;
			}
			
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = (uint)(m_pGlobalVar->mStatusInf.meis.eis_cond.ondelay * 1000.0); 
			m_pGlobalVar->mStatusInf.bChkSlope = 0;
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
			peis->eis_status.status = DEF_EIS_STATUS_ONDELAY;
		}
		*/
		
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp && m_pGlobalVar->mStatusInf.m_MsTestdelayStamp < 10000)
		{
			m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_RESET;
			buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x3FFF;
			if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
			{
				proc_CommErr();
				return;
			}
			
			
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 10000;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 11000; 
		}
		else if( m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp && m_pGlobalVar->mStatusInf.m_MsTestdelayStamp < 20000)
		{
			proc_eis_SineForDelay();
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 20000;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 21000; 
		}
		else if( m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp && m_pGlobalVar->mStatusInf.m_MsTestdelayStamp < 30000)
		{
			if(ChkLowLimit() == true) 
			{
				m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = (uint)(m_pGlobalVar->mStatusInf.meis.eis_cond.ondelay * 1000.0); 
				m_pGlobalVar->mStatusInf.bChkSlope = 0;

				m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
				peis->eis_status.status = DEF_EIS_STATUS_ONDELAY;
			}
			else
			{
				m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 20000;
			}
		}
		
		/*
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp && m_pGlobalVar->mStatusInf.m_MsTestdelayStamp < 10000)
		{
			m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_RESET;
			buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x3FFF;
			if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
			{
				return;
			}
			
			
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 10000;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 11000; 
		}
		else if( m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp && m_pGlobalVar->mStatusInf.m_MsTestdelayStamp < 20000)
		{
			proc_power_VAC(true);
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 20000;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 21000; 
		}
		else if( m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp && m_pGlobalVar->mStatusInf.m_MsTestdelayStamp < 30000)
		{
			if(ChkLowLimit() == true) 
			{
				m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = (uint)(m_pGlobalVar->mStatusInf.meis.eis_cond.ondelay * 1000.0); 
				m_pGlobalVar->mStatusInf.bChkSlope = 0;

				m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
				peis->eis_status.status = DEF_EIS_STATUS_ONDELAY;
			}
			else
			{
				proc_power_VAC(false);
				m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 10000;
				m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 11000; 
			}
		}
		*/
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_ONDELAY)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
			m_pGlobalVar->mStatusInf.m_MsTestStamp = 0;
			peis->eis_status.status = DEF_EIS_STATUS_EIS_INIT;
		}
		else
		{
			if(m_pGlobalVar->mStatusInf.bChkSlope == 0)
			{
				if(2000 <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
				{
					m_pGlobalVar->mStatusInf.bChkSlope = 1;
					peis->eis_status.WorkDatacnt = DEF_MAX_SLOPECHECK_RAW;
					peis->eis_status.LoadDatacnt = 0;
					m_pGlobalVar->mStatusInf.m_msSlop = 0; 
				}
			}
			else if(m_pGlobalVar->mStatusInf.bChkSlope == 1)
			{
				if(m_pGlobalVar->mStatusInf.m_msSlop >= DEF_MAX_SLOPECHECK_TICK)
				{
					if(proc_read_vdc_raw() == true)
					{
						m_pGlobalVar->mStatusInf.bChkSlope = 0;
						m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
						m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
						m_pGlobalVar->mStatusInf.m_MsTestStamp = 0;
						peis->eis_status.status = DEF_EIS_STATUS_EIS_INIT;
					}
					m_pGlobalVar->mStatusInf.m_msSlop = 0;
				}
			}
			
		}
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_EIS_INIT)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			proc_eis_init(peis->eis_status.freqindex);

		 	m_pGlobalVar->mStatusInf.mdevice.eis.config = 0;
			if(ICE_write_byte(ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mStatusInf.mdevice.eis.config) == _ERROR)
			{
				proc_CommErr();
				return;
			}
			
			peis->eis_status.status = DEF_EIS_STATUS_RDY;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = MIN(2000, MAX(250,(int)(500 / m_pGlobalVar->mStatusInf.mdevice.dds_sig.frequency)));
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;

		}
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_RDY)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			proc_eis_start();
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 1; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
			peis->eis_status.status = DEF_EIS_STATUS_ING;
		}
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_ING)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			proc_eis_chk_ing();
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 1; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
		}
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_FFT)
	{
		
		if(proc_eis_data_conv(m_pGlobalVar->mStatusInf.meis.eis_status.freqindex) == false)
		{
			m_pGlobalVar->mStatusInf.mdevice.eis.config = DEF_CFG_EIS_RESET;
			if(ICE_write_byte(ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mStatusInf.mdevice.eis.config) == _ERROR)
			{
				proc_CommErr();
				return;
			}
			
			peis->eis_status.status = DEF_EIS_STATUS_EIS_INIT;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
			return;
		}
		
		if(proc_eis_chk_Control(10.0,m_pGlobalVar->mStatusInf.meis.eis_raw[m_pGlobalVar->mStatusInf.meis.eis_status.freqindex].zdata_iac.mag) == true)
		{
			if(m_pGlobalVar->mStatusInf.meis.eis_status.freqcount > (m_pGlobalVar->mStatusInf.meis.eis_status.freqindex + 1))
			{
				peis->eis_status.freqindex ++;
				
				m_pGlobalVar->mStatusInf.mdevice.eis.config = DEF_CFG_EIS_RESET;
				if(ICE_write_byte(ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mStatusInf.mdevice.eis.config) == _ERROR)
				{
					proc_CommErr();
					return;
				}
				
				peis->eis_status.status = DEF_EIS_STATUS_EIS_INIT;
				m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
				m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
			}
			else
			{
				peis->eis_status.teststatus = DEF_EIS_TESTSTATUS_FIN;
				m_pGlobalVar->Stop  = DEF_EIS_LASTTESTSTATUS_FIN;
				peis->eis_status.status = DEF_EIS_STATUS_EISSTOP;
				m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
				m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
			}
		}
		else
		{
			proc_eis_ControlFail();
		}
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_EISSTOP)
	{
		m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl = DDS_SIG_PWDN;
		buf = m_pGlobalVar->mStatusInf.flow_dds_sig.req.ctrl & 0x3FFF;
		if(ICE_write_16bits(ICE_CMD_DDS_SIG,buf) == _ERROR)
		{
			proc_CommErr();
			return;
		}
		
		proc_eis_stop();
		
		peis->eis_status.status = DEF_EIS_STATUS_LOADOFF;
		m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
		m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
	}
	else if(peis->eis_status.status == DEF_EIS_STATUS_LOADOFF)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			proc_eis_LoadOn(0);
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 500; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
			peis->eis_status.status = DEF_EIS_STATUS_FIN;
		}
	}		
	else if(peis->eis_status.status == DEF_EIS_STATUS_FIN)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTestdelayLimit <= m_pGlobalVar->mStatusInf.m_MsTestdelayStamp)
		{
			proc_power_VAC(false);
			
//			m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do.data &= 0xFFEF;
//		    set_device_DO();
			
			if(m_pGlobalVar->mStatusInf.meis.eis_status.teststatus == DEF_EIS_TESTSTATUS_STOP
			   || m_pGlobalVar->mStatusInf.meis.eis_status.teststatus == DEF_EIS_TESTSTATUS_FIN) 
			{
				m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_NONE;
			}

			m_pGlobalVar->bCalib = 0;
			m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
			m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
			m_pGlobalVar->Start = 0;
			SetLastStatus();
			
			m_pGlobalVar->mStatusInf.mdevice.eis.config = DEF_CFG_EIS_RESET;
			if(ICE_write_byte(ICE_CMD_EIS_CFG, (UNS_8)m_pGlobalVar->mStatusInf.mdevice.eis.config) == _ERROR)
			{
				m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_ERRCOMMZIM;
				return;
			}
			
			
		}
	}
}
						
void LCD_Refresh(void)
{
	double crngval;
	double vrngval;
	crngval = iRange[m_pGlobalVar->mStatusInf.iac_in_rngno];
	vrngval = m_pGlobalVar->ranges.vdc_rng[m_pGlobalVar->mStatusInf.vdc_rngno].maximum;
	
	LCD_ToggleHeart(false);
	LCD_CtrlType(CTRL_TYPE_CC,false);
	
	if(m_pGlobalVar->mStatusInf.LoadOn == 1) LCD_Cell(true,false);
	else LCD_Cell(false,false);
	
	if(m_pGlobalVar->Start > 0) LCD_Run(true, false);
	else LCD_Run(false, false);
	
	if(m_pGlobalVar->mStatusInf.meis.eis_status.status == DEF_EIS_STATUS_NONE) 
	{
		LCD_CtrlMode(0,false);
		LCD_SetL2(vrngval, 'V', ' ', false);
		LCD_SetL1(m_pGlobalVar->mStatusInf.meis.eis_status.freq, 'H', 'z', false);
		if((m_pGlobalVar->mStatusInf.mdevice.ctrl_do.data  & DEF_DEVDO_DDS_RNG0) == DEF_DEVDO_DDS_RNG0)
		{
			crngval = crngval * 0.5;
			LCD_SetL3(crngval, 'A', ' ', false);
//			crngval = crngval * 0.5;
//			LCD_SetL1(crngval, 'A', ' ', false);
		}
		else
		{
			LCD_SetL3(crngval, 'A', ' ', false);
			crngval = crngval * 0.5;
//			LCD_SetL1(crngval, 'A', ' ', false);
		}
		LCD_SetR1(m_pGlobalVar->mStatusInf.mdevice.adc_vdc.value, 'V', false);
		LCD_SetR2(m_pGlobalVar->mStatusInf.mdevice.adc_rtd.data.Tvalue, 'C', false);
	}
	else
	{
		
		LCD_CtrlMode(CTRL_MODE_EIS,false);
		LCD_SetL1(m_pGlobalVar->mStatusInf.DispFreq, 'H', 'z', false);
		LCD_SetL2(m_pGlobalVar->mStatusInf.mdevice.adc_vdc.value, 'V', ' ', false);
		LCD_SetL3(m_pGlobalVar->mStatusInf.mdevice.adc_rtd.data.Tvalue,'\'', 'C', false);
		
		LCD_SetR1(m_pGlobalVar->mStatusInf.DispMag , 'R', false);
		LCD_SetR2(m_pGlobalVar->mStatusInf.DispPhase, '\'', false);
		
		
	}
	
	LCD_Err(false,false);
	LCD_Update();
}

inline bool ChkDeviceErr(void)
{
	if(m_pGlobalVar->mStatusInf.mdevice.adc_ac.data.iac.adcval == 0 
		&& m_pGlobalVar->mStatusInf.mdevice.adc_vdc.adcval == 0
		&& m_pGlobalVar->mStatusInf.mdevice.adc_ac.data.vac.adcval == 0 
		&& (m_pGlobalVar->mStatusInf.mdevice.adc_rtd.data.adcval == 0 && m_pGlobalVar->mStatusInf.mdevice.adc_rtd.data.fault == 0)) return true;
	
	return false;
}

void proc_main(void)
{
	if(m_pGlobalVar->TmpResetICE > 0) return;
	if(m_pGlobalVar->commtest == 1)
	{
		if(ICE_spi_bytetest() == _ERROR)
		{
			m_pGlobalVar->commtest = 0;
		}
	}
	else if(m_pGlobalVar->commtest == 2)
	{
		if(ICE_spi_16bittest() == _ERROR)
		{
			m_pGlobalVar->commtest = 0;
		}
	}
	else if(m_pGlobalVar->commtest == 3)
	{
		if(ICE_spi_24bittest() == _ERROR)
		{
			m_pGlobalVar->commtest = 0;
		}
	}
	else
	{

		if(m_pGlobalVar->TmpResetICE > 0) return;
		
		if(m_pGlobalVar->mStatusInf.m_msAux >= 500)
		{
			ToggleLed_Y();
			m_pGlobalVar->mStatusInf.m_msAux = 0;
			proc_adc_rtd();
			if(m_pGlobalVar->TmpResetICE > 0) return;
			proc_adc_vdc_data();
			if(m_pGlobalVar->TmpResetICE > 0) return;
			proc_auto_vdc_proc();
			if(m_pGlobalVar->TmpResetICE > 0) return;
			CheckThermoStat();
			if(m_pGlobalVar->TmpResetICE > 0) return;
			
			
			
			if(m_pGlobalVar->TmpResetICE > 0) return;
			
			if(m_pGlobalVar->Start == 1) 
			{
				if(chkTestCondition() == false)
				{
					m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_EISSTOP;
				}
				if(m_pGlobalVar->TmpResetICE > 0)
				{
					m_pGlobalVar->Stop  = DEF_EIS_LASTTESTSTATUS_ERRRESETZIM;
					m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_EISSTOP;
					m_pGlobalVar->mStatusInf.m_MsTestdelayLimit = 10; 
					m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 0;
				}
			}
			else
			{
				proc_adc_ac_data();
				if(m_pGlobalVar->TmpResetICE > 0) return;
				if(m_pGlobalVar->TmpResetICE == 0)
				{
					if(ChkDeviceErr() == true)
					{
						m_pGlobalVar->TmpResetICE = 1;
						Set_IceResetB(true);
						return;
					}
				}
				
				if(m_pGlobalVar->stat_sinectrl == 0) 
				{

					proc_power_VAC(false);
					/*if(m_pGlobalVar->mStatusInf.mdevice.adc_vdc.value < -2.0) testv
					{
						m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_FAIL;
					}
					else
					{
						if(m_pGlobalVar->mStatusInf.meis.eis_status.teststatus == DEF_EIS_TESTSTATUS_NOTRDY)
						{
							if(ChkLowLimit() == true) m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_NONE;	
						}
						else
						{
							if(ChkHighLimit() == true) m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_NOTRDY;
							else if(m_pGlobalVar->FlagOverT == 1) m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_OVERT;
							else if(ChkSysCalVars() == false) m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_NOTCAL;
							else m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_NONE;
						}
					}
					*/
					proc_default_setrange();
				}

			}
		}
		if(m_pGlobalVar->TmpResetICE > 0) return;
		
		if(m_pGlobalVar->Start == 1) 
		{
			proc_eis_main();
		}
		else if(m_pGlobalVar->Start == 2) 
		{
			proc_Chk_Noise();
		}
		else 
		{
			if(m_pGlobalVar->stat_sinectrl > 0) 
			{
				proc_sine_ctrl();
				set_dds_sig();
			}
			else
			{
//				proc_eis_chk_ing_test();
				set_dds_sig();
				set_dds_clk();
				proc_eis_cfg(); //
				proc_adc_ac_cfg();	//
			}
		}
		
		set_device_DO(); //
	}		
}

void RefreshFPGA(void)
{
	apply_req_dds_clock();
	apply_req_dds_signal();
	apply_adc_ac_cfg();

	set_dds_sig();
	set_dds_clk();
	proc_eis_cfg(); //
	
	proc_adc_rtd_cfg();
	proc_adc_ac_cfg();	//
	set_device_DO();
}

