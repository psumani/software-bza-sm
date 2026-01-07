#ifndef SOCKUTIL_H
#define SOCKUTIL_H

#define _ENDIAN_LITTLE_     0
#define _ENDIAN_BIG_        1

#define SYSTEM_ENDIAN       _ENDIAN_LITTLE_

unsigned short htons(unsigned short hostshort);
unsigned int htonl(unsigned int hostlong);
unsigned int ntohl(unsigned int netlong);

#endif