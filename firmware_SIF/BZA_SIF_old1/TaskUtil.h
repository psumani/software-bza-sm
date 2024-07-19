#ifndef _H_TASK_UTIL_H
#define _H_TASK_UTIL_H
int GetMaxBoard(void);
void AllChReset(bool brst);
void SetDevBoard(int ch);
double GetNextFreq(int ch, ushort* restart);
bool proc_mon_dcControl(int ch);
void proc_test_main(int ch);
bool proc_start_test(int ch);
int GetFreqCount(int ch);
void DeviceMainProc(void);
void ScanMainProc(void);

#endif
