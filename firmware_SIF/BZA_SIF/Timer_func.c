#include "BZA_SIF.h"
#include "drv_intc.h"


extern bool TimerEnable;
extern uint TimerCounter;
extern void DHCP_timer_handler(void);

inline bool checkCalib()
{
	bool ret = true;
	for(int ch=0; ch < m_pGlobalVar->mStatusInf.MaxChannel; ch++)
	{
		if(m_pGlobalVar->mChVar[ch].bCalib == 0 && m_pGlobalVar->mChVar[ch].bTestMode == 0)
		{
			ret = false;
			break;
		}
	}
	return ret;
}

inline bool checkCommTimer()
{
	if(checkCalib() == true) return false;
	if(m_pGlobalVar->mStatusInf.mode != 1) return false;
	if(m_SocketStatus[TCP_SOCK_NUM] != ESTABLISHED) return false;
	if(m_pGlobalVar->mStatusInf.EnaChkTimeOut == 0) return false;
	return true;
}

static void ISR_MSTimer(void)
{
	int ch;
	
	MSTIM_INT_bit.MATCH0_INT = 1;
	
	//I2C Delay check.
	if(m_pGlobalVar->nI2CWriteDelayTick[0] > 0) m_pGlobalVar->nI2CWriteDelayTick[0] -= m_pSysConfig->BaseTick;
	if(m_pGlobalVar->nI2CWriteDelayTick[0] < 0) m_pGlobalVar->nI2CWriteDelayTick[0] = 0;
	if(m_pGlobalVar->nI2CWriteDelayTick[1] > 0) m_pGlobalVar->nI2CWriteDelayTick[1] -= m_pSysConfig->BaseTick;	
	if(m_pGlobalVar->nI2CWriteDelayTick[1] < 0) m_pGlobalVar->nI2CWriteDelayTick[1] = 0;
	
	m_pGlobalVar->m_msFind ++;
	m_pGlobalVar->m_MsI2CdelayStamp ++;
	m_pGlobalVar->m_msAux ++;
	m_pGlobalVar->m_msRefreshDC ++;
	if(m_pGlobalVar->m_MsI2CdelayStamp > 1000000) m_pGlobalVar->m_MsI2CdelayStamp = 1000000;
	if(m_pGlobalVar->m_msFind > 1000000) m_pGlobalVar->m_msFind = 1000000;
	if(m_pGlobalVar->m_msAux > 1000000) m_pGlobalVar->m_msAux = 1000000;
	if(m_pGlobalVar->m_msRefreshDC > 1000000) m_pGlobalVar->m_msRefreshDC = 1000000;
	
	//SPI Delay check.
	if(m_pGlobalVar->nSPITickOn == 0 )
	{
		m_pGlobalVar->nSPITick = 0;
	}
	else
	{
		m_pGlobalVar->nSPITick ++;
	}

    ////////// for DHCP /////////
    if(TimerEnable)
    {
        TimerCounter++;
        if(TimerCounter > 1000)
        {
            DHCP_timer_handler();
            TimerCounter = 0;
        }
    }
    /////////////////////////////
	m_pGlobalVar->CommTimeResp ++;
	if(m_pGlobalVar->CommTimeResp > 1000000) m_pGlobalVar->CommTimeResp = 1000000;
	
	
	
    if(checkCommTimer())
    {
      m_pGlobalVar->CommTimeOut ++;
    }
    else 
    {
      m_pGlobalVar->CommTimeOut = 0;
    }

	if(m_pGlobalVar->LedBusyStat == 1)
	{
		m_pGlobalVar->LedBusyTick ++;
		
		if(m_pGlobalVar->LedBusyTick >= 500) 
		{
			if(m_pGlobalVar->LedBusy == true) m_pGlobalVar->LedBusy = false;
			else m_pGlobalVar->LedBusy = true;
			m_pGlobalVar->LedBusyTick  = 0;
		}
	}
	else
	{
		m_pGlobalVar->LedBusy = true;
		m_pGlobalVar->LedBusyTick  = 0;
	}
	
	
	if(m_pGlobalVar->LedFlowStat == 1)
	{
		m_pGlobalVar->LedFlowTick ++;
		if(m_pGlobalVar->LedFlowTick >= 500) 
		{
			if(m_pGlobalVar->LedFlow == true) m_pGlobalVar->LedFlow = false;
			else m_pGlobalVar->LedFlow = true;
			m_pGlobalVar->LedFlowTick  = 0;
		}
	}
	else
	{
		m_pGlobalVar->LedFlow = false;
		m_pGlobalVar->LedFlowTick  = 0;
	}
	
	for(ch=0; ch < MAX_DEV_CHANNEL; ch++)
	{
		if(m_pSysConfig->ChkZIM[ch] == 1)
		{
			if(m_pGlobalVar->mChVar[ch].Start > 0 && m_pGlobalVar->mChVar[ch].mChStatInf.TaskNo > -1)
			{
				m_pGlobalVar->mChVar[ch].mChStatInf.RunTimeStamp ++;
				m_pGlobalVar->mChVar[ch].mChStatInf.TaskTimeStamp ++;
				m_pGlobalVar->mChVar[ch].mChStatInf.CycleTimeStamp ++;
				
				if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.status == DEF_EIS_STATUS_WAIT)  m_pGlobalVar->mChVar[ch].mFlow.m_MsDurStamp ++;
				else m_pGlobalVar->mChVar[ch].mFlow.m_MsDurStamp = 0;
				
				if(m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.status == DEF_EIS_STATUS_ONDELAY
				   || m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.status == DEF_EIS_STATUS_DCON
					   || m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.status == DEF_EIS_STATUS_MONDELAY )  m_pGlobalVar->mChVar[ch].mFlow.OndelayTimeStamp ++;
				else m_pGlobalVar->mChVar[ch].mFlow.OndelayTimeStamp = 0;
				
				m_pGlobalVar->mChVar[ch].mFlow.m_MsFlowdelayStamp ++;
				
				if(m_pGlobalVar->mChVar[ch].mFlow.m_MsFlowdelayStamp > 1000000) 
				{
					m_pGlobalVar->mChVar[ch].mFlow.m_MsFlowdelayStamp = 1000000;
				}
				
				if(m_pGlobalVar->mChVar[ch].bChkSlope == 1)  
				{
					m_pGlobalVar->mChVar[ch].m_msSlop ++;
					if(m_pGlobalVar->mChVar[ch].m_msSlop > 1000000) 
					{
						m_pGlobalVar->mChVar[ch].m_msSlop = 1000000;
					}
				}
				else
				{
					m_pGlobalVar->mChVar[ch].m_msSlop = 0;
				}
			}
			else
			{
				m_pGlobalVar->mChVar[ch].mFlow.m_MsDurStamp = 0;
				m_pGlobalVar->mChVar[ch].mFlow.OndelayTimeStamp = 0;
				m_pGlobalVar->mChVar[ch].m_msSlop = 0;
				m_pGlobalVar->mChVar[ch].mFlow.m_MsFlowdelayStamp = 0;
				m_pGlobalVar->mChVar[ch].mChStatInf.RunTimeStamp = 0;
				m_pGlobalVar->mChVar[ch].mChStatInf.TaskTimeStamp = 0;
				m_pGlobalVar->mChVar[ch].mChStatInf.CycleTimeStamp = 0;
				m_pGlobalVar->mChVar[ch].mFlow.m_MsDurCount = 0;
				m_pGlobalVar->mChVar[ch].mFlow.m_MsDurCount1 = 0;
			}
			m_pGlobalVar->mChVar[ch].OverT_Timer ++;
			if(m_pGlobalVar->mChVar[ch].OverT_Timer > 1000000) m_pGlobalVar->mChVar[ch].OverT_Timer = 1000000;
		}
		m_pGlobalVar->mChVar[ch].m_msReset ++;
		if(m_pGlobalVar->mChVar[ch].m_msReset > 1000000) m_pGlobalVar->mChVar[ch].m_msReset = 1000000;
	}
	
	
	
	m_pGlobalVar->m_msADC ++;
	
	
	if(m_pGlobalVar->m_msADC > 1000000) m_pGlobalVar->m_msADC = 1000000;
	

}

void Init_MSTimer(VoidFpnt_t ISR, uint msec)
{
  	
	m_MsTimerTick = MS_TMRTOTICK(msec);
	
	MSTIM_CTRL_bit.COUNT_ENAB = 0;
	MSTIM_MCTRL_bit.MR0_INT = 1;
	MSTIM_MCTRL_bit.RESET_COUNT0 = 1;
	MSTIM_MCTRL_bit.STOP_COUNT0 = 0;
	MSTIM_CTRL_bit.RESET_COUNT = 1;	
	while(MSTIM_COUNTER);
	MSTIM_CTRL_bit.RESET_COUNT = 0;
	MSTIM_CTRL_bit.PAUSE_EN = 1;
	
	MSTIM_MATCH0 = m_MsTimerTick;
	
	MSTIM_INT_bit.MATCH0_INT = 1;
	
	MIC_IRQInstall(ISR, MainMSTIMER_INT, HIGH, LEVEL, TYPE_IRQ);
	MIC_IntEnable(MainMSTIMER_INT, ENABLE_IRQ);
	
	MSTIM_CTRL_bit.COUNT_ENAB = 1;
}

void Disable_MSTimer(void)
{
	MSTIM_CTRL_bit.COUNT_ENAB = 0;
}

void Init_HSTimer(VoidFpnt_t ISR, uint usec)
{
	m_HsTimerTick = usec-1;
	
	// Init High speed timer
	TIMCLK_CTRL_bit.HST_CLK_ENA 	= 1;   	// HSTimer clock enable
	
	HSTIM_CTRL_bit.COUNT_ENAB   	= 0;   	// Stop counting
	HSTIM_MCTRL_bit.MR0_INT     	= 1;   	// unmask MATCH0 intr flag
	HSTIM_MCTRL_bit.RESET_COUNT0	= 1;   	// Enable reset of Timer Counter on Match 0
	HSTIM_MCTRL_bit.STOP_COUNT0 	= 0;   	// Enable stop functionality on Match 0
	HSTIM_PMATCH = 104-1;              	// Set prescaler 1us
	HSTIM_CTRL_bit.RESET_COUNT = 1;   	// Reset the counter
	while(HSTIM_COUNTER);
	HSTIM_CTRL_bit.RESET_COUNT = 0;   	// release reset of the counter
	HSTIM_CTRL_bit.PAUSE_EN = 1;      	// stop the counter in debug mode
	HSTIM_MATCH0 = m_HsTimerTick;    	// set period
	HSTIM_INT_bit.MATCH0_INT   = 1;   	// Clear MATHC0 interrupt flag
	  //Init timer interrupts
	MIC_IRQInstall( ISR,    			//ISR
					MainHSTIMER_INT,   	//Interrupt index
					HIGH,              	// Interrupt is generated on a high level signal or rising edge
					LEVEL,             	// Interrupt is level sensitive
					TYPE_IRQ);         	// The interrupt is routed to the IRQ output of the interrupt controller

  	MIC_IntEnable(MainHSTIMER_INT, ENABLE_IRQ);
 
  	HSTIM_CTRL_bit.COUNT_ENAB  = 1;   	// Enable counting
	
	hstimer_enable = true;
}

void Disable_HSTimer()
{	
	if(hstimer_enable)
	{
		MIC_IntEnable(MainHSTIMER_INT, DISABLE_IRQ);
		HSTIM_CTRL_bit.COUNT_ENAB = 0;
		
		hstimer_enable = false;
	}
	
}


void Init_Timer(void)
{
	TIMCLK_CTRL1_bit.TIMER4_CLK_EN = 0; 		// 1bit, TIMER4 clock 0-disabled, 1-enabled
	TIMCLK_CTRL1_bit.TIMER5_CLK_EN = 0; 		// 1bit, TIMER5 clock 0-disabled, 1-enabled
	TIMCLK_CTRL1_bit.TIMER0_CLK_EN = 0; 		// 1bit, TIMER0 clock 0-disabled, 1-enabled
	TIMCLK_CTRL1_bit.TIMER1_CLK_EN = 0; 		// 1bit, TIMER1 clock 0-disabled, 1-enabled
	TIMCLK_CTRL1_bit.TIMER2_CLK_EN = 0; 		// 1bit, TIMER2 clock 0-disabled, 1-enabled
	TIMCLK_CTRL1_bit.TIMER3_CLK_EN = 0; 		// 1bit, TIMER3 clock 0-disabled, 1-enabled
		
	TIMCLK_CTRL_bit.WDT_CLK_ENA  = 0;			// 1bit, WatchDogTimer clock 0-disabled, 1-enabled
	TIMCLK_CTRL_bit.HST_CLK_ENA  = 0;			// 1bit, HSTimer clock 0-disabled, 1-enabled

	Init_MSTimer(ISR_MSTimer, m_pSysConfig->BaseTick);
}