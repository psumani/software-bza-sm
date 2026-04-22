#ifndef _SIF_ZIM_SHAREDEF_H
#define _SIF_ZIM_SHAREDEF_H

#include "type.h"
#include "Devicedef.h"

/////////////////////////////////////////////////////////////////////////////

typedef enum { DEV_UNKNOWN, DEV_BZA1000A, DEV_BZA1000, DEV_BZA500, DEV_BZA100,DEV_BZA60,BZAAUX} eDeviceType;
typedef enum { SIF_WBCS, SIF_SMART, SIF_ZIM, SIF_SBZA, SIF_MBZA ,SIF_ZBCS,SIF_CXM,SIF_MCBZA} eSifType;
typedef enum { TECH_EIS, TECH_HFR, TECH_PRR, TECH_MON, TECH_QIS,TECH_DCH,} eTechType;

#pragma pack(1)
#define DEF_I2C_TIMEOUT                       				1000
#define DEF_ZIM_HEADER_VER									1
#define MAX_DEV_AUXBOARD 									3
typedef struct
{	
  	unsigned int 				iID[4];			//127bit , hard corded unique id.
} st_ChipSerialID;

typedef struct
{	
    unsigned char				signature[3];	// BZA 
    unsigned char				version;		//ZIM id data format version[0x00 reserved, 0x01 first version].
} st_zim_id;

#define MAX_EIS_FREQ_CNT		200

#define MAX_DENSITY								10
#define MAX_FREQUENCY							10000
#define MIN_FREQUENCY							1
#define MAX_DECADE								4
#define MAX_DATAPOINT							(MAX_DENSITY * MAX_DECADE)

#define MAX_DENSITY								10
#define MAX_FREQUENCY							10000
#define MIN_FREQUENCY							1
#define MAX_DECADE								4
#define MAX_DATAPOINT							(MAX_DENSITY * MAX_DECADE)

#define     DEF_HIFREQ_CALIBRANGE		4

#define     DEF_MAX_IAC_RNGCNT			4
#define     MAX_IAC_CTRL_RNGCNT			8
#define     DEF_MAX_VDC_RNGCNT			2

#define     DEF_MAX_AUX_CHCNT          4
#define     DEF_MAX_AUX_BDCNT          3

#define 	DEF_ADC_IAC_RESOLUTION      16777216.0
#define 	DEF_ADC_VAC_RESOLUTION      16777216.0 //8388608.0 //16777216.0

#define 	DEF_ADC_IAC_CONTROLGAIN     0.2

#define     DEF_IAC_RNG0_MAX			20.0
#define     DEF_ADC_IAC_RNG0_MAX		20.56
#define     DEF_ADC_IAC_RNG0_MIN		-20.56

#define     DEF_IAC_RNG1_MAX			2.0
#define     DEF_ADC_IAC_RNG1_MAX		2.56
#define     DEF_ADC_IAC_RNG1_MIN		-2.56

#define     DEF_IAC_RNG2_MAX			0.2
#define     DEF_ADC_IAC_RNG2_MAX		0.256
#define     DEF_ADC_IAC_RNG2_MIN		-0.256

#define     DEF_IAC_RNG3_MAX			0.02
#define     DEF_ADC_IAC_RNG3_MAX		0.0256
#define     DEF_ADC_IAC_RNG3_MIN		-0.0256

#define     DEF_IAC_RNG4_MAX			0.002
#define     DEF_ADC_IAC_RNG4_MAX		0.00256
#define     DEF_ADC_IAC_RNG4_MIN		-0.00256

#define     DEF_IAC_RNG5_MAX			0.0002
#define     DEF_ADC_IAC_RNG5_MAX		0.000256
#define     DEF_ADC_IAC_RNG5_MIN		-0.000256

#define     DEF_IAC_RNG6_MAX			0.00002
#define     DEF_ADC_IAC_RNG6_MAX		0.0000256
#define     DEF_ADC_IAC_RNG6_MIN		-0.0000256

#define     DEF_ADC_VAC_RNG_RMAX		0.2
#define     DEF_ADC_VAC_RNG_MAX			0.256
#define     DEF_ADC_VAC_RNG_MIN			-0.256

#define 	DEF_ADC_IAC_RNGHC_FACTOR    ((DEF_ADC_IAC_RNGHC_MAX - DEF_ADC_IAC_RNGHC_MIN) / DEF_ADC_IAC_RESOLUTION) 
#define 	DEF_ADC_IAC_RNG0_FACTOR    ((DEF_ADC_IAC_RNG0_MAX - DEF_ADC_IAC_RNG0_MIN) / DEF_ADC_IAC_RESOLUTION) 
#define 	DEF_ADC_IAC_RNG1_FACTOR    ((DEF_ADC_IAC_RNG1_MAX - DEF_ADC_IAC_RNG1_MIN) / DEF_ADC_IAC_RESOLUTION) 
#define 	DEF_ADC_IAC_RNG2_FACTOR    ((DEF_ADC_IAC_RNG2_MAX - DEF_ADC_IAC_RNG2_MIN) / DEF_ADC_IAC_RESOLUTION) 
#define 	DEF_ADC_IAC_RNG3_FACTOR    ((DEF_ADC_IAC_RNG3_MAX - DEF_ADC_IAC_RNG3_MIN) / DEF_ADC_IAC_RESOLUTION) 
#define 	DEF_ADC_IAC_RNG4_FACTOR    ((DEF_ADC_IAC_RNG4_MAX - DEF_ADC_IAC_RNG4_MIN) / DEF_ADC_IAC_RESOLUTION) 
#define 	DEF_ADC_IAC_RNG5_FACTOR    ((DEF_ADC_IAC_RNG5_MAX - DEF_ADC_IAC_RNG5_MIN) / DEF_ADC_IAC_RESOLUTION) 
#define 	DEF_ADC_VAC_RNG_FACTOR    	((DEF_ADC_VAC_RNG_MAX - DEF_ADC_VAC_RNG_MIN) / DEF_ADC_VAC_RESOLUTION) 

#define     DEF_ADC_VDC_RNG0_RMAX0		1000.0
#define     DEF_ADC_VDC_RNG0_RMAX1		500.0

#define     DEF_ADC_VDC_RNG0_MAX		2048.0
#define     DEF_ADC_VDC_RNG0_MIN		-2048.0
#define 	DEF_ADC_VDC_RNG0_FACTOR    ((DEF_ADC_VDC_RNG0_MAX - DEF_ADC_VDC_RNG0_MIN) / 16777216.0) //24bit

#define     DEF_ADC_VDC_RNG1_RMAX0		100.0
#define     DEF_ADC_VDC_RNG1_RMAX1		50.0

#define     DEF_ADC_VDC_RNG1_MAX		204.8
#define     DEF_ADC_VDC_RNG1_MIN		-204.8
#define 	DEF_ADC_VDC_RNG1_FACTOR    ((DEF_ADC_VDC_RNG1_MAX - DEF_ADC_VDC_RNG1_MIN) / 16777216.0) //24bit


#define     DEF_ADC_VDC_RNG0_RMAX2		100.0
#define     DEF_ADC_VDC_RNG0_RMAX3		60.0

#define     DEF_ADC_VDC_RNG0_MAX1		102.4
#define     DEF_ADC_VDC_RNG0_MIN1		-102.4
#define 	DEF_ADC_VDC_RNG0_FACTOR1    ((DEF_ADC_VDC_RNG0_MAX1 - DEF_ADC_VDC_RNG0_MIN1) / 16777216.0) //24bit

#define     DEF_ADC_VDC_RNG1_RMAX2		10.0
#define     DEF_ADC_VDC_RNG1_RMAX3		6.0

#define     DEF_ADC_VDC_RNG1_MAX1		10.24
#define     DEF_ADC_VDC_RNG1_MIN1		-10.24
#define 	DEF_ADC_VDC_RNG1_FACTOR1   ((DEF_ADC_VDC_RNG1_MAX1 - DEF_ADC_VDC_RNG1_MIN1) / 16777216.0) //24bit


#define     DEF_AUXADC_VDC_RNG_MAX		2048.0
#define     DEF_AUXADC_VDC_RNG_MIN		-2048.0
#define 	DEF_AUXADC_VDC_RNG_FACTOR    ((DEF_AUXADC_VDC_RNG_MAX - DEF_AUXADC_VDC_RNG_MIN) / 16777216.0) //24bit
#define     DEF_AUXADC_VDC_RNG_RMAX		500.0

#define     DEF_HLIMIT_STABLE_RATE		0.88
#define     DEF_LLIMIT_STABLE_RATE		0.78
#define     DEF_HLIMIT_STABLE_RATEL		(1.0-DEF_HLIMIT_STABLE_RATE)
#define     DEF_LLIMIT_STABLE_RATEL		(1.0-DEF_LLIMIT_STABLE_RATE)

#define     DEF_HLIMIT_VACSTABLE		DEF_ADC_VAC_RNG_MAX * DEF_HLIMIT_STABLE_RATE
#define     DEF_LLIMIT_VACSTABLE		DEF_ADC_VAC_RNG_MAX * DEF_LLIMIT_STABLE_RATE
#define     DEF_HLIMIT_VACSTABLEL		DEF_ADC_VAC_RNG_MAX * DEF_HLIMIT_STABLE_RATEL
#define     DEF_LLIMIT_VACSTABLEL		DEF_ADC_VAC_RNG_MAX * DEF_LLIMIT_STABLE_RATEL

typedef struct
{
    byte            Major;
    byte            Minor;
    byte            Revision;
    byte            Build;
} stVersion;

typedef struct
{	
	double			n1;
  	double			n2;
	double			n3;
	double          d1;
	double          d2;
	double          d3;
} st_zim_Eis_Cal_info;

typedef struct
{	
	double          gain;
	double			offset;
} st_zim_rng_cal_info;


typedef struct
{	
	double			maximum;
  	double			minimum;
	double          factor;
	double          gain;
	double			offset;
} st_zim_adc_rnginf;

typedef struct
{	
	double			realmax;
	double			controlgain;
	double			maximum;
  	double			minimum;
	double          factor;
	double          gain1;
	double			gain2;
} st_zim_adci_rnginf;

typedef struct
{	
	double			realmax;
	double			maximum;
  	double			minimum;
	double          factor;
	double          gain;
	double			offset;
} st_zim_adcv_rnginf;

typedef struct
{	
	double			realmax;
	double			maximum;
  	double			minimum;
	double          factor;
	double          gain;
	double			offset;
} st_zim_vdc_rnginf;

typedef struct
{	
	double					MaxPower;
	double					NoUse[4];
} st_zim_Safety_inf;

typedef struct
{
	byte          			ID;
	st_zim_Safety_inf		mSafety;
} st_zim_chkrnginf;

typedef struct
{	
	double			offset;
} st_zim_Idc_rnginf_Ofs;



typedef struct
{	
	st_zim_Idc_rnginf_Ofs			idcofs[MAX_IAC_CTRL_RNGCNT];
} st_zim_Idc_rnginf;

typedef struct
{	
	double			Ls;
	double			R;
	double			NoUse1;
	double			NoUse2;
} st_zim_dummy;

typedef struct   // 
{
	byte          			ID;
	st_zim_Safety_inf		mSafety; // 5
	st_zim_adci_rnginf		iac_rng[DEF_MAX_IAC_RNGCNT]; //7x4 = 28
	st_zim_adcv_rnginf		vac_rng;                     // 6
	st_zim_vdc_rnginf		vdc_rng[DEF_MAX_VDC_RNGCNT]; // 6x2 = 12
	st_zim_adc_rnginf 		rtd_rng;                     //5
	st_zim_Eis_Cal_info		mEisIRngCalInfo[MAX_IAC_CTRL_RNGCNT];	//6x8 = 48 // double
	st_zim_dummy      		mDummy[MAX_IAC_CTRL_RNGCNT]; //4x8 = 32
	st_zim_Idc_rnginf		idc_rng;                     //1x8 = 8
	double					NoUse[20];
} st_zim_rnginf; //


#define DEF_RTD_COEF_LEN	6
#define DEF_RTD_STANDARDTYPE_ITS90	0
#define DEF_RTD_STANDARDTYPE_IPTS68	1

typedef struct
{
	int    StandardType;
	double ptxIPTS68[3];
	double ptxITS90[3];
	double pt1000Correction[6];     
	double pt100Correction[6];
} st_zim_RTD_Coef;

typedef struct
{	
	ushort          			cycle;
	double          			freq;
} st_zim_eis_cond_item;

typedef struct
{	
	double 						initFreq;
	double 						midFreq;
	double 						finalFreq;
	ushort 						density;
	ushort 						iteration;
	ushort          			count;
	ushort						iacrng;
	double						ondelay;
	double						skipcycle;
	double						expected_Z;
	st_zim_eis_cond_item        item[MAX_EIS_FREQ_CNT];
	double						nouse1;
	double						nouse2;
} st_zim_eis_cond;

typedef struct 
{
	double 							Vdc;
	double 							Veoc;
	double 							Zre;
	double 							Zim;
	
} stDefTestDataItem;

typedef struct 
{
	stDefTestDataItem 				mData[DEF_MAX_AUX_CHCNT];
} stDefTestDataItems;

typedef struct 
{
	ushort							mType;
	double							TestTime;
	int								nCycle;
	double							CycleTime;
	int								nTaskNo;
	double							TaskTime;
	double 							fFreq;
	double 							Zre;
	double 							Zim;
	double 							Veoc;
	double 							Vdc;
	double 							Idc;
	double							Temperature;
	double							RangeA;
	double							RangeV;
	
	stDefTestDataItems				mData[DEF_MAX_AUX_BDCNT];

} stDefTestData;

#pragma pack()
/////////////////////////////////////////////////////////////////////////////


#endif
