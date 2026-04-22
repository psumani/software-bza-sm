#ifndef _H_DEVICE_AUX_UTIL_H
#define _H_DEVICE_AUX_UTIL_H


int proc_read_AUX_version(int ch);
void set_AUX_dds_clk(int ch);

void proc_AUX_adc_vdc_data(int bd);
INT_32 ICE_read_adc24bit_x4(INT_32 ch, UNS_8 cmd, INT_32(* pdata)[4]);

#endif