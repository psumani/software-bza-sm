#include "sif_zim.h"
#include "DeviceFlow.h"

int HeaterProc(verTempCtrl* pCtrl,PLC_AI_Inf* pAi)
{
	if(pAi->HeatStat == 1) {
		if(pCtrl->tOn > 0) {
			pCtrl->tOn --;
			pAi->HeatStat = 2;
			return 1;
		}
		else if(pCtrl->tOff > 0) {
			pCtrl->tOff --;
			pAi->HeatStat = 2;
			return 0;
		}
	}
	else if(pAi->HeatStat == 2) {
		if(pCtrl->tOff > 0) {
			pCtrl->tOff --;
			pAi->HeatStat = 1;
			return 0;
		}
		else if(pCtrl->tOn > 0) {
			pCtrl->tOn --;
			pAi->HeatStat = 1;
			return 1;
		}
	}
	pCtrl->tOn = 0;
	pCtrl->tOff = 0;
	pAi->HeatStat = 0;
	return 0;
}

void GetPIDValue(verTempCtrl* pCtrl,PLC_AI_Inf* pAi)
{
	float fErr;
	float fFactor;
	float fsv;
	float fpv;
	float fHeat;
//	float fCool;
	float uP;
	float uI;
	float uD;
	float uPI;
	float nConstTimeD;
	float nConstTimeI;

	pCtrl->tDurVal += (float)m_pSysConfig->DaqTick / 60000.0f; // 1Ка
	
	uP=0.0f;
	uI=0.0f;
	uD=0.0f;
	fFactor = (pAi->MaxValue - pAi->MinValue) / 100.0f;
	if(pCtrl->ActVal == 0.0f) fsv = 0.0f;
	else fsv = pCtrl->ActVal / fFactor;
	if(pAi->ReadVal == 0.0f) fpv = 0.0f;
	else fpv = pAi->ReadVal / fFactor;
//	if(pCtrl->CoolLev == 0.0f) fCool = 0.0f;
//	else fCool = pCtrl->CoolLev / fFactor;
	if(pCtrl->HeatLev == 0.0f) fHeat = 0.0f;
	else fHeat = pCtrl->HeatLev / fFactor;

	if(pCtrl->tOldVal != pCtrl->ActVal || pCtrl->ActVal == 0.0f) {
		if(pCtrl->ActVal != 0.0f) pCtrl->tOldVal = pCtrl->ActVal;
		pCtrl->tOn = 0;
		pCtrl->tDurVal = 0.0f;
		pCtrl->tOff = pCtrl->tCycTime;
		pCtrl->uTotal = 0.0f;
		pCtrl->LastPV = fpv;
		pCtrl->LastErr = 0.0f;
		pCtrl->LastUi = 0.0f;
		pAi->HeatStat = 2;
		return;
	}

/*	if(fpv >= (fsv + fCool)) //Full Cooling
	{
		pCtrl->tOldVal = pCtrl->ActVal;
		pCtrl->tOn = 0;
		pCtrl->tDurVal = 0.0f;
		pCtrl->tOff = pCtrl->tCycTime;
		pCtrl->uTotal = -100.0f;
		pCtrl->LastPV = fpv;
		pCtrl->LastError = 0.0f;
		pCtrl->LastUi = 0.0f;
		pAi->HeatStat = 2;
		return;
	}
*/
	if((fpv+fHeat) <= fsv)//Full Heating
	{
		pCtrl->tOn = pCtrl->tCycTime;
		pCtrl->tDurVal = 0.0f;
		pCtrl->tOff = 0;
		pCtrl->uTotal = 100.0f;
		pCtrl->LastPV = fpv;
		pCtrl->LastErr = 0.0f;
		pCtrl->LastUi = 0.0f;
		pAi->HeatStat = 2;
		return;
	}

	if((pCtrl->tOn >0 || pCtrl->tOff >0) && pAi->HeatStat > 0) return;

	nConstTimeD = -1.0f * pCtrl->tDurVal;
	nConstTimeI = 0.5f * pCtrl->tDurVal;
	pCtrl->tDurVal = 0.0f;

	fErr = fsv - fpv;
	uP = pCtrl->ConP * fErr; // P, PI or PID
	
	if(pCtrl->ConI <= 0.0f) uI = 0.0f;
	else{
		if(pCtrl->ConP == 0.0f) 
			uI = pCtrl->LastUi;
		else {
			uI = pCtrl->LastUi + pCtrl->ConP / pCtrl->ConI 
				* (fErr + pCtrl->LastErr) / nConstTimeI;  
//			uI = pCtrl->LastUi + pCtrl->ConI * (fErr + pCtrl->LastErr) / nConstTimeI;
		}
	}

	if(pCtrl->ConD <= 0.0f) uD = 0.0f;
	else {
//		uD = nConstTimeD * pCtrl->ConD * (fpv - pCtrl->LastPV);
		uD = nConstTimeD * pCtrl->ConP * pCtrl->ConD * (fpv - pCtrl->LastPV);
	}

	pCtrl->uTotal = uP + uI + uD;
	if(pCtrl->uTotal >= 100.0f) pCtrl->uTotal = 100.0f;		
	if(pCtrl->uTotal <= -100.0f) pCtrl->uTotal = -100.0f; 

	pCtrl->LastPV = fpv;		
	pCtrl->LastErr = fErr;		
	pCtrl->LastUi = uI;
	uPI = uP + uI;
	if(uPI >= 100.0f) //LastUi = MAX(100-Up, 0)
	{
		if((100.0f-uP) > 0.0f) pCtrl->LastUi = 100.0f-uP;
		else pCtrl->LastUi = 0.0f;
	}
    if(uPI <= -100.0f) //LastUi = MIN(-100-Up, 0)
    {
		if(((-100.0f) - uP) < 0.0f) pCtrl->LastUi = (-100.0f) - uP;
		else pCtrl->LastUi = 0.0f; 
    }
	if(pCtrl->uTotal <= 0.0f) {
		pCtrl->tOn = 0;
		pCtrl->tOff = pCtrl->tCycTime;
	}
	else {
		pCtrl->tOn = (int)(pCtrl->uTotal / 100.0f * (float)pCtrl->tCycTime);
		if(pCtrl->tOn > pCtrl->tCycTime) pCtrl->tOn = pCtrl->tCycTime;
		pCtrl->tOff = pCtrl->tCycTime - pCtrl->tOn;
	}
	pAi->HeatStat = 2;
}

void RecHfProc(int Chno,int nNo)
{
    DevInfo* pDevInf = &m_pDeviceInfo->mInfo[Chno];
    int nBoard;
    int nSlot;
    int nPart;
    int nPort;
	int tmpInt = 0;
    
	if(pDevInf->mRecHF[nNo].enable == FALSE) return;  
	if(pDevInf->mRecHF[nNo].DevOpt & OPT_RECYCHF_INHEAT) 
    {
		if(pDevInf->mRecHF[nNo].mInHeater_Inf.Enabled == TRUE && pDevInf->mRecHF[nNo].mInTemp_Inf.Enabled == TRUE)
        {
			GetPIDValue(&pDevInf->mRecHF[nNo].mtInCtrl,	&pDevInf->mRecHF[nNo].mInTemp_Inf);
			tmpInt = HeaterProc(&pDevInf->mRecHF[nNo].mtInCtrl,&pDevInf->mRecHF[nNo].mInTemp_Inf);
            nBoard = pDevInf->mRecHF[nNo].mInHeater_Inf.nBoard;
            nSlot = pDevInf->mRecHF[nNo].mInHeater_Inf.nSlot;
            nPart = pDevInf->mRecHF[nNo].mInHeater_Inf.nPart;
            nPort = pDevInf->mRecHF[nNo].mInHeater_Inf.nPort;
			
            if(tmpInt == 0) m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] &= ~DefDigiData[nPort];
			else m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] |= DefDigiData[nPort];
		}
	}
	if(pDevInf->mRecHF[nNo].DevOpt & OPT_RECYCHF_OUTHEAT) 
    {
		if(pDevInf->mRecHF[nNo].mOutHeater_Inf.Enabled == TRUE && pDevInf->mRecHF[nNo].mOutTemp_Inf.Enabled == TRUE)
        {
			GetPIDValue(&pDevInf->mRecHF[nNo].mtOutCtrl, &pDevInf->mRecHF[nNo].mOutTemp_Inf);
			tmpInt = HeaterProc(&pDevInf->mRecHF[nNo].mtOutCtrl,&pDevInf->mRecHF[nNo].mOutTemp_Inf);
            nBoard = pDevInf->mRecHF[nNo].mOutHeater_Inf.nBoard;
            nSlot = pDevInf->mRecHF[nNo].mOutHeater_Inf.nSlot;
            nPart = pDevInf->mRecHF[nNo].mOutHeater_Inf.nPart;
            nPort = pDevInf->mRecHF[nNo].mOutHeater_Inf.nPort;
			
            if(tmpInt == 0) m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] &= ~DefDigiData[nPort];
			else m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] |= DefDigiData[nPort];
		}
	}

	if(pDevInf->mRecHF[nNo].DevOpt & OPT_RECYCHF_VTHEAT) 
    {
		if(pDevInf->mRecHF[nNo].mVentHeater_Inf.Enabled == TRUE && pDevInf->mRecHF[nNo].mVentTemp_Inf.Enabled == TRUE)
        {
			GetPIDValue(&pDevInf->mRecHF[nNo].mtVentCtrl,&pDevInf->mRecHF[nNo].mVentTemp_Inf);
			tmpInt = HeaterProc(&pDevInf->mRecHF[nNo].mtVentCtrl,&pDevInf->mRecHF[nNo].mVentTemp_Inf);
            nBoard = pDevInf->mRecHF[nNo].mVentHeater_Inf.nBoard;
            nSlot = pDevInf->mRecHF[nNo].mVentHeater_Inf.nSlot;
            nPart = pDevInf->mRecHF[nNo].mVentHeater_Inf.nPart;
            nPort = pDevInf->mRecHF[nNo].mVentHeater_Inf.nPort;
			
            if(tmpInt == 0) m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] &= ~DefDigiData[nPort];
			else m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] |= DefDigiData[nPort];
		}
	}

}

void HfProc(int Chno,int nNo)
{
    DevInfo* pDevInf = &m_pDeviceInfo->mInfo[Chno];
    int nBoard;
    int nSlot;
    int nPart;
    int nPort;
	int tmpInt = 0;
	float tFloat;
	
	if(pDevInf->mHF[nNo].enable == FALSE) return;  
	if(pDevInf->mHF[nNo].mHeater_Inf.Enabled == TRUE &&	pDevInf->mHF[nNo].mTemp_Inf.Enabled == TRUE)
    {
		GetPIDValue(&pDevInf->mHF[nNo].mtCtrl,&pDevInf->mHF[nNo].mTemp_Inf);
		tmpInt = HeaterProc(&pDevInf->mHF[nNo].mtCtrl,&pDevInf->mHF[nNo].mTemp_Inf);
        nBoard = pDevInf->mHF[nNo].mHeater_Inf.nBoard;
        nSlot = pDevInf->mHF[nNo].mHeater_Inf.nSlot;
        nPart = pDevInf->mHF[nNo].mHeater_Inf.nPart;
        nPort = pDevInf->mHF[nNo].mHeater_Inf.nPort;
        pDevInf->mHF[nNo].mHeater_Inf.ActVal = tmpInt;
        
        if(tmpInt == 0) m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] &= ~DefDigiData[nPort];
		else m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] |= DefDigiData[nPort];
	}

	if(pDevInf->mHF[nNo].mCoolValve_Inf.Enabled == TRUE) 
    {
		tFloat = pDevInf->mHF[nNo].mTemp_Inf.ReadVal - pDevInf->mHF[nNo].mtCtrl.ActVal;
        nBoard = pDevInf->mHF[nNo].mCoolValve_Inf.nBoard;
        nSlot = pDevInf->mHF[nNo].mCoolValve_Inf.nSlot;
        nPart = pDevInf->mHF[nNo].mCoolValve_Inf.nPart;
        nPort = pDevInf->mHF[nNo].mCoolValve_Inf.nPort;
		if(tFloat >= pDevInf->mHF[nNo].CoolLev) 
        {
			pDevInf->mHF[nNo].mCoolValve_Inf.ActVal = TRUE;
			pDevInf->mHF[nNo].mCoolValve_Inf.SetVal = TRUE;
            m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] |= DefDigiData[nPort];
			
		}
		else 
        {
			pDevInf->mHF[nNo].mCoolValve_Inf.ActVal = FALSE;
			pDevInf->mHF[nNo].mCoolValve_Inf.SetVal = FALSE;
            m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] &= ~DefDigiData[nPort];
		}
	}
	
	if(pDevInf->mHF[nNo].mInHeater_Inf.Enabled == TRUE && pDevInf->mHF[nNo].mInTemp_Inf.Enabled == TRUE)
    {
		GetPIDValue(&pDevInf->mHF[nNo].mtInCtrl, &pDevInf->mHF[nNo].mInTemp_Inf);
		tmpInt = HeaterProc(&pDevInf->mHF[nNo].mtInCtrl,&pDevInf->mHF[nNo].mInTemp_Inf);
        
        nBoard = pDevInf->mHF[nNo].mInHeater_Inf.nBoard;
        nSlot = pDevInf->mHF[nNo].mInHeater_Inf.nSlot;
        nPart = pDevInf->mHF[nNo].mInHeater_Inf.nPart;
        nPort = pDevInf->mHF[nNo].mInHeater_Inf.nPort;
        pDevInf->mHF[nNo].mInHeater_Inf.ActVal = tmpInt;
        
        if(tmpInt == 0) m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] &= ~DefDigiData[nPort];
		else m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] |= DefDigiData[nPort];
	}
}

void InLineProc(int Chno,int nNo)
{
    DevInfo* pDevInf = &m_pDeviceInfo->mInfo[Chno];
    int nBoard;
    int nSlot;
    int nPart;
    int nPort;
	int tmpInt = 0;
    
	if(pDevInf->mIn[nNo].enable == FALSE) return;  
	if(pDevInf->mIn[nNo].DevOpt & OPT_ILINE_INHEAT) 
    {
		GetPIDValue(&pDevInf->mIn[nNo].mtInCtrl, &pDevInf->mIn[nNo].mInTemp_Inf);
		tmpInt = HeaterProc(&pDevInf->mIn[nNo].mtInCtrl,&pDevInf->mIn[nNo].mInTemp_Inf);
        nBoard = pDevInf->mIn[nNo].mInHeater_Inf.nBoard;
        nSlot = pDevInf->mIn[nNo].mInHeater_Inf.nSlot;
        nPart = pDevInf->mIn[nNo].mInHeater_Inf.nPart;
        nPort = pDevInf->mIn[nNo].mInHeater_Inf.nPort;
        pDevInf->mIn[nNo].mInHeater_Inf.ActVal = tmpInt;
        
		if(tmpInt == 0) m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] &= ~DefDigiData[nPort];
		else m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] |= DefDigiData[nPort];
	}
	if(pDevInf->mIn[nNo].DevOpt & OPT_ILINE_EXTHEAT) {
		GetPIDValue(&pDevInf->mIn[nNo].mtExtCtrl, &pDevInf->mIn[nNo].mExtTemp_Inf);
		tmpInt = HeaterProc(&pDevInf->mIn[nNo].mtExtCtrl,&pDevInf->mIn[nNo].mExtTemp_Inf);
        nBoard = pDevInf->mIn[nNo].mExtHeater_Inf.nBoard;
        nSlot = pDevInf->mIn[nNo].mExtHeater_Inf.nSlot;
        nPart = pDevInf->mIn[nNo].mExtHeater_Inf.nPart;
        nPort = pDevInf->mIn[nNo].mExtHeater_Inf.nPort;
        pDevInf->mIn[nNo].mExtHeater_Inf.ActVal = tmpInt;
        
		if(tmpInt == 0) m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] &= ~DefDigiData[nPort];
		else m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] |= DefDigiData[nPort];
	}
}

void CellProc(int Chno)
{
    DevInfo* pDevInf = &m_pDeviceInfo->mInfo[Chno];
    int nBoard;
    int nSlot;
    int nPart;
    int nPort;
	int tmpInt = 0;
    
	if(pDevInf->mCell.enable == FALSE) return;  
	if(pDevInf->mCell.DevOpt & OPT_CELL_HEAT) 
    {
		if(pDevInf->mCell.mHeater_Inf.Enabled == TRUE && pDevInf->mCell.mTemp_Inf.Enabled == TRUE)
        {
			GetPIDValue(&pDevInf->mCell.mtCtrl,	&pDevInf->mCell.mTemp_Inf);
			tmpInt = HeaterProc(&pDevInf->mCell.mtCtrl,&pDevInf->mCell.mTemp_Inf);
            nBoard = pDevInf->mCell.mHeater_Inf.nBoard;
            nSlot = pDevInf->mCell.mHeater_Inf.nSlot;
            nPart = pDevInf->mCell.mHeater_Inf.nPart;
            nPort = pDevInf->mCell.mHeater_Inf.nPort;
            pDevInf->mCell.mHeater_Inf.ActVal = tmpInt;
            
            if(tmpInt == 0) m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] &= ~DefDigiData[nPort];
			else m_pGlobalVar->mBoardVal.mWr[nBoard].mDO[nSlot][nPart] |= DefDigiData[nPort];
		}
	}
}

void CoolingProc(int Chno)
{
    DevInfo* pDevInf = &m_pDeviceInfo->mInfo[Chno];
	int tmpInt = 0;
	float fVal;
	verTempCtrl* pCtrl;

	if(pDevInf->mCooling.enable == FALSE) return;
	if(pDevInf->mCooling.DevOpt & OPT_COOL_IHEAT) 
    {
		if(pDevInf->mCooling.mInHeater_Inf.Enabled == TRUE && pDevInf->mCooling.mInTemp_Inf.Enabled == TRUE) 
        {
			GetPIDValue(&pDevInf->mCooling.mtICtrl,&pDevInf->mCooling.mInTemp_Inf);
			tmpInt = HeaterProc(&pDevInf->mCooling.mtICtrl,&pDevInf->mCooling.mInTemp_Inf);
            
			if(tmpInt == 1) 
            {
				pDevInf->mCooling.mInHeater_Inf.ActVal = TRUE;
            }
			else if(tmpInt == 0) 
            {
				pDevInf->mCooling.mInHeater_Inf.ActVal = FALSE;
            }
		}
	}

	if(pDevInf->mCooling.DevOpt & OPT_COOL_OHEAT) 
    {
		if(pDevInf->mCooling.mOutHeater_Inf.Enabled == TRUE &&	pDevInf->mCooling.mOutTemp_Inf.Enabled == TRUE) 
        {
			GetPIDValue(&pDevInf->mCooling.mtOCtrl,&pDevInf->mCooling.mOutTemp_Inf);
			tmpInt = HeaterProc(&pDevInf->mCooling.mtOCtrl,pDevInf->mCooling.mOutTemp_Inf);
			if(tmpInt == 1) 
				pDevInf->mCooling.mOutHeater_Inf.ActVal = TRUE;
			else if(tmpInt == 0) 
				pDevInf->mCooling.mOutHeater_Inf.ActVal = FALSE;
		}
	}
	
	pCtrl = NULL;
	if(pDevInf->mCooling.DevOpt & OPT_COOL_FAN) {
		if(pDevInf->mCooling.mFan_Inf.Enabled == TRUE) 
        {
			if(pDevInf->mCooling.AutoFan == TRUE) {
				if(pDevInf->mCooling.FanPart == 0 && pDevInf->mCooling.mInTemp_Inf.Enabled == TRUE) 
                {
					pCtrl = &pDevInf->mCooling.mtICtrl;
					fVal = pDevInf->mCooling.mInTemp_Inf.ReadVal;
				}
				else if(pDevInf->mCooling.FanPart == 1 && pDevInf->mCooling.mOutTemp_Inf.Enabled == TRUE) 
                {
					pCtrl = &pDevInf->mCooling.mtOCtrl;
					fVal = pDevInf->mCooling.mOutTemp_Inf.ReadVal;
				}
				else if(pDevInf->mCooling.FanPart == 2 && 
					pDevInf->mCell.mTemp_Inf.Enabled == TRUE) {
					pCtrl = &pDevInf->mCell.mtCtrl;
					fVal = pDevInf->mCell.mTemp_Inf.ReadVal;
				}
				if(pCtrl == NULL) pDevInf->mCooling.mFan_Inf.ActVal = FALSE;
				else {
					if(pCtrl->ActVal == 0.0f)
                    {
						pDevInf->mCooling.mFan_Inf.ActVal = FALSE;	
                    }
					else 
                    {
						if(pCtrl->ActVal < (fVal+fCoolGap))
                        {
								pDevInf->mCooling.mFan_Inf.ActVal = TRUE;
                        }
						else if(pCtrl->ActVal > fVal)
                        {
							pDevInf->mCooling.mFan_Inf.ActVal = FALSE;	
                        }
					}
				}
			}
		}
		else pDevInf->mCooling.mFan_Inf.ActVal = FALSE;	
	}

	pCtrl = NULL;
	if(pDevInf->mCooling.DevOpt & OPT_COOL_FANAO) 
    {
		if(pDevInf->mCooling.mFanAO_Inf.Enable == TRUE) 
        {
			if(pDevInf->mCooling.AutoFan == TRUE) 
            {
				if(pDevInf->mCooling.FanPart == 0 && pDevInf->mCooling.mInTemp_Inf.Enabled == TRUE) 
                {
					pCtrl = &ptChannel->pChanShm->mDev.mCooling.mtICtrl;
				}
				else if(pDevInf->mCooling.FanPart == 1 && pDevInf->mCooling.mOutTemp_Inf.Enabled == TRUE) 
                {
					pCtrl = &pDevInf->mCooling.mtOCtrl;
				}
				else if(pDevInf->mCooling.FanPart == 2 && pDevInf->mCell.mTemp_Inf.Enabled == TRUE) 
                {
					pCtrl = &ptChannel->pChanShm->mDev.mCell.mtCtrl;
				}
				if(pCtrl == NULL) pDevInf->mCooling.mFanAO_Inf.ActVal = 0.0f;
				else {
					if(pCtrl->uTotal < 0.0f) 
                    {
						pDevInf->mCooling.mFanAO_Inf.ActVal = pDevInf->mCooling.mFanAO_Inf.MaxValue * (pCtrl->uTotal * -1.0f / 100.0f);
					}
					else pDevInf->mCooling.mFanAO_Inf.ActVal = 0.0f;
				}
			} 
		}
		else pDevInf->mCooling.mFanAO_Inf.ActVal = 0.0f;
	}
}

