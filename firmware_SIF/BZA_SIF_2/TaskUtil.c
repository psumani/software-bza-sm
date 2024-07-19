#include "BZA_SIF.h"


inline void Ch_Seldelay()
{
	int i;
	for(i=0; i<200; i++)
	{
	}
}

int GetMaxChannel(void)
{
	int  MaxCh = MAX_DEV_CHANNEL;
	
	if(m_pSysConfig->mSIFCfg.Type != (byte)SIF_MBZA)
	{
		MaxCh = 1;
	}
	return MaxCh;
}

bool CmdResetProc()	
{
	int ch;
	bool bret = false;
	for(ch=0; ch < m_pGlobalVar->mStatusInf.MaxChannel; ch++)
	{
		if(m_pSysConfig->EnaZIM[ch] == 0) 
		{
			continue;
		}
		if(m_pGlobalVar->mChVar[ch].ResetICE == 1)
		{
			bret =  true;
			break;
		}
		else if(m_pGlobalVar->mChVar[ch].ResetICE == 2)
		{
			if(m_pGlobalVar->mChVar[ch].m_msReset >= 25)
			{
				m_pGlobalVar->mChVar[ch].ResetICE = 0;
			}
			else 
			{
				bret =  true;
				break;
			}
		}
		else if(m_pGlobalVar->mChVar[ch].ResetICE == 3)
		{
			if(m_pGlobalVar->mChVar[ch].m_msReset >= 25)
			{
				SetDevChannel(ch);
				Ch_Seldelay();
				Set_IceResetB(false);
				m_pGlobalVar->mChVar[ch].ResetICE = 2;
			}
			bret =  true;
			break;
		}
		else
		{
			if(m_pGlobalVar->mChVar[ch].CmdResetICE == 1)
			{
				m_pGlobalVar->mChVar[ch].ResetICE = 1;
				m_pGlobalVar->mChVar[ch].CmdResetICE = 0;
				m_pGlobalVar->mChVar[ch].m_msReset = 0;
				SetDevChannel(ch);
				Ch_Seldelay();
				Set_IceResetB(true);
				bret =  true;
				break;
			}
			else if(m_pGlobalVar->mChVar[ch].CmdResetICE == 2)
			{
				m_pGlobalVar->mChVar[ch].ResetICE = 3;
				m_pGlobalVar->mChVar[ch].CmdResetICE = 0;
				m_pGlobalVar->mChVar[ch].m_msReset = 0;
				SetDevChannel(ch);
				Ch_Seldelay();
				Set_IceResetB(true);
				bret =  true;
				break;
			}
			else if(m_pGlobalVar->mChVar[ch].CmdResetICE == 3)
			{
				m_pGlobalVar->mChVar[ch].ResetICE = 3;
				m_pGlobalVar->mChVar[ch].CmdResetICE = 0;
				m_pGlobalVar->mChVar[ch].m_msReset = 0;
				bret =  true;
				break;
			}
			else 
			{
				m_pGlobalVar->mChVar[ch].ResetICE = 0;
			}
		}
	}
	return bret;
}

void AllChReset(bool brst)
{
	if(brst == false)
	{
		Set_IceResetB(false);
		Ch_Seldelay();
		Ch_Seldelay();
		Ch_Seldelay();
		P3_OUTP_SET_bit.GPO_11 = 1;  
	}
	else
	{
		P3_OUTP_CLR_bit.GPO_11 = 1;
		Ch_Seldelay();
		Ch_Seldelay();
		Ch_Seldelay();
		Set_IceResetB(true);	
	}
	
}

void SetDevChannel(int ch)
{
	if(ch != m_pGlobalVar->mStatusInf.LastCh)
	{
		
		if(ch & 0x1)
		{
			P3_OUTP_SET_bit.GPO_06 = 1;  
		}
		else
		{
			P3_OUTP_CLR_bit.GPO_06 = 1;
		}
		if(ch & 0x2)
		{
			P3_OUTP_SET_bit.GPO_10 = 1; 
		}
		else
		{
			P3_OUTP_CLR_bit.GPO_10 = 1;
		}
		
		P3_OUTP_SET_bit.GPO_11 = 1;  
		
		m_pGlobalVar->mStatusInf.LastCh = ch;
		
	}
}

double mRounding( double x, int digit)
{
	double result = floor(x * pow(10.0, (double)digit) + 0.5) / pow(10.0, (double)digit);
	return result;
}

double RoundToSignificantDigits(double d, int digits)
{
    if (d == 0)
        return 0;

    double scale = pow(10.0, floor(log10(fabs(d))) + 1);
    return scale * mRounding(d / scale, digits);
}

/*
int GetNumberOfFrequncies(double initialFrequency, double finalFrequency, int density)
{	
	double dinit = log10(initialFrequency);
	double dfinal = log10(finalFrequency);
    int Factor = 1;
	
	
	    
	double x = fabs(dfinal - dinit) * density;
    return Factor + (int)ceil(x); 
}
*/

#define DEF_FREQUENCY_CHECKRATE 0.2
int GetNumberOfFrequncies(double initialFrequency, double finalFrequency, int density)
{	
	double logIncrement = 1.0 / density;
	double dInitfreq = RoundToSignificantDigits(initialFrequency, 6);
	double dFinalfreq = RoundToSignificantDigits(finalFrequency, 6);
    int index = 0;
	double dfreq;
	double dChkExist;
	if(dInitfreq > dFinalfreq )
	{
		logIncrement *= -1.0;
	}
	while(true)
	{
		dfreq = pow(10.0, log10(dInitfreq) + (index * logIncrement));
		index++;
		dChkExist = pow(10.0,ceil(log10(dfreq))) * logIncrement * DEF_FREQUENCY_CHECKRATE;
		if(dInitfreq > dFinalfreq)
		{
			if(dfreq <= dFinalfreq)
			{
				 if((dFinalfreq - dfreq) > dChkExist)
				 {
					 index --;
				 }
				break;
			}
			else
			{
				if((dfreq - dFinalfreq) < dChkExist)
				{
					break;
				}
			}
		}
		else
		{
			if(dfreq >= dFinalfreq)
			{
				if((dfreq - dFinalfreq) < dChkExist)
				 {
					 index --;
				 }
				break;
			}
			else
			{
				if((dFinalfreq - dfreq) < dChkExist)
				{
					break;
				}
			}
		}
	}
    return index; 
}


int GetTechEisFreqCount(int ch, void* pvoid )
{
	int iret = 0;
	st_Tech_EIS* peis = (st_Tech_EIS*)pvoid;
	int density = MAX(peis->density,0);

	
	if(peis->initfreq == peis->finalfreq)
	{
		iret = 1;
	}
	else 
	{
		if(density == 0)
		{
			iret = 2;
		}
		else
		{
			iret = GetNumberOfFrequncies(peis->initfreq, peis->finalfreq, density);
		}
	}
   
	
	return iret;
}

int GetFreqCount(int ch)
{
	
	if(m_pGlobalVar->mChVar[ch].bCalib > 0) 
	{
		return GetTechEisFreqCount(ch,&m_pGlobalVar->mChVar[ch].tech_calib.tech.eis);
	}
	
	st_Tech* ptech = &m_pGlobalVar->mChVar[ch].mTech;
    int iret = 0;
	
	if(ptech->type == TECH_HFR) 
	{
		iret ++;
		return iret;
	}
	else if(ptech->type == TECH_PRR)
	{
		if(ptech->tech.prr.rsfreq > 0.0) iret ++;
		if(ptech->tech.prr.rdfreq > 0.0) iret ++;
		if(ptech->tech.prr.rdendfreq > 0.0) iret ++;
		return iret;
	}
	else if(ptech->type == TECH_MON)
	{
		return 0;
	}
	else if(ptech->type == TECH_QIS)
	{
		return GetTechEisFreqCount(ch,(void*)&ptech->tech.qis);
	}
	else if(ptech->type == TECH_DCH)
	{
		return 0;
	}
	
	return GetTechEisFreqCount(ch,(void*)&ptech->tech.eis);
	
}


double GetTechEisNextFreq(int ch, ushort* restart, void* pvoid)
{
	st_Tech_EIS* peis = (st_Tech_EIS*)pvoid;
		
	int density = MAX(peis->density,0);
	int aPoints;
	double logIncrement = 1.0 / density;

	*restart = 1;


	peis->initfreq = MAX(peis->initfreq,m_pGlobalVar->mChVar[ch].MinFrequency);
	peis->initfreq = MIN(peis->initfreq,m_pGlobalVar->mChVar[ch].MaxFrequency);
	peis->finalfreq = MAX(peis->finalfreq,m_pGlobalVar->mChVar[ch].MinFrequency);
	peis->finalfreq = MIN(peis->finalfreq,m_pGlobalVar->mChVar[ch].MaxFrequency);
	
	double dInitfreq = RoundToSignificantDigits(peis->initfreq, 6);
	double dFinalfreq = RoundToSignificantDigits(peis->finalfreq, 6);

	double dfreq = dInitfreq;
	double dChkExist;
	
	if(dInitfreq == dFinalfreq)
	{
		if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex > 0) 
		{
			m_pGlobalVar->mChVar[ch].mFlow.m_loopcnt++;
			if(m_pGlobalVar->mChVar[ch].mFlow.m_loopcnt >= m_pGlobalVar->mChVar[ch].mFlow.m_iteration)
			{
				return 0.0;
			}
		}
		m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex = 1;
		return dfreq;
	}
	else 
	{
		if(density == 0)
		{
			if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex == 0) 
			{
				m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex = 1;
			}
			else
			{
				m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex ++;
				if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex == 2)
				{
					dfreq = RoundToSignificantDigits(peis->finalfreq, 6);
				}
				else
				{
					m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex = 1;
					m_pGlobalVar->mChVar[ch].mFlow.m_loopcnt++;
					if(m_pGlobalVar->mChVar[ch].mFlow.m_loopcnt >= m_pGlobalVar->mChVar[ch].mFlow.m_iteration)
					{
						return 0.0;
					}
				}
			}
			return dfreq;
		}
	}
	
	if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex == 0) 
	{
		m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex = 1;
		return dfreq;
	}

	
	aPoints = m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqcount; //GetNumberOfFrequncies(peis->initfreq, peis->finalfreq);
	
	
	
	if(dInitfreq > dFinalfreq )
	{
		logIncrement *= -1.0;
	}
	
	
	dfreq = pow(10.0, log10(dInitfreq) + (m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex * logIncrement));
	dChkExist = pow(10.0,ceil(log10(dfreq))) * logIncrement * DEF_FREQUENCY_CHECKRATE;
	if(dInitfreq > dFinalfreq)
	{
		if(dfreq <= dFinalfreq)
		{
			 dfreq = dFinalfreq;
		}
		else
		{
			if((dfreq - dFinalfreq) < dChkExist)
			{
				dfreq = dFinalfreq;
			}
		}
	}
	else
	{
		if(dfreq >= dFinalfreq)
		{
			dfreq = dFinalfreq;
		}
		else
		{
			if((dFinalfreq - dfreq) < dChkExist)
			{
				dfreq = dFinalfreq;
			}
		}
	}
	

	dfreq = RoundToSignificantDigits(dfreq, 6);
	
	
	if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex >= aPoints)
	{
		
		m_pGlobalVar->mChVar[ch].mFlow.m_loopcnt++;
		if(m_pGlobalVar->mChVar[ch].mFlow.m_loopcnt >= m_pGlobalVar->mChVar[ch].mFlow.m_iteration)
		{
			return 0.0;
		}
		else m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex = 0;
		dfreq = dInitfreq;
	}
	m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex ++;
	
	return dfreq;
}

double GetNextFreq(int ch, ushort* restart)
{
	
	if(m_pGlobalVar->mChVar[ch].bCalib > 0) 
	{
		return GetTechEisNextFreq(ch,restart,&m_pGlobalVar->mChVar[ch].tech_calib.tech.eis);
	}
	
	st_Tech* ptech = &m_pGlobalVar->mChVar[ch].mTech;
	int i;

	if(ptech->type == TECH_HFR)
	{
		ptech->tech.hfr.freq = MAX(ptech->tech.hfr.freq,m_pGlobalVar->mChVar[ch].MinFrequency);
		ptech->tech.hfr.freq = MIN(ptech->tech.hfr.freq,m_pGlobalVar->mChVar[ch].MaxFrequency);
		m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex = 1;
		*restart = 1;
		return ptech->tech.hfr.freq;
	}
	else if(ptech->type == TECH_PRR)
	{
		for(i=0; i<3; i++)
		{
			if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex == 1)
			{
				m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex = 2;
				if(ptech->tech.prr.rdfreq != 0.0)
				{
					ptech->tech.prr.rdfreq = MIN(ptech->tech.prr.rdfreq,m_pGlobalVar->mChVar[ch].MaxFrequency);
					ptech->tech.prr.rdfreq = MAX(ptech->tech.prr.rdfreq,m_pGlobalVar->mChVar[ch].MinFrequency);
					return ptech->tech.prr.rdfreq;
				}
			}
			else if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex == 2)
			{
				m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex = 3;
				if(ptech->tech.prr.rdendfreq != 0.0)
				{
					ptech->tech.prr.rdendfreq = MIN(ptech->tech.prr.rdendfreq,m_pGlobalVar->mChVar[ch].MaxFrequency);
					ptech->tech.prr.rdendfreq = MAX(ptech->tech.prr.rdendfreq,m_pGlobalVar->mChVar[ch].MinFrequency);
					return ptech->tech.prr.rdendfreq;
				}
			}
			else
			{
				*restart = 1;
				
				m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex = 1;
				if(ptech->tech.prr.rsfreq != 0.0)
				{
					ptech->tech.prr.rsfreq = MIN(ptech->tech.prr.rsfreq,m_pGlobalVar->mChVar[ch].MaxFrequency);
					ptech->tech.prr.rsfreq = MAX(ptech->tech.prr.rsfreq,m_pGlobalVar->mChVar[ch].MinFrequency);
					return ptech->tech.prr.rsfreq;
				}
				
			}
		}
	}
	else if(ptech->type == TECH_MON)
	{
		return 0.0;
	}
	else if(ptech->type == TECH_QIS)
	{
		return GetTechEisNextFreq(ch,restart,(void*)&ptech->tech.qis);
	}
	else if(ptech->type == TECH_DCH)
	{
		ptech->tech.dch.frequency = MAX(ptech->tech.dch.frequency,m_pGlobalVar->mChVar[ch].MinFrequency);
		ptech->tech.dch.frequency = MIN(ptech->tech.dch.frequency,m_pGlobalVar->mChVar[ch].MaxFrequency);
		m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex = 1;
		*restart = 1;
		return ptech->tech.dch.frequency;
	}
	
	return GetTechEisNextFreq(ch,restart,(void*)&ptech->tech.eis);
	
}

inline bool CheckCmdDI(int ch)		
{
	if(ch < 2) 
	{
		if(P3_INP_STATE_bit.GPIO_00) return false;
		else return true;
	}
	else
	{
		if(P3_INP_STATE_bit.GPIO_01) return false;
		else return true;
	}
}

bool proc_mon_dcControl(int ch)
{
	ushort buf;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	st_zim_dds_flow* pflow = &m_pGlobalVar->mChVar[ch].flow_dds_sig;
	st_zim_dds* preqdds = &m_pGlobalVar->mChVar[ch].mreqdevice.dds_sig;
	st_zim_dds* pdds = &m_pGlobalVar->mChVar[ch].mdevice.dds_sig;
	
	double dConst = DEF_DDS_SIG_CONST_LOW;
	
	m_pGlobalVar->mChVar[ch].bSigLowFreq = 1;
	
	pdds->frequency = preqdds->frequency = DEF_MONDCCTRL_FREQ;
	pdds->Phase = preqdds->Phase = m_pSysConfig->mZimCfg[ch].ranges.idc_rng.idcofs[pch->mChStatInf.Iac_rngno].offset;
	pflow->stat.ctrl = pflow->req.ctrl = DDS_SIG_DEFAULT_CTRL;
	
	pflow->stat.freq = pflow->req.freq = (uint)(DEF_MONDCCTRL_FREQ * dConst);
	pflow->stat.phase = pflow->req.phase = (uint)(preqdds->Phase * (double)DEF_DDS_PHASE_CONST) & 0xFFF;

	pdds->reset = preqdds->reset = 0;
	pdds->pwdn = preqdds->pwdn = 0;
	pdds->Half = preqdds->Half = 0;
	
	
	pch->mChStatInf.BiasOn = 1;
	
		
	pflow->req.ctrl = DDS_SIG_RESET;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,pflow->req.ctrl) == _ERROR)
	{
		m_pGlobalVar->mChVar[ch].mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	pflow->req.ctrl  |= DDS_HLB;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,pflow->req.ctrl) == _ERROR)
	{
		m_pGlobalVar->mChVar[ch].mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((pflow->req.freq  >> 14) & 0x3FFF);
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		m_pGlobalVar->mChVar[ch].mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	pflow->req.ctrl &= DDS_HLB_CLR;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,pflow->req.ctrl) == _ERROR)
	{
		m_pGlobalVar->mChVar[ch].mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(pflow->req.freq  & 0x3FFF);	
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		m_pGlobalVar->mChVar[ch].mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	pflow->req.ctrl = 0;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,pflow->req.ctrl) == _ERROR)
	{
		m_pGlobalVar->mChVar[ch].mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	m_pGlobalVar->m_msRefreshDC = 0;

	buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(pflow->req.phase & 0xFFF);
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return false;
	}

	return true;
}



inline void proc_init_test(int ch)
{
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	st_Tech* pTech;

	if(pch->bCalib > 0) pTech = &pch->tech_calib;
	else pTech = &pch->mTech;
	
	memset(&pch->mFlow,0x0,sizeof(st_flow));

	
	pch->mFlow.Vdc_rngno = pTech->vrange;
	pch->mFlow.Iac_rngno = pTech->irange;
	pch->mFlow.MaxP = pTech->info.MaxP;
	pch->mFlow.MaxI = pTech->info.MaxI;
	pch->mFlow.MaxV = pTech->info.MaxV;
	pch->mFlow.Capa = pTech->info.Capa;
	
	
	
	proc_eis_setrange(ch,m_pGlobalVar->mChVar[ch].mFlow.Iac_rngno);
	
	if(pch->mFlow.Vdc_rngno == 0) pch->AutoVdcRange = 1;
	else
	{
		pch->AutoVdcRange = 0;
		if(pch->mFlow.Vdc_rngno == 1) 
		{
			preqdo->data |= DEF_DEVDO_VDC_RNG0;
		}
		else
		{
			preqdo->data &= DEF_DEVDO_VDC_RNG1;
		}
	}
	
	pch->mFlow.m_MsOndelayLimit = (uint)(pTech->ondelay * 1000.0);
	pch->mFlow.ondelaystable = pTech->ondelaystable;
	
	if(pTech->type == TECH_HFR)
	{
		pch->mFlow.celloffwait = pTech->tech.hfr.celloffwait;
		pch->mFlow.timeproc = 1;
		pch->mFlow.m_MsDurLimit = (uint)(pTech->tech.hfr.interval * 1000.0);
		pch->mFlow.m_MsEndTimeLimit = (uint)(pTech->tech.hfr.totaltime * 1000.0);
		pch->mFlow.skipcycle = pTech->tech.hfr.skipcycle;
		pch->mFlow.setcycle = pTech->tech.hfr.cycle;
		pch->mFlow.m_iteration = 1;
	}
	else if(pTech->type == TECH_PRR)
	{
		pch->mFlow.celloffwait = pTech->tech.prr.celloffwait;
		pch->mFlow.timeproc = 1;
		pch->mFlow.m_MsDurLimit = (uint)(pTech->tech.prr.interval * 1000.0);
		pch->mFlow.m_MsEndTimeLimit = (uint)(pTech->tech.prr.totaltime * 1000.0);
		pch->mFlow.skipcycle = pTech->tech.prr.skipcycle;
		pch->mFlow.setcycle = pTech->tech.prr.cycle;
		pch->mFlow.m_iteration = 1;
	}
	else if(pTech->type == TECH_MON)
	{
		pch->mFlow.celloffwait = 1;
		
		proc_eis_LoadOn(ch, 0); 

		pch->mFlow.CutoffV = 0.0;
		pch->mFlow.timeproc = 1;
		pch->mFlow.m_MsSmplLimit = (uint)(pTech->tech.mon.sampletime * 1000.0);
		pch->mFlow.m_MsDurLimit = 0;
		pch->mFlow.m_MsEndTimeLimit = (uint)(pTech->tech.mon.totaltime * 1000.0);
		pch->mFlow.skipcycle = 0;
		pch->mFlow.setcycle = 0;
		pch->mFlow.m_iteration = 1;
	}
	else if(pTech->type == TECH_QIS)
	{
		pch->mFlow.celloffwait = 0;
		pch->mFlow.m_iteration = pTech->tech.qis.iteration;
		pch->mFlow.timeproc = 0;
		pch->mFlow.m_MsDurLimit = 0;
		pch->mFlow.m_MsEndTimeLimit = 0;
		pch->mFlow.setcycle = 2;
		pch->mFlow.skipcycle = 0;
		//pch->mFlow.skipcycle = pTech->tech.qis.skipcycle;
		//pch->mFlow.setcycle = pTech->tech.qis.cycle;
	}
	else if(pTech->type == TECH_DCH)
	{
		pch->mFlow.celloffwait = 0;
		
		if(pTech->tech.dch.useir == 0) proc_eis_LoadOn(ch, 1); 

		pch->mFlow.CutoffV = pTech->tech.dch.CutoffV;
		pch->mFlow.timeproc = 1;
		pch->mFlow.m_MsFlowdelayLimit = 0;
		pch->mFlow.m_MsSmplLimit = (uint)(pTech->tech.dch.sampletime * 1000.0);
		pch->mFlow.m_MsDurLimit = (uint)(pTech->tech.dch.interval * 1000.0);
		pch->mFlow.m_MsEndTimeLimit = 0;
		pch->mFlow.skipcycle = 0;
		pch->mFlow.setcycle = 2;
		pch->mFlow.m_iteration = 1;
	}
	else
	{
		pch->mFlow.celloffwait = 0;
		pch->mFlow.m_iteration = pTech->tech.eis.iteration;
		pch->mFlow.timeproc = 0;
		pch->mFlow.m_MsDurLimit = 0;
		pch->mFlow.m_MsEndTimeLimit = 0;
		pch->mFlow.skipcycle = pTech->tech.eis.skipcycle;
		pch->mFlow.setcycle = pTech->tech.eis.cycle;
	}
	pch->mFlow.m_loopcnt = 0;
}


bool proc_start_test(int ch)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	
	proc_init_test(ch);

	pch->mChStatInf.TaskNo = -1;
	pch->mChStatInf.NextTaskNo = 0;
	pch->mChStatInf.CycleNo = -1;
	pch->mChStatInf.NextCycleNo = 0;
	pch->mChStatInf.LoadOn = 0;
	pch->mChStatInf.BiasOn = 0;

	pch->mChStatInf.eis_status.rescount = 0;
	
	if(pch->bCalib > 0)
	{
		pch->mChStatInf.TestStatus = DEF_TESTSTATUS_CALIBRATION;
	}
	else
	{
		pch->mChStatInf.TestStatus = DEF_TESTSTATUS_RUNNING;
	}
	
	
	pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_NONE;
	pch->mChStatInf.ErrorStatus = DEF_LAST_ERROR_NONE;
	pch->mChStatInf.LastError = DEF_LAST_ERROR_NONE;
	m_pGlobalVar->mChVar[ch].CmdStart = 0;
	pch->Start = 1;

	return true;
}


inline bool Check_monitor(int ch)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	st_Tech* pTech;
	
	if(pch->bCalib > 0) pTech = &pch->tech_calib;
	else pTech = &pch->mTech;
	
	if(pTech->type == TECH_MON || pTech->type == TECH_DCH) return true;
	return false;
}

void proc_test_main(int ch)
{

	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	bool bmonitor = Check_monitor(ch);

	if(pch->mChStatInf.TaskNo != pch->mChStatInf.NextTaskNo)
	{
		if(pch->mChStatInf.NextTaskNo > 0)
		{
			pch->mChStatInf.TaskNo = pch->mChStatInf.NextTaskNo;
			proc_stop_test(ch,DEF_LAST_ERROR_AUTOSTOP);
			return;
		}
		
	}
	if(pch->mChStatInf.TaskNo == -1)
	{
		memset(pch->mChStatInf.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
		AuxProc(ch);
		if(bmonitor) 
		{
			pch->mChStatInf.DispFreq = 0.0;
			pch->mChStatInf.DispMag = 0.0;
			pch->mChStatInf.DispPhase = 0.0;
			pch->mChStatInf.eis_status.Freqcount = 0;
			pch->mChStatInf.eis_status.freq = 0.0;
			pch->mChStatInf.eis_status.Freqindex = 0;
			pch->mChStatInf.eis_status.zdata.real = 0.0;
			pch->mChStatInf.eis_status.zdata.img = 0.0;
			pch->mChStatInf.eis_status.zdata.mag = 0.0;
			pch->mChStatInf.eis_status.zdata.phase = 0.0;
			
			
			if(pch->mTech.type == TECH_DCH)
			{
				if(pch->mTech.tech.dch.useir == 1)
				{
					pch->mChStatInf.eis_status.Freqcount = 1;
					pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_BEGIN;
				}
				else
				{
					proc_mon_dcControl(ch);
					pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_DCHSAMPLE;
				}
			}
			else 
			{
				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_MONSAMPLE;
			}
			
			pch->mFlow.m_MsFlowdelayLimit = 0; 
			pch->mFlow.m_MsFlowdelayStamp = 0;
		}
		else 
		{
			pch->mChStatInf.eis_status.Freqcount = GetFreqCount(ch);
			pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_BEGIN;
		}
		pch->m_msSlop = 0;
		pch->mChStatInf.eis_status.Freqindex = 0;
		pch->mChStatInf.CycleNo = pch->mChStatInf.NextCycleNo;
		pch->mChStatInf.TaskNo = pch->mChStatInf.NextTaskNo;  // Start
	}
	else if(pch->mChStatInf.TaskNo == 0)
	{
		if(bmonitor)
		{
			if(pch->mTech.type == TECH_MON)
			{
				Flow_monitor(ch);
			}
			else if(pch->mTech.type == TECH_DCH)
			{
				if(pch->mTech.tech.dch.useir == 0)
				{
					Flow_discharger(ch);
				}
				else
				{
					if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_DCHSAMPLE)
					{
						Flow_discharger(ch);
					}
					else
					{
						if(proc_eis_main(ch) == false)
						{
							proc_stop_test(ch,pch->mChStatInf.LastError);
						}
					}
				}
			}
			else
			{
				proc_stop_test(ch,DEF_LAST_ERROR_ERRSCH);
				pch->mChStatInf.LastError = DEF_LAST_ERROR_ERRSCH;
			}
		}
		else
		{
			if(proc_eis_main(ch) == false)
			{
				proc_stop_test(ch,pch->mChStatInf.LastError);
			}
		}
	}
	else 
	{
		proc_stop_test(ch,DEF_LAST_ERROR_AUTOSTOP);
		pch->mChStatInf.LastError = DEF_LAST_ERROR_AUTOSTOP;
	}
}

inline byte FindZimProc(int ch)
{
	byte bChk = 0;
	if(proc_read_version(ch) == _NO_ERROR)
	{
		if(m_pSysConfig->EnaROM[ch] == 1)
		{
			if(m_pGlobalVar->mChVar[ch].LoadCfg == 0)
			{
				if(ScanZIM(ch,0,EEPROM_ADDR) == _NO_ERROR)
				{
					bChk = 1;
					m_pGlobalVar->mChVar[ch].LoadCfg = 1;
				}
				proc_read_version(ch);
			}
			else 
			{
				bChk = 1;
			}
		}
		else
		{
			m_pGlobalVar->mChVar[ch].LoadCfg = 1;
			bChk = 1;
		}
	}
	/*
	if(m_pSysConfig->EnaROM[ch] == 0)
	{
		if(proc_read_version(ch) == _NO_ERROR)
		{
			bChk = 1;
		}
	}
	else
	{
		if(ScanZIM(ch,0,EEPROM_ADDR) == _NO_ERROR)
		{
			if(proc_read_version(ch) == _NO_ERROR)
			{
				bChk = 1;
			}
		}
	}
	*/
	
	return bChk;
}

void ScanMainProc(void)
{
	int ch;

	for(ch=0; ch < m_pGlobalVar->mStatusInf.MaxChannel; ch++)
	{
		Set_IceResetB(false);
		
		if(m_pSysConfig->EnaZIM[ch] == 0) 
		{
			continue;
		}
		
		SetDevChannel(ch);
		Ch_Seldelay();

		if(m_pSysConfig->ChkZIM[ch] == FALSE)
		{
			
			if(FindZimProc(ch) == TRUE)
			{
				proc_power_VAC(ch, false);
				if(m_pSysConfig->EnaROM[ch] == 0) InitFixRangeInf(ch);
				InitDevice(ch);
				m_pSysConfig->ChkZIM[ch] = TRUE;
				m_pGlobalVar->mChVar[ch].TmpResetICE = 0;
			}
			
		}
		set_device_DO(ch);
	}
}


void DeviceMainProc(void)
{
	int ch;
	bool bAuxProc = false;
	bool bFindProc = false;
	
	
	if(CmdResetProc() == true)
	{
		return;
	}
	
	if(m_pGlobalVar->m_msAux >= 250) 
	{
		bAuxProc = true;
		m_pGlobalVar->m_msAux = 0;
		m_pGlobalVar->m_AuxCh ++;
		if(m_pGlobalVar->m_AuxCh >= m_pGlobalVar->mStatusInf.MaxChannel)m_pGlobalVar->m_AuxCh = 0;
	}
	
	if(m_pGlobalVar->m_msFind > 375) 
	{
		m_pGlobalVar->m_msFind = 0;
		bFindProc = true;
		m_pGlobalVar->m_FindCh ++;
		if(m_pGlobalVar->m_FindCh >= m_pGlobalVar->mStatusInf.MaxChannel)m_pGlobalVar->m_FindCh = 0;
	}
	
	
	for(ch=0; ch < m_pGlobalVar->mStatusInf.MaxChannel; ch++)
	{
		if(m_pSysConfig->EnaZIM[ch] == 0) 
		{
			continue;
		}
		
		SetDevChannel(ch);
		Ch_Seldelay();


		if(m_pSysConfig->ChkZIM[ch] == FALSE)
		{
			if(bFindProc == true && m_pGlobalVar->m_FindCh == ch) 
			{
				if(FindZimProc(ch) == TRUE)
				{
					proc_power_VAC(ch, false);
					if(m_pSysConfig->EnaROM[ch] == 0) InitFixRangeInf(ch);
					InitDevice(ch);
					m_pSysConfig->ChkZIM[ch] = TRUE;
					m_pGlobalVar->mChVar[ch].TmpResetICE = 0;
				}
				else
				{
					if(m_pGlobalVar->mChVar[ch].m_msReset >= 5000)
					{
						m_pGlobalVar->mChVar[ch].CmdResetICE = 2;
						m_pGlobalVar->mChVar[ch].m_msReset = 0;
						m_pSysConfig->ChkZIM[ch] = FALSE;
						m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus = DEF_LAST_ERROR_RESETZIM;
						break;
					}
					m_pGlobalVar->mChVar[ch].mdevice.adc_vdc.adcval = 0x800000;
					m_pGlobalVar->mChVar[ch].mdevice.adc_vdc.value = 0.0;
					m_pGlobalVar->mChVar[ch].mdevice.adc_rtd.data.fault = 1;
					m_pGlobalVar->mChVar[ch].mdevice.adc_rtd.data.adcval = 0x4000;
					m_pGlobalVar->mChVar[ch].mdevice.adc_rtd.data.Tvalue = 0.0;
					m_pGlobalVar->mChVar[ch].mdevice.adc_rtd.data.Rvalue = 100.0;
					m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus = DEF_LAST_ERROR_NOZIM;
					m_pSysConfig->ChkZIM[ch] = FALSE;
				}
			}
			continue;
		}

		if(m_pGlobalVar->mChVar[ch].TmpResetICE == 1)
		{
			m_pGlobalVar->mChVar[ch].TmpResetICE = 0;
			m_pGlobalVar->mChVar[ch].CmdResetICE = 2;
			m_pGlobalVar->mChVar[ch].m_msReset = 0;
			m_pSysConfig->ChkZIM[ch] = FALSE;
			m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus = DEF_LAST_ERROR_RESETZIM;
			break;
		}
		
		if(bAuxProc == true && m_pGlobalVar->m_AuxCh == ch) 
		{
			AuxProc(ch); 
		}

		if(m_pGlobalVar->mChVar[ch].Start > 0) 
		{
			if(m_pGlobalVar->mChVar[ch].CmdStop == 1)
			{
				if(m_pGlobalVar->mChVar[ch].mChStatInf.LastError == 0)
				{
					proc_stop_test(ch,DEF_LAST_ERROR_MANUALSTOP);
				}
				else
				{
					proc_stop_test(ch,m_pGlobalVar->mChVar[ch].mChStatInf.LastError);
				}
			}
			else
			{
				if(m_pGlobalVar->mChVar[ch].mChStatInf.LastError > DEF_LAST_ERROR_NONE)
				{
					proc_stop_test(ch,m_pGlobalVar->mChVar[ch].mChStatInf.LastError);
				}
				else
				{
					proc_test_main(ch);
				}
			}
		}
		else 
		{	
			if(m_pGlobalVar->mChVar[ch].CmdStart == 1)
			{
				proc_start_test(ch);
			}
			else
			{
				if(m_pGlobalVar->mChVar[ch].bTestMode == 0)
				{
					if((m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl & DDS_SIG_PWDN) == 0)
					{
						proc_eis_dcoff(ch);
					}
				}				
				DefaultDeviceProc(ch);
			
			}
		}
		
		set_device_DO(ch);
	}
		
	if(bFindProc == true)	
	{
		m_pGlobalVar->m_MsI2CdelayStamp = 0;
	}
}

