#ifndef _H_GLOBAL_H
#define _H_GLOBAL_H

#include "sif_zim.h"

//..Timer gloval vars..
extern uint m_HsTimerTick;
extern uint m_MsTimerTick;
extern bool hstimer_enable;


//..Comm. gloval vars..
extern SOCKET m_Socket;
extern Packet _Packet;
extern byte *m_PtrRdData;
extern byte *m_PtrWrData;
extern uint m_PtrDataWr;
extern uint m_PtrDataRd;

extern byte *_pNandBuffer;
extern byte *m_pLcdBuffer;
extern stSystemConfig* m_pSysConfig;
extern stConnCfg* m_pConnCfg;
extern byte * m_PtrTemp;
extern stGlobalVar *m_pGlobalVar;
extern st_zim_RTD_Coef*     pRTD_Coef;
extern byte *m_pRdDataBuf;

extern char* m_pJsonAbout;
extern char* m_pJsonChannel;
extern char* m_pJsonCook;
extern char* m_pJsonSamples;
extern char* m_pHtmlBuff;

extern int m_SendDataSize;
extern short m_SendFrameCount;
extern short m_SendFrameNo;

extern int _InitLedDelay;
extern byte _NandBuffer[NAND_MAIN_SIZE + NAND_SPARE_SIZE];
extern stFATHeader sFATHeader;

//status
extern eSockStatus m_SocketStatus;

extern double iRange[DEF_MAX_IAC_RNGCNT];

void Delay_us(uint dly);
void delay(uint count);

#endif