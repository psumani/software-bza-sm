#ifndef SDRAM_COMMON
#define SDRAM_COMMON

unsigned int sdram_find_config(void);
void sdram_adjust_timing(unsigned int clk);

#endif