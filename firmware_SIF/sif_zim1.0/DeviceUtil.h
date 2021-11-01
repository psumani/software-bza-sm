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

void ToggleLed0(void);
void ToggleLed1(void);
void ToggleLed2(void);
void ToggleLed3(void);
void ToggleLed4(void);
double FixedPoint(double Value,int FixPnt);
INT_32 proc_read_version(void);
int CheckThermoStat(void);
void proc_eis_setrange(void);
void Set_IceResetB(bool on);
bool CheckIceCfgDone(void);
void InitDeviceControl(void);
void proc_eis_reset(void);
void apply_req_dds_signal(void);
void apply_req_dds_clock(void);
void apply_adc_ac_cfg(void);
double ResistanceToTemperature(double r);
double Polynomial(double x);
double GetPlatinumRTD(double Rin);
void proc_main(void);
void proc_auto_vdc_proc(void);
void proc_SetLowMclk(bool bLow);
void proc_power_VAC(bool bOn);
bool check_power_VAC(void);
void proc_eis_LoadOn(ushort loadon);
void LCD_Refresh(void);

void RefreshFPGA(void);
#endif