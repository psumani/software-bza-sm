#include "util.h"
#include "sockutil.h"

unsigned int htonl(unsigned int hostlong) /**< hostshort  - A 32-bit number in host byte order.  */
{
#if (SYSTEM_ENDIAN == _ENDIAN_LITTLE_)
	return swapl(hostlong);
#else
	return hostlong;
#endif	
}

unsigned short htons(unsigned short hostshort)	/**< A 16-bit number in host byte order.  */	
{
#if (SYSTEM_ENDIAN == _ENDIAN_LITTLE_)
	return swaps(hostshort);
#else
	return hostshort;
#endif		
}

unsigned int ntohl(unsigned int netlong)
{
#if (SYSTEM_ENDIAN == _ENDIAN_LITTLE_)
    return htonl(netlong);
#else
	return netlong;
#endif		
}