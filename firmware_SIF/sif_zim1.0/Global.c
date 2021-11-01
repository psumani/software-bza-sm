#include "global.h"

//..Comm. gloval vars..
SOCKET m_Socket;
Packet _Packet;
byte *m_PtrRdData;
byte *m_PtrWrData;
uint m_PtrDataWr = 0;
uint m_PtrDataRd = 0;
byte *_pNandBuffer;
byte *m_PtrTemp;
byte *m_pLcdBuffer;
byte *m_pRdDataBuf;
int m_SendDataSize = 0;
short m_SendFrameCount = 0;
short m_SendFrameNo = 0;
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
eSockStatus m_SocketStatus = START;
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