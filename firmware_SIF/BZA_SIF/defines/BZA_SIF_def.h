#ifndef SIF_ZIM_DEF_H
#define SIF_ZIM_DEF_H

#include "defines/type.h"
#include "defines/BZA_SIF_sharestructdef.h"


#define ID_CONNCONFIG		0xB6  //0xB0 - DHCP ID
#define ID_ZIMCONFIG		0xD2
#define ID_LENGTH 			12
#define ID_RANGEINFO 		0x3


#define MAX_DEV_CHANNEL  	4

#define FIRMWARE_VER_MAJOR	6  //0.256
#define FIRMWARE_VER_MINOR	0
#define FIRMWARE_VER_REV	4
#define FIRMWARE_VER_BUILD	3


#define HW_ENABLE			0x1	
#define HW_DISABLE			0x0	
#define ZERO_OUT			0x0

#define DHCP_SOCK_NUM       0
#define TCP_SOCK_NUM        1
#define FIND_SOCK_NUM       2

#define DEF_COMM_TIMEOUT    	3000

// NAND Memory Define
#define NAND_MAINSIZE_PAGE      512
#define NAND_PAGE_PER_BLOCK     64
#define NAND_BLOCK_SIZE         ((int)NAND_PAGE_PER_BLOCK * (int)NAND_MAINSIZE_PAGE)


#define NAND_BLOCK_CONNCFG	    16 
#define NAND_BLOCK_SYSINF       17

#define NAND_PAGE_CONNCFGINF	(NAND_BLOCK_CONNCFG * NAND_PG_PER_BLK)
#define NAND_PAGE_SYSINF	    (NAND_BLOCK_SYSINF * NAND_PG_PER_BLK)

#define NAND_BLOCK_FILEHEAD     128
#define NAND_PAGE_FILEHEAD      NAND_BLOCK_FILEHEAD * NAND_PAGE_PER_BLOCK

#define NAND_BLOCK_LIMIT	    129
#define NAND_PAGE_LIMIT      	NAND_BLOCK_FILEHEAD * NAND_PAGE_PER_BLOCK


// MPU Internal SRAM Define
#define SRAM_ADDR_CFGVAR	0x00010000
#define SRAM_ADDR_GLBVAR	0x00011000

#define SRAM_DATA			0x20000

#define SRAM_SIZE_CFGVAR	0x1000		// 4096 byte
//#define SRAM_DATA_SIZE		0x10000		// 64KByte
#define SRAM_DATA_SIZE		5000

#define DEF_ABSTOLERANCE 	1.0e-8



#define DEF_DEVDO_CONT_SD		0x1
#define DEF_DEVDO_CONT_CLRSD	0xFFFE
#define DEF_DEVDO_DDS_RNG0		0x2
#define DEF_DEVDO_I_RNG0		0x4
#define DEF_DEVDO_I_RNG1		0x8
#define DEF_DEVDO_VDC_RNG0		0x10
#define DEF_DEVDO_VDC_RNG1		0xFFEF
#define DEF_DEVDO_VAC_PWROFF	0x20
#define DEF_DEVDO_VAC_PWRON		0xFFDF
#define DEF_DEVDO_DDSMCLK_HI	0x0040
#define DEF_DEVDO_DDSMCLK_LOW	0xFFBF
#define DEF_DEVDO_CLRIRNG		0xFFF1
#define DEF_DEVDO_MASK			0xFF37

#define MAX_EIS_POINT			1024
#define MAX_EIS_RAW_POINT		MAX_EIS_POINT
#define MAX_EIS_FFT_POINT		(MAX_EIS_POINT * 2)

#define MAX_EIS_RT_RAW_POINT	64 // 32point X 2


#define MIN_EIS_FREQ_BZA1000    0.05
#define MIN_EIS_FREQ_BZA500     0.05
#define MIN_EIS_FREQ_BZA100     0.05
#define MIN_EIS_FREQ_BZA60      0.05

#define MAX_EIS_FREQ_BZA1000    10000.0
#define MAX_EIS_FREQ_BZA500     10000.0 
#define MAX_EIS_FREQ_BZA100     10000.0
#define MAX_EIS_FREQ_BZA60      10000.0

#define MAX_EIS_ADC_MCLK		3000000.0 //4400000.0
#define MIN_EIS_ADC_MCLK		100000.0
#define MAX_EIS_CYC_POINT		512
#define MIN_EIS_CYC_POINT		8 //32
#define MIN_EIS_CYC_POINT_H		8 //16

#define DEF_FLT_WIDEBAND1           0
#define DEF_FLT_WIDEBAND2           1
#define DEF_FLT_LOWLATENCY          2

#define DEF_TESTSTATUS_READY		0x0
#define DEF_TESTSTATUS_RUNNING 		0x1
#define DEF_TESTSTATUS_CALIBRATION	0x2
#define DEF_TESTSTATUS_FINISH		0x3
#define DEF_TESTSTATUS_STOP			0x4
#define DEF_TESTSTATUS_NOTCAL		0x20

#define DEF_LAST_ERROR_NONE  		0x0
#define DEF_LAST_ERROR_CELLLOW 		0x1
#define DEF_LAST_ERROR_NOTRDY		0x2
#define DEF_LAST_ERROR_NOZIM  		0x3
#define DEF_LAST_ERROR_COMMZIM  	0x4
#define DEF_LAST_ERROR_CONFAIL 		0x5
#define DEF_LAST_ERROR_RESETZIM     0x6
#define DEF_LAST_ERROR_OVERT  		0x7
#define DEF_LAST_ERROR_VACSTABLE  	0x8
#define DEF_LAST_ERROR_ERRSCH       0x9
#define DEF_LAST_ERROR_AUTOSTOP     0xA
#define DEF_LAST_ERROR_MANUALSTOP   0xB
#define DEF_LAST_ERROR_FFT		    0xC
#define DEF_LAST_ERROR_MEMORY	    0xD


#define DEF_EIS_STATUS_NONE			0
#define DEF_EIS_STATUS_BEGIN    	1
#define DEF_EIS_STATUS_LOADON   	2
#define DEF_EIS_STATUS_DCON   		3
#define DEF_EIS_STATUS_ONDELAY   	4
#define DEF_EIS_STATUS_EIS_INIT  	5
#define DEF_EIS_STATUS_RDY			6
#define DEF_EIS_STATUS_ING			7
#define DEF_EIS_STATUS_FFT			8
#define DEF_EIS_STATUS_EISSTOP		9
#define DEF_EIS_STATUS_LOADOFF		10
#define DEF_EIS_STATUS_FIN			11
#define DEF_EIS_STATUS_END			12
#define DEF_EIS_STATUS_WAIT			13
#define DEF_EIS_STATUS_MONDELAY		14
#define DEF_EIS_STATUS_SAMPLE		15
#define DEF_EIS_STATUS_MONSAMPLE	16
#define DEF_EIS_STATUS_DCHSAMPLE	17


#define DEF_SINECTRL_FREQ 			4000.0
#define DEF_SINECTRL_PHASE 			270.0
#define DEF_SINECTRL_BASEDELAY 		100
#define DEF_SINECTRL_SINEDELAY 		1000
#define DEF_SINECTRL_CHKWAITDELAY 	1000
#define DEF_SINECTRL_CHKDELAY 		1000

#define DEF_MAX_SLOPECHECK_RAW      20
#define DEF_MAX_SLOPECHECK_TICK     100

#define DEF_MONDCCTRL_FREQ 			0.000001
#define DEF_MONDCCTRL_PHASE			3.6

#pragma pack(1)
///////////////////////////////////////////////////
		

typedef struct
{
    byte            Type;	
    stVersion       BoardVersion;
    stVersion       FirmwareVersion;
	byte            Serial[ID_LENGTH];
} stSIFCfg;		

typedef struct
{
    byte            Gateway[4];
    byte            SubnetMask[4];
    byte            IpAddress[4];
    int             Port;
	byte            dhcp;
	byte            hostname[20];
} stUserEthernetCfg;

typedef struct
{
    byte            Mac[6];
    byte            Gateway[4];
    byte            SubnetMask[4];
    byte            IpAddress[4];
    int             Port;
	byte            dhcp;
	byte            hostname[20];
} stEthernetCfg;

typedef struct
{
	unsigned short  ZimBDVersion;
	unsigned short  ZimFWVersion;
	byte            cModel[2];
	uint            nSerial;
} stZimInfo;


typedef struct
{
	stZimInfo		info;
	st_zim_rnginf   ranges;
} stZimCfg;

typedef struct
{
    byte            ID;
    byte            Serial[ID_LENGTH];
    stEthernetCfg   mEthernetCfg;	
} stConnCfg;



typedef struct
{
	byte Type;	
	stVersion BoardVersion;
	stVersion FirmwareVersion;
	byte      Serial[ID_LENGTH];
	byte SockStat;	
} stFindSIFCfg;	


typedef struct
{
    byte            ID;
	stSIFCfg        mSIFCfg;
	byte            EnaZIM[MAX_DEV_CHANNEL];
	byte            EnaROM[MAX_DEV_CHANNEL];
	byte            ChkZIM[MAX_DEV_CHANNEL];
	stZimCfg        mZimCfg[MAX_DEV_CHANNEL];
    uint            BaseTick;
    uint            DaqTick;
} stSystemConfig;

typedef struct
{
    stConnCfg            mConnCfg;
	stSystemConfig       mSysCfg;
} stDevInf;

#define DEF_SIZE_RANGE  	sizeof(st_zim_rnginf)
#define DEF_SIZE_ZIMCFG  	sizeof(stZimCfg)
#define DEF_SIZE_SYS_CFG  	sizeof(stSystemConfig)

#define DEF_SIZE_SIF_CFG  	sizeof(stSIFCfg)
#define DEF_SIZE_CONN_CFG  	sizeof(stConnCfg)

#define		DDS_BIT28		0x2000
#define		DDS_HLB			0x1000
#define		DDS_HLB_CLR		0xEFFF
#define		DDS_FSEL1		0x800
#define		DDS_PSEL1		0x400
#define		DDS_RESET		0x100
#define		DDS_OPENBIT		0x20
#define		CLR_DDS_OPENBIT 0xFFDF
#define		DDS_DIV2		0x8
#define		CLR_DDS_DIV2	0xFF7F
#define		DDS_MODE		0x2
#define		DDS_CLRRESET	0xFEFF
#define		DDS_PD_DAC		0x40
#define		DDS_PD_CLK		0x80
#define		DDS_PD_ALL		0xC0
#define		DDS_PD_CLR		0xFF3F
//----------default sine-----------------
#define		DDS_PD_RECT_H	0x20    // MSB/2
#define		DDS_PD_RECT_F	0x28    // MSB
#define		DDS_PD_TRANGLE	0x1

#define		DDS_CLK_RESET		 	( DDS_RESET | DDS_PD_RECT_F)
#define		DDS_CLK_DEFAULT_CTRL 	( DDS_PD_RECT_F)
#define		DDS_CLK_DEFAULT_CTRLH 	( DDS_PD_RECT_F | DDS_HLB)
#define		DDS_SIG_DEFAULT_CTRL 	0
#define		DDS_SIG_DEFAULT_CTRLH 	(DDS_HLB)
#define		DDS_SIG_PWDN		 	(DDS_PD_DAC)
#define		DDS_SIG_RESET		 	(DDS_RESET)
#define		DDS_SIG_RESET_H		 	(DDS_RESET | DDS_HLB)

#define     DDS_REG_ADDR_CTRL			0x0000
#define     DDS_REG_ADDR_FREQ0			0x4000
#define     DDS_REG_ADDR_FREQ1			0x8000
#define     DDS_REG_ADDR_PHASE0			0xC000
#define     DDS_REG_ADDR_PHASE1			0xE000

#define 	PI 							3.14159265358979323846
#define 	DEF_DDS_SIG_MCLK_LOW		125000.0
#define 	DEF_DDS_SIG_MCLK_HI			16000000.0
#define 	DEF_FREQUENCY_SUBHAMONIC	20000.0      //3000
#define 	DEF_FREQUENCY_SUBH_HZ		8000.0       //3000.0
#define 	DEF_DDS_CLK_MCLK			16000000.0

#define 	DEF_DDS_FREQ_RES			268435456.0  	// 2^28-1

#define 	DEF_EIS_COMP_CRNG			6
#define 	DEF_EIS_MIN_CYCLE			2

#define 	DEF_DDS_SIG_CONST_LOW		((double)DEF_DDS_FREQ_RES / (double)DEF_DDS_SIG_MCLK_LOW)
#define 	DEF_DDS_SIG_CONST_HI		((double)DEF_DDS_FREQ_RES / (double)DEF_DDS_SIG_MCLK_HI)

#define 	DEF_DDS_CLK_CONST			((double)DEF_DDS_FREQ_RES / (double)DEF_DDS_CLK_MCLK)
#define 	DEF_DDS_MCLK_RATE_LOW		((double)DEF_DDS_CLK_MCLK / (double)DEF_DDS_SIG_MCLK_LOW)
#define 	DEF_DDS_MCLK_RATE_HI		((double)DEF_DDS_CLK_MCLK / (double)DEF_DDS_SIG_MCLK_HI)

#define 	DEF_DDS_PHASE_RES			4096.0  		// 2^12-1
#define 	DEF_DDS_PHASE_MAX			(2.0 * PI) 
#define 	DEF_DDS_PHASE_CONST			((double)DEF_DDS_PHASE_RES / (double)DEF_DDS_PHASE_MAX)

#define     DEF_ADC_RTD_CONST_MAX		850.0
#define     DEF_ADC_RTD_CONST_MIN		-200.0
#define 	DEF_ADC_RTD_CONST_PT1000    (4000.0 / 32786.0) // 4000 - RREF
#define 	DEF_ADC_RTD_CONST_PT100    	(400.0 / 32786.0) // 400 - RREF

#define 	DEF_BZA60_DEFAULT_POWER		20.0
#define 	DEF_BZA100_DEFAULT_POWER	30.0
#define 	DEF_BZA500_DEFAULT_POWER	40.0
#define 	DEF_BZA1000_DEFAULT_POWER	60.0
#define 	DEF_DEFAULT_POWER			60.0


typedef struct
{	
	int          	adcval;
	double          value;
} st_zim_acadc_item;

typedef struct
{	
	ushort			iac_osr;
	ushort			iac_flt;
	ushort			vac_osr;
	ushort			vac_flt;
} st_zim_adc_ac_cfg;

typedef struct
{	
	st_zim_acadc_item  	iac;
	st_zim_acadc_item  	vac;
} st_zim_adc_ac_data;

typedef struct
{	
	st_zim_adc_ac_cfg	cfg;
	st_zim_adc_ac_data  data;
} st_zim_adc_ac;

typedef struct
{	
	int         	adcval;
	double          value;
} st_zim_adc_vdc;

typedef struct
{	
	ushort			req;
	ushort			stat;
} st_zim_adc_flow;

typedef struct
{	
	double          Rvalue;
	double          Tvalue;
	ushort 			adcval; 
	ushort 			fault;
} st_zim_rtd_data;

typedef struct
{	
	ushort 				data;
} st_zim_rtd_cfg;

typedef struct
{	
	st_zim_rtd_cfg 		config;
	st_zim_rtd_data 	data;
} st_zim_rtd;

typedef struct
{	
  	ushort 			ctrl;	
	uint 			freq;	
	ushort 			phase;	
} st_zim_dds_reg;

typedef struct
{	
	st_zim_dds_reg req;
	st_zim_dds_reg stat;
} st_zim_dds_flow;

typedef struct
{	
	ushort			reset;
	ushort			Half;
	ushort			pwdn;
	double          frequency;
	double          Phase;
} st_zim_dds;

typedef struct
{	
	ushort          dacval;
	double          value;
} st_zim_dac;

typedef struct
{	
	ushort 			data;	
} st_zim_do;



typedef struct
{	
	double          			real;
	double          			img;
	double          			mag;
	double          			phase;
} st_zim_eis_zdata;

typedef struct
{	
	double							begin;
	double							end;
} st_zim_eis_aux_val;

#define TwoPI   6.2831853071795864769

typedef struct
{	
    double p0;
	double p1;
	double p2;
	double Amplitude2;
    double Phase2;
    double Amplitude;
    double Phase;
	double real;
    double imag;
} stRmTrend;

typedef struct
{	
	stRmTrend IAC;
	stRmTrend VAC;
} stCompdrift;



typedef struct
{	
	int							iac;
	int							vac;
} st_zim_eis_raw_adc;

typedef struct
{	
	double							iac;
	double							vac;
} st_zim_eis_raw_val;




#define DEF_EIS_RAWVAL_SIZE		sizeof(st_zim_eis_raw_val)

typedef struct
{	
	ushort						Ns;
	double						freq;
	st_zim_eis_zdata			zdata_iac;
	st_zim_eis_zdata			zdata_vac;
	st_zim_eis_zdata			zdata;
	st_zim_eis_raw_adc 			raw_adc[MAX_EIS_RAW_POINT];	
	st_zim_eis_raw_val 			raw_val[MAX_EIS_RAW_POINT];
} st_zim_eis_raw;   

typedef struct
{	
	st_zim_eis_raw_val 			raw_val[MAX_EIS_RAW_POINT];
} st_zim_eis_rawvalue; 

typedef struct
{	
	long long 			tick;
} st_rtc;
	
typedef struct
{	
	ushort          	status;
	int					rescount;
	int					Freqcount;
	int					Freqindex;
	double          	freq;
	ushort 				cycle;
	ushort 				SkipCycle;
	ushort				cycpoint;
	ushort          	totaldatacnt;
	ushort          	WorkDatacnt;
	ushort          	LoadDatacnt;
	st_zim_eis_zdata	zdata;
	st_zim_eis_raw_val 	Real_val[MAX_EIS_RT_RAW_POINT];
} st_zim_eis_status;

#define DEF_CFG_EIS_RESET 			0x4
#define DEF_CFG_EIS_STOP 			0x2
#define DEF_CFG_EIS_START 			0x1
							
typedef struct
{	
	ushort          			config;
	ushort          			points;
} st_zim_eisdev;	

typedef struct
{	
	st_zim_eis_raw				eis_raw;
	st_zim_eis_raw				eis_raw_new;
} st_zim_eis;

typedef struct
{	
	st_zim_dds			dds_sig;
	st_zim_dds			dds_clk;
	st_zim_adc_ac  		adc_ac;
	st_zim_adc_vdc		adc_vdc;
	st_zim_rtd			adc_rtd;
	st_zim_do			ctrl_do;
	st_zim_eisdev		eis;
} st_zim_device;

#define DEF_CMDZIM_WRID    0x1

typedef struct 
{
	ushort				bCheck;
	ushort				bSelected;
	
	ushort				ZimType;
	
	ushort          	TestStatus;
	ushort          	LastError;
	ushort          	ErrorStatus;
	
	ushort 				Iac_rngno;
	ushort 				Iac_in_rngno;
    ushort 				Vdc_rngno;
	
	uint 				RunTimeStamp;
	int 				CycleNo;
	uint 				CycleTimeStamp;
	int 				NextCycleNo;
	int 				TaskNo;
	uint 				TaskTimeStamp;
	int 				NextTaskNo;
	
	st_rtc       		rtc;
	
	double 				Veoc;
	double 				Vdc;
	double 				Idc;
	double 				Temperature;
	
	ushort 				RealSkip;
	ushort 				LoadOn;
	ushort 				BiasOn;
	
	st_zim_eis_status 	eis_status;

	double 				DispFreq;
	double 				DispMag;
	double 				DispPhase;
	
    double 				nouse2;
} stChStatusInf;

typedef struct 
{
    bool 				ChkInitProc; 
	ushort 				mode;
	ushort              LastCh;
	int					EnaChkTimeOut;
	ushort              MaxChannel;
} stStatusInf;

typedef struct 
{
	ushort				mode;
	ushort				calib;

	uint 				m_MsOndelayLimit;
	ushort				ondelaystable;
	
	ushort 				celloffwait;
	double              CutoffV;
	ushort				timeproc;
	uint 				m_MsDurStamp;
	uint 				m_MsDurLimit;
	uint 				m_MsEndTimeLimit;
	uint 				OndelayTimeStamp;
	int 				m_iteration;
	int 				m_loopcnt;
	uint 				m_MsFlowdelayStamp;
	uint 				m_MsFlowdelayLimit;

	ushort 				Iac_rngno;
    ushort 				Vdc_rngno; // 0- auto
	
	ushort				skipcycle;
	ushort				setcycle;
	
	double				MaxP;
	double				MaxI;
	double				MaxV;
	double 				Capa;
} st_flow;


typedef struct 
{
	double	MaxP;
	double	MaxI;
	double	MaxV;
	double 	Capa;
	byte 	batid[40];
	byte 	creator[40];
	double  NoUse[2];
} st_Tech_Info;

typedef struct 
{
        double initfreq;
        double finalfreq;
        double bias;
		ushort density;
		int    iteration;
		ushort skipcycle;
		ushort cycle;
		double nouse[3];
} st_Tech_EIS;

typedef struct 
{
        double freq;
        double bias;
        double interval;
		double totaltime;
		ushort celloffwait;
		ushort skipcycle;
		ushort cycle;
		int    inouse;
		double nouse[2];
} st_Tech_HFR;

typedef struct 
{
        double rsfreq;
        double rdfreq;
        double rdendfreq;
		double bias;
		double interval;
		double totaltime;
		ushort celloffwait;
		ushort skipcycle;
		ushort cycle;
		int    inouse;
} st_Tech_PRR;

typedef struct 
{
		ushort nouse0;
		double interval;
		double totaltime;
        double nouse1[5];
} st_Tech_MON;

typedef struct 
{
		double interval;
		double totaltime;
		double CutoffV;
		ushort nouse0;
        double nouse1[4];
} st_Tech_DCH;

typedef union  
{
	st_Tech_EIS		eis;
	st_Tech_HFR		hfr;
	st_Tech_PRR 	prr;
	st_Tech_MON     mon;
	st_Tech_EIS     qis;
	st_Tech_DCH     dch;
}un_TechType;


typedef struct 
{
	ushort 				CheckVal;
	stVersion 			version;
	ushort 				type;
	un_TechType 		tech;
	double 				ondelay;
	ushort 				ondelaystable;
	ushort 				irange;
	ushort 				vrange;
	st_Tech_Info 		info;
	double 				NoUse[2];
} st_Tech;



typedef struct 
{
	stVersion 	version;
	st_rtc 		rtc_begin;
	st_rtc 		rtc_end;
	ushort 		Error;
	double 		Capa;
	byte 		batid[40];
	byte 		user[40];
	byte 		memo[80];
	byte 		techfile[260];
} stResHeaderInfo;

typedef struct 
{
	stResHeaderInfo 	mInfo;
	stSIFCfg 			inf_sif;
	stZimCfg 			inf_sifch;
	st_Tech 			tech;
} stResHeader;

typedef struct
{	
	ushort              CmdStart;
	ushort              CmdStop;
	ushort 				CmdZim;
	
	ushort              Start;
	ushort              Stop;
	ushort              bCalib;
	ushort              bTestMode;
	ushort              FlagOverT;
	
	ushort				TmpResetICE;
	ushort              CmdResetICE;
	ushort              ResetICE;
	uint 				m_msReset;
	
	ushort 				bChkSlope;
	uint 				m_msSlop;
	ushort              LoadCfg;
	ushort              CntVdcChg;
	int					OverT_Timer;
	
	ushort 				bSigLowFreq;
	ushort 				AutoVdcRange;
	
	st_zim_eis_cond		tech_cond;
	st_Tech				tech_calib;
	stResHeaderInfo		mHeadInf;
	st_Tech				mTech;
	st_flow				mFlow;
	
	double				MinFrequency;
	double				MaxFrequency;
	
	stChStatusInf		mChStatInf;
	st_zim_eis			meis;
	st_zim_dds_flow  	flow_dds_clk;
	st_zim_dds_flow  	flow_dds_sig;
	st_zim_adc_flow		flow_adc_ac;
	
	st_zim_device  		mdevice;
	st_zim_device  		mreqdevice;
    void*				pindata;
    void*				poutdata;
} stGlobalChVar;


typedef struct
{	
	stEthernetCfg       mEthernetCfg;
	
	ushort              OpenI2C;
	ushort              OpenMX25V;
	ushort              OpenSPI;
 
	ushort              Commerror;
	bool              	LedBusy;
	ushort              LedBusyStat;
	ushort              LedBusyTick;
	
	ushort              LedFlow;
	ushort              LedFlowStat;
	ushort              LedFlowTick;

	uint 				m_MsI2CdelayStamp;
	uint 				m_msADC;
	uint 				m_msAux;
	uint 				m_msRefreshDC;
	uint 				m_msFind;
	short 				m_FindCh;
	int 				CommTimeOut;
	int 				CommTimeResp;
	ushort 				CommLed;
	short 				m_AuxCh;

    int                 nTimeTick;      
	int                 nI2CWriteDelayTick[2];
	int                 nSPITickOn; 
	int                 nSPITick;

	ushort 				prevrecvsize;
	ushort 				prevrecvsize1;
	stStatusInf			mStatusInf;
	stGlobalChVar       mChVar[MAX_DEV_CHANNEL];
} stGlobalVar;

typedef struct
{	
	ushort							testmode;
} st_TestCmd;

///////////////////////////////////////////////////////////////
#pragma pack()

#endif