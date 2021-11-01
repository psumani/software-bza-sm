#ifndef FAT_H_
#define FAT_H_

#include "../defines/type.h"

/* Functions */
typedef enum 
{
    READ									= 0,
    CREATE									= 1,
    MODIFY									= 2,
    NEXT_ENTRY								= 3,
    WRITE_ENTRY								= 4
}
t_FileFunction;

/* Error Codes */
typedef enum 
{
    FILE_FOUND								= 0,
    FILE_NOT_FOUND							= 1,
    FILE_CREATE_OK							= 2,
    NO_FILE_ENTRY_AVAILABLE					= 3,
    NO_FAT_ENTRY_AVAIlABLE					= 4,
	ERROR_IDLE								= 5,
}
t_FileErrorCode;

#define FILE_ID         0x25
#define MAX_FILE_COUNT  100
#define MAX_FILE_NAME   200
    
#pragma pack(1)

typedef struct
{
	byte Name[MAX_FILE_NAME];
	int Size;
	int StartPageNum;	
} stFileHeader; 

typedef struct
{
	byte ID;
	int FileCount;
	byte root[MAX_FILE_NAME];
	stFileHeader sFileHeaders[MAX_FILE_COUNT];
} stFATHeader;    
    
#pragma pack()

stFileHeader* FAT_FileOpen(char* pFilename, uint8 func);

static void FAT_FileNameOrganizer(char* pFilename, char* pDestiny);

#endif