#include "BZA_SIF.h"


inline void Ch_Seldelay()
{
	int i;
	for(i=0; i<200; i++)
	{
	}
}

int GetMaxBoard(void)
{
	int  MaxBoard = 1;
	
	if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MBZA || m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA)
	{
		MaxBoard = MAX_DEV_BOARD;
	
	}
	
	return MaxBoard;
}

bool CmdResetProc()	
{
	int bd;
	bool bret = false;
	stGlobalChVar* pch;
	
	for(bd=0; bd < m_pGlobalVar->mStatusInf.MaxBoard; bd++)
	{
 		pch = &m_pGlobalVar->mChVar[bd];
		if(m_pSysConfig->EnaZIM[bd] == 0) 
		{
			continue;
		}
		if(pch->ResetICE == 1)
		{
			bret =  true;
			break;
		}
		else if(pch->ResetICE == 2)
		{
			if(pch->m_msReset >= 25)
			{
				pch->ResetICE = 0;
			}
			else 
			{
				bret =  true;
				break;
			}
		}
		else if(pch->ResetICE == 3)
		{
			if(pch->m_msReset >= 25)
			{
				SetDeviceBoard(bd);
				Ch_Seldelay();
				Set_IceResetB(false);
				pch->ResetICE = 2;
			}
			bret =  true;
			break;
		}
		else
		{
			if(pch->CmdResetICE == 1)
			{
				pch->ResetICE = 1;
				pch->CmdResetICE = 0;
				pch->m_msReset = 0;
				SetDeviceBoard(bd);
				Ch_Seldelay();
				Set_IceResetB(true);
				bret =  true;
				break;
			}
			else if(pch->CmdResetICE == 2)
			{
				pch->ResetICE = 3;
				pch->CmdResetICE = 0;
				pch->m_msReset = 0;
				SetDeviceBoard(bd);
				Ch_Seldelay();
				Set_IceResetB(true);
				bret =  true;
				break;
			}
			else if(pch->CmdResetICE == 3)
			{
				pch->ResetICE = 3;
				pch->CmdResetICE = 0;
				pch->m_msReset = 0;
				bret =  true;
				break;
			}
			else 
			{
				pch->ResetICE = 0;
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

void SetDeviceBoard(int bd)
{
	if(bd != m_pGlobalVar->mStatusInf.Lastbd)
	{
		
		if(bd & 0x1)
		{
			P3_OUTP_SET_bit.GPO_06 = 1;  
		}
		else
		{
			P3_OUTP_CLR_bit.GPO_06 = 1;
		}
		if(bd & 0x2)
		{
			P3_OUTP_SET_bit.GPO_10 = 1; 
		}
		else
		{
			P3_OUTP_CLR_bit.GPO_10 = 1;
		}
		
		m_pGlobalVar->mStatusInf.Lastbd = bd;
		Ch_Seldelay();
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

int GetTechEisFreqCount(void* pvoid )
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

int GetFreqCount(int bd)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	st_Tech* ptech = &pch->mTech;
    int iret = 0;
	
	if(pch->bCalib > 0) 
	{
		return GetTechEisFreqCount(&pch->tech_calib.tech.eis);
	}

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
		return GetTechEisFreqCount((void*)&ptech->tech.qis);
	}
	else if(ptech->type == TECH_DCH)
	{
		return 0;
	}
	
	return GetTechEisFreqCount((void*)&ptech->tech.eis);
	
}

double GetTechEisNextFreq(int bd, ushort* restart, void* pvoid)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	st_Tech_EIS* peis = (st_Tech_EIS*)pvoid;
		
	int density = MAX(peis->density,0);
	int aPoints;
	double logIncrement = 1.0 / density;

	*restart = 1;


	peis->initfreq = MAX(peis->initfreq,pch->MinFrequency);
	peis->initfreq = MIN(peis->initfreq,pch->MaxFrequency);
	peis->finalfreq = MAX(peis->finalfreq,pch->MinFrequency);
	peis->finalfreq = MIN(peis->finalfreq,pch->MaxFrequency);
	
	double dInitfreq = RoundToSignificantDigits(peis->initfreq, 6);
	double dFinalfreq = RoundToSignificantDigits(peis->finalfreq, 6);

	double dfreq = dInitfreq;
	double dChkExist;
	
	if(dInitfreq == dFinalfreq)
	{
		if(pch->mChStatInf.eis_status.Freqindex > 0) 
		{
			pch->mFlow.m_loopcnt++;
			if(pch->mFlow.m_loopcnt >= pch->mFlow.m_iteration)
			{
				return 0.0;
			}
		}
		pch->mChStatInf.eis_status.Freqindex = 1;
		return dfreq;
	}
	else 
	{
		if(density == 0)
		{
			if(pch->mChStatInf.eis_status.Freqindex == 0) 
			{
				pch->mChStatInf.eis_status.Freqindex = 1;
			}
			else
			{
				pch->mChStatInf.eis_status.Freqindex ++;
				if(pch->mChStatInf.eis_status.Freqindex == 2)
				{
					dfreq = RoundToSignificantDigits(peis->finalfreq, 6);
				}
				else
				{
					pch->mChStatInf.eis_status.Freqindex = 1;
					pch->mFlow.m_loopcnt++;
					if(pch->mFlow.m_loopcnt >= pch->mFlow.m_iteration)
					{
						return 0.0;
					}
				}
			}
			return dfreq;
		}
	}
	
	if(pch->mChStatInf.eis_status.Freqindex == 0) 
	{
		pch->mChStatInf.eis_status.Freqindex = 1;
		return dfreq;
	}

	
	aPoints = pch->mChStatInf.eis_status.Freqcount; //GetNumberOfFrequncies(peis->initfreq, peis->finalfreq);
	
	
	
	if(dInitfreq > dFinalfreq )
	{
		logIncrement *= -1.0;
	}
	
	
	dfreq = pow(10.0, log10(dInitfreq) + (pch->mChStatInf.eis_status.Freqindex * logIncrement));
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
	
	
	if(pch->mChStatInf.eis_status.Freqindex >= aPoints)
	{
		
		pch->mFlow.m_loopcnt++;
		if(pch->mFlow.m_loopcnt >= pch->mFlow.m_iteration)
		{
			return 0.0;
		}
		else 
		{
			pch->mChStatInf.eis_status.Freqindex = 0;
		}
		dfreq = dInitfreq;
	}
	pch->mChStatInf.eis_status.Freqindex ++;
	
	return dfreq;
}

double GetNextFreq(int bd, ushort* restart)
{
	int i;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	st_Tech* ptech = &pch->mTech;
	
	if(pch->bCalib > 0) 
	{
		return GetTechEisNextFreq(bd,restart,&pch->tech_calib.tech.eis);
	}

	if(ptech->type == TECH_HFR)
	{
		ptech->tech.hfr.freq = MAX(ptech->tech.hfr.freq,pch->MinFrequency);
		ptech->tech.hfr.freq = MIN(ptech->tech.hfr.freq,pch->MaxFrequency);
		pch->mChStatInf.eis_status.Freqindex = 1;
		*restart = 1;
		return ptech->tech.hfr.freq;
	}
	else if(ptech->type == TECH_PRR)
	{
		for(i=0; i<3; i++)
		{
			if(pch->mChStatInf.eis_status.Freqindex == 1)
			{
				pch->mChStatInf.eis_status.Freqindex = 2;
				if(ptech->tech.prr.rdfreq != 0.0)
				{
					ptech->tech.prr.rdfreq = MIN(ptech->tech.prr.rdfreq,pch->MaxFrequency);
					ptech->tech.prr.rdfreq = MAX(ptech->tech.prr.rdfreq,pch->MinFrequency);
					return ptech->tech.prr.rdfreq;
				}
			}
			else if(pch->mChStatInf.eis_status.Freqindex == 2)
			{
				pch->mChStatInf.eis_status.Freqindex = 3;
				if(ptech->tech.prr.rdendfreq != 0.0)
				{
					ptech->tech.prr.rdendfreq = MIN(ptech->tech.prr.rdendfreq,pch->MaxFrequency);
					ptech->tech.prr.rdendfreq = MAX(ptech->tech.prr.rdendfreq,pch->MinFrequency);
					return ptech->tech.prr.rdendfreq;
				}
			}
			else
			{
				*restart = 1;
				
				pch->mChStatInf.eis_status.Freqindex = 1;
				if(ptech->tech.prr.rsfreq != 0.0)
				{
					ptech->tech.prr.rsfreq = MIN(ptech->tech.prr.rsfreq,pch->MaxFrequency);
					ptech->tech.prr.rsfreq = MAX(ptech->tech.prr.rsfreq,pch->MinFrequency);
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
		return GetTechEisNextFreq(bd,restart,(void*)&ptech->tech.qis);
	}
	else if(ptech->type == TECH_DCH)
	{
		ptech->tech.dch.frequency = MAX(ptech->tech.dch.frequency,pch->MinFrequency);
		ptech->tech.dch.frequency = MIN(ptech->tech.dch.frequency,pch->MaxFrequency);
		pch->mChStatInf.eis_status.Freqindex = 1;
		*restart = 1;
		return ptech->tech.dch.frequency;
	}
	
	return GetTechEisNextFreq(bd,restart,(void*)&ptech->tech.eis);
	
}

inline bool CheckCmdDI(int bd)		
{
	if(bd < 2) 
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

bool proc_mon_dcControl(int bd)
{
	ushort buf;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	st_zim_dds_flow* pflow = &pch->flow_dds_sig;
	st_zim_dds* preqdds = &pch->mreqdevice.dds_sig;
	st_zim_dds* pdds = &pch->mdevice.dds_sig;
	
	double dConst = DEF_DDS_SIG_CONST_LOW;
	
	pch->bSigLowFreq = 1;
	
	pdds->frequency = preqdds->frequency = DEF_MONDCCTRL_FREQ;
	pdds->Phase = preqdds->Phase = m_pSysConfig->mZimCfg[bd].ranges[0].idc_rng.idcofs[pch->mChStatInf.Iac_rngno].offset;
	pflow->stat.ctrl = pflow->req.ctrl = DDS_SIG_DEFAULT_CTRL;
	
	pflow->stat.freq = pflow->req.freq = (uint)(DEF_MONDCCTRL_FREQ * dConst);
	pflow->stat.phase = pflow->req.phase = (uint)(preqdds->Phase * (double)DEF_DDS_PHASE_CONST) & 0xFFF;

	pdds->reset = preqdds->reset = 0;
	pdds->pwdn = preqdds->pwdn = 0;
	pdds->Half = preqdds->Half = 0;
	
	
	pch->mChStatInf.BiasOn = 1;
	
		
	pflow->req.ctrl = DDS_SIG_RESET;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,pflow->req.ctrl) == _ERROR)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	pflow->req.ctrl  |= DDS_HLB;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,pflow->req.ctrl) == _ERROR)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}

	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)((pflow->req.freq  >> 14) & 0x3FFF);
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	pflow->req.ctrl &= DDS_HLB_CLR;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,pflow->req.ctrl) == _ERROR)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	buf = (ushort)DDS_REG_ADDR_FREQ0 | (ushort)(pflow->req.freq  & 0x3FFF);	
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	pflow->req.ctrl = 0;
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,pflow->req.ctrl) == _ERROR)
	{
		pch->mChStatInf.LastError = DEF_LAST_ERROR_COMMZIM;
		return false;
	}
	
	m_pGlobalVar->m_msRefreshDC = 0;

	buf = (ushort)DDS_REG_ADDR_PHASE0 | (ushort)(pflow->req.phase & 0xFFF);
	if(ICE_write_16bits(bd, ICE_CMD_DDS_SIG,buf) == _ERROR)
	{
		return false;
	}

	return true;
}

inline void proc_init_test(int bd)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	st_zim_do* preqdo = &pch->mreqdevice.ctrl_do;
	
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

	proc_eis_setrange(bd,pch->mFlow.Iac_rngno);
	
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
		
		proc_eis_LoadOn(bd, 0); 

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
		
		if(pTech->tech.dch.useir == 0) proc_eis_LoadOn(bd, 1); 

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

bool proc_start_test(int bd)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	
	proc_init_test(bd);

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
	pch->CmdStart = 0;
	pch->Start = 1;

	return true;
}

inline bool Check_monitor(int bd)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	st_Tech* pTech;
	
	if(pch->bCalib > 0) pTech = &pch->tech_calib;
	else pTech = &pch->mTech;
	
	if(pTech->type == TECH_MON || pTech->type == TECH_DCH) return true;
	return false;
}

void proc_test_main(int bd)
{
	int auxch;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	bool bmonitor = Check_monitor(bd);

	if(pch->mChStatInf.TaskNo != pch->mChStatInf.NextTaskNo)
	{
		if(pch->mChStatInf.NextTaskNo > 0)
		{
			pch->mChStatInf.TaskNo = pch->mChStatInf.NextTaskNo;
			proc_stop_test(bd,DEF_LAST_ERROR_AUTOSTOP);
			return;
		}
		
	}
	if(pch->mChStatInf.TaskNo == -1)
	{
		memset(pch->mChStatInf.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* MAX_EIS_RT_RAW_POINT);
		AuxProc(bd);
		if(bmonitor) 
		{
			pch->mChStatInf.eis_status.Freqcount = 0;
			pch->mChStatInf.eis_status.freq = 0.0;
			pch->mChStatInf.eis_status.Freqindex = 0;
			pch->mChStatInf.DispFreq = 0.0;
			for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch ++)
			{
				
				pch->mChStatInf.DispMag[auxch] = 0.0;
				pch->mChStatInf.DispPhase[auxch] = 0.0;
				
				pch->mChStatInf.eis_status.zdata[auxch].real = 0.0;
				pch->mChStatInf.eis_status.zdata[auxch].img = 0.0;
				pch->mChStatInf.eis_status.zdata[auxch].mag = 0.0;
				pch->mChStatInf.eis_status.zdata[auxch].phase = 0.0;
			}
			
			if(pch->mTech.type == TECH_DCH)
			{
				if(pch->mTech.tech.dch.useir == 1)
				{
					pch->mChStatInf.eis_status.Freqcount = 1;
					pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_BEGIN;
				}
				else
				{
					proc_mon_dcControl(bd);
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
			pch->mChStatInf.eis_status.Freqcount = GetFreqCount(bd);
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
				Flow_monitor(bd);
			}
			else if(pch->mTech.type == TECH_DCH)
			{
				if(pch->mTech.tech.dch.useir == 0)
				{
					Flow_discharger(bd);
				}
				else
				{
					if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_DCHSAMPLE)
					{
						Flow_discharger(bd);
					}
					else
					{
						if(proc_eis_main(bd) == false)
						{
							proc_stop_test(bd,pch->mChStatInf.LastError);
						}
					}
				}
			}
			else
			{
				proc_stop_test(bd,DEF_LAST_ERROR_ERRSCH);
				pch->mChStatInf.LastError = DEF_LAST_ERROR_ERRSCH;
			}
		}
		else
		{
			if(proc_eis_main(bd) == false)
			{
				proc_stop_test(bd,pch->mChStatInf.LastError);
			}
		}
	}
	else 
	{
		proc_stop_test(bd,DEF_LAST_ERROR_AUTOSTOP);
		pch->mChStatInf.LastError = DEF_LAST_ERROR_AUTOSTOP;
	}
}

inline byte FindZimProc(int bd)
{
			
	byte bChk = 0;
	ushort usVer;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	
	if(proc_read_version(bd) == _NO_ERROR)
	{
		if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
		{
			if(m_pSysConfig->mZimCfg[bd].info.ZimFWVersion < 5100 && m_pSysConfig->mZimCfg[bd].info.ZimFWVersion >= 6000)
			{
				
				return bChk;
			}
		}

		if(m_pSysConfig->EnaROM[bd] == 1)
		{
			if(pch->LoadCfg == 0)
			{
				usVer = m_pSysConfig->mZimCfg[bd].info.ZimFWVersion;
				if(ScanZIM(bd,0,EEPROM_ADDR) == _NO_ERROR)
				{
					bChk = 1;
					pch->LoadCfg = 1;
				}
				m_pSysConfig->mZimCfg[bd].info.ZimFWVersion = usVer;
				
				
			}
			else 
			{
				bChk = 1;
			}
		}
		else
		{
			pch->LoadCfg = 1;
			bChk = 1;
		}
	}
	return bChk;
}

void ScanMainProc(void)
{
	int bd;

	for(bd=0; bd < m_pGlobalVar->mStatusInf.MaxBoard; bd++)
	{
		Set_IceResetB(false);
		
		if(m_pSysConfig->EnaZIM[bd] == 0) 
		{
			continue;
		}
		
		SetDeviceBoard(bd);
		Ch_Seldelay();

		if(m_pSysConfig->ChkZIM[bd] == FALSE)
		{
			
			if(FindZimProc(bd) == TRUE)
			{
				proc_power_VAC(bd, false);
				
				if(m_pSysConfig->EnaROM[bd] == 0) InitFixRangeInf(bd,-1);
				InitDevice(bd);
				
				m_pSysConfig->ChkZIM[bd] = TRUE;
				m_pGlobalVar->mChVar[bd].TmpResetICE = 0;
			}
			
		}
		
		if(m_pSysConfig->mSIFCfg.Type == (byte)SIF_MCBZA && bd > 0)
		{
			setaux_device_DO(bd);
		}
		else
		{
			set_device_DO(bd);
		}
	}
}


void CheckMainBoard(int bd)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[bd];
	
	if(m_pSysConfig->EnaZIM[bd] == FALSE) return;
	
	if(m_pSysConfig->ChkZIM[bd] == FALSE) 
	{	 
		SetDeviceBoard(bd);
		Ch_Seldelay();
	
		if(FindZimProc(bd) == TRUE)
		{
			proc_power_VAC(bd, false);
			if(m_pSysConfig->EnaROM[bd] == 0) InitFixRangeInf(bd,-1);
			InitDevice(bd);
			m_pSysConfig->ChkZIM[bd] = TRUE;
			pch->TmpResetICE = 0;
		}
		else
		{
			if(pch->m_msReset >= 5000)
			{
				pch->CmdResetICE = 2;
				pch->m_msReset = 0;
				m_pSysConfig->ChkZIM[bd] = FALSE;
				pch->mChStatInf.ErrorStatus = DEF_LAST_ERROR_RESETZIM;
			}
			else
			{
				pch->mdevice.adc_vdc[0].adcval = 0x800000;
				pch->mdevice.adc_vdc[0].value = 0.0;
				pch->mdevice.adc_rtd.data.fault = 1;
				pch->mdevice.adc_rtd.data.adcval = 0x4000;
				pch->mdevice.adc_rtd.data.Tvalue = 0.0;
				pch->mdevice.adc_rtd.data.Rvalue = 100.0;
				pch->mChStatInf.ErrorStatus = DEF_LAST_ERROR_NOZIM;
				m_pSysConfig->ChkZIM[bd] = FALSE;
			}
		}
		
	}
	else
	{
		if(pch->TmpResetICE == 1)
		{
			pch->TmpResetICE = 0;
			pch->CmdResetICE = 2;
			pch->m_msReset = 0;
			m_pSysConfig->ChkZIM[bd] = FALSE;
			pch->mChStatInf.ErrorStatus = DEF_LAST_ERROR_RESETZIM;
		}	
	}
}
	
void DeviceMainProc(void)
{
	int bd;
	stGlobalChVar* pch;
	if(CmdResetProc() == true)
	{
		return;
	}
	
	if(m_pGlobalVar->m_msAux >= 250) 
	{
		m_pGlobalVar->bAuxChProc = true;
		m_pGlobalVar->m_msAux = 0;
		m_pGlobalVar->m_AuxCh ++;
		if(m_pGlobalVar->m_AuxCh >= m_pGlobalVar->mStatusInf.MaxBoard)m_pGlobalVar->m_AuxCh = 0;
	}
	
	if(m_pGlobalVar->m_msFind > 375) 
	{
		m_pGlobalVar->m_msFind = 0;
		m_pGlobalVar->m_Findboard ++;
		if(m_pGlobalVar->m_Findboard >= m_pGlobalVar->mStatusInf.MaxBoard)m_pGlobalVar->m_Findboard = 0;
		CheckMainBoard(m_pGlobalVar->m_Findboard);
	}
	
	
	for(bd=0; bd < m_pGlobalVar->mStatusInf.MaxBoard; bd++)
	{
		if(m_pSysConfig->EnaZIM[bd] == FALSE || m_pSysConfig->ChkZIM[bd] == FALSE) return;
	
		pch = &m_pGlobalVar->mChVar[bd];
		
		SetDeviceBoard(bd);

		if(m_pGlobalVar->bAuxChProc == true && m_pGlobalVar->m_AuxCh == bd) 
		{
			AuxProc(bd); 
		}
		
		if(pch->Start > 0) 
		{
			if(pch->CmdStop == 1)
			{
				if(pch->mChStatInf.LastError == 0)
				{
					proc_stop_test(bd,DEF_LAST_ERROR_MANUALSTOP);
				}
				else
				{
					proc_stop_test(bd,pch->mChStatInf.LastError);
				}
			}
			else
			{
				if(pch->mChStatInf.LastError > DEF_LAST_ERROR_NONE)
				{
					proc_stop_test(bd,pch->mChStatInf.LastError);
				}
				else
				{
					proc_test_main(bd);
				}
			}
		}
		else 
		{	
			if(pch->CmdStart == 1)
			{
				proc_start_test(bd);
			}
			else
			{
				if(pch->bTestMode == 0)
				{
					if((pch->flow_dds_sig.req.ctrl & DDS_SIG_PWDN) == 0)
					{
						proc_eis_dcoff(bd);
					}
				}				
				DefaultDeviceProc(bd);
			
			}
		}
		
		set_device_DO(bd);
	}
}

//-----------------------------------Aux proc---------------------------------------

void SetModeAuxBoard(int mode)
{
	int bd;
	stGlobalChVar* pch;
	st_zim_do* preqdo;

	for(bd=1; bd < MAX_DEV_AUXBOARD+1; bd++)
	{
		pch = &m_pGlobalVar->mChVar[bd];
		preqdo = &pch->mreqdevice.ctrl_do;
		
		pch->mFlow.mode = mode;
		if(mode == 1)
		{
			preqdo->data |= DEF_DEVAUXDO_MODE_DC;
		}

		else
		{
			preqdo->data &= DEF_DEVAUXDO_MODE_AC;
		}
	}
}

inline void procaux_eis_stop()
{
	P3_OUTP_SET_bit.GPO_11 = 1;  
}

void procaux_stop_test(int errstat)
{
	int auxbd;
	m_pGlobalVar->mChVar[0].Start = 0;
	m_pGlobalVar->mChVar[0].mChStatInf.TaskNo = 0;
	m_pGlobalVar->mChVar[0].mChStatInf.NextTaskNo = 0;
	//m_pGlobalVar->mChVar[0].mChStatInf.CycleNo = 0;
	//m_pGlobalVar->mChVar[0].mChStatInf.NextCycleNo = 0;
	m_pGlobalVar->mChVar[0].mChStatInf.eis_status.status = DEF_EIS_STATUS_NONE;
	if(errstat == DEF_LAST_ERROR_AUTOSTOP) m_pGlobalVar->mChVar[0].mChStatInf.TestStatus = DEF_TESTSTATUS_FINISH;
	else m_pGlobalVar->mChVar[0].mChStatInf.TestStatus = DEF_TESTSTATUS_STOP;
	m_pGlobalVar->mChVar[0].mChStatInf.LastError  = errstat;
	m_pGlobalVar->mChVar[0].mChStatInf.ErrorStatus  = errstat;

	m_pGlobalVar->mChVar[0].mFlow.m_MsFlowdelayLimit = 10; 
	m_pGlobalVar->mChVar[0].mFlow.m_MsFlowdelayStamp = 0;
	
	m_pGlobalVar->mChVar[0].CmdStop = 0;
	
	proc_eis_dcoff(0);
	procaux_eis_stop();
	proc_eis_LoadOn(0,0);
	proc_power_VAC(0, false);
	
	for(auxbd=1; auxbd < MAX_DEV_BOARD;  auxbd ++)
	{
		procaux_power_VAC(auxbd, false);
	}
}

bool procaux_start_test()
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[0];
	
	proc_init_test(0);

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
	m_pGlobalVar->mChVar[0].CmdStart = 0;
	pch->Start = 1;

	return true;
}

void procaux_test_main()
{
	int auxch;
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[0];
	bool bmonitor = Check_monitor(0);

	if(pch->mChStatInf.TaskNo != pch->mChStatInf.NextTaskNo)
	{
		if(pch->mChStatInf.NextTaskNo > 0)
		{
			pch->mChStatInf.TaskNo = pch->mChStatInf.NextTaskNo;
			procaux_stop_test(DEF_LAST_ERROR_AUTOSTOP);
			return;
		}
		
	}
	if(pch->mChStatInf.TaskNo == -1)
	{
		memset(pch->mChStatInf.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* DEF_MAX_AUX_CHCNT * MAX_EIS_RT_RAW_POINT);
		memset((pch+1)->mChStatInf.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* DEF_MAX_AUX_CHCNT * MAX_EIS_RT_RAW_POINT);
		memset((pch+2)->mChStatInf.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* DEF_MAX_AUX_CHCNT * MAX_EIS_RT_RAW_POINT);
		memset((pch+3)->mChStatInf.eis_status.Real_val,0x0,sizeof(st_zim_eis_raw_val)* DEF_MAX_AUX_CHCNT * MAX_EIS_RT_RAW_POINT);
		
		AuxProc(0);
		if(bmonitor) 
		{
			pch->mChStatInf.eis_status.Freqcount = 0;
			pch->mChStatInf.eis_status.freq = 0.0;
			pch->mChStatInf.eis_status.Freqindex = 0;
			
			pch->mChStatInf.DispFreq = 0.0;
			for(auxch=0; auxch<DEF_MAX_AUX_CHCNT; auxch++)
			{
				pch->mChStatInf.DispMag[auxch] = 0.0;
				pch->mChStatInf.DispPhase[auxch] = 0.0;
				
				pch->mChStatInf.eis_status.zdata[auxch].real = 0.0;
				pch->mChStatInf.eis_status.zdata[auxch].img = 0.0;
				pch->mChStatInf.eis_status.zdata[auxch].mag = 0.0;
				pch->mChStatInf.eis_status.zdata[auxch].phase = 0.0;
			}
			
			if(pch->mTech.type == TECH_DCH)
			{
				if(pch->mTech.tech.dch.useir == 1)
				{
					pch->mChStatInf.eis_status.Freqcount = 1;
					pch->mChStatInf.eis_status.status = DEF_EIS_STATUS_BEGIN;
				}
				else
				{
					proc_mon_dcControl(0);
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
			pch->mChStatInf.eis_status.Freqcount = GetFreqCount(0);
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
				Flow_monitor(0);
			}
			else if(pch->mTech.type == TECH_DCH)
			{
				if(pch->mTech.tech.dch.useir == 0)
				{
					Flow_discharger(0);
				}
				else
				{
					if(pch->mChStatInf.eis_status.status == DEF_EIS_STATUS_DCHSAMPLE)
					{
						Flow_discharger(0);
					}
					else
					{
						if(proc_eis_main(0) == false)
						{
							proc_stop_test(0,pch->mChStatInf.LastError);
						}
					}
				}
			}
			else
			{
				procaux_stop_test(DEF_LAST_ERROR_ERRSCH);
				pch->mChStatInf.LastError = DEF_LAST_ERROR_ERRSCH;
			}
		}
		else
		{
			if(proc_eis_main(0) == false)
			{
				procaux_stop_test(pch->mChStatInf.LastError);
			}
		}
	}
	else 
	{
		procaux_stop_test(DEF_LAST_ERROR_AUTOSTOP);
		pch->mChStatInf.LastError = DEF_LAST_ERROR_AUTOSTOP;
	}
}

void CheckAuxBoard(int bd)
{
	stGlobalChVar* pch = &m_pGlobalVar->mChVar[0];
	
	if(m_pSysConfig->EnaZIM[bd] == FALSE) 
	{
		return;
	}
	
	if(m_pSysConfig->ChkZIM[bd] == FALSE) 
	{

		SetDeviceBoard(bd);
		Ch_Seldelay();
	
		if(FindZimProc(bd) == TRUE)
		{
			
			proc_power_VAC(bd, false);
			if(m_pSysConfig->EnaROM[bd] == 0) InitFixRangeInf(bd,-1);
			InitAuxDevice(bd);
			m_pSysConfig->ChkZIM[bd] = TRUE;
			pch->TmpResetICE = 0;
			return;
		}
		else
		{
			if(pch->m_msReset >= 5000)
			{
				pch->CmdResetICE = 2;
				pch->m_msReset = 0;
				m_pSysConfig->ChkZIM[bd] = FALSE;
				pch->mChStatInf.ErrorStatus = DEF_LAST_ERROR_RESETZIM;
			}
			else
			{
				pch->mChStatInf.ErrorStatus = DEF_LAST_ERROR_NOZIM;
				m_pSysConfig->ChkZIM[bd] = FALSE;
			}
		}
	}
	else
	{	
		if(pch->TmpResetICE == 1)
		{
			pch->TmpResetICE = 0;
			pch->CmdResetICE = 2;
			pch->m_msReset = 0;
			m_pSysConfig->ChkZIM[bd] = FALSE;
			pch->mChStatInf.ErrorStatus = DEF_LAST_ERROR_RESETZIM;
		}	
	}
}

void DeviceAuxProc(void)
{
	int bd;
    bool bdefault = false;
	
	if(CmdResetProc() == true)
	{
		return;
	}
	
	if(m_pGlobalVar->m_msAux >= 1000) 
	{
		m_pGlobalVar->bAuxChProc = true;
		m_pGlobalVar->m_msAux = 0;
		m_pGlobalVar->m_AuxCh = 0;
	}
	
	if(m_pGlobalVar->m_msFind > 375) 
	{
		m_pGlobalVar->m_msFind = 0;
		m_pGlobalVar->m_Findboard ++;
		if(m_pGlobalVar->m_Findboard >= m_pGlobalVar->mStatusInf.MaxBoard)m_pGlobalVar->m_Findboard = 0;
		
		if(m_pGlobalVar->m_Findboard == 0) CheckMainBoard(m_pGlobalVar->m_Findboard);
		else CheckAuxBoard(m_pGlobalVar->m_Findboard);
	}
	
	if(m_pSysConfig->EnaZIM[0] == FALSE || m_pSysConfig->ChkZIM[0] == FALSE) return;

	SetDeviceBoard(0);

	if(m_pGlobalVar->bAuxChProc == true) 
	{
		AuxProc(0); 
	}

	if(m_pGlobalVar->mChVar[0].Start > 0) 
	{
		if(m_pGlobalVar->mChVar[0].CmdStop == 1)
		{
			if(m_pGlobalVar->mChVar[0].mChStatInf.LastError == 0)
			{
				procaux_stop_test(DEF_LAST_ERROR_MANUALSTOP);
			}
			else
			{
				procaux_stop_test(m_pGlobalVar->mChVar[0].mChStatInf.LastError);
			}
		}
		else
		{
			if(m_pGlobalVar->mChVar[0].mChStatInf.LastError > DEF_LAST_ERROR_NONE)
			{
				procaux_stop_test(m_pGlobalVar->mChVar[0].mChStatInf.LastError);
			}
			else
			{
				procaux_test_main();
			}
		}
	}
	else 
	{	
		if(m_pGlobalVar->mChVar[0].CmdStart == 1)
		{
			procaux_start_test();
		}
		else
		{
			if(m_pGlobalVar->mChVar[0].bTestMode == 0)
			{
				if((m_pGlobalVar->mChVar[0].flow_dds_sig.req.ctrl & DDS_SIG_PWDN) == 0)
				{
					proc_eis_dcoff(0);
				}
			}				
			bdefault = true;
		}
	}
	if(bdefault == true)
	{
		DefaultDeviceProc(0);
	}
	
	set_device_DO(0);
	
	for(bd=1; bd<DEF_MAX_AUX_BDCNT; bd ++)
	{
		SetDeviceBoard(bd);
		setaux_device_DO(bd);
	}
}