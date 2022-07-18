#include "sif_zim.h"

/* Other variables */
//static UINT16 g_FAT_SectorSize;
//static UINT16 g_FAT_ClusterSize;
//static UINT16 g_FAT_FatBase;
//static uint16 g_FAT_RootBase;
//static uint16 g_FAT_DataBase;
//static UINT16 g_FAT_MainOffset;
//static UINT32 g_FAT_FileSize;


stFileHeader* FAT_FileOpen(char* pFilename, uint8 func)
{
    stFileHeader* pResult = 0;
    int ires;
    for(int i = 0; i < sFATHeader.FileCount; i++)
    {
		ires = strcmp(pFilename, (char*)sFATHeader.sFileHeaders[i].Name);
        if(ires == 0)
		{
            pResult = &sFATHeader.sFileHeaders[i];
			break;
		}
    }
    
    /*char filename[11];
    uint16 block;
    uint16 index;
    uint16 blocknum = g_FAT_DataBase - g_FAT_RootBase;
    uint8 errorcode = ERROR_IDLE;
    */
    /* Format the filename */
    /*FAT_FileNameOrganizer(pFilename, &filename[0]);
    
    block = 0;
    
    while (block < blocknum && errorcode == ERROR_IDLE)
    {
        
    }
    
    return errorcode;*/
    
    return pResult;
}

// static
/*static void FAT_FileNameOrganizer(char* pFilename, char* pDestiny)
{
    uint8 u8Counter = 0;
    
    while (u8Counter < 12)
    {
    	if (*pFilename == 0)
    	{
    		*pDestiny++ = 0x20;    	
    	}
    	else if (*pFilename == '.')
    	{
    		if (u8Counter < 8)
				*pDestiny++ = 0x20;
			else
				pFilename++;
    	}
    	else if ((*pFilename >= 'a') && (*pFilename <= 'z'))
    	{
    		*pDestiny++ = *pFilename++ - 0x20;
    	}
    	else
        {
            *pDestiny++ = *pFilename++;
        } 
        
        u8Counter++;
    }
}*/