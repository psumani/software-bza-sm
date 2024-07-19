#ifndef _H_TASK_UTIL_H
#define _H_TASK_UTIL_H
void SetModeAuxBoard(int mode);
int GetMaxBoard(void);
void AllChReset(bool brst);
void SetDeviceBoard(int bd);
double GetNextFreq(int bd, ushort* restart);
bool proc_mon_dcControl(int bd);
void procaux_test_main();
void proc_test_main(int bd);
bool procaux_start_test();
bool proc_start_test(int bd);
int GetFreqCount(int bd);
void DeviceMainProc(void);
void DeviceAuxProc(void);
void ScanMainProc(void);
void CheckAuxboard(int bd);
#endif
