#ifndef _H_TASK_UTIL_H
#define _H_TASK_UTIL_H
void SetDevChannel(int ch);
double GetNextFreq(int ch, ushort* restart);
void proc_test_main(int ch);
bool proc_start_test(int ch);
int GetFreqCount(int ch);
void DeviceMainProc(void);

#endif
