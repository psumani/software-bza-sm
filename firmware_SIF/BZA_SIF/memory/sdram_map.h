#ifndef SDRAM_MAP_H
#define SDRAM_MAP_H

// SDRAM Begin address : 0x80000000
#define SDRAM_ADDR_BASE		0x80400000 

#define SDRAM_ADDR_DATA		0x80300000
#define SDRAM_ADDR_END		0x84000000

// sizeof(stDefTestData) = 84
// Data addr = 0x81000000 / Data End = 0x84000000
// 0x3000000 = 50,331,648  
// 50,331,648/4 = 12,582,912 = 0xC00000
// 12,582,912/82 = 149,796, Max Data = 140,000;

#define SDRAM_CHDATA_SIZE   0xC00000
#define SDRAM_DATA_COUNT    140000

#endif