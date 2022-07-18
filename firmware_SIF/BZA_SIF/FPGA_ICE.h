#ifndef FPGA_ICE_FUNC_H
#define FPGA_ICE_FUNC_H

#ifdef __cplusplus
extern "C"
{
#endif
	#define ICE_SPI_NO 					0
	
	#define ICE_ERRRES_CNT				3
	#define ICE_VERIFY_CNT				2
	
	#define ICE_CMD_READ				0x80
	
	#define ICE_CMD_DDS_SIG				0x10
	#define ICE_CMD_DDS_CLK				0x11
	
	#define ICE_CMD_ACADC_DEVICE		0x12
	
	#define ICE_CMD_IACADC_VAL			0x13
	#define ICE_CMD_VACADC_VAL			0x14
	#define ICE_CMD_VDCADC_VAL			0x15
	
	#define ICE_CMD_RTD_CFG				0x16
	#define ICE_CMD_RTD_DTA				0x17

	#define ICE_CMD_DEVICE_DO			0x18
	
	
	#define ICE_CMD_EIS_SKIPCNT			0x19
	#define ICE_CMD_EIS_SETPNTS			0x1A
	#define ICE_CMD_EIS_CFG				0x1B
	#define ICE_CMD_EIS_POINTS			0x1C
	#define ICE_CMD_EIS_IDX				0x1D
	#define ICE_CMD_EIS_DATA			0x1E
	#define ICE_CMD_FWVERSION			0x1F
	
	#define ICE_CMD_IACADC_CTRL_OSR0		0x01
	#define ICE_CMD_IACADC_CTRL_OSR1		0x02
	#define ICE_CMD_IACADC_CTRL_FLT0		0x04
	#define ICE_CMD_IACADC_CTRL_FLT1		0x08
	#define ICE_CMD_VACADC_CTRL_OSR0		0x10
	#define ICE_CMD_VACADC_CTRL_OSR1		0x20
	#define ICE_CMD_VACADC_CTRL_FLT0		0x40
	#define ICE_CMD_VACADC_CTRL_FLT1		0x80

	
		
	INT_32 ICE_write_cmd(INT_32 ch, UNS_8 cmd);
	INT_32 ICE_read_byte(INT_32 ch, UNS_8 cmd,UNS_8 *pdata);
	INT_32 ICE_write_byte(INT_32 ch, UNS_8 cmd, UNS_8 data);
	INT_32 ICE_read_16bits(INT_32 ch, UNS_8 cmd,UNS_16 *pdata);
	INT_32 ICE_write_16bits(INT_32 ch, UNS_8 cmd, UNS_16 data);
	INT_32 ICE_read_24bits(INT_32 ch, UNS_8 cmd,UNS_32 *pdata);
	INT_32 ICE_read_adcDataSet(INT_32 ch, UNS_8 cmd, INT_32* pidata, INT_32* pvdata);
	INT_32 ICE_read_adc24bit(INT_32 ch, UNS_8 cmd, INT_32* pdata);
	INT_32 ICE_write_24bits(INT_32 ch, UNS_8 cmd, UNS_32 data);
	INT_32 ICE_read_bytes(INT_32 ch, UNS_8 cmd, UNS_8* pdata, UNS_32 length);
	INT_32 ICE_write_bytes(INT_32 ch, UNS_8* pdata, UNS_32 length);
	
	INT_32 ICE_spi_open(void);
	void ICE_spi_close(void);

#ifdef __cplusplus
}
#endif

#endif