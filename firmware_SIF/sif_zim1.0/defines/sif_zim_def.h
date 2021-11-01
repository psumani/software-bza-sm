#ifndef SIF_ZIM_DEF_H
#define SIF_ZIM_DEF_H
#include "defines/type.h"
#include "defines/sif_zim_sharestructdef.h"


#define ID_CONNCONFIG		0xB6  //0xB0 - DHCP ID
#define ID_ZIMCONFIG		0xC2
#define ID_RANGEINFO_1		0x02
#define ID_RANGEINFO		0x03
#define ID_LENGTH 			12

#define DEVICE_OLD_VERSION_1	3000
#define DEVICE_CUR_VERSION		3002


#define FIRMWARE_VER_MAJOR	4  //0.256
#define FIRMWARE_VER_MINOR	1
#define FIRMWARE_VER_REV	2
#define FIRMWARE_VER_BUILD	2

#define HW_ENABLE			0x1	
#define HW_DISABLE			0x0	
#define ZERO_OUT			0x0

#define DHCP_SOCK_NUM       0
#define TCP_SOCK_NUM        1

#define DEF_COMM_TIMEOUT    	8000

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


#define DEF_ABSTOLERANCE 1.0e-8

typedef enum { READHEADER, READDATA, PARSING } ePackStatus;
typedef enum { WBCS, SMART, ZIM, BZA1000, BZA100,ZBCS } eDeviceType;

#pragma pack(1)
///////////////////////////////////////////////////



typedef struct
{
    byte            Major;
    byte            Minor;
    byte            Revision;
    byte            Build;
} stVersion;

typedef struct
{
    byte            Type;	
    stVersion       BoardVersion;
    stVersion       FirmwareVersion;
	byte            Serial[ID_LENGTH];
} stSIFCfg;		// 64byte

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
} stZimCfg;

typedef struct
{
    byte            ID;
    byte            Serial[ID_LENGTH];
    stEthernetCfg   mEthernetCfg;	
} stConnCfg;

typedef struct
{
    byte            ID;
	stSIFCfg        mSIFCfg;
	stZimCfg        mZimCfg;
    uint            BaseTick;
    uint            DaqTick;
} stSystemConfig;

#define DEF_SIZE_RANGE  	sizeof(st_zim_rnginf)
#define DEF_SIZE_ZIMCFG  	sizeof(stZimCfg)
#define DEF_SIZE_SYS_CFG  	sizeof(stSystemConfig)
#define DEF_SIZE_SIF_CFG  	sizeof(stSIFCfg)
#define DEF_SIZE_CONN_CFG  	sizeof(stConnCfg)

#define		DDS_BIT28		0x2000
#define		DDS_HLB			0x1000
#define		DDS_FSEL1		0x800
#define		DDS_PSEL1		0x400
#define		DDS_RESET		0x100
#define		DDS_OPENBIT		0x20
#define		CLR_DDS_OPENBIT 0xFFDF
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
#define 	DEF_DDS_SIG_MCLK			125000.0
#define 	DEF_DDS_CLK_MCLK			16000000.0

#define 	DEF_DDS_FREQ_RES			268435456.0  	// 2^28-1

#define 	DEF_DDS_SIG_CONST			((double)DEF_DDS_FREQ_RES / (double)DEF_DDS_SIG_MCLK)

#define 	DEF_DDS_CLK_CONST			((double)DEF_DDS_FREQ_RES / (double)DEF_DDS_CLK_MCLK)
#define 	DEF_DDS_MCLK_RATE			((double)DEF_DDS_CLK_MCLK / (double)DEF_DDS_SIG_MCLK)


#define 	DEF_DDS_PHASE_RES			4096.0  		// 2^12-1
#define 	DEF_DDS_PHASE_MAX			(2.0 * PI) 
#define 	DEF_DDS_PHASE_CONST			((double)DEF_DDS_PHASE_RES / (double)DEF_DDS_PHASE_MAX)

#define     DEF_ADC_RTD_CONST_MAX		850.0
#define     DEF_ADC_RTD_CONST_MIN		-200.0
#define 	DEF_ADC_RTD_CONST_PT1000    (4000.0 / 32786.0) // 4000 - RREF
#define 	DEF_ADC_RTD_CONST_PT100    	(400.0 / 32786.0) // 400 - RREF

#define 	DEF_DEFAULT_POWER			60.0
#define 	DEF_DEV_MAX_POWER			80.0


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



#define DEF_DEVDO_CONT_SD		0x1
#define DEF_DEVDO_CONT_CLRSD	0xFFFE
#define DEF_DEVDO_DDS_RNG0		0x2
#define DEF_DEVDO_I_RNG0		0x4
#define DEF_DEVDO_I_RNG1		0x8
#define DEF_DEVDO_VDC_RNG0		0x10
#define DEF_DEVDO_VDC_RNG1		0xFFEF
#define DEF_DEVDO_VAC_PWROFF	0x20
#define DEF_DEVDO_VAC_PWRON		0xFFDF
#define DEF_DEVDO_DDSMCLK_LOW	0x40
#define DEF_DEVDO_DDSMCLK_HI	0xFFBF
#define DEF_DEVDO_CLRIRNG		0xFFF1

#define MAX_EIS_POINT			1024
#define MAX_EIS_RAW_POINT		MAX_EIS_POINT
#define MAX_EIS_FFT_POINT		(MAX_EIS_POINT * 2)

#define MAX_EIS_RT_RAW_POINT	64 // 32point X 2

#define MAX_EIS_FREQ_CNT		200
#define MIN_EIS_FREQUENCY       0.01
#define MAX_EIS_FREQUENCY       7800.0 //20000.0
#define MAX_EIS_ADC_MCLK		4000000.0 //4400000.0
#define MIN_EIS_ADC_MCLK		100000.0
#define MAX_EIS_CYC_POINT		512
#define MIN_EIS_CYC_POINT		32
#define MIN_EIS_CYC_POINT_H		16

#define DEF_FLT_WIDEBAND1           0
#define DEF_FLT_WIDEBAND2           1
#define DEF_FLT_LOWLATENCY          2

#define DEF_EIS_TESTSTATUS_NONE			0x0
#define DEF_EIS_TESTSTATUS_RUN    		0x1
#define DEF_EIS_TESTSTATUS_FIN			0x2
#define DEF_EIS_TESTSTATUS_STOP			0x3
#define DEF_EIS_TESTSTATUS_NCRUN		0x4
#define DEF_EIS_TESTSTATUS_OVERT		0x5
#define DEF_EIS_TESTSTATUS_FAIL	    	0x6
#define DEF_EIS_TESTSTATUS_NOTRDY		0x7
#define DEF_EIS_TESTSTATUS_NOZIM		0x8
#define DEF_EIS_TESTSTATUS_REFRESHVAC	0x9
#define DEF_EIS_TESTSTATUS_NOTCAL		0x10
#define DEF_EIS_TESTSTATUS_ERRCOMMZIM	0x11
#define DEF_EIS_TESTSTATUS_CONTFAIL	    0x12

#define DEF_EIS_LASTTESTSTATUS_NONE  		0
#define DEF_EIS_LASTTESTSTATUS_FIN  		1
#define DEF_EIS_LASTTESTSTATUS_STOP  		2
#define DEF_EIS_LASTTESTSTATUS_FAIL  		3
#define DEF_EIS_LASTTESTSTATUS_OVERT  		4
#define DEF_EIS_LASTTESTSTATUS_VACSTABLE  	5
#define DEF_EIS_LASTTESTSTATUS_ERRCOMMZIM  	6
#define DEF_EIS_LASTTESTSTATUS_ERRRESETZIM  7

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

#define DEF_EIS_STATUS_AUTOSTOP	    12
#define DEF_EIS_STATUS_MANUALSTOP   13
#define DEF_EIS_STATUS_ERRFAIL	    14
#define DEF_EIS_STATUS_ERROVERT     15
#define DEF_EIS_STATUS_ERRNOTREADY  16
#define DEF_EIS_STATUS_ERRCOMMZIM   17
#define DEF_EIS_STATUS_ERRRESETZIM  18


#define DEF_SINECTRL_FREQ 			4000.0
#define DEF_SINECTRL_PHASE 			270.0
#define DEF_SINECTRL_BASEDELAY 		100
#define DEF_SINECTRL_SINEDELAY 		1000
#define DEF_SINECTRL_CHKWAITDELAY 	1000
#define DEF_SINECTRL_CHKDELAY 		1000

#define DEF_MAX_SLOPECHECK_RAW      20
#define DEF_MAX_SLOPECHECK_TICK     100

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
	uint 						msBegin;
	uint 						msEnd;
	ushort						iacrng;
	ushort						vdcrng;
	double          			freq;
	ushort						cycpoint;
	ushort						cycle;
	ushort						TotalPoint;
	ushort						Ns;
	st_zim_eis_aux_val			vdc;
	st_zim_eis_aux_val			rtd;
} st_zim_eis_info;

typedef struct
{	
	st_zim_eis_info				info;
	st_zim_eis_zdata			zdata;
} st_zim_eis_item;

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
	st_zim_eis_info				info;
	st_zim_eis_zdata			zdata_iac;
	st_zim_eis_zdata			zdata_vac;
	st_zim_eis_raw_adc 			raw_adc[MAX_EIS_RAW_POINT];	
	st_zim_eis_raw_val 			raw_val[MAX_EIS_RAW_POINT];
} st_zim_eis_raw;   

typedef struct
{	
	st_zim_eis_raw_val 			raw_val[MAX_EIS_RAW_POINT];
} st_zim_eis_rawvalue; 

typedef struct
{	
	int							IRange;
	double          			Irms;
	double          			Vrms;
} st_zim_eis_rms_Inf;

typedef struct
{	
	st_zim_eis_rms_Inf			info;
	st_zim_eis_raw_adc 			raw_adc[MAX_EIS_RAW_POINT];	
	st_zim_eis_raw_val 			raw_val[MAX_EIS_RAW_POINT];
} st_zim_rmsraw; 

typedef struct
{	
	long long 			tick;
} st_rtc;

typedef struct
{	
	ushort          	teststatus;
	ushort          	status;
	ushort 				iac_rngno;
	ushort 				iac_in_rngno;
    ushort 				vdc_rngno;
	ushort          	freqcount;      // ZData.Count
	ushort          	freqindex;      // CurrentStep
	double          	freq;
	ushort          	totaldatacnt;
	ushort          	WorkDatacnt;
	ushort          	LoadDatacnt;
	uint 				runTimeStamp;
	uint 				runidxTimeStamp;
	uint 				FinTimeStamp;
	st_rtc       		rtc;
	st_zim_eis_rms_Inf	RmsInfo;
	st_zim_eis_raw_val 	Real_val[MAX_EIS_RT_RAW_POINT];
	double          	Veoc;
	double          	nouse1;
	double          	nouse2;
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
	st_zim_eis_cond				eis_cond;
	st_zim_eis_status 			eis_status;
	st_zim_eis_item				eis_item[MAX_EIS_FREQ_CNT];
	st_zim_eis_raw				eis_raw[MAX_EIS_FREQ_CNT];
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

typedef struct 
{
    uint 				m_HsTimerTick;
    uint 				m_MsTimerTick;
    
    bool 				ChkInitProc; 
    bool 				hstimer_enable;
    uint 				m_SmpTickCount;
	
    uint 				m_MsTimeStamp;
    uint 				m_MsTestStamp;
	uint 				m_MsTestdelayStamp;
	uint 				m_MsTestdelayLimit;
	uint 				m_MsI2CdelayStamp;
	ushort 				devicecount;
	ushort 				RealSkip;
	ushort 				bChkSlope;
    ushort 				CommLed;
    int 				CommTimeOut;
	ushort 				prevrecvsize;
	
	uint 				m_msReset;
	uint 				m_msAux;
	uint 				m_msSlop;
	uint 				m_msADC;
	uint 				m_msDisp;
	
	ushort 				iac_rngno;
	ushort 				iac_in_rngno;
	ushort 				vdc_rngno;
	ushort 				AutoVdcRange;
	ushort 				LoadOn;

	st_zim_dds_flow  	flow_dds_clk;
	st_zim_dds_flow  	flow_dds_sig;
	st_zim_adc_flow		flow_adc_ac;

	st_zim_device  		mdevice;
	st_zim_device  		mreqdevice;
	
	st_zim_eis			meis;
	st_zim_rmsraw		mRms;
		
	double 				DispFreq;
	double 				DispMag;
	double 				DispPhase;
	double 				Veoc;
} stStatusInf;


typedef struct
{	
	ushort              OpenI2C;
	ushort              OpenMX25V;
	ushort              OpenSPI;
 
	ushort              ResetICE;
	ushort              TmpResetICE;
	ushort              Commerror;
	ushort              devchk;
    ushort              Start;
	ushort              Stop;
	ushort              bCalib;
	ushort              commtest;
	ushort              stat_sinectrl;
	ushort              LedBusy;
	ushort              LedBusyStat;
	ushort              LedBusyTick;
	ushort              FlagOverT;
	int					OverT_Timer;
	
	
	int					EnaChkTimeOut;
    int                 nTimeTick;      
	int                 nI2CWriteDelayTick[2];
	int                 nSPITickOn; 
	int                 nSPITick;
	
	st_zim_id			zim_id;
	stStatusInf			mStatusInf;
	st_zim_rnginf   	ranges;
    void*				pindata;
    void*				poutdata;
	stEthernetCfg       mEthernetCfg;
} stGlobalVar;

typedef struct
{	
	ushort							testmode;
} st_TestCmd;

///////////////////////////////////////////////////////////////
#pragma pack()

#endif