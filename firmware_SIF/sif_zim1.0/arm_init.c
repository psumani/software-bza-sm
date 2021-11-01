#include "sif_zim.h"
#include "drv_intc.h"

#include "lpc32xx_lib/lpc32xx_clkpwr.h"
#include "lpc32xx_lib/lpc32xx_emc.h"

/*  --- Setted bootloader or Macro file
inline void Init_Clock(void)
{
	//MAIN Oscillator (13MHz)
 	OSC_CTRL_bit.ENABLE = 1;					// 1bit
	OSC_CTRL_bit.TEST = 0;						// 1bit
 	OSC_CTRL_bit.CAP_SEL = 64;					// 7bit

	//clock source = RTC Oscillator(32768 Hz)
	//output freq = 13.008896MHz
	PLL397_CTRL_bit.PLL_LOCK = 0;				// 1bit
	PLL397_CTRL_bit.PLL397_STATUS = 1;			// 1bit
												// 4bit(reserved)
	PLL397_CTRL_bit.PLL397_BIAS = 0;			// 3bit
	PLL397_CTRL_bit.PLL397_BYPASS = 0;			// 1bit
	PLL397_CTRL_bit.PLL_MSLOCK = 0;				// 1bit

	//Select SYS Clock - MAIN Oscillator (13MHz) or PLL397 (13.008896MHz)
	SYSCLK_CTRL_bit.SYSCLK_MUX = 0;				// 1bit
	SYSCLK_CTRL_bit.SYSCLK_SEL = 0;				// 1bit
	SYSCLK_CTRL_bit.SYSCLK_SWITCH_DLY = 80;	//10bit

	// clock source = SYSCLK
	// Output = SYSCLK X 16(default) = 208MHz
	HCLKPLL_CTRL_bit.PLL_LOCK = 1;				// 1bit
	HCLKPLL_CTRL_bit.M = 16-1;					// 8bit - devide = 15+1 = 16
	HCLKPLL_CTRL_bit.N = 0;						// 2bit
	HCLKPLL_CTRL_bit.P = 0;						// 2bit
	HCLKPLL_CTRL_bit.FEEDBACK = 1;				// 1bit
	HCLKPLL_CTRL_bit.DIRECT = 1;				// 1bit
	HCLKPLL_CTRL_bit.BYPASS = 0;				// 1bit
	HCLKPLL_CTRL_bit.POWER_DOWN = 1;			// 1bit, 0-power down mode, 1-operating mode
	
	//HCLK_DIV input : stop mode = SYSCLK , other HCLKPLL output
	//HCLK_DIV select(2bit) : 0-HCLK_DIV input = 208MHz, 1-HCLK_DIV input/2 = 104MHz, 2-HCLK_DIV input/4 = 52MHz
	//HCLK_DIV output : stop mode = SYSCLK , other HCLK DIV select
	HCLKDIV_CTRL_bit.HCLK = 1;					//104MHz
	
	//PERIPH_CLK DIV input = HCLKPLL output
	//PERIPH_CLK DIV Select(5bit) : PERIPH_CLK DIV input/N = 208MHz / 1 = 208MHz
	//PERIPH_CLK DIV output : stop mode = SYSCLK , other PERIPH_CLK DIV select
	HCLKDIV_CTRL_bit.PERIPH_CLK = 1;    		//2-1, 208MHz /2 =104MHz
	
	//DDRAM Clock source : stop mode = SYSCLK , other HCLKPLL output
	//2bit , 0 - 0Hz, 1-DDRAM Clock source, 2-DDRAM Clock sorce/2
	HCLKDIV_CTRL_bit.DDRAM_CLK = 0;     
	
	
	PWR_CTRL_bit.STOP_MODE = 0;					//1bit  0-set RUN_MODE , 1-stop mode
	PWR_CTRL_bit.HIGHCORE_SEL = 1;
	PWR_CTRL_bit.RUN_MODE = 1;      			//1bit  0-direct run mode, 1-run_mode
	PWR_CTRL_bit.SYSCLKEN_SEL = 0;
	PWR_CTRL_bit.SYSCLKEN_OUT = 1;
	PWR_CTRL_bit.HIGHCORE_OUT = 0;
												//1bit(reserved)
	PWR_CTRL_bit.SDRAM_AESR = 0;
	PWR_CTRL_bit.EMCSREFREQ_UPDATE = 0;
	PWR_CTRL_bit.EMCSREFREQ_VALUE = 0;
	PWR_CTRL_bit.HCKL_FORCE = 0;
	//HCLK / ARMCLK Clock source : stop mode = SYSCLK , other can select.
	//HCLK Clock = 0-HCLK_DIV output, 1-PERIPH_CLK DIV output
	//ARMCLK Clock = 0-HCLK_DIV output, 1-PERIPH_CLK DIV output
	PWR_CTRL_bit.HCKL_FORCE = 0;				// 0-Normal mode, 1- using PERIPH_CLK 
	
	//USB Clock source = MAIN Oscillator (13MHz)
	USB_CTRL_bit.USB_Clken1 = 1;			// 1bit, Clock enable
	USBDIV_CTRL_bit.USB_RATE = 13-1;      // 4bit - devide= 12+1 = 13
	//USBPLL Clock input = 13M / 13 = 1MHz
	//USBPLL Clock output = USBPLL Clock input X 48 = 48MHz
	USB_CTRL_bit.PLL_LOCK = 0;				// 1bit
	USB_CTRL_bit.M = 48-1;					// 8bit - devide = 47+1 = 48
	USB_CTRL_bit.N = 0;						// 2bit
	USB_CTRL_bit.P = 0;						// 2bit
	USB_CTRL_bit.FEEDBACK = 1;				// 1bit
	USB_CTRL_bit.DIRECT = 1;				// 1bit
	USB_CTRL_bit.BYPASS = 0;				// 1bit
	USB_CTRL_bit.POWER_DOWN = 1;			// 1bit
	USB_CTRL_bit.USB_Clken2 = 1;			// 1bit, Clock enable
	//
	USB_CTRL_bit.PAD_CTRL = 0;				// 2bit	
	USB_CTRL_bit.HOST_NEED_CLK_ENA = 0;		// 1bit
	USB_CTRL_bit.DEV_NEED_CLK_ENA = 0;		// 1bit
	USB_CTRL_bit.I2C_ENA = 1;				// 1bit
	USB_CTRL_bit.SLAVE_HCLK_CTRL = 0;		// 1bit
}

inline void Init_EMC0(void)
{
	EMCControl_bit.E = 0;
	EMCControl_bit.L = 0;
	
	EMCStaticConfig0 = 128;
	EMCStaticWaitWen0 = 0x00000001;
	EMCStaticWaitWr0 = 0x00000007;
	EMCStaticWaitRd0 = 0x00000007;
	EMCStaticWaitOen0 = 0x00000001;
	EMCStaticWaitTurn0 = 0x00000000;
	EMCStaticWaitPage0 = 0x00000000;  
	EMCStaticExtendedWait = 0x00000000;
	EMCControl_bit.E = 0x00000001;	
	
}

inline void Init_SDRAM(void)
{

	EMCControl_bit.E = 1;
	EMCControl_bit.L = 0;  // SDRAM normal mode
	
	EMCConfig_bit.N  = 0;  // little-endian mode.
	
	// disable write buffers
	EMCAHBControl0_bit.E = 0;
	EMCAHBControl2_bit.E = 0;
	EMCAHBControl3_bit.E = 0;
	EMCAHBControl4_bit.E = 0;
	
	SDRAMCLK_CTRL      = 0x0001C000;
	EMCDynamictRP     = 1;             // 19ns
	EMCDynamictRAS    = 4;             // 48ns
	EMCDynamictSREX   = 8;             // 80ns
	EMCDynamictWR     = 1;             // 15ns
	EMCDynamictRC     = 8;             // 80ns
	EMCDynamictRFC    = 6;             // 64ns
	EMCDynamictXSR    = 8;             // 80ns
	EMCDynamictRRD    = 1;             // 16ns
	EMCDynamictMRD    = 1;             // 2ckl
	EMCDynamictCDLR   = 0;             // 1ckl
	EMCDynamicConfig0 = 0x00000680;    // Standard SDRAM 256Mb (16Mx16), 4 banks,
									  // row length = 13, column length = 9
	EMCDynamicRasCas0 = 0x00000302;    // CAS = 4 - two clock cycles
                                      // RAS = 3 
	EMCDynamicReadConfig = 0x11;
	
	// JEDEC General SDRAM Initialization Sequence
	EMCDynamicControl = 0x193;        // NOP
	Delay_us(200);
	EMCDynamicRefresh = 1;
	EMCDynamicControl_bit.I = 2;     // PRECHARGE ALL
	Delay_us(100);
	EMCDynamicControl_bit.I = 0;     // AUTO REFRESH
	Delay_us(100);
	EMCDynamicRefresh = 101;         // (64ms/8192)*104MHz/16
	EMCDynamicControl_bit.I = 1;     // SDRAM MODE
	
	// Burst Length, CAS, Burst Type - Sequential
	volatile unsigned int Dummy = *(unsigned long *)(0x80000000 | ((0x31)<<12));
	EMCDynamicControl_bit.I = 0;     // OPERATION
	EMCDynamicControl_bit.CE= 0;
	EMCDynamicControl_bit.CS= 0;
}
*/

void GetUniqueSerialID(st_ChipSerialID* pID)
{
  	pID->iID[0] = SERIAL_ID0;
	pID->iID[1] = SERIAL_ID1;
	pID->iID[2] = SERIAL_ID2;
	pID->iID[3] = SERIAL_ID3;
}

void ChangeOperationMode(enOperationMode mMode)
{
	if(mMode == stop_mode) 
	{
		PWR_CTRL_bit.STOP_MODE = 1;
		PWR_CTRL_bit.RUN_MODE = 0;
	}
	else if(mMode == direct_run_mode) 
	{
	  	PWR_CTRL_bit.STOP_MODE = 0;
		PWR_CTRL_bit.RUN_MODE = 0;
	}
	else
	{
		PWR_CTRL_bit.STOP_MODE = 0;
		PWR_CTRL_bit.RUN_MODE = 1;
	}
}

inline void Init_NandFlash(void)
{
	FLASHCLK_CTRL = 2;
	MLC_CEH = 1;
		
	MLC_LOCK_PR = 0xA25E;
	MLC_ICR = 4;
	MLC_LOCK_PR = 0xA25E;
	MLC_TIME_REG =( 3UL << 0 ) |  // Write pulse width (tWP)
                ( 2UL << 4 ) |  // Write high hold time (tWH)
                ( 3UL << 8 ) |  // Read pulse width (tRP)
                ( 2UL << 12) |  // Read high hold time (tREH)
                ( 4UL << 16) |  // Read high to high impedance (tRHZ)
                ( 2UL << 19) |  // Read/Write high to busy (tWB/tRB)
                ( 5UL << 24);   // nCE low to dout valid (tCEA)
}

void Init_arm(void)
{
	INTC_Init();
	InitDeviceControl();
	
	//setting SPI control register
	//--SPI 1 
	SPI_CTRL_bit.SPI1_CLK_ENA = 1;				// 1bit   //0x400040C4
	SPI_CTRL_bit.SPI1_PIN_SEL = 1;				// 1bit, 0-Pin action is manual mode, 1-Pin action is SPI block.
	SPI_CTRL_bit.SPI1_CLK_OUT = 0;				// 1bit, set clock pin in manual mode.
	SPI_CTRL_bit.SPI1_DATIO = 0;				// 1bit, set data pin in manual mode.
	
	//--SPI 2 
	SPI_CTRL_bit.SPI2_CLK_ENA = 1;				// 1bit
	SPI_CTRL_bit.SPI2_PIN_SEL = 1;				// 1bit, 0-Pin action is manual mode, 1-Pin action is SPI block.
	SPI_CTRL_bit.SPI2_CLK_OUT = 0;				// 1bit, set clock pin in manual mode.
	SPI_CTRL_bit.SPI2_DATIO = 0;				// 1bit, set data pin in manual mode.

	I2CCLK_CTRL_bit.I2C1_CLK_ENA = 1;		//1bit, 0-I2C1 HCLK Stopped, disabled, 1- I2C1 HCLK enabled
	I2CCLK_CTRL_bit.I2C1_DRV_MODE = 0;		//1bit, I2C1 - 0-Low driver mode, 1-high driver mode(1.8V operation)
	I2CCLK_CTRL_bit.I2C2_CLK_ENA = 1;		//1bit, 0-I2C2 HCLK Stopped, disabled, 1- I2C2 HCLK enabled
	I2CCLK_CTRL_bit.I2C2_DRV_MODE = 0;		//1bit, I2C1 - 0-Low driver mode, 1-high driver mode(1.8V operation)

	Init_NandFlash();
}