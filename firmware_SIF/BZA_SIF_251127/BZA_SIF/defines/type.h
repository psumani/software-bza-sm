#ifndef TYPE_H
#define TYPE_H

#define false				0
#define true				1

typedef unsigned int		BOOL;
typedef unsigned char		bool;
typedef unsigned int		uint;
typedef unsigned char		byte;
typedef unsigned short		ushort;
typedef unsigned short		USHORT;
typedef short		        SHORT;
typedef unsigned int		UInt32;
typedef unsigned short		UInt16;
typedef unsigned char		UInt8;
typedef unsigned char       uint8;
typedef unsigned short      uint16;
typedef short               int16;

typedef unsigned char 		SOCKET;
typedef double 		        DOUBLE;

typedef enum { START, OPEN, LISTEN, ESTABLISHED } eSockStatus;

typedef union _un_l2cval {
	uint	lVal;
	byte	cVal[4];
}un_l2cval;

typedef union _un_i2cval {
	uint	iVal;
	byte	cVal[2];
}un_i2cval;

#endif