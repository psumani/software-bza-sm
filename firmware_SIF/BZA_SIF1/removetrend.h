#ifndef REMOVETREND_H
#define REMOVETREND_H
bool StationaryTest(double* pRaw , int Ns, int L);
bool RemoveTrend(st_zim_eis_raw_val* pXt, st_zim_eis_raw_val* pX, int Ns, int CP,stCompdrift* pCompdrift); 

#endif