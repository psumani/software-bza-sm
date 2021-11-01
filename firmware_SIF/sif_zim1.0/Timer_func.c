#include "sif_zim.h"
#include "drv_intc.h"

extern bool TimerEnable;
extern uint TimerCounter;
extern void DHCP_timer_handler(void);

static void ISR_MSTimer(void)
{
	MSTIM_INT_bit.MATCH0_INT = 1;
	MSTIM_MATCH0 = m_pGlobalVar->mStatusInf.m_MsTimerTick;
	
	m_pGlobalVar->mStatusInf.m_MsTimeStamp += m_pSysConfig->BaseTick;	
	
	//I2C Delay check.
	if(m_pGlobalVar->nI2CWriteDelayTick[0] > 0) m_pGlobalVar->nI2CWriteDelayTick[0] -= m_pSysConfig->BaseTick;
	if(m_pGlobalVar->nI2CWriteDelayTick[0] < 0) m_pGlobalVar->nI2CWriteDelayTick[0] = 0;
	if(m_pGlobalVar->nI2CWriteDelayTick[1] > 0) m_pGlobalVar->nI2CWriteDelayTick[1] -= m_pSysConfig->BaseTick;	
	if(m_pGlobalVar->nI2CWriteDelayTick[1] < 0) m_pGlobalVar->nI2CWriteDelayTick[1] = 0;
	
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
	
    if(m_SocketStatus == ESTABLISHED && m_pGlobalVar->EnaChkTimeOut == 1)
    {
      m_pGlobalVar->mStatusInf.CommTimeOut ++;
    }
    else 
    {
      m_pGlobalVar->mStatusInf.CommTimeOut = 0;
    }
	


	if(m_pGlobalVar->LedBusyStat == 1)
	{
		m_pGlobalVar->LedBusyTick ++;
		if(m_pGlobalVar->LedBusyTick >= 500)
		{
			m_pGlobalVar->LedBusyTick = 0;
			if(m_pGlobalVar->LedBusy == true) m_pGlobalVar->LedBusy = false;
			else m_pGlobalVar->LedBusy = true;
		}
	}
	else
	{
		//m_pGlobalVar->LedBusyTick = 0;
		//m_pGlobalVar->LedBusy = true;
	}
	
    if(m_pGlobalVar->Start > 0)
	{
		if(m_pGlobalVar->mStatusInf.meis.eis_status.teststatus != DEF_EIS_TESTSTATUS_FIN
		   && m_pGlobalVar->mStatusInf.meis.eis_status.status >= DEF_EIS_STATUS_ONDELAY)
		{
			m_pGlobalVar->mStatusInf.m_MsTestStamp ++;
			m_pGlobalVar->mStatusInf.meis.eis_status.runTimeStamp = m_pGlobalVar->mStatusInf.m_MsTestStamp;
			m_pGlobalVar->mStatusInf.meis.eis_status.runidxTimeStamp ++;
		}
	}
	else 
	{
		m_pGlobalVar->mStatusInf.m_MsTestStamp = 0;
	}
	
	m_pGlobalVar->OverT_Timer ++;
	if(m_pGlobalVar->mStatusInf.bChkSlope == 1)  m_pGlobalVar->mStatusInf.m_msSlop ++;
	m_pGlobalVar->mStatusInf.m_msDisp ++;
	m_pGlobalVar->mStatusInf.m_msAux ++;
	m_pGlobalVar->mStatusInf.m_msReset ++;
	m_pGlobalVar->mStatusInf.m_msADC ++;
	m_pGlobalVar->mStatusInf.m_MsTestdelayStamp ++;
	m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp ++;
	
	if(m_pGlobalVar->OverT_Timer > 1000000) m_pGlobalVar->OverT_Timer = 1000000;
	if(m_pGlobalVar->mStatusInf.m_msSlop > 1000000) m_pGlobalVar->mStatusInf.m_msSlop = 1000000;
	if(m_pGlobalVar->mStatusInf.m_msAux > 1000000) m_pGlobalVar->mStatusInf.m_msAux = 1000000;
	if(m_pGlobalVar->mStatusInf.m_msReset > 1000000) m_pGlobalVar->mStatusInf.m_msReset = 1000000;
	if(m_pGlobalVar->mStatusInf.m_msADC > 1000000) m_pGlobalVar->mStatusInf.m_msADC = 1000000;
	if(m_pGlobalVar->mStatusInf.m_MsTestdelayStamp > 2000000) m_pGlobalVar->mStatusInf.m_MsTestdelayStamp = 2000000;
	if(m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp > 1000000) m_pGlobalVar->mStatusInf.m_MsI2CdelayStamp = 1000000;

 	

 /*   
     if(m_pGlobalVar->mStatusInf._bStatWatchDog == true) 
    {
        OnLed4(false);
    }
    else
    {
        OnLed4(true);
    }*/
}

void Init_MSTimer(VoidFpnt_t ISR, uint msec)
{
  	
	m_pGlobalVar->mStatusInf.m_MsTimerTick = MS_TMRTOTICK(msec);
	
	MSTIM_CTRL_bit.COUNT_ENAB = 0;
	MSTIM_MCTRL_bit.MR0_INT = 1;
	MSTIM_MCTRL_bit.RESET_COUNT0 = 1;
	MSTIM_MCTRL_bit.STOP_COUNT0 = 0;
	MSTIM_CTRL_bit.RESET_COUNT = 1;	
	while(MSTIM_COUNTER);
	MSTIM_CTRL_bit.RESET_COUNT = 0;
	MSTIM_CTRL_bit.PAUSE_EN = 1;
	MSTIM_MATCH0 = m_pGlobalVar->mStatusInf.m_MsTimerTick;
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
	m_HsTimerTick = HS_TMRTOTICK(usec);
	
	// Init High speed timer
	TIMCLK_CTRL_bit.HST_CLK_ENA 	= 1;   	// HSTimer clock enable
	
	HSTIM_CTRL_bit.COUNT_ENAB   	= 0;   	// Stop counting
	HSTIM_MCTRL_bit.MR0_INT     	= 1;   	// unmask MATCH0 intr flag
	HSTIM_MCTRL_bit.RESET_COUNT0	= 1;   	// Enable reset of Timer Counter on Match 0
	HSTIM_MCTRL_bit.STOP_COUNT0 	= 0;   	// Enable stop functionality on Match 0
	HSTIM_PMATCH = 13-1;              	// Set prescaler 1us
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

void WaitMs(uint delay)
{
	m_pGlobalVar->mStatusInf.m_MsTimeStamp = 0;
	while(1)
	{
		if(m_pGlobalVar->mStatusInf.m_MsTimeStamp > delay)	
		{
			break;
		}
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