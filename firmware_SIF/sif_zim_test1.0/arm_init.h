#ifndef ARM_INIT_H
#define ARM_INIT_H

#include "defines/type.h"
#include "defines/sif_zim_def.h"

void GetUniqueSerialID(st_ChipSerialID* pID);
void ChangeOperationMode(enOperationMode mMode);

void Init_arm(void);

#endif