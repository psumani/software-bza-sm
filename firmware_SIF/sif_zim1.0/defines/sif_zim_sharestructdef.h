#ifndef _SIF_ZIM_SHAREDEF_H
#define _SIF_ZIM_SHAREDEF_H

#include "type.h"
#include "Devicedef.h"

/////////////////////////////////////////////////////////////////////////////

#pragma pack(1)
//#define SCALEX1             								0
#define DEF_MAX_ATOMS                       				10
#define DEF_I2C_TIMEOUT                       				1000
#define DEF_ZIM_HEADER_VER									2

typedef struct
{	
  	unsigned int 				iID[4];			//127bit , hard corded unique id.
} st_ChipSerialID;


typedef struct
{	
    unsigned char				signature[4];	// R-Pi = 0x52, 0x2D, 0x50, 0x69 ,or S-IF = 0x53, 0x2D, 0x49, 0x46, 
    unsigned char				version;		//ZIM id data format version[0x00 reserved, 0x01 first version].
    unsigned char  				reserved;		//set to 0.
    unsigned short 				numatoms;		//2byte , total atoms in zIM id.
    unsigned int 				eeplen; 		//4byte , total length in bytes of all id[including this header].
} st_zim_id_header;


#define DEF_ATOM_TYPES_INVALID                  0x0000
#define DEF_ATOM_TYPES_VENDOR_INFO            	0x0001
#define DEF_ATOM_TYPES_GPID_MAP                 0x0002
#define DEF_ATOM_TYPES_LINUX_DEVTREE_BLOB		0x0003
#define DEF_ATOM_TYPES_CUSTOM                 	0x0004

//0x00005~0xFFFE : reserved for future use.
#define DEF_ATOM_TYPES_INVALID1                 0xFFFF

#define MAX_DENSITY								10
#define MAX_FREQUENCY							10000
#define MIN_FREQUENCY							1
#define MAX_DECADE								4
#define MAX_DATAPOINT							(MAX_DENSITY * MAX_DECADE)


typedef struct
{	
  	unsigned short 				type;			//2byte , atom type
	unsigned short				count;			//2byte : incrementing atom count
	unsigned int 				dlen;			//4byte : length in bytes of  atom [data+CRC]
} st_zim_id_atom_header;
	

typedef struct
{	
  	unsigned char 				UUID[16];		//16byte [unique for every single board ever made].
	unsigned short				pid; 			//product ID
	unsigned short				pver; 			//product version.
	unsigned char				vslen;			//vendor string length[bytes].
	unsigned char				pslen;			//product string length[bytes].
	unsigned char				vstr[30];	//ASCII vendor string.
	unsigned char				pstr[30];		//ASCII product string.
    unsigned short				crc16;          //2byte
} st_zim_id_atom_vendor_info;

typedef struct
{	
  	unsigned char 				bank_drive;		//1byte 
	unsigned char				Power;			//1byte 
	unsigned char 				gpiocfg[28];	//28byte 
} st_zim_id_atom_gpio_info;

typedef struct
{	
	st_zim_id_header mHeader;
	st_zim_id_atom_header mVendorHeader;
	st_zim_id_atom_vendor_info mVendorInfo;
} st_zim_id;



#define     DEF_MAX_IAC_RNGCNT			4
#define     MAX_IAC_CTRL_RNGCNT			8
#define     DEF_MAX_VDC_RNGCNT			2

#define 	DEF_ADC_IAC_RESOLUTION      16777216.0
#define 	DEF_ADC_VAC_RESOLUTION      16777216.0 //8388608.0 //16777216.0


#define     DEF_IAC_RNG0_MAX			2.0
#define     DEF_ADC_IAC_RNG0_MAX		2.56
#define     DEF_ADC_IAC_RNG0_MIN		-2.56

#define     DEF_IAC_RNG1_MAX			0.2
#define     DEF_ADC_IAC_RNG1_MAX		0.256
#define     DEF_ADC_IAC_RNG1_MIN		-0.256

#define     DEF_IAC_RNG2_MAX			0.02
#define     DEF_ADC_IAC_RNG2_MAX		0.0256
#define     DEF_ADC_IAC_RNG2_MIN		-0.0256

#define     DEF_IAC_RNG3_MAX			0.002
#define     DEF_ADC_IAC_RNG3_MAX		0.00256
#define     DEF_ADC_IAC_RNG3_MIN		-0.00256

#define     DEF_ADC_VAC_RNG_MAX			0.256
#define     DEF_ADC_VAC_RNG_MIN			-0.256

#define 	DEF_ADC_IAC_RNG0_FACTOR    ((DEF_ADC_IAC_RNG0_MAX - DEF_ADC_IAC_RNG0_MIN) / DEF_ADC_IAC_RESOLUTION) 
#define 	DEF_ADC_IAC_RNG1_FACTOR    ((DEF_ADC_IAC_RNG1_MAX - DEF_ADC_IAC_RNG1_MIN) / DEF_ADC_IAC_RESOLUTION) 
#define 	DEF_ADC_IAC_RNG2_FACTOR    ((DEF_ADC_IAC_RNG2_MAX - DEF_ADC_IAC_RNG2_MIN) / DEF_ADC_IAC_RESOLUTION) 
#define 	DEF_ADC_IAC_RNG3_FACTOR    ((DEF_ADC_IAC_RNG3_MAX - DEF_ADC_IAC_RNG3_MIN) / DEF_ADC_IAC_RESOLUTION) 
#define 	DEF_ADC_VAC_RNG_FACTOR    	((DEF_ADC_VAC_RNG_MAX - DEF_ADC_VAC_RNG_MIN) / DEF_ADC_VAC_RESOLUTION) 


#define     DEF_ADC_VDC_RNG0_MAX		2048.0
#define     DEF_ADC_VDC_RNG0_MIN		-2048.0
#define 	DEF_ADC_VDC_RNG0_FACTOR    ((DEF_ADC_VDC_RNG0_MAX - DEF_ADC_VDC_RNG0_MIN) / 16777216.0) //24bit

#define     DEF_ADC_VDC_RNG1_MAX		204.8
#define     DEF_ADC_VDC_RNG1_MIN		-204.8
#define 	DEF_ADC_VDC_RNG1_FACTOR    ((DEF_ADC_VDC_RNG1_MAX - DEF_ADC_VDC_RNG1_MIN) / 16777216.0) //24bit

#define     DEF_ADC_VDC_RNG0_MAX1		102.4
#define     DEF_ADC_VDC_RNG0_MIN1		-102.4
#define 	DEF_ADC_VDC_RNG0_FACTOR1    ((DEF_ADC_VDC_RNG0_MAX1 - DEF_ADC_VDC_RNG0_MIN1) / 16777216.0) //24bit

#define     DEF_ADC_VDC_RNG1_MAX1		10.24
#define     DEF_ADC_VDC_RNG1_MIN1		-10.24
#define 	DEF_ADC_VDC_RNG1_FACTOR1   ((DEF_ADC_VDC_RNG1_MAX1 - DEF_ADC_VDC_RNG1_MIN1) / 16777216.0) //24bit


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
	double			Ls[MAX_IAC_CTRL_RNGCNT];
} st_zim_Eis_Comp_Ls;

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
	double					MaxPower;
} st_zim_Safety_inf;

typedef struct
{
	byte          			ID;
	st_zim_Safety_inf		mSafety;
} st_zim_chkrnginf;

typedef struct
{
	byte          			ID;
	st_zim_Safety_inf		mSafety;
	st_zim_Eis_Cal_info     mEisCalInfo;
	st_zim_adc_rnginf		iac_rng[DEF_MAX_IAC_RNGCNT];
	st_zim_adc_rnginf		vac_rng;
	st_zim_adc_rnginf		vdc_rng[DEF_MAX_VDC_RNGCNT];
	st_zim_adc_rnginf 		rtd_rng;
	st_zim_Eis_Cal_info		mEisIRngCalInfo[MAX_IAC_CTRL_RNGCNT];	
	st_zim_Eis_Comp_Ls      mEirIrngCompLs;
} st_zim_rnginf;

typedef struct
{
	byte          			ID;
	st_zim_Safety_inf		mSafety;
	st_zim_Eis_Cal_info     mEisCalInfo;
	st_zim_adc_rnginf		iac_rng[DEF_MAX_IAC_RNGCNT];
	st_zim_adc_rnginf		vac_rng;
	st_zim_adc_rnginf		vdc_rng[DEF_MAX_VDC_RNGCNT];
	st_zim_adc_rnginf 		rtd_rng;
	st_zim_Eis_Cal_info		mEisIRngCalInfo[DEF_MAX_IAC_RNGCNT];	
} st_zim_rnginf1;

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

#pragma pack()
/////////////////////////////////////////////////////////////////////////////


#endif
