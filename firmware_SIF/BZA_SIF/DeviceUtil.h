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

bool chkTestCondition(int bd);
void procaux_power_VAC(int bd, bool bOn);
void proc_power_VAC(int bd, bool bOn);
double FixedPoint(double Value,int FixPnt);
int proc_read_version(int bd);
int CheckThermoStat(int bd);
bool proc_chk_run(void);
bool proc_eis_dcoff(int bd);

void Set_IceResetB(bool on);
bool CheckIceCfgDone(void);
void InitDeviceControl(void);
void proc_eis_reset(int bd);
void apply_req_dds_dcsignal(int bd);
void apply_req_dds_signal(int bd);
void apply_req_dds_clock(int bd);

void applyaux_adc_ac_cfg(int auxbd);
void apply_adc_ac_cfg(int bd);

void ApplyCalcConfigADC(int bd);
bool proc_eis_data_conv(int bd);
void proc_eis_LoadOn(int bd, ushort loadon);
void proc_eis_setrange(int bd,int setrange);
void proc_stop_test(int bd, int status);
void set_device_DO(int bd);
void setaux_device_DO(int bd);

void DefaultDeviceProc(int bd);
void AuxProc(int bd);
void RefreshFPGA(int bd);
bool proc_eis_main(int bd);
void Flow_monitor(int bd);
void Flow_discharger(int bd);
#endif