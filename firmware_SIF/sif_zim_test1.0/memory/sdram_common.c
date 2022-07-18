#include "sdram_common.h"
#include "sdram_config.h"
#include <nxp/iolpc3250.h>
#include "../lpc32xx_lib/lpc32xx_emc.h"

extern int modeshift;
extern int bankshift;

struct SDRAM_CFG_MAP
{
	unsigned char bank_bits;
	unsigned char rows;
	unsigned char cols;
	unsigned char cfgval;
};

#define SDRAM_LP_MASK_BIT	(1 << 5)

#define SDRAM_MAX_CONFIGS	8

const struct SDRAM_CFG_MAP sdram_map[SDRAM_MAX_CONFIGS] = 
{
	/* 512Mb (32Mx16), 4 banks, row length = 13, column length = 10 */
	/* 256Mb (32Mx8), 4 banks, row length = 13, column length = 10 */
	{2, 13, 10, 0x11},
	/* 512Mb (64Mx8), 4 banks, row length = 13, column length = 11 */
	{2, 13, 11, 0x10},
	/* 256Mb (16Mx16), 4 banks, row length = 13, column length = 9 */
	{2, 13, 9,  0x0D},
	/* 128Mb (8Mx16), 4 banks, row length = 12, column length = 9 */
	/* 64Mb (8Mx8), 4 banks, row length = 12, column length = 9 */
	{2, 12, 9,  0x09},
	/* 128Mb (16Mx8), 4 banks, row length = 12, column length = 10 */
	{2, 12, 10, 0x08},
	/* 64Mb (4Mx16), 4 banks, row length = 12, column length = 8 */
	{2, 12, 8,  0x05},
	/* 16Mb (1Mx16), 2 banks, row length = 11, column length = 8 */
	{1, 11, 8,  0x01},
	/* 16Mb (2Mx8), 2 banks, row length = 11, column length = 9 */
	{1, 11, 9,  0x00}
};

void sdram_adjust_timing(unsigned int clk)
{
	// Setup Precharge Command Delay
#if SDRAM_TRP_DELAY > 15
	EMCDynamictRP = EMC_DYN_PRE_CMD_PER(clk / SDRAM_TRP_DELAY);
#else
	EMCDynamictRP = EMC_DYN_PRE_CMD_PER(SDRAM_TRP_DELAY - 1);
#endif
	// Setup Dynamic Memory Active to Precharge Command Period
#if SDRAM_TRAS_DELAY > 15
	EMCDynamictRAS = EMC_DYN_ACTPRE_CMD_PER(clk / SDRAM_TRAS_DELAY);
#else
	EMCDynamictRAS = EMC_DYN_ACTPRE_CMD_PER(SDRAM_TRAS_DELAY - 1);
#endif
	// Dinamic Memory Self-Refresh Exit Time
#if SDRAM_TSREX_TIME > 15
	EMCDynamictSREX = EMC_DYN_SELF_RFSH_EXIT(clk / SDRAM_TSREX_TIME);
#else
	EMCDynamictSREX = EMC_DYN_SELF_RFSH_EXIT(SDRAM_TSREX_TIME - 1);
#endif
	// Dinamic Memory Self_Refresh Exit Time
#if SDRAM_TWR_TIME > 15
	EMCDynamictWR = EMC_DYN_WR_RECOVERT_TIME(clk / SDRAM_TWR_TIME);	
#else
	EMCDynamictWR = EMC_DYN_WR_RECOVERT_TIME(SDRAM_TWR_TIME - 1);
#endif
	// Dinamic Memory Active To Active Command Period
	EMCDynamictRC = EMC_DYN_ACT2CMD_PER(7);
	// Dinamic Memory Auto-Refresh Period
#if SDRAM_TRFC_TIME > 15
	EMCDynamictRFC = EMC_DYN_AUTOREFRESH_PER(clk / SDRAM_TRFC_TIME);
#else
	EMCDynamictRFC = EMC_DYN_AUTOREFRESH_PER(SDRAM_TRFC_TIME - 1);
#endif
	// Dinamic Memory Active To Active Command Period
#if SDRAM_TXSNR_TIME > 15
	EMCDynamictXSR = EMC_DYN_EXIT_SRFSH_TIME(clk / SDRAM_TXSNR_TIME);
#else
	EMCDynamictXSR = EMC_DYN_EXIT_SRFSH_TIME(SDRAM_TXSNR_TIME - 1);
#endif
	// Dinamic Memory Active Bank A To Active Bank B Time
#if SDRAM_TRRD_TIME > 15
	EMCDynamictRRD = EMC_DYN_BANKA2BANKB_LAT(clk / SDRAM_TRRD_TIME);
#else
	EMCDynamictRRD = EMC_DYN_BANKA2BANKB_LAT(SDRAM_TRRD_TIME - 1);
#endif
	// Dinamic Memory Load Mode Register To Active Command Time
#if SDRAM_TMRD_TIME > 15
	EMCDynamictMRD = EMC_DYN_LM2ACT_CMD_TIME(clk / SDRAM_TMRD_TIME);
#else
	EMCDynamictMRD = EMC_DYN_LM2ACT_CMD_TIME(SDRAM_TMRD_TIME);
#endif
	// Dynamic Memory Last Data In To Read Command Time
#if SDRAM_TCDLR_TIME > 15
	EMCDynamictCDLR = EMC_DYN_LASTDIN_CMD_TIME(clk / SDRAM_TCDLR_TIME);
#else
	EMCDynamictCDLR = EMC_DYN_LASTDIN_CMD_TIME(SDRAM_TCDLR_TIME);
#endif
	
}

unsigned int sdram_find_config(void)
{
	int idx;
	unsigned int cfg = 0;
	
	for(idx = 0; (idx < SDRAM_MAX_CONFIGS) && (cfg == 0); idx++)
	{
		if((SDRAM_COLS == sdram_map[idx].cols) && (SDRAM_ROWS == sdram_map[idx].rows) && (SDRAM_BANK_BITS == sdram_map[idx].bank_bits))
		{
			cfg = (unsigned int)sdram_map[idx].cfgval;
#if SDRAM_USEP_PERFORMANCE_MODE == 0
			cfg |= SDRAM_LP_MASK_BIT;
#endif			
		}
	}
	
#if SDRAM_USEP_PERFORMANCE_MODE == 1
	modeshift = SDRAM_COLS + 1 + SDRAM_BANK_BITS;
	bankshift = SDRAM_COLS + 1;
#else
	modeshift = SDRAM_COLS + 1;
	bankshift = SDRAM_COLS + SDRAM_ROWS + 1;
#endif
	
	return cfg;
}