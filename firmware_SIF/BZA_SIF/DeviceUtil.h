#ifndef _H_DEVICE_UTIL_H
#define _H_DEVICE_UTIL_H


void OnLed_Y(bool on);
void ToggleLed_Y(void);
void OnLed0(bool on);
void OnLed1(bool on);
void OnLed2(bool on);
void OnLed3(bool on);
void OnLed4(bool on);
void ICE_BzaCommStat(bool bset);
void ICE_BzaFlowStat(bool bset);
void ToggleLed0(void);
void ToggleLed1(void);
void ToggleLed2(void);
void ToggleLed3(void);
void ToggleLed4(void);

bool chkTestCondition(int ch);
void proc_power_VAC(int ch, bool bOn);
double FixedPoint(double Value,int FixPnt);
int proc_read_version(int ch);
int CheckThermoStat(int ch);
bool proc_chk_run(void);
bool proc_eis_dcoff(int ch);

void Set_IceResetB(bool on);
bool CheckIceCfgDone(void);
void InitDeviceControl(void);
void proc_eis_reset(int ch);
void apply_req_dds_signal(int ch);
void apply_req_dds_clock(int ch);
void apply_adc_ac_cfg(int ch);

void proc_eis_LoadOn(int ch, ushort loadon);
void proc_eis_setrange(int ch,int setrange);
void proc_stop_test(int ch, int status);
void set_device_DO(int ch);
void DefaultDeviceProc(int ch);
void AuxProc(int ch);
void RefreshFPGA(int ch);
bool proc_eis_main(int ch);
void Flow_monitor(int ch);
#endif