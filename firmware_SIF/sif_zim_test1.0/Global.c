#include "global.h"

//..Comm. gloval vars..
SOCKET m_Socket[MAX_SOCKET_NUM];
Packet _Packet[MAX_SOCKET_NUM];
byte *m_PtrRdData[MAX_SOCKET_NUM];
byte *m_PtrWrData[MAX_SOCKET_NUM];
uint m_PtrDataWr[MAX_SOCKET_NUM];
uint m_PtrDataRd[MAX_SOCKET_NUM];
eSockStatus m_SocketStatus[MAX_SOCKET_NUM];
byte *m_pRdDataBuf[MAX_SOCKET_NUM];
int m_SendDataSize[MAX_SOCKET_NUM];
short m_SendFrameCount[MAX_SOCKET_NUM];
short m_SendFrameNo[MAX_SOCKET_NUM];

byte *_pNandBuffer;
byte *m_PtrTemp;
byte *m_pLcdBuffer;


double iRange[DEF_MAX_IAC_RNGCNT];

//..SMART System info .. block 16
stSystemConfig* m_pSysConfig;
stConnCfg*      m_pConnCfg;
//..SMART HW info ..   block 17
	
//..SMART Device info ..block 18

char* m_pJsonAbout;
char* m_pJsonChannel;
char* m_pJsonCook;
char* m_pJsonSamples;
char* m_pHtmlBuff;

int _InitLedDelay = 200;
byte _NandBuffer[NAND_MAIN_SIZE + NAND_SPARE_SIZE];

//status
stGlobalVar *m_pGlobalVar;
st_zim_RTD_Coef*     pRTD_Coef;

stFATHeader sFATHeader;
int ReadNandFlash(int page, void* buffer)
{
	return Nand_ReadPage(page, buffer);
}

void Delay_us(uint dly)
{
	while(dly--)
	{
		for(volatile int i = 100; i; i --);
	}
}

void delay(uint count)
{
	for(int i = 0; i < count; i++)
		__no_operation();	
}