#include "BZA_SIF.h"


inline void Ch_Seldelay()
{
	int i;
	for(i=0; i<100; i++)
	{
	}
}


inline void CmdResetProc(int ch)	
{
	if(m_pGlobalVar->mChVar[ch].ResetICE == 1)
	{
		if(m_pGlobalVar->mChVar[ch].CmdResetICE == 2)
		{
			m_pGlobalVar->mChVar[ch].ResetICE = 2;
			m_pGlobalVar->mChVar[ch].CmdResetICE = 0;
			m_pGlobalVar->mChVar[ch].m_msReset = 0;
			Set_IceResetB(false);
			
		}
	}
	else if(m_pGlobalVar->mChVar[ch].ResetICE == 2)
	{
		if(m_pGlobalVar->mChVar[ch].m_msReset >= 100)
		{
			m_pGlobalVar->mChVar[ch].ResetICE = 0;
		}
	}
	else if(m_pGlobalVar->mChVar[ch].ResetICE == 3)
	{
		if(m_pGlobalVar->mChVar[ch].m_msReset >= 100)
		{
			Set_IceResetB(false);
			m_pGlobalVar->mChVar[ch].ResetICE = 2;
		}
	}
	else
	{
		m_pGlobalVar->mChVar[ch].ResetICE = 0;
	}
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

int GetNumberOfFrequncies(double initialFrequency, double finalFrequency, int density)
{
    bool isInitLog = fabs(log10(initialFrequency)) == (double)((int)fabs(log10(initialFrequency)));
    bool isFinalLog = fabs(log10(finalFrequency)) == (double)((int)fabs(log10(finalFrequency)));
    
    int Factor = (isInitLog && isFinalLog) ? 1 : 0;
    
    //double x = 0.5 + fabs(log10(finalFrequency) - log10(initialFrequency)) * density;
	double x = fabs(log10(finalFrequency) - log10(initialFrequency)) * density;
    
    return Factor + (int)ceil(x); //mRounding(x,0);
}

double RoundToSignificantDigits(double d, int digits)
{
    if (d == 0)
        return 0;

    double scale = pow(10.0, floor(log10(fabs(d))) + 1);
    return scale * mRounding(d / scale, digits);
}

inline ushort Get_Task_RngA(int ch)
{
	ushort rng = 0; 
	ushort orng = 0; 
	double maxA = 0.0;
	double tmp = 0.0;
	
	st_zim_adc_vdc * pvdc = &m_pGlobalVar->mChVar[ch].mdevice.adc_vdc;
	
	if(pvdc->value == 0.0 || m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower == 0.0) return 0;
	maxA = fabs(m_pSysConfig->mZimCfg[ch].ranges.mSafety.MaxPower / pvdc->value);

	while(1)
	{
		tmp = m_pSysConfig->mZimCfg[ch].ranges.iac_rng[rng].realmax;
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
/*
ushort proc_task_setrangeA(int ch, int taskno)
{
	ushort buf;
	ushort irng;
	ushort itechrng;
	st_zim_do* preqdo = &m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do;
	
	irng = Get_Task_RngA(ch);
	
	itechrng = m_pGlobalVar->mChVar[ch].mTech.irange;
	if(m_pGlobalVar->mChVar[ch].bCalib > 0) 
	{
		itechrng = m_pGlobalVar->mChVar[ch].tech_calib.irange;
	}
	
	if(irng < itechrng)
	{
		irng = itechrng;
	}
	
	buf = (ushort)((irng << 1) & 0xE);
	preqdo->data &= 0xFFF1;
	preqdo->data |= buf;
	return irng;
}
*/

int GetTechEisFreqCount(int ch, void* pvoid )
{
	int iret = 0;
	st_Tech_EIS* peis = (st_Tech_EIS*)pvoid;
	int density = MAX(peis->density,0);
	int iteration = MAX(peis->iteration,1);

	peis->initfreq = MAX(peis->initfreq,m_pGlobalVar->mChVar[ch].MinFrequency);
	peis->initfreq = MIN(peis->initfreq,m_pGlobalVar->mChVar[ch].MaxFrequency);
	peis->finalfreq = MAX(peis->finalfreq,m_pGlobalVar->mChVar[ch].MinFrequency);
	peis->finalfreq = MIN(peis->finalfreq,m_pGlobalVar->mChVar[ch].MaxFrequency);
	
	
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
    iret *= iteration;
	
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

	return GetTechEisFreqCount(ch,(void*)&ptech->tech.eis);
	
}

double GetTechEisNextFreq(int ch, ushort* restart, void* pvoid)
{
	st_Tech_EIS* peis = (st_Tech_EIS*)pvoid;
		
	int density = MAX(peis->density,0);
	int aPoints;
	double logIncrement = 1.0 / density;
	double dfreq = RoundToSignificantDigits(peis->initfreq, 6);
	
	*restart = 1;

	peis->initfreq = MAX(peis->initfreq,m_pGlobalVar->mChVar[ch].MinFrequency);
	peis->initfreq = MIN(peis->initfreq,m_pGlobalVar->mChVar[ch].MaxFrequency);
	peis->finalfreq = MAX(peis->finalfreq,m_pGlobalVar->mChVar[ch].MinFrequency);
	peis->finalfreq = MIN(peis->finalfreq,m_pGlobalVar->mChVar[ch].MaxFrequency);

	if(peis->initfreq == peis->finalfreq)
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

	aPoints = GetNumberOfFrequncies(peis->initfreq, peis->finalfreq, density);
	
	
	if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex >= aPoints)
	{
		
		m_pGlobalVar->mChVar[ch].mFlow.m_loopcnt++;
		if(m_pGlobalVar->mChVar[ch].mFlow.m_loopcnt >= m_pGlobalVar->mChVar[ch].mFlow.m_iteration)
		{
			return 0.0;
		}
		else m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex = 1;
		return dfreq;
	}
	
	if(peis->initfreq > peis->finalfreq )
	{
		logIncrement *= -1.0;
	}

	dfreq = pow(10.0, log10(peis->initfreq) + (m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.Freqindex * logIncrement));
	
	
	if(peis->initfreq > peis->finalfreq)
	{
		dfreq = MAX(dfreq,peis->finalfreq);
	}
	else
	{
		dfreq = MIN(dfreq,peis->finalfreq);
	}
	dfreq = RoundToSignificantDigits(dfreq, 6);
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


inline bool proc_mon_dcControl(int ch)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	
	pch->mChStatInf.BiasOn = 1;
	
	m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl = DDS_SIG_RESET;
	if(ICE_write_16bits(ch, ICE_CMD_DDS_SIG,m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl) == _ERROR)
	{
		m_pGlobalVar->mChVar[ch].mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
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
		pch->mFlow.celloffwait = pTech->tech.mon.celloffwait;
		
		if(pch->mFlow.celloffwait == 1) 
		{
			proc_eis_LoadOn(ch, 0);   
		}
		else
		{
			proc_eis_LoadOn(ch, 1);   
		}
		
		pch->mFlow.CutoffV = pTech->tech.mon.CutoffV;
		pch->mFlow.timeproc = 1;
		pch->mFlow.m_MsDurLimit = (uint)(pTech->tech.mon.interval * 1000.0);
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
		pch->mFlow.skipcycle = pTech->tech.qis.skipcycle;
		pch->mFlow.setcycle = pTech->tech.qis.cycle;
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

	
	pch->mChStatInf.RunTimeStamp = 0;
	pch->mChStatInf.TaskNo = -1;
	pch->mChStatInf.NextTaskNo = 0;
	pch->mChStatInf.TaskTimeStamp = 0;
	pch->mChStatInf.CycleNo = -1;
	pch->mChStatInf.NextCycleNo = 0;
	pch->mChStatInf.CycleTimeStamp = 0;
	pch->mChStatInf.LoadOn = 0;
	pch->mChStatInf.BiasOn = 0;

	pch->mChStatInf.eis_status.rescount = 0;
	
	pch->mChStatInf.LastError = DEF_LAST_ERROR_NONE;
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
	
	if(pTech->type == TECH_MON) return true;
	return false;
}

void proc_test_main(int ch)
{

	stGlobalChVar* pch = &m_pGlobalVar->mChVar[ch];
	bool bmonitor = Check_monitor(ch);
	if(pch->mChStatInf.TaskNo != pch->mChStatInf.NextTaskNo)
	{
		pch->mChStatInf.BiasOn = 0;
		if(pch->mChStatInf.TaskNo == -1)
		{
			memset(pch->mChStatInf.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
			if(bmonitor) 
			{
				pch->mChStatInf.DispFreq = 0.0;
				pch->mChStatInf.DispMag = 0.0;
				pch->mChStatInf.DispPhase = 0.0;
				pch->mChStatInf.eis_status.Freqcount = 0;
				if(pch->mFlow.celloffwait == 0)
				{
					proc_mon_dcControl(ch);
				}
				pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_SAMPLE;

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
			pch->mChStatInf.RunTimeStamp = 0;
			pch->mChStatInf.TaskTimeStamp = 0;
			pch->mChStatInf.CycleTimeStamp = 0;
			AuxProc(ch);
		}
		
		if(pch->mChStatInf.CycleNo != pch->mChStatInf.NextCycleNo)
		{
			pch->mChStatInf.CycleNo = pch->mChStatInf.NextCycleNo;
			pch->mChStatInf.CycleTimeStamp = 0;
		}
		pch->mChStatInf.TaskNo = pch->mChStatInf.NextTaskNo;
		pch->mChStatInf.TaskTimeStamp = 0;
	}
	else if(pch->mChStatInf.CycleNo != pch->mChStatInf.NextCycleNo)
	{
		pch->mChStatInf.CycleTimeStamp = 0;
		pch->mChStatInf.TaskTimeStamp = 0;
		pch->mChStatInf.CycleNo = pch->mChStatInf.NextCycleNo;
	}
	
	if(pch->mChStatInf.TaskNo == 0)
	{
		if(bmonitor)
		{
			Flow_monitor(ch);
		}
		else
		{
			if(proc_eis_main(ch) == false)
			{
				proc_stop_test(ch,pch->mChStatInf.LastError);
			}
		}
	}
	else if(pch->mChStatInf.TaskNo > 0)
	{
		proc_stop_test(ch,DEF_LAST_ERROR_AUTOSTOP);
		pch->mChStatInf.LastError = DEF_LAST_ERROR_AUTOSTOP;
	}
}

inline byte FindZimProc(int ch)
{
	byte bChk = 0;
	
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
	
	
	return bChk;
}


void DeviceMainProc(void)
{
	int ch;
	bool bAuxProc = false;
	bool bFindProc = false;
	
	
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
		Set_IceResetB(false);
		
		if(m_pSysConfig->EnaZIM[ch] == 0) 
		{
			continue;
		}
		
		SetDevChannel(ch);
		Ch_Seldelay();

		if(m_pGlobalVar->mChVar[ch].ResetICE > 0)
		{
			CmdResetProc(ch);
			continue;
		}
		
		
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
						m_pGlobalVar->mChVar[ch].ResetICE = 3;
						m_pGlobalVar->mChVar[ch].m_msReset = 0;
						m_pSysConfig->ChkZIM[ch] = FALSE;
						m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus = DEF_LAST_ERROR_RESETZIM;
						Set_IceResetB(true);
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
			m_pGlobalVar->mChVar[ch].ResetICE = 3;
			m_pGlobalVar->mChVar[ch].m_msReset = 0;
			m_pSysConfig->ChkZIM[ch] = FALSE;
			m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus = DEF_LAST_ERROR_RESETZIM;
			Set_IceResetB(true);
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
				if(chkTestCondition(ch) == false) 
				{
					proc_stop_test(ch,m_pGlobalVar->mChVar[ch].mChStatInf.LastError);
				}
				else
				{
					proc_test_main(ch);
				}
			}
			if(m_pGlobalVar->mChVar[ch].mChStatInf.LastError > DEF_LAST_ERROR_NONE)
			{
				proc_stop_test(ch,m_pGlobalVar->mChVar[ch].mChStatInf.LastError);
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
				if((m_pGlobalVar->mChVar[ch].flow_dds_sig.req.ctrl & DDS_SIG_PWDN) == 0)
				{
					proc_eis_dcoff(ch);
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

