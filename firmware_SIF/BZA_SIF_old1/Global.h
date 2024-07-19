#ifndef _H_GLOBAL_H
#define _H_GLOBAL_H

#include "BZA_SIF.h"

//..Timer gloval vars..
extern uint m_HsTimerTick;
extern uint m_MsTimerTick;
extern bool hstimer_enable;


//..Comm. gloval vars..
extern SOCKET m_Socket[MAX_SOCKET_NUM];
extern eSockStatus m_SocketStatus[MAX_SOCKET_NUM];
extern Packet _Packet[MAX_SOCKET_NUM];
extern byte *m_PtrRdData[MAX_SOCKET_NUM];
extern byte *m_PtrWrData[MAX_SOCKET_NUM];
extern uint m_PtrDataWr[MAX_SOCKET_NUM];
extern uint m_PtrDataRd[MAX_SOCKET_NUM];
extern byte *m_pRdDataBuf[MAX_SOCKET_NUM];
extern int m_SendDataSize[MAX_SOCKET_NUM];
extern short m_SendFrameCount[MAX_SOCKET_NUM];
extern short m_SendFrameNo[MAX_SOCKET_NUM];

extern byte *_pNandBuffer;
extern stSystemConfig* m_pSysConfig;
extern stConnCfg* m_pConnCfg;
extern stDefTestData*  m_pTestData[MAX_DEV_CHANNEL];
extern byte * m_PtrTemp;
extern stGlobalVar *m_pGlobalVar;
extern st_zim_RTD_Coef*     pRTD_Coef;


extern char* m_pJsonAbout;
extern char* m_pJsonChannel;
extern char* m_pJsonCook;
extern char* m_pJsonSamples;
extern char* m_pHtmlBuff;


extern double ContVal[1][DEF_MAX_IAC_RNGCNT];
extern int _InitLedDelay;
extern byte _NandBuffer[NAND_MAIN_SIZE + NAND_SPARE_SIZE];

//status



void Delay_us(uint dly);
void delay(uint count);

#endif