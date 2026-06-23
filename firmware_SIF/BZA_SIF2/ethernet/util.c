#include "util.h"

unsigned int swapl(unsigned int l)
{
	unsigned int ret = 0;
	ret = (l & 0xFF) << 24;
	ret |= ((l >> 8) & 0xFF) << 16;
	ret |= ((l >> 16) & 0xFF) << 8;
	ret |= ((l >> 24) & 0xFF);
	return ret;
}

unsigned short swaps(unsigned int i)
{
	unsigned short ret = 0;
	ret = (i & 0xFF) << 8;
	ret |= ((i >> 8)& 0xFF);
	return ret;	
}