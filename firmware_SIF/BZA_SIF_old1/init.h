#ifndef INIT_H_
#define INIT_H_

void InitDevice(int ch);
void InitEthernet(void);
void InitGlobalVar(void);
void InitProc(void);


unsigned char SaveConnCfgInfo(void);
unsigned char SaveSysCfgInfo(void);
unsigned char LoadConnCfgInfo(void);
unsigned char LoadSysCfgInfo(void);
//unsigned char LoadRangeInfo(void);
//unsigned char SaveRangeInfo(void);
unsigned char LoadSystemInformation(void);
unsigned char LoadFATHeader();
void Initialize(void);
void InitZimConfig(int ch);
#endif