#ifndef TYPES_H
#define TYPES_H

#define true 1
#define false 0

typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned int uint32;

typedef char int8;
typedef short int16;
typedef int int32;

// C# type
typedef signed char sbyte;
typedef unsigned char byte;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned char bool;

typedef unsigned char SOCKET;
typedef enum { START, OPEN, LISTEN, ESTABLISHED } eSockStatus;

#endif