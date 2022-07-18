#ifndef INIT_H
#define INIT_H

#include "defines/type.h"
#include "defines/sif_zim_def.h"

#define   HSTMR_IN_FREQ        104MHZ
#define	  MSTMR_IN_FREQ		32768

#define HS_TMRTOTICK(tick)   ((HSTMR_IN_FREQ/1000000)*tick)/13 	//Convert microseconds in Tmr ticks
#define	MS_TMRTOTICK(tick)	 MSTMR_IN_FREQ * tick / 1000
//#define HS_TMRTOTICK(tick) ((HSTMR_IN_FREQ/1000)*tick)/13

void WaitMs(uint delay);
void Init_Timer(void);

#endif