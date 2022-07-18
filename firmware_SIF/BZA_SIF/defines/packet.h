#ifndef _H_PACKET_H
#define _H_PACKET_H

#define PACKET_ID 0x8A
#define PACKET_HEADER_SIZE 11
#define PACKET_DATA_SIZE 500

//#define PACKET_DATA_SIZE 116

#define STATUS_COMM_IDLE	0
#define STATUS_COMM_RECV	1
#define STATUS_COMM_SEND	2

//Command
#define CMD_GET_FINDSIFCFG	0x00
#define CMD_GET_SYSCFG		0x01
#define CMD_GET_STATUS		0x02
#define CMD_GET_DEVDTA		0x03
#define CMD_GET_CONCFG		0x04
#define CMD_GET_RDNAND		0x05
#define CMD_GET_RESDTA		0x06	

#define CMD_SET_SYSCFG		0x10
#define CMD_INIT_DEV		0x11
#define CMD_START_DEVICE	0x12
#define CMD_END_DEV			0x13
#define CMD_RUN_CHANNEL		0x14
#define CMD_RERUN_CHANNEL	0x15
#define CMD_PAUSE_CHANNEL	0x16
#define CMD_SKIP_CHANNEL	0x17
#define CMD_JUMP_CHANNEL	0x18
#define CMD_STOP_CHANNEL	0x19
#define CMD_SET_EXPDATA		0x1A
#define CMD_RUN_GROUP		0x1B
#define CMD_STOP_GROUP		0x1C
#define CMD_PAUSE_GROUP		0x1D
#define CMD_RERUN_GROUP		0x1E
#define CMD_SKIP_GROUP		0x1F
#define CMD_JUMP_GROUP		0x20
#define CMD_SAVE_CONNCFG	0x21
#define CMD_SET_CALIBCFG	0x22
#define CMD_SET_UPS			0x23
#define CMD_SET_STANDBY		0x24
#define CMD_SET_FLTCOUNT	0x25
#define CMD_EN_WATCHDOG		0x26
#define CMD_DIS_WATCHDOG	0x27
#define CMD_SET_AUXCALIBCFG	0x28
#define CMD_SET_RESDTA		0x29		// 예약중단

#define CMD_ERASE_NAND		0x30
#define CMD_PROG_NAND		0x31
#define CMD_SETINFO_NAND	0x32
#define CMD_REFRESH_WEBSITE	0x35 

#define CMD_CALIB_START		0x40
#define CMD_CALIB_END		0x41
#define CMD_CALIB_OUT		0x42
#define CMD_CALIB_REST		0x43

#define DEF_CMD_GET_CONN_INFO		0x60 
#define DEF_CMD_GET_SYSTEM_INFO		0x61 
#define DEF_CMD_SET_CONN_INFO		0x62 
#define DEF_CMD_SAVE_SYSTEM_INFO	0x63
#define DEF_CMD_SAVE_CONN_INFO		0x64 

#define DEF_CMD_GET_CONN_STAT		0x65 
#define DEF_CMD_SET_CHANNEL			0x66
#define DEF_CMD_SET_SIFMODE			0x67
#define DEF_CMD_CHK_EEPROM			0x68
#define DEF_CMD_INIT_EEPROM			0x69
#define DEF_CMD_GET_ZIMCFG			0x6A
#define DEF_CMD_CHK_FPGA			0x6B
#define DEF_CMD_GET_SIFCFG			0x6C


#define DEF_LAN_CMD_READCNTOT				0x75
#define DEF_LAN_CMD_RESETCNTOT				0x76

#define DEF_LAN_CMD_REFRESH_VAC				0x77
#define DEF_LAN_CMD_START_DEVICE			0x78
#define DEF_LAN_CMD_STOP_DEVICE				0x79
#define DEF_LAN_CMD_CHK_NOISE				0x7A
#define DEF_LAN_CMD_ENABLE_TIMEOUT			0x7B
#define DEF_LAN_CMD_CALIB_MODE				0x7C

#define CMD_RESET_SET_FPGA_ICE				0x90
#define CMD_RESET_CLR_FPGA_ICE				0x91
#define CMD_CONN_FPGA_PROM					0x92
#define CMD_CLOSE_FPGA_PROM					0x93
#define CMD_EREASE_FPGA_PROM				0x94
#define CMD_PROG_FPGA_PROM					0x95
#define CMD_READ_FPGA_PROM					0x96

#define CMD_READ_ZIM_ROM					0x97
#define CMD_PROG_ZIM_ROM					0x98
#define CMD_REFRESH_ZIM_ROM					0x99

#define CMD_READ_DATA		                0xA0

#define CMD_GET_RNGINFO						0xA6
#define CMD_SET_RNGINFO						0xA7
#define CMD_GET_RNGINFO1					0xA8
#define CMD_SET_RNGINFO1					0xA9

#define CMD_SAVE_RNGINFO					0xAA
#define CMD_INIT_RNGINFO					0xAC

#define CMD_GET_COND_CALIB					0xAD
#define CMD_SET_COND_CALIB					0xAE

#define CMD_GET_DDSCLK						0xB1
#define CMD_SET_DDSCLK						0xB2
#define CMD_GET_DDSSIG						0xB3
#define CMD_SET_DDSSIG						0xB4
#define CMD_GET_RTD_CFG						0xB5
#define CMD_SET_RTD_CFG						0xB6
#define CMD_GET_RTD_DTA						0xB7
#define CMD_GET_DEV_DO						0xB8
#define CMD_SET_DEV_DO						0xB9
#define CMD_GET_AC_ADC_CFG					0xBA
#define CMD_SET_AC_ADC_CFG					0xBB
#define CMD_GET_AC_ADC_DATA					0xBC
#define CMD_GET_VDC_ADC_DATA				0xBD
#define CMD_SET_VDC_RNG						0xBE

#define CMD_GET_COND_EIS					0xC0
#define CMD_SET_COND_EIS   					0xC1
#define CMD_GET_STAT_EIS   					0xC2
#define CMD_GET_RAWVAL_EIS   				0xC3
#define CMD_GET_DATA_EIS   					0xC4
#define CMD_GET_COND_TECH					0xC5
#define CMD_SET_COND_TECH  					0xC6
#define CMD_GET_HEADINFO					0xC7
#define CMD_SET_HEADINFO  					0xC8


#define DEF_ERROR_NONE				0x0
#define DEF_ERROR_CELLLOW       	0x1
#define DEF_ERROR_NOTRDY			0x2
#define DEF_ERROR_NOZIM				0x3
#define DEF_ERROR_ERRCOMMZIM		0x4
#define DEF_ERROR_CONTFAIL	    	0x5
#define DEF_ERROR_ERRRSTZIM			0x6
#define DEF_ERROR_OVERT  			0x7
#define DEF_ERROR_NOMATCHVERSION    0x8
#define DEF_ERROR_NOTYETREADY       0x9
#define DEF_ERROR_NOTSTARTED        0xA
#define DEF_ERROR_NOTSUPPORTED      0xB
#define DEF_ERROR_STARTED      		0xC
#define DEF_ERROR_CMDFAIL	        0xD
#define DEF_ERROR_NORESP	        0xE

#define DEF_ERROR_ERASENAND         0x20
#define DEF_ERROR_WRITENAND         0x21
#define DEF_ERROR_READNAND          0x22
#define DEF_ERROR_STORESYSINF       0x23
#define DEF_ERROR_STOREPORTINF      0x24
#define DEF_ERROR_STORECONNINF      0x25
#define DEF_ERROR_STOREZIMINF		0x26
#define DEF_ERROR_FAILCHKSUM        0x27
#define DEF_ERROR_BAD_COMMAND       0x28



#define DEF_ERROR_NOTCAL			0x40
#define DEF_ERROR_REFRESHVAC		0x80

#pragma pack(1)

typedef struct
{
	byte ID;
	short FrameCount;
	short FrameNo;
	int DataLength;
	byte Reserved01;		
	byte Error;
} PacketHeader;

typedef struct
{
	PacketHeader Header;
	byte Data[PACKET_DATA_SIZE];
	byte CheckSum;
} Packet;

typedef struct
{
	byte Command;
	int Device;
	int Slot;
	int Address;	
	int Length;	
} CmdHeader;

#pragma pack()

#endif