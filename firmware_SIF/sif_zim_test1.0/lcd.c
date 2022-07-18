#include "sif_zim.h"

unsigned char *_pLcdBuffer;

#define CS_LOW		( P3_OUTP_CLR_bit.GPO_00 = 1 )
#define CS_HIGH		( P3_OUTP_SET_bit.GPO_00 = 1 )

#define WR_LOW		( P3_OUTP_CLR_bit.GPO_02 = 1 )
#define WR_HIGH		( P3_OUTP_SET_bit.GPO_02 = 1 )

#define DT_LOW		( P3_OUTP_CLR_bit.GPO_03 = 1 )
#define DT_HIGH		( P3_OUTP_SET_bit.GPO_03 = 1 )

uint ldelay = 17;

void SetR1(unsigned char *pData, char unit, bool update);
void SetR2(unsigned char *pData, char unit, bool update);
void SetR1Sign(char c);
void SetR2Sign(char c);
void SetR1Num(int idx, char c);
void SetR2Num(int idx, char c);
void SetR1Point(int idx, char c);
void SetR2Point(int idx, char c);
//void FloatToString(float fValue, char* pChar, char bOption);
void FloatToStringII(float fValue, char* pChar, int point);
void DoubleToStringII(double fValue, char* pChar, int point);
double Rounding(double x, int digit);
double GenFormat(double val, char sign, char* pFormat, int fmsize, int* pUnitIdx, bool unitup, int point);

inline void lcd_delay(uint count)
{
	for(int i = 0; i < count; i++)
		__no_operation();	
}

void WriteCommand(unsigned short command)
{
	int i;
	
	CS_LOW;
	
	for(i = 0; i < 12; i++)
	{
   		WR_LOW;
		
		if(command & (0x800 >> i))
			DT_HIGH;
		else
			DT_LOW;
		
		lcd_delay(ldelay);
		
		WR_HIGH;
		
		lcd_delay(ldelay);
	}
	
	CS_HIGH;
}

void WriteData(void)
{
	int i, j;
	unsigned short addr;
	
	CS_LOW;
	
	addr = 0x0280;
	
	//WaitMs(1);

	for(i = 0; i < 10; i++)
	{
   		WR_LOW;
		if(addr & (0x200 >> i))
			DT_HIGH;
		else
			DT_LOW;	
		
		lcd_delay(ldelay);
		
		WR_HIGH;
		
		lcd_delay(ldelay);
	}

	for(i = 0; i < LCD_BUF_SIZE; i++)
	{
		for(j = 0; j < 8; j++)
		{
			WR_LOW;
			
			if(*(_pLcdBuffer + i) & (0x80 >> j))
				DT_HIGH;
			else
				DT_LOW;
			
			lcd_delay(ldelay);
			
			WR_HIGH;
			
			lcd_delay(ldelay);
		}
	}

	CS_HIGH;
}

void SetR1Sign(char c)
{
	if(c == '-')
		*(_pLcdBuffer + 15) |= 0x20;
	else
		*(_pLcdBuffer + 15) &= ~0x20; 	
}

void SetR1Num(int idx, char c)	
{
	if(idx == 0)
	{
		*(_pLcdBuffer + 14) &= ~0xF0; *(_pLcdBuffer + 13) &= ~0xE0; 

		switch(c)
		{
			case '0' : *(_pLcdBuffer + 14) |= 0xF0; *(_pLcdBuffer + 13) |= 0xA0;			
				break;
			case '1' : *(_pLcdBuffer + 14) |= 0x00; *(_pLcdBuffer + 13) |= 0xA0;
				break;
			case '2' : *(_pLcdBuffer + 14) |= 0xB0; *(_pLcdBuffer + 13) |= 0xC0; 
				break;
			case '3' : *(_pLcdBuffer + 14) |= 0x90; *(_pLcdBuffer + 13) |= 0xE0;  
				break;
			case '4' : *(_pLcdBuffer + 14) |= 0x40; *(_pLcdBuffer + 13) |= 0xE0;  
				break;
			case '5' : *(_pLcdBuffer + 14) |= 0xD0; *(_pLcdBuffer + 13) |= 0x60; 
				break;
			case '6' : *(_pLcdBuffer + 14) |= 0xF0; *(_pLcdBuffer + 13) |= 0x60; 
				break;
			case '7' : *(_pLcdBuffer + 14) |= 0x80; *(_pLcdBuffer + 13) |= 0xA0; 
				break;
			case '8' : *(_pLcdBuffer + 14) |= 0xF0; *(_pLcdBuffer + 13) |= 0xE0; 
				break;
			case '9' : *(_pLcdBuffer + 14) |= 0xC0; *(_pLcdBuffer + 13) |= 0xE0;
				break;
			case 'L' : *(_pLcdBuffer + 14) |= 0x70; *(_pLcdBuffer + 13) |= 0x00; 
				break;
			case 'o' : *(_pLcdBuffer + 14) |= 0x30; *(_pLcdBuffer + 13) |= 0x60; 
				break;
			case 'A' : *(_pLcdBuffer + 14) |= 0xE0; *(_pLcdBuffer + 13) |= 0xE0; 
				break;
			case 'd' : *(_pLcdBuffer + 14) |= 0x30; *(_pLcdBuffer + 13) |= 0xE0; 
				break;
			case 'O' : *(_pLcdBuffer + 14) |= 0xF0; *(_pLcdBuffer + 13) |= 0xA0; 
				break;													
		}
	}
	else if(idx == 1)
	{
		*(_pLcdBuffer + 12) &= ~0xF0; *(_pLcdBuffer + 11) &= ~0xE0; 
		switch(c)
		{
			case '0' : *(_pLcdBuffer + 12) |= 0xF0; *(_pLcdBuffer + 11) |= 0xA0; 
				break;
			case '1' : *(_pLcdBuffer + 12) |= 0x00; *(_pLcdBuffer + 11) |= 0xA0; 
				break;
			case '2' : *(_pLcdBuffer + 12) |= 0xB0; *(_pLcdBuffer + 11) |= 0xC0; 
				break;
			case '3' : *(_pLcdBuffer + 12) |= 0x90; *(_pLcdBuffer + 11) |= 0xE0; 
				break;
			case '4' : *(_pLcdBuffer + 12) |= 0x40; *(_pLcdBuffer + 11) |= 0xE0; 
				break;
			case '5' : *(_pLcdBuffer + 12) |= 0xD0; *(_pLcdBuffer + 11) |= 0x60; 
				break;
			case '6' : *(_pLcdBuffer + 12) |= 0xF0; *(_pLcdBuffer + 11) |= 0x60; 
				break;
			case '7' : *(_pLcdBuffer + 12) |= 0x80; *(_pLcdBuffer + 11) |= 0xA0; 
				break;
			case '8' : *(_pLcdBuffer + 12) |= 0xF0; *(_pLcdBuffer + 11) |= 0xE0; 
				break;
			case '9' : *(_pLcdBuffer + 12) |= 0xC0; *(_pLcdBuffer + 11) |= 0xE0; 
				break;
			case 'L' : *(_pLcdBuffer + 12) |= 0x70; *(_pLcdBuffer + 11) |= 0x00; 
				break;
			case 'o' : *(_pLcdBuffer + 12) |= 0x30; *(_pLcdBuffer + 11) |= 0x60; 
				break;
			case 'A' : *(_pLcdBuffer + 12) |= 0xE0; *(_pLcdBuffer + 11) |= 0xE0; 
				break;
			case 'd' : *(_pLcdBuffer + 12) |= 0x30; *(_pLcdBuffer + 11) |= 0xE0; 
				break;
			case 'O' : *(_pLcdBuffer + 12) |= 0xF0; *(_pLcdBuffer + 11) |= 0xA0; 
				break;
		}		
	}
	else if(idx == 2)
	{
		*(_pLcdBuffer + 10) &= ~0xF0; *(_pLcdBuffer + 9) &= ~0xE0; 
		switch(c)
		{
			case '0' : *(_pLcdBuffer + 10) |= 0xF0; *(_pLcdBuffer + 9) |= 0xA0; 
				break;
			case '1' : *(_pLcdBuffer + 10) |= 0x00; *(_pLcdBuffer + 9) |= 0xA0; 
				break;
			case '2' : *(_pLcdBuffer + 10) |= 0xB0; *(_pLcdBuffer + 9) |= 0xC0; 
				break;
			case '3' : *(_pLcdBuffer + 10) |= 0x90; *(_pLcdBuffer + 9) |= 0xE0; 
				break;
			case '4' : *(_pLcdBuffer + 10) |= 0x40; *(_pLcdBuffer + 9) |= 0xE0; 
				break;
			case '5' : *(_pLcdBuffer + 10) |= 0xD0; *(_pLcdBuffer + 9) |= 0x60; 
				break;
			case '6' : *(_pLcdBuffer + 10) |= 0xF0; *(_pLcdBuffer + 9) |= 0x60; 
				break;
			case '7' : *(_pLcdBuffer + 10) |= 0x80; *(_pLcdBuffer + 9) |= 0xA0; 
				break;
			case '8' : *(_pLcdBuffer + 10) |= 0xF0; *(_pLcdBuffer + 9) |= 0xE0; 
				break;
			case '9' : *(_pLcdBuffer + 10) |= 0xC0; *(_pLcdBuffer + 9) |= 0xE0; 
				break;
			case 'L' : *(_pLcdBuffer + 10) |= 0x70; *(_pLcdBuffer + 9) |= 0x00; 
				break;
			case 'o' : *(_pLcdBuffer + 10) |= 0x30; *(_pLcdBuffer + 9) |= 0x60; 
				break;
			case 'A' : *(_pLcdBuffer + 10) |= 0xE0; *(_pLcdBuffer + 9) |= 0xE0; 
				break;
			case 'd' : *(_pLcdBuffer + 10) |= 0x30; *(_pLcdBuffer + 9) |= 0xE0; 
				break;
			case 'O' : *(_pLcdBuffer + 10) |= 0xF0; *(_pLcdBuffer + 9) |= 0xA0; 
				break;
		}
	}
	else if(idx == 3)
	{
		*(_pLcdBuffer + 8) &= ~0xF0; *(_pLcdBuffer + 7) &= ~0xE0;
		switch(c)
		{
			case '0' : *(_pLcdBuffer + 8) |= 0xF0; *(_pLcdBuffer + 7) |= 0xA0; 
				break;
			case '1' : *(_pLcdBuffer + 8) |= 0x00; *(_pLcdBuffer + 7) |= 0xA0; 
				break;
			case '2' : *(_pLcdBuffer + 8) |= 0xB0; *(_pLcdBuffer + 7) |= 0xC0; 
				break;
			case '3' : *(_pLcdBuffer + 8) |= 0x90; *(_pLcdBuffer + 7) |= 0xE0; 
				break;
			case '4' : *(_pLcdBuffer + 8) |= 0x40; *(_pLcdBuffer + 7) |= 0xE0; 
				break;
			case '5' : *(_pLcdBuffer + 8) |= 0xD0; *(_pLcdBuffer + 7) |= 0x60; 
				break;
			case '6' : *(_pLcdBuffer + 8) |= 0xF0; *(_pLcdBuffer + 7) |= 0x60; 
				break;
			case '7' : *(_pLcdBuffer + 8) |= 0x80; *(_pLcdBuffer + 7) |= 0xA0; 
				break;
			case '8' : *(_pLcdBuffer + 8) |= 0xF0; *(_pLcdBuffer + 7) |= 0xE0; 
				break;
			case '9' : *(_pLcdBuffer + 8) |= 0xC0; *(_pLcdBuffer + 7) |= 0xE0; 
				break;
			case 'L' : *(_pLcdBuffer + 8) |= 0x70; *(_pLcdBuffer + 7) |= 0x00; 
				break;
			case 'o' : *(_pLcdBuffer + 8) |= 0x30; *(_pLcdBuffer + 7) |= 0x60; 
				break;
			case 'A' : *(_pLcdBuffer + 8) |= 0xE0; *(_pLcdBuffer + 7) |= 0xE0; 
				break;
			case 'd' : *(_pLcdBuffer + 8) |= 0x30; *(_pLcdBuffer + 7) |= 0xE0; 
				break;
			case 'O' : *(_pLcdBuffer + 8) |= 0xF0; *(_pLcdBuffer + 7) |= 0xA0; 
				break;
		}
	} 
}

void SetR1Point(int idx, char c)
{
	switch(idx)
	{
		case 0 : *(_pLcdBuffer + 13) = (c == '.') ? *(_pLcdBuffer + 13) | 0x10 : *(_pLcdBuffer + 13) & ~0x10;
			break;
		case 1 : *(_pLcdBuffer + 11) = (c == '.') ? *(_pLcdBuffer + 11) | 0x10 : *(_pLcdBuffer + 11) & ~0x10;
			break;
		case 2 : *(_pLcdBuffer + 9) = (c == '.') ? *(_pLcdBuffer + 9) | 0x10 : *(_pLcdBuffer + 9) & ~0x10;
			break;
		case 3 : *(_pLcdBuffer + 7) = (c == '.') ? *(_pLcdBuffer + 7) | 0x10 : *(_pLcdBuffer + 7) & ~0x10;
			break;
	}		
}

void SetR2Num(int idx, char c)
{
	if(idx == 0)
	{
		*(_pLcdBuffer + 14) &= ~0x0F; *(_pLcdBuffer + 13) &= ~0x0E;
		switch(c)
		{
			case '0' : *(_pLcdBuffer + 14) |= 0x0F; *(_pLcdBuffer + 13) |= 0x0A; 
				break;
			case '1' : *(_pLcdBuffer + 14) |= 0x00; *(_pLcdBuffer + 13) |= 0x0A; 
				break;
			case '2' : *(_pLcdBuffer + 14) |= 0x0B; *(_pLcdBuffer + 13) |= 0x0C; 
				break;
			case '3' : *(_pLcdBuffer + 14) |= 0x09; *(_pLcdBuffer + 13) |= 0x0E; 
				break;
			case '4' : *(_pLcdBuffer + 14) |= 0x04; *(_pLcdBuffer + 13) |= 0x0E; 
				break;
			case '5' : *(_pLcdBuffer + 14) |= 0x0D; *(_pLcdBuffer + 13) |= 0x06; 
				break;
			case '6' : *(_pLcdBuffer + 14) |= 0x0F; *(_pLcdBuffer + 13) |= 0x06; 
				break;
			case '7' : *(_pLcdBuffer + 14) |= 0x08; *(_pLcdBuffer + 13) |= 0x0A; 
				break;
			case '8' : *(_pLcdBuffer + 14) |= 0x0F; *(_pLcdBuffer + 13) |= 0x0E; 
				break;
			case '9' : *(_pLcdBuffer + 14) |= 0x0C; *(_pLcdBuffer + 13) |= 0x0E; 
				break;
			case 'L' : *(_pLcdBuffer + 14) |= 0x07; *(_pLcdBuffer + 13) |= 0x00; 
				break;
			case 'o' : *(_pLcdBuffer + 14) |= 0x03; *(_pLcdBuffer + 13) |= 0x06; 
				break;
			case 'A' : *(_pLcdBuffer + 14) |= 0x0E; *(_pLcdBuffer + 13) |= 0x0E; 
				break;
			case 'd' : *(_pLcdBuffer + 14) |= 0x03; *(_pLcdBuffer + 13) |= 0x0E; 
				break;
			case 'O' : *(_pLcdBuffer + 14) |= 0x0F; *(_pLcdBuffer + 13) |= 0x0A; 
				break;
		}
	}
	else if(idx == 1)
	{
		*(_pLcdBuffer + 12) &= ~0x0F; *(_pLcdBuffer + 11) &= ~0x0E;
		switch(c)
		{
			case '0' : *(_pLcdBuffer + 12) |= 0x0F; *(_pLcdBuffer + 11) |= 0x0A; 
				break;
			case '1' : *(_pLcdBuffer + 12) |= 0x00; *(_pLcdBuffer + 11) |= 0x0A; 
				break;
			case '2' : *(_pLcdBuffer + 12) |= 0x0B; *(_pLcdBuffer + 11) |= 0x0C; 
				break;
			case '3' : *(_pLcdBuffer + 12) |= 0x09; *(_pLcdBuffer + 11) |= 0x0E; 
				break;
			case '4' : *(_pLcdBuffer + 12) |= 0x04; *(_pLcdBuffer + 11) |= 0x0E; 
				break;
			case '5' : *(_pLcdBuffer + 12) |= 0x0D; *(_pLcdBuffer + 11) |= 0x06; 
				break;
			case '6' : *(_pLcdBuffer + 12) |= 0x0F; *(_pLcdBuffer + 11) |= 0x06; 
				break;
			case '7' : *(_pLcdBuffer + 12) |= 0x08; *(_pLcdBuffer + 11) |= 0x0A; 
				break;
			case '8' : *(_pLcdBuffer + 12) |= 0x0F; *(_pLcdBuffer + 11) |= 0x0E; 
				break;
			case '9' : *(_pLcdBuffer + 12) |= 0x0C; *(_pLcdBuffer + 11) |= 0x0E; 
				break;
			case 'L' : *(_pLcdBuffer + 12) |= 0x07; *(_pLcdBuffer + 11) |= 0x00; 
				break;
			case 'o' : *(_pLcdBuffer + 12) |= 0x03; *(_pLcdBuffer + 11) |= 0x06; 
				break;
			case 'A' : *(_pLcdBuffer + 12) |= 0x0E; *(_pLcdBuffer + 11) |= 0x0E; 
				break;
			case 'd' : *(_pLcdBuffer + 12) |= 0x03; *(_pLcdBuffer + 11) |= 0x0E; 
				break;
			case 'O' : *(_pLcdBuffer + 12) |= 0x0F; *(_pLcdBuffer + 11) |= 0x0A; 
				break;
		}
	}
	else if(idx == 2)
	{
		*(_pLcdBuffer + 10) &= ~0x0F; *(_pLcdBuffer + 9) &= ~0x0E;
		switch(c)
		{
			case '0' : *(_pLcdBuffer + 10) |= 0x0F; *(_pLcdBuffer + 9) |= 0x0A; 
				break;
			case '1' : *(_pLcdBuffer + 10) |= 0x00; *(_pLcdBuffer + 9) |= 0x0A; 
				break;
			case '2' : *(_pLcdBuffer + 10) |= 0x0B; *(_pLcdBuffer + 9) |= 0x0C; 
				break;
			case '3' : *(_pLcdBuffer + 10) |= 0x09; *(_pLcdBuffer + 9) |= 0x0E; 
				break;
			case '4' : *(_pLcdBuffer + 10) |= 0x04; *(_pLcdBuffer + 9) |= 0x0E; 
				break;
			case '5' : *(_pLcdBuffer + 10) |= 0x0D; *(_pLcdBuffer + 9) |= 0x06; 
				break;
			case '6' : *(_pLcdBuffer + 10) |= 0x0F; *(_pLcdBuffer + 9) |= 0x06; 
				break;
			case '7' : *(_pLcdBuffer + 10) |= 0x08; *(_pLcdBuffer + 9) |= 0x0A; 
				break;
			case '8' : *(_pLcdBuffer + 10) |= 0x0F; *(_pLcdBuffer + 9) |= 0x0E; 
				break;
			case '9' : *(_pLcdBuffer + 10) |= 0x0C; *(_pLcdBuffer + 9) |= 0x0E; 
				break;
			case 'L' : *(_pLcdBuffer + 10) |= 0x07; *(_pLcdBuffer + 9) |= 0x00; 
				break;
			case 'o' : *(_pLcdBuffer + 10) |= 0x03; *(_pLcdBuffer + 9) |= 0x06; 
				break;
			case 'A' : *(_pLcdBuffer + 10) |= 0x0E; *(_pLcdBuffer + 9) |= 0x0E; 
				break;
			case 'd' : *(_pLcdBuffer + 10) |= 0x03; *(_pLcdBuffer + 9) |= 0x0E; 
				break;
			case 'O' : *(_pLcdBuffer + 10) |= 0x0F; *(_pLcdBuffer + 9) |= 0x0A; 
				break;
		}
	}
	else if(idx == 3)
	{
		*(_pLcdBuffer + 8) &= ~0x0F; *(_pLcdBuffer + 7) &= ~0x0E;
		switch(c)
		{
			case '0' : *(_pLcdBuffer + 8) |= 0x0F; *(_pLcdBuffer + 7) |= 0x0A; 
				break;
			case '1' : *(_pLcdBuffer + 8) |= 0x00; *(_pLcdBuffer + 7) |= 0x0A; 
				break;
			case '2' : *(_pLcdBuffer + 8) |= 0x0B; *(_pLcdBuffer + 7) |= 0x0C; 
				break;
			case '3' : *(_pLcdBuffer + 8) |= 0x09; *(_pLcdBuffer + 7) |= 0x0E; 
				break;
			case '4' : *(_pLcdBuffer + 8) |= 0x04; *(_pLcdBuffer + 7) |= 0x0E; 
				break;
			case '5' : *(_pLcdBuffer + 8) |= 0x0D; *(_pLcdBuffer + 7) |= 0x06; 
				break;
			case '6' : *(_pLcdBuffer + 8) |= 0x0F; *(_pLcdBuffer + 7) |= 0x06; 
				break;
			case '7' : *(_pLcdBuffer + 8) |= 0x08; *(_pLcdBuffer + 7) |= 0x0A; 
				break;
			case '8' : *(_pLcdBuffer + 8) |= 0x0F; *(_pLcdBuffer + 7) |= 0x0E; 
				break;
			case '9' : *(_pLcdBuffer + 8) |= 0x0C; *(_pLcdBuffer + 7) |= 0x0E; 
				break;
			case 'L' : *(_pLcdBuffer + 8) |= 0x07; *(_pLcdBuffer + 7) |= 0x00; 
				break;
			case 'o' : *(_pLcdBuffer + 8) |= 0x03; *(_pLcdBuffer + 7) |= 0x06; 
				break;
			case 'A' : *(_pLcdBuffer + 8) |= 0x0E; *(_pLcdBuffer + 7) |= 0x0E; 
				break;
			case 'd' : *(_pLcdBuffer + 8) |= 0x03; *(_pLcdBuffer + 7) |= 0x0E; 
				break;
			case 'O' : *(_pLcdBuffer + 8) |= 0x0F; *(_pLcdBuffer + 7) |= 0x0A; 
				break;
		}
	}
}

void SetR1U1(char c1)
{
    *(_pLcdBuffer + 3) &= ~0x50;
    *(_pLcdBuffer + 4) &= ~0xF0;
    *(_pLcdBuffer + 5) &= ~0xF0;
    *(_pLcdBuffer + 6) &= ~0xF0;
    
    switch(c1)
    {
        case 'T':
            *(_pLcdBuffer + 4) |= 0x80;
            *(_pLcdBuffer + 5) |= 0x60;
            break;
        case 'G':
            *(_pLcdBuffer + 3) |= 0x10;
            *(_pLcdBuffer + 4) |= 0xA0;
            *(_pLcdBuffer + 5) |= 0x10;
            *(_pLcdBuffer + 6) |= 0x90;
            break;
        case 'M':
            *(_pLcdBuffer + 3) |= 0x50;
            *(_pLcdBuffer + 4) |= 0x40;
            *(_pLcdBuffer + 5) |= 0x80;
            *(_pLcdBuffer + 6) |= 0x90;
            break;
        case 'K':
            *(_pLcdBuffer + 4) |= 0x50;            
            *(_pLcdBuffer + 6) |= 0xD0;
            break;
        case ' ':
            break;
        case 'm':
            *(_pLcdBuffer + 3) |= 0x10;
            *(_pLcdBuffer + 4) |= 0x20;
            *(_pLcdBuffer + 5) |= 0x20;
            *(_pLcdBuffer + 6) |= 0x50;
            break;
        case 'u':
            *(_pLcdBuffer + 3) |= 0x10;             
            *(_pLcdBuffer + 5) |= 0x10;
            *(_pLcdBuffer + 6) |= 0x10;
            break;
        case 'n':
            *(_pLcdBuffer + 4) |= 0x10;            
            *(_pLcdBuffer + 6) |= 0x50;
            break;
        case 'p':
            *(_pLcdBuffer + 4) |= 0xC0;
            *(_pLcdBuffer + 6) |= 0xD0;
            break;
        case 'f':
            *(_pLcdBuffer + 4) |= 0x80;
            *(_pLcdBuffer + 6) |= 0xD0;
            break;
        case 'a':
            *(_pLcdBuffer + 3) |= 0x50;
            *(_pLcdBuffer + 4) |= 0xA0;
            *(_pLcdBuffer + 5) |= 0x10;
            *(_pLcdBuffer + 6) |= 0x50;
            break;
            
        case 'V':
            *(_pLcdBuffer + 4) |= 0x40;            
            *(_pLcdBuffer + 6) |= 0xB0;
            break;            
        case 'A':
            *(_pLcdBuffer + 3) |= 0x50;
            *(_pLcdBuffer + 4) |= 0xA0;            
            *(_pLcdBuffer + 6) |= 0xD0;
            break;
        case 'H':
            *(_pLcdBuffer + 3) |= 0x50;
            *(_pLcdBuffer + 4) |= 0x20;            
            *(_pLcdBuffer + 6) |= 0xD0;
            break;
        case 'C':
            *(_pLcdBuffer + 4) |= 0x80;
            *(_pLcdBuffer + 5) |= 0x10;
            *(_pLcdBuffer + 6) |= 0x90;
            break;
        case 'B':
            *(_pLcdBuffer + 3) |= 0x50;
            *(_pLcdBuffer + 4) |= 0xA0;
            *(_pLcdBuffer + 5) |= 0x70;
            break;
        case 'R':
            *(_pLcdBuffer + 3) |= 0x40;
            *(_pLcdBuffer + 4) |= 0xB0;
            //*(_pLcdBuffer + 5) |= 0x10;
            *(_pLcdBuffer + 6) |= 0xE0;
            break;
        case 'Z':
            //*(_pLcdBuffer + 3) |= 0x50;
            *(_pLcdBuffer + 4) |= 0xC0;
            *(_pLcdBuffer + 5) |= 0x10;
            *(_pLcdBuffer + 6) |= 0x20;
            break;
        case '\'':
            //*(_pLcdBuffer + 3) |= 0x50;
            *(_pLcdBuffer + 4) |= 0x40;
            //*(_pLcdBuffer + 5) |= 0x10;
            //*(_pLcdBuffer + 6) |= 0x50;
            break;
    }
}

void SetR1U2(char c1)
{
    *(_pLcdBuffer + 0) &= ~0xF0;
    *(_pLcdBuffer + 1) &= ~0xF0;
    *(_pLcdBuffer + 2) &= ~0xF0;
    *(_pLcdBuffer + 3) &= ~0xA0;
    
    switch(c1)
    {
        case 'T':
            *(_pLcdBuffer + 1) |= 0xE0;            
            break;
        case 'G':
            *(_pLcdBuffer + 0) |= 0x30;
            *(_pLcdBuffer + 1) |= 0x80;
            *(_pLcdBuffer + 2) |= 0x10;
            *(_pLcdBuffer + 3) |= 0xA0;
            break;
        case 'M':
            *(_pLcdBuffer + 0) |= 0xD0;            
            *(_pLcdBuffer + 2) |= 0x80;
            *(_pLcdBuffer + 3) |= 0xA0;
            break;
        case 'K':
            *(_pLcdBuffer + 0) |= 0x40;
            *(_pLcdBuffer + 1) |= 0x10;
            *(_pLcdBuffer + 2) |= 0x40;
            *(_pLcdBuffer + 3) |= 0xA0;
            break;
        case ' ':
            break;
        case 'm':
            *(_pLcdBuffer + 0) |= 0x30;
            *(_pLcdBuffer + 1) |= 0x20;
            *(_pLcdBuffer + 2) |= 0x60;
            *(_pLcdBuffer + 3) |= 0x20;
            break;
        case 'u':
            *(_pLcdBuffer + 0) |= 0x10;            
            *(_pLcdBuffer + 2) |= 0x10;
            *(_pLcdBuffer + 3) |= 0x20;
            break;
        case 'n':            
            *(_pLcdBuffer + 1) |= 0x10;
            *(_pLcdBuffer + 2) |= 0x40;
            *(_pLcdBuffer + 3) |= 0x20;
            break;
        case 'p':
            *(_pLcdBuffer + 0) |= 0x40;
            *(_pLcdBuffer + 1) |= 0x80;
            *(_pLcdBuffer + 2) |= 0x40;
            *(_pLcdBuffer + 3) |= 0xA0;
            break;
        case 'f':            
            *(_pLcdBuffer + 1) |= 0x80;
            *(_pLcdBuffer + 2) |= 0x40;
            *(_pLcdBuffer + 3) |= 0xA0;
            break;
        case 'a':
            *(_pLcdBuffer + 0) |= 0xB0;
            *(_pLcdBuffer + 1) |= 0x80;
            *(_pLcdBuffer + 2) |= 0x50;
            *(_pLcdBuffer + 3) |= 0x20;
            break;
            
        case 'V':
            *(_pLcdBuffer + 0) |= 0x40;            
            *(_pLcdBuffer + 2) |= 0x20;
            *(_pLcdBuffer + 3) |= 0xA0;
            break;            
        case 'A':
            *(_pLcdBuffer + 0) |= 0xB0;
            *(_pLcdBuffer + 1) |= 0x80;
            *(_pLcdBuffer + 2) |= 0x40;
            *(_pLcdBuffer + 3) |= 0xA0;
            break;
        case 'H':
            *(_pLcdBuffer + 0) |= 0xB0;            
            *(_pLcdBuffer + 2) |= 0x40;
            *(_pLcdBuffer + 3) |= 0xA0;
            break;
        case 'C':            
            *(_pLcdBuffer + 1) |= 0x80;
            *(_pLcdBuffer + 2) |= 0x10;
            *(_pLcdBuffer + 3) |= 0xA0;
            break;
        case 'B':
            *(_pLcdBuffer + 0) |= 0xB0;
            *(_pLcdBuffer + 1) |= 0xE0;
            *(_pLcdBuffer + 2) |= 0x10;
            break;
        case 'R':
            *(_pLcdBuffer + 0) |= 0xA0;
            *(_pLcdBuffer + 1) |= 0x90;
            *(_pLcdBuffer + 2) |= 0x60;
            *(_pLcdBuffer + 3) |= 0x80;
            break;
        case 'Z':
            *(_pLcdBuffer + 0) |= 0x40;
            *(_pLcdBuffer + 1) |= 0x80;
            *(_pLcdBuffer + 2) |= 0x30;
            //*(_pLcdBuffer + 3) |= 0xA0;
            break;
        case '\'':
            *(_pLcdBuffer + 0) |= 0x40;
            //*(_pLcdBuffer + 1) |= 0x80;
            //*(_pLcdBuffer + 2) |= 0x40;
            //*(_pLcdBuffer + 3) |= 0xA0;
            break;
    }
}

void SetR2U1(char c1)
{
    *(_pLcdBuffer + 3) &= ~0x05;
    *(_pLcdBuffer + 4) &= ~0x0F;
    *(_pLcdBuffer + 5) &= ~0x0F;
    *(_pLcdBuffer + 6) &= ~0x0F;
    
    switch(c1)
    {
        case 'T':
            *(_pLcdBuffer + 4) |= 0x08;
            *(_pLcdBuffer + 5) |= 0x06;
            break;
        case 'G':
            *(_pLcdBuffer + 3) |= 0x01;
            *(_pLcdBuffer + 4) |= 0x0A;
            *(_pLcdBuffer + 5) |= 0x01;
            *(_pLcdBuffer + 6) |= 0x09; 
            break;
        case 'M':
            *(_pLcdBuffer + 3) |= 0x05;
            *(_pLcdBuffer + 4) |= 0x04;
            *(_pLcdBuffer + 5) |= 0x08;
            *(_pLcdBuffer + 6) |= 0x09; 
            break;
        case 'K':
            *(_pLcdBuffer + 4) |= 0x05;
            *(_pLcdBuffer + 6) |= 0x0D; 
            break;
        case ' ':
            break;
        case 'm':
            *(_pLcdBuffer + 3) |= 0x01;
            *(_pLcdBuffer + 4) |= 0x02;
            *(_pLcdBuffer + 5) |= 0x02;
            *(_pLcdBuffer + 6) |= 0x05; 
            break;
        case 'u':
            *(_pLcdBuffer + 3) |= 0x01;
            *(_pLcdBuffer + 5) |= 0x01;
            *(_pLcdBuffer + 6) |= 0x01; 
            break;
        case 'n':            
            *(_pLcdBuffer + 4) |= 0x01;
            *(_pLcdBuffer + 6) |= 0x05; 
            break;
        case 'p':
            *(_pLcdBuffer + 4) |= 0x0C;
            *(_pLcdBuffer + 6) |= 0x0D; 
            break;
        case 'f':            
            *(_pLcdBuffer + 4) |= 0x08;
            *(_pLcdBuffer + 6) |= 0x0D; 
            break;
        case 'a':
            *(_pLcdBuffer + 3) |= 0x05;
            *(_pLcdBuffer + 4) |= 0x0A;
            *(_pLcdBuffer + 5) |= 0x01;
            *(_pLcdBuffer + 6) |= 0x05; 
            break;
            
        case 'V':
            *(_pLcdBuffer + 4) |= 0x04;
            *(_pLcdBuffer + 6) |= 0x0B; 
            break;            
        case 'A':
            *(_pLcdBuffer + 3) |= 0x05;
            *(_pLcdBuffer + 4) |= 0x0A;
            *(_pLcdBuffer + 6) |= 0x0D; 
            break;
        case 'H':
            *(_pLcdBuffer + 3) |= 0x05;
            *(_pLcdBuffer + 4) |= 0x02;
            *(_pLcdBuffer + 6) |= 0x0D; 
            break;
        case 'C':            
            *(_pLcdBuffer + 4) |= 0x08;
            *(_pLcdBuffer + 5) |= 0x01;
            *(_pLcdBuffer + 6) |= 0x09; 
            break;
        case 'B':
            *(_pLcdBuffer + 3) |= 0x05;
            *(_pLcdBuffer + 4) |= 0x0A;
            *(_pLcdBuffer + 5) |= 0x07;
            break;
        case 'R':
            *(_pLcdBuffer + 3) |= 0x04;
            *(_pLcdBuffer + 4) |= 0x0B;
            //*(_pLcdBuffer + 5) |= 0x01;
            *(_pLcdBuffer + 6) |= 0x0E; 
            break;
        case 'Z':
            //*(_pLcdBuffer + 3) |= 0x05;
            *(_pLcdBuffer + 4) |= 0x0C;
            *(_pLcdBuffer + 5) |= 0x01;
            *(_pLcdBuffer + 6) |= 0x02; 
            break;
        case '\'':
            //*(_pLcdBuffer + 3) |= 0x05;
            *(_pLcdBuffer + 4) |= 0x04;
            //*(_pLcdBuffer + 5) |= 0x01;
            //*(_pLcdBuffer + 6) |= 0x05; 
            break;
    }
}

void SetR2U2(char c1)
{
    *(_pLcdBuffer + 0) &= ~0x0F;
    *(_pLcdBuffer + 1) &= ~0x0F;
    *(_pLcdBuffer + 2) &= ~0x0F;
    *(_pLcdBuffer + 3) &= ~0x0A;
    
    switch(c1)
    {
        case 'T':
            *(_pLcdBuffer + 1) |= 0x0E;
            break;
        case 'G':
            *(_pLcdBuffer + 0) |= 0x03;
            *(_pLcdBuffer + 1) |= 0x08;
            *(_pLcdBuffer + 2) |= 0x01;
            *(_pLcdBuffer + 3) |= 0x0A; 
            break;
        case 'M':
            *(_pLcdBuffer + 0) |= 0x0D;
            *(_pLcdBuffer + 2) |= 0x08;
            *(_pLcdBuffer + 3) |= 0x0A; 
            break;
        case 'K':
            *(_pLcdBuffer + 0) |= 0x04;
            *(_pLcdBuffer + 1) |= 0x01;
            *(_pLcdBuffer + 2) |= 0x04;
            *(_pLcdBuffer + 3) |= 0x0A; 
            break;
        case ' ':
            break;
        case 'm':
            *(_pLcdBuffer + 0) |= 0x03;
            *(_pLcdBuffer + 1) |= 0x02;
            *(_pLcdBuffer + 2) |= 0x04;
            *(_pLcdBuffer + 3) |= 0x02; 
            break;
        case 'u':
            *(_pLcdBuffer + 0) |= 0x01;
            *(_pLcdBuffer + 2) |= 0x01;
            *(_pLcdBuffer + 3) |= 0x02; 
            break;
        case 'n':            
            *(_pLcdBuffer + 1) |= 0x01;
            *(_pLcdBuffer + 2) |= 0x04;
            *(_pLcdBuffer + 3) |= 0x02; 
            break;
        case 'p':
            *(_pLcdBuffer + 0) |= 0x04;
            *(_pLcdBuffer + 1) |= 0x08;
            *(_pLcdBuffer + 2) |= 0x04;
            *(_pLcdBuffer + 3) |= 0x0A; 
            break;
        case 'f':            
            *(_pLcdBuffer + 1) |= 0x08;
            *(_pLcdBuffer + 2) |= 0x04;
            *(_pLcdBuffer + 3) |= 0x0A; 
            break;
        case 'a':
            *(_pLcdBuffer + 0) |= 0x0B;
            *(_pLcdBuffer + 1) |= 0x08;
            *(_pLcdBuffer + 2) |= 0x05;
            *(_pLcdBuffer + 3) |= 0x02; 
            break;
            
        case 'V':
            *(_pLcdBuffer + 0) |= 0x04;
            *(_pLcdBuffer + 2) |= 0x02;
            *(_pLcdBuffer + 3) |= 0x0A; 
            break;            
        case 'A':
            *(_pLcdBuffer + 0) |= 0x0B;
            *(_pLcdBuffer + 1) |= 0x08;
            *(_pLcdBuffer + 2) |= 0x04;
            *(_pLcdBuffer + 3) |= 0x0A; 
            break;
        case 'H':
            *(_pLcdBuffer + 0) |= 0x0B;
            *(_pLcdBuffer + 2) |= 0x04;
            *(_pLcdBuffer + 3) |= 0x0A; 
            break;
        case 'C':                        
            *(_pLcdBuffer + 1) |= 0x08;
            *(_pLcdBuffer + 2) |= 0x01;
            *(_pLcdBuffer + 3) |= 0x0A; 
            break;
        case 'B':
            *(_pLcdBuffer + 0) |= 0x0B;
            *(_pLcdBuffer + 1) |= 0x0E;
            *(_pLcdBuffer + 2) |= 0x01;            
            break;
        case 'R':
            *(_pLcdBuffer + 0) |= 0x0A;
            *(_pLcdBuffer + 1) |= 0x09;
            *(_pLcdBuffer + 2) |= 0x06;
            *(_pLcdBuffer + 3) |= 0x08; 
            break;
        case 'Z':
            *(_pLcdBuffer + 0) |= 0x04;
            *(_pLcdBuffer + 1) |= 0x08;
            *(_pLcdBuffer + 2) |= 0x03;
            //*(_pLcdBuffer + 3) |= 0x0A; 
            break;
        case '\'':
            *(_pLcdBuffer + 0) |= 0x04;
            //*(_pLcdBuffer + 1) |= 0x08;
            //*(_pLcdBuffer + 2) |= 0x04;
            //*(_pLcdBuffer + 3) |= 0x0A; 
            break;
    }
}

void SetL1U1(char c)
{
    *(_pLcdBuffer + 34) &= ~0x50;
    *(_pLcdBuffer + 35) &= ~0xF0;
    *(_pLcdBuffer + 36) &= ~0xF0;
    *(_pLcdBuffer + 37) &= ~0xF0;
    
    switch(c)
    {
        case 'm':
            *(_pLcdBuffer + 34) |= 0x10;
            *(_pLcdBuffer + 35) |= 0x20;
            *(_pLcdBuffer + 36) |= 0x20;
            *(_pLcdBuffer + 37) |= 0x50;
            break;
        case 'u':
            *(_pLcdBuffer + 34) |= 0x10;
            //*(_pLcdBuffer + 35) |= 0x20;
            *(_pLcdBuffer + 36) |= 0x10;
            *(_pLcdBuffer + 37) |= 0x10;
            break;
        case 'n':
            //*(_pLcdBuffer + 34) |= 0x10;
            *(_pLcdBuffer + 35) |= 0x10;
            //*(_pLcdBuffer + 36) |= 0x20;
            *(_pLcdBuffer + 37) |= 0x50;
            break;
        case 'p':
            //*(_pLcdBuffer + 34) |= 0x10;
            *(_pLcdBuffer + 35) |= 0xC0;
            //*(_pLcdBuffer + 36) |= 0x20;
            *(_pLcdBuffer + 37) |= 0xD0;
            break;
        case 'f':
            //*(_pLcdBuffer + 34) |= 0x10;
            *(_pLcdBuffer + 35) |= 0x80;
            //*(_pLcdBuffer + 36) |= 0x20;
            *(_pLcdBuffer + 37) |= 0xD0;
            break;
        case 'a':
            *(_pLcdBuffer + 34) |= 0x50;
            *(_pLcdBuffer + 35) |= 0xA0;
            *(_pLcdBuffer + 36) |= 0x10;
            *(_pLcdBuffer + 37) |= 0x50;
            break;
        case 'K':
            //*(_pLcdBuffer + 34) |= 0x10;
            *(_pLcdBuffer + 35) |= 0x50;
            //*(_pLcdBuffer + 36) |= 0x20;
            *(_pLcdBuffer + 37) |= 0xD0;
            break;
        case 'M':
            *(_pLcdBuffer + 34) |= 0x50;
            *(_pLcdBuffer + 35) |= 0x40;
            *(_pLcdBuffer + 36) |= 0x80;
            *(_pLcdBuffer + 37) |= 0x90;
            break;
        case 'G':
            *(_pLcdBuffer + 34) |= 0x10;
            *(_pLcdBuffer + 35) |= 0xA0;
            *(_pLcdBuffer + 36) |= 0x10;
            *(_pLcdBuffer + 37) |= 0x90;
            break;
        case 'T':
            //*(_pLcdBuffer + 34) |= 0x10;
            *(_pLcdBuffer + 35) |= 0x80;
            *(_pLcdBuffer + 36) |= 0x60;
            //*(_pLcdBuffer + 37) |= 0x50;
            break;
        case 'V':
            //*(_pLcdBuffer + 34) |= 0x10;
            *(_pLcdBuffer + 35) |= 0x40;
            //*(_pLcdBuffer + 36) |= 0x20;
            *(_pLcdBuffer + 37) |= 0xB0;
            break;
            
        case 'A':
            *(_pLcdBuffer + 34) |= 0x50;
            *(_pLcdBuffer + 35) |= 0xA0;
            //*(_pLcdBuffer + 36) |= 0x20;
            *(_pLcdBuffer + 37) |= 0xD0;
            break;            
        case 'H':
            *(_pLcdBuffer + 34) |= 0x50;
            *(_pLcdBuffer + 35) |= 0x20;
            //*(_pLcdBuffer + 36) |= 0x20;
            *(_pLcdBuffer + 37) |= 0xD0;
            break;
        case 'C':
            //*(_pLcdBuffer + 34) |= 0x10;
            *(_pLcdBuffer + 35) |= 0x80;
            *(_pLcdBuffer + 36) |= 0x10;
            *(_pLcdBuffer + 37) |= 0x90;
            break;
        case 'B':
            *(_pLcdBuffer + 34) |= 0x50;
            *(_pLcdBuffer + 35) |= 0xA0;
            *(_pLcdBuffer + 36) |= 0x70;
            //*(_pLcdBuffer + 37) |= 0x50;
            break;
        case 'z':
            //*(_pLcdBuffer + 34) |= 0x10;
            //*(_pLcdBuffer + 35) |= 0x20;
            *(_pLcdBuffer + 36) |= 0x10;
            *(_pLcdBuffer + 37) |= 0x60;
            break;   
        case 'R':
            *(_pLcdBuffer + 34) |= 0x40;
            *(_pLcdBuffer + 35) |= 0xB0;
            //*(_pLcdBuffer + 36) |= 0x10;
            *(_pLcdBuffer + 37) |= 0xE0;
            break;
        case 'Z':
            //*(_pLcdBuffer + 34) |= 0x40;
            *(_pLcdBuffer + 35) |= 0xC0;
            *(_pLcdBuffer + 36) |= 0x10;
            *(_pLcdBuffer + 37) |= 0x20;
            break;
        case '\'':
            //*(_pLcdBuffer + 34) |= 0x40;
            *(_pLcdBuffer + 35) |= 0x40;
            //*(_pLcdBuffer + 36) |= 0x10;
            //*(_pLcdBuffer + 37) |= 0x20;
            break;
        
        default:
            break;
    }
}

void SetL1U2(char c)
{
    *(_pLcdBuffer + 32) &= ~0xF0;
    *(_pLcdBuffer + 33) &= ~0xF0;
    *(_pLcdBuffer + 34) &= ~0xA0;
    *(_pLcdBuffer + 39) &= ~0xF0;
    
    switch(c)
    {
        case 'm':
            *(_pLcdBuffer + 32) |= 0x30;
            *(_pLcdBuffer + 33) |= 0x40;
            *(_pLcdBuffer + 34) |= 0x20;
            *(_pLcdBuffer + 39) |= 0x20;
            break;
        case 'u':
            *(_pLcdBuffer + 32) |= 0x10;
            *(_pLcdBuffer + 33) |= 0x10;
            *(_pLcdBuffer + 34) |= 0x20;
            //*(_pLcdBuffer + 39) |= 0x20;
            break;
        case 'n':
            //*(_pLcdBuffer + 32) |= 0x30;
            *(_pLcdBuffer + 33) |= 0x40;
            *(_pLcdBuffer + 34) |= 0x20;
            *(_pLcdBuffer + 39) |= 0x10;
            break;
        case 'p':
            *(_pLcdBuffer + 32) |= 0x40;
            *(_pLcdBuffer + 33) |= 0x40;
            *(_pLcdBuffer + 34) |= 0xA0;
            *(_pLcdBuffer + 39) |= 0x80;
            break;
        case 'f':
            //*(_pLcdBuffer + 32) |= 0x30;
            *(_pLcdBuffer + 33) |= 0x40;
            *(_pLcdBuffer + 34) |= 0xA0;
            *(_pLcdBuffer + 39) |= 0x80;
            break;
        case 'a':
            *(_pLcdBuffer + 32) |= 0xB0;
            *(_pLcdBuffer + 33) |= 0x20;
            *(_pLcdBuffer + 34) |= 0x50;
            *(_pLcdBuffer + 39) |= 0x80;
            break;
        case 'K':
            *(_pLcdBuffer + 32) |= 0x40;
            *(_pLcdBuffer + 33) |= 0x40;
            *(_pLcdBuffer + 34) |= 0xA0;
            *(_pLcdBuffer + 39) |= 0x10;
            break;
        case 'M':
            *(_pLcdBuffer + 32) |= 0xD0;
            *(_pLcdBuffer + 33) |= 0x80;
            *(_pLcdBuffer + 34) |= 0xA0;
            //*(_pLcdBuffer + 39) |= 0x20;
            break;
        case 'G':
            *(_pLcdBuffer + 32) |= 0x30;
            *(_pLcdBuffer + 33) |= 0x10;
            *(_pLcdBuffer + 34) |= 0xA0;
            *(_pLcdBuffer + 39) |= 0x80;
            break;
        case 'T':
            //*(_pLcdBuffer + 32) |= 0x30;
            //*(_pLcdBuffer + 33) |= 0x40;
            //*(_pLcdBuffer + 34) |= 0x20;
            *(_pLcdBuffer + 39) |= 0xE0;
            break;
        case 'V':
            *(_pLcdBuffer + 32) |= 0x40;
            *(_pLcdBuffer + 33) |= 0x20;
            *(_pLcdBuffer + 34) |= 0xA0;
            //*(_pLcdBuffer + 39) |= 0x20;
            break;
            
        case 'A':
            *(_pLcdBuffer + 32) |= 0xB0;
            *(_pLcdBuffer + 33) |= 0x40;
            *(_pLcdBuffer + 34) |= 0xA0;
            *(_pLcdBuffer + 39) |= 0x80;
            break;            
        case 'H':
            *(_pLcdBuffer + 32) |= 0xB0;
            *(_pLcdBuffer + 33) |= 0x40;
            *(_pLcdBuffer + 34) |= 0xA0;
            //*(_pLcdBuffer + 39) |= 0x20;
            break;
        case 'C':
            //*(_pLcdBuffer + 32) |= 0x30;
            *(_pLcdBuffer + 33) |= 0x10;
            *(_pLcdBuffer + 34) |= 0xA0;
            *(_pLcdBuffer + 39) |= 0x80;
            break;
        case 'B':
            *(_pLcdBuffer + 32) |= 0xB0;
            *(_pLcdBuffer + 33) |= 0x10;
            //*(_pLcdBuffer + 34) |= 0x20;
            *(_pLcdBuffer + 39) |= 0xE0;
            break;
        case 'z':
            //*(_pLcdBuffer + 32) |= 0x30;
            *(_pLcdBuffer + 33) |= 0x70;
            //*(_pLcdBuffer + 34) |= 0x20;
            //*(_pLcdBuffer + 39) |= 0x20;
            break;        
        case 'R':
            *(_pLcdBuffer + 32) |= 0xA0;
            *(_pLcdBuffer + 33) |= 0x60;
            *(_pLcdBuffer + 34) |= 0x80;
            *(_pLcdBuffer + 39) |= 0x90;
            break;
        case 'Z':
            *(_pLcdBuffer + 32) |= 0x40;
            *(_pLcdBuffer + 33) |= 0x30;
            //*(_pLcdBuffer + 34) |= 0x20;
            *(_pLcdBuffer + 39) |= 0x80;
            break;
        case '\'':
            *(_pLcdBuffer + 32) |= 0x40;
            //*(_pLcdBuffer + 33) |= 0x70;
            //*(_pLcdBuffer + 34) |= 0x20;
            //*(_pLcdBuffer + 39) |= 0x20;
            break;
            
        default:
            break;
    }
}

void SetL1U3(char c)
{
    *(_pLcdBuffer + 40) &= ~0xF0;
    *(_pLcdBuffer + 41) &= ~0xF0;
    *(_pLcdBuffer + 42) &= ~0xF0;
    *(_pLcdBuffer + 43) &= ~0x50;
    
    switch(c)
    {
        case 'm':
            *(_pLcdBuffer + 40) |= 0x50;
            *(_pLcdBuffer + 41) |= 0x20;
            *(_pLcdBuffer + 42) |= 0x20;
            *(_pLcdBuffer + 43) |= 0x10;
            break;
        case 'u':
            *(_pLcdBuffer + 40) |= 0x10;
            *(_pLcdBuffer + 41) |= 0x10;
            //*(_pLcdBuffer + 42) |= 0x20;
            *(_pLcdBuffer + 43) |= 0x10;
            break;
        case 'n':
            *(_pLcdBuffer + 40) |= 0x50;
            //*(_pLcdBuffer + 41) |= 0x20;
            *(_pLcdBuffer + 42) |= 0x10;
            //*(_pLcdBuffer + 43) |= 0x10;
            break;
        case 'p':
            *(_pLcdBuffer + 40) |= 0xD0;
            //*(_pLcdBuffer + 41) |= 0x20;
            *(_pLcdBuffer + 42) |= 0xC0;
            //*(_pLcdBuffer + 43) |= 0x10;
            break;
        case 'f':
            *(_pLcdBuffer + 40) |= 0xD0;
            //*(_pLcdBuffer + 41) |= 0x20;
            *(_pLcdBuffer + 42) |= 0x80;
            //*(_pLcdBuffer + 43) |= 0x10;
            break;
        case 'a':
            *(_pLcdBuffer + 40) |= 0x50;
            *(_pLcdBuffer + 41) |= 0x10;
            *(_pLcdBuffer + 42) |= 0xA0;
            *(_pLcdBuffer + 43) |= 0x50;
            break;
        case 'K':
            *(_pLcdBuffer + 40) |= 0xD0;
            //*(_pLcdBuffer + 41) |= 0x20;
            *(_pLcdBuffer + 42) |= 0x50;
            //*(_pLcdBuffer + 43) |= 0x10;
            break;
        case 'M':
            *(_pLcdBuffer + 40) |= 0x90;
            *(_pLcdBuffer + 41) |= 0x80;
            *(_pLcdBuffer + 42) |= 0x40;
            *(_pLcdBuffer + 43) |= 0x50;
            break;
        case 'G':
            *(_pLcdBuffer + 40) |= 0x90;
            *(_pLcdBuffer + 41) |= 0x10;
            *(_pLcdBuffer + 42) |= 0xA0;
            *(_pLcdBuffer + 43) |= 0x50;
            break;
        case 'T':
            //*(_pLcdBuffer + 40) |= 0x50;
            *(_pLcdBuffer + 41) |= 0x60;
            *(_pLcdBuffer + 42) |= 0x80;
            //*(_pLcdBuffer + 43) |= 0x10;
            break;
        case 'V':
            *(_pLcdBuffer + 40) |= 0xB0;
            //*(_pLcdBuffer + 41) |= 0x20;
            *(_pLcdBuffer + 42) |= 0x40;
            //*(_pLcdBuffer + 43) |= 0x10;
            break;
            
        case 'A':
            *(_pLcdBuffer + 40) |= 0xD0;
            //*(_pLcdBuffer + 41) |= 0x20;
            *(_pLcdBuffer + 42) |= 0xA0;
            *(_pLcdBuffer + 43) |= 0x50;
            break;            
        case 'H':
            *(_pLcdBuffer + 40) |= 0xD0;
            //*(_pLcdBuffer + 41) |= 0x20;
            *(_pLcdBuffer + 42) |= 0x20;
            *(_pLcdBuffer + 43) |= 0x50;
            break;
        case 'C':
            *(_pLcdBuffer + 40) |= 0x90;
            *(_pLcdBuffer + 41) |= 0x10;
            *(_pLcdBuffer + 42) |= 0x80;
            //*(_pLcdBuffer + 43) |= 0x10;
            break;
        case 'B':
            //*(_pLcdBuffer + 40) |= 0x50;
            *(_pLcdBuffer + 41) |= 0x70;
            *(_pLcdBuffer + 42) |= 0xA0;
            *(_pLcdBuffer + 43) |= 0x50;
            break;
        case 'z':
            *(_pLcdBuffer + 40) |= 0x60;
            *(_pLcdBuffer + 41) |= 0x10;
            //*(_pLcdBuffer + 42) |= 0x20;
            //*(_pLcdBuffer + 43) |= 0x10;
            break;        
        case 'R':
            *(_pLcdBuffer + 40) |= 0xE0;
            //*(_pLcdBuffer + 41) |= 0x10;
            *(_pLcdBuffer + 42) |= 0xB0;
            *(_pLcdBuffer + 43) |= 0x40;
            break;
        case 'Z':
            *(_pLcdBuffer + 40) |= 0x20;
            *(_pLcdBuffer + 41) |= 0x10;
            *(_pLcdBuffer + 42) |= 0xC0;
            //*(_pLcdBuffer + 43) |= 0x10;
            break;
        case '\'':
            //*(_pLcdBuffer + 40) |= 0x60;
            //*(_pLcdBuffer + 41) |= 0x10;
            *(_pLcdBuffer + 42) |= 0x40;
            //*(_pLcdBuffer + 43) |= 0x10;
            break;
        
        default:
            break;
    }
}

void SetL2U1(char c)
{
    *(_pLcdBuffer + 22) &= ~0x50;
    *(_pLcdBuffer + 23) &= ~0xF0;
    *(_pLcdBuffer + 24) &= ~0xF0;
    *(_pLcdBuffer + 25) &= ~0xF0;
    
    switch(c)
    {
        case 'm':
            *(_pLcdBuffer + 22) |= 0x10;
            *(_pLcdBuffer + 23) |= 0x20;
            *(_pLcdBuffer + 24) |= 0x20;
            *(_pLcdBuffer + 25) |= 0x50;
            break;
        case 'u':
            *(_pLcdBuffer + 22) |= 0x10;
            //*(_pLcdBuffer + 23) |= 0x20;
            *(_pLcdBuffer + 24) |= 0x10;
            *(_pLcdBuffer + 25) |= 0x10;
            break;
        case 'n':
            //*(_pLcdBuffer + 22) |= 0x10;
            *(_pLcdBuffer + 23) |= 0x10;
            //*(_pLcdBuffer + 24) |= 0x20;
            *(_pLcdBuffer + 25) |= 0x50;
            break;
        case 'p':
            //*(_pLcdBuffer + 22) |= 0x10;
            *(_pLcdBuffer + 23) |= 0xC0;
            //*(_pLcdBuffer + 24) |= 0x20;
            *(_pLcdBuffer + 25) |= 0xD0;
            break;
        case 'f':
            //*(_pLcdBuffer + 22) |= 0x10;
            *(_pLcdBuffer + 23) |= 0x80;
            //*(_pLcdBuffer + 24) |= 0x20;
            *(_pLcdBuffer + 25) |= 0xD0;
            break;
        case 'a':
            *(_pLcdBuffer + 22) |= 0x50;
            *(_pLcdBuffer + 23) |= 0xA0;
            *(_pLcdBuffer + 24) |= 0x10;
            *(_pLcdBuffer + 25) |= 0x50;
            break;
        case 'K':
            //*(_pLcdBuffer + 22) |= 0x10;
            *(_pLcdBuffer + 23) |= 0x50;
            //*(_pLcdBuffer + 24) |= 0x20;
            *(_pLcdBuffer + 25) |= 0xD0;
            break;
        case 'M':
            *(_pLcdBuffer + 22) |= 0x50;
            *(_pLcdBuffer + 23) |= 0x40;
            *(_pLcdBuffer + 24) |= 0x80;
            *(_pLcdBuffer + 25) |= 0x90;
            break;
        case 'G':
            *(_pLcdBuffer + 22) |= 0x10;
            *(_pLcdBuffer + 23) |= 0xA0;
            *(_pLcdBuffer + 24) |= 0x10;
            *(_pLcdBuffer + 25) |= 0x90;
            break;
        case 'T':
            //*(_pLcdBuffer + 22) |= 0x10;
            *(_pLcdBuffer + 23) |= 0x80;
            *(_pLcdBuffer + 24) |= 0x60;
            //*(_pLcdBuffer + 25) |= 0x50;
            break;
        case 'V':
            //*(_pLcdBuffer + 22) |= 0x10;
            *(_pLcdBuffer + 23) |= 0x40;
            //*(_pLcdBuffer + 24) |= 0x20;
            *(_pLcdBuffer + 25) |= 0xB0;
            break;
            
        case 'A':
            *(_pLcdBuffer + 22) |= 0x50;
            *(_pLcdBuffer + 23) |= 0xA0;
            //*(_pLcdBuffer + 24) |= 0x20;
            *(_pLcdBuffer + 25) |= 0xD0;
            break;            
        case 'H':
            *(_pLcdBuffer + 22) |= 0x50;
            *(_pLcdBuffer + 23) |= 0x20;
            //*(_pLcdBuffer + 24) |= 0x20;
            *(_pLcdBuffer + 25) |= 0xD0;
            break;
        case 'C':
            //*(_pLcdBuffer + 22) |= 0x10;
            *(_pLcdBuffer + 23) |= 0x80;
            *(_pLcdBuffer + 24) |= 0x10;
            *(_pLcdBuffer + 25) |= 0x90;
            break;
        case 'B':
            *(_pLcdBuffer + 22) |= 0x50;
            *(_pLcdBuffer + 23) |= 0xA0;
            *(_pLcdBuffer + 24) |= 0x70;
            //*(_pLcdBuffer + 25) |= 0x50;
            break;
        case 'z':
            //*(_pLcdBuffer + 22) |= 0x10;
            //*(_pLcdBuffer + 23) |= 0x20;
            *(_pLcdBuffer + 24) |= 0x10;
            *(_pLcdBuffer + 25) |= 0x60;
            break;   
        case 'R':
            *(_pLcdBuffer + 22) |= 0x40;
            *(_pLcdBuffer + 23) |= 0xB0;
            //*(_pLcdBuffer + 24) |= 0x10;
            *(_pLcdBuffer + 25) |= 0xE0;
            break;
        case 'Z':
            //*(_pLcdBuffer + 22) |= 0x10;
            *(_pLcdBuffer + 23) |= 0xC0;
            *(_pLcdBuffer + 24) |= 0x10;
            *(_pLcdBuffer + 25) |= 0x20;
            break;
        case '\'':
            //*(_pLcdBuffer + 22) |= 0x10;
            *(_pLcdBuffer + 23) |= 0x40;
            //*(_pLcdBuffer + 24) |= 0x10;
            //*(_pLcdBuffer + 25) |= 0x60;
            break;
        
        default:
            break;
    }
}

void SetL2U2(char c)
{
    *(_pLcdBuffer + 19) &= ~0xF0;
    *(_pLcdBuffer + 20) &= ~0xF0;
    *(_pLcdBuffer + 21) &= ~0xF0;
    *(_pLcdBuffer + 22) &= ~0xA0;
    
    switch(c)
    {
        case 'm':
            *(_pLcdBuffer + 19) |= 0x30;
            *(_pLcdBuffer + 20) |= 0x20;
            *(_pLcdBuffer + 21) |= 0x40;
            *(_pLcdBuffer + 22) |= 0x20;
            break;
        case 'u':
            *(_pLcdBuffer + 19) |= 0x10;
            //*(_pLcdBuffer + 20) |= 0x20;
            *(_pLcdBuffer + 21) |= 0x10;
            *(_pLcdBuffer + 22) |= 0x20;
            break;
        case 'n':
            //*(_pLcdBuffer + 19) |= 0x50;
            //*(_pLcdBuffer + 20) |= 0x20;
            *(_pLcdBuffer + 21) |= 0x40;
            *(_pLcdBuffer + 22) |= 0x30;
            break;
        case 'p':
            *(_pLcdBuffer + 19) |= 0x40;
            *(_pLcdBuffer + 20) |= 0x80;
            *(_pLcdBuffer + 21) |= 0x40;
            *(_pLcdBuffer + 22) |= 0xA0;
            break;
        case 'f':
            //*(_pLcdBuffer + 19) |= 0x50;
            *(_pLcdBuffer + 20) |= 0x80;
            *(_pLcdBuffer + 21) |= 0x40;
            *(_pLcdBuffer + 22) |= 0xA0;
            break;
        case 'a':
            *(_pLcdBuffer + 19) |= 0xB0;
            *(_pLcdBuffer + 20) |= 0x80;
            *(_pLcdBuffer + 21) |= 0x10;
            *(_pLcdBuffer + 22) |= 0x20;
            break;
        case 'K':
            *(_pLcdBuffer + 19) |= 0x40;
            *(_pLcdBuffer + 20) |= 0x10;
            *(_pLcdBuffer + 21) |= 0x40;
            *(_pLcdBuffer + 22) |= 0xA0;
            break;
        case 'M':
            *(_pLcdBuffer + 19) |= 0xD0;
            //*(_pLcdBuffer + 20) |= 0x20;
            *(_pLcdBuffer + 21) |= 0x80;
            *(_pLcdBuffer + 22) |= 0xA0;
            break;
        case 'G':
            *(_pLcdBuffer + 19) |= 0x30;
            *(_pLcdBuffer + 20) |= 0x80;
            *(_pLcdBuffer + 21) |= 0x10;
            *(_pLcdBuffer + 22) |= 0xA0;
            break;
        case 'T':
            //*(_pLcdBuffer + 19) |= 0x50;
            *(_pLcdBuffer + 20) |= 0xE0;
            //*(_pLcdBuffer + 21) |= 0x20;
            //*(_pLcdBuffer + 22) |= 0x10;
            break;
        case 'V':
            *(_pLcdBuffer + 19) |= 0x40;
            //*(_pLcdBuffer + 20) |= 0x20;
            *(_pLcdBuffer + 21) |= 0x20;
            *(_pLcdBuffer + 22) |= 0xA0;
            break;
            
        case 'A':
            *(_pLcdBuffer + 19) |= 0xB0;
            *(_pLcdBuffer + 20) |= 0x80;
            *(_pLcdBuffer + 21) |= 0x40;
            *(_pLcdBuffer + 22) |= 0xA0;
            break;            
        case 'H':
            *(_pLcdBuffer + 19) |= 0xB0;
            //*(_pLcdBuffer + 20) |= 0x20;
            *(_pLcdBuffer + 21) |= 0x40;
            *(_pLcdBuffer + 22) |= 0xA0;
            break;
        case 'C':
            //*(_pLcdBuffer + 19) |= 0x50;
            *(_pLcdBuffer + 20) |= 0x80;
            *(_pLcdBuffer + 21) |= 0x10;
            *(_pLcdBuffer + 22) |= 0xA0;
            break;
        case 'B':
            *(_pLcdBuffer + 19) |= 0xB0;
            *(_pLcdBuffer + 20) |= 0xD0;
            *(_pLcdBuffer + 21) |= 0x10;
            //*(_pLcdBuffer + 22) |= 0x10;
            break;
        case 'z':
            //*(_pLcdBuffer + 19) |= 0x50;
            //*(_pLcdBuffer + 20) |= 0x20;
            *(_pLcdBuffer + 21) |= 0x70;
            //*(_pLcdBuffer + 22) |= 0x10;
            break;     
        case 'R':
            *(_pLcdBuffer + 19) |= 0xA0;
            *(_pLcdBuffer + 20) |= 0x90;
            *(_pLcdBuffer + 21) |= 0x60;
            *(_pLcdBuffer + 22) |= 0x80;
            break;
        case 'Z':
            *(_pLcdBuffer + 19) |= 0x40;
            *(_pLcdBuffer + 20) |= 0x80;
            *(_pLcdBuffer + 21) |= 0x30;
            //*(_pLcdBuffer + 22) |= 0x10;
            break;
        case '\'':
            *(_pLcdBuffer + 19) |= 0x40;
            //*(_pLcdBuffer + 20) |= 0x20;
            //*(_pLcdBuffer + 21) |= 0x70;
            //*(_pLcdBuffer + 22) |= 0x10;
            break;
        
        default:
            break;
    }
}

void SetL2U3(char c)
{
    *(_pLcdBuffer + 15) &= ~0x50;
    *(_pLcdBuffer + 16) &= ~0xF0;
    *(_pLcdBuffer + 17) &= ~0xF0;
    *(_pLcdBuffer + 18) &= ~0xF0;
    
    switch(c)
    {
        case 'm':
            *(_pLcdBuffer + 15) |= 0x10;
            *(_pLcdBuffer + 16) |= 0x20;
            *(_pLcdBuffer + 17) |= 0x20;
            *(_pLcdBuffer + 18) |= 0x50;
            break;
        case 'u':
            *(_pLcdBuffer + 15) |= 0x10;
            //*(_pLcdBuffer + 16) |= 0x20;
            *(_pLcdBuffer + 17) |= 0x10;
            *(_pLcdBuffer + 18) |= 0x10;
            break;
        case 'n':
            //*(_pLcdBuffer + 15) |= 0x30;
            *(_pLcdBuffer + 16) |= 0x10;
            //*(_pLcdBuffer + 17) |= 0x40;
            *(_pLcdBuffer + 18) |= 0x50;
            break;
        case 'p':
            //*(_pLcdBuffer + 15) |= 0x30;
            *(_pLcdBuffer + 16) |= 0xC0;
            //*(_pLcdBuffer + 17) |= 0x40;
            *(_pLcdBuffer + 18) |= 0xD0;
            break;
        case 'f':
            //*(_pLcdBuffer + 15) |= 0x30;
            *(_pLcdBuffer + 16) |= 0x80;
            //*(_pLcdBuffer + 17) |= 0x40;
            *(_pLcdBuffer + 18) |= 0xD0;
            break;
        case 'a':
            *(_pLcdBuffer + 15) |= 0x50;
            *(_pLcdBuffer + 16) |= 0xA0;
            *(_pLcdBuffer + 17) |= 0x10;
            *(_pLcdBuffer + 18) |= 0x50;
            break;
        case 'K':
            //*(_pLcdBuffer + 15) |= 0x30;
            *(_pLcdBuffer + 16) |= 0x50;
            //*(_pLcdBuffer + 17) |= 0x40;
            *(_pLcdBuffer + 18) |= 0xD0;
            break;
        case 'M':
            *(_pLcdBuffer + 15) |= 0x50;
            *(_pLcdBuffer + 16) |= 0x40;
            *(_pLcdBuffer + 17) |= 0x80;
            *(_pLcdBuffer + 18) |= 0x90;
            break;
        case 'G':
            *(_pLcdBuffer + 15) |= 0x10;
            *(_pLcdBuffer + 16) |= 0xA0;
            *(_pLcdBuffer + 17) |= 0x10;
            *(_pLcdBuffer + 18) |= 0x90;
            break;
        case 'T':
            //*(_pLcdBuffer + 15) |= 0x30;
            *(_pLcdBuffer + 16) |= 0x80;
            *(_pLcdBuffer + 17) |= 0x60;
            //*(_pLcdBuffer + 18) |= 0x20;
            break;
        case 'V':
            //*(_pLcdBuffer + 15) |= 0x30;
            *(_pLcdBuffer + 16) |= 0x40;
            //*(_pLcdBuffer + 17) |= 0x40;
            *(_pLcdBuffer + 18) |= 0xB0;
            break;
            
        case 'A':
            *(_pLcdBuffer + 15) |= 0x50;
            *(_pLcdBuffer + 16) |= 0xA0;
            //*(_pLcdBuffer + 17) |= 0x40;
            *(_pLcdBuffer + 18) |= 0xD0;
            break;            
        case 'H':
            *(_pLcdBuffer + 15) |= 0x50;
            *(_pLcdBuffer + 16) |= 0x20;
            //*(_pLcdBuffer + 17) |= 0x40;
            *(_pLcdBuffer + 18) |= 0xD0;
            break;
        case 'C':
            //*(_pLcdBuffer + 15) |= 0x30;
            *(_pLcdBuffer + 16) |= 0x80;
            *(_pLcdBuffer + 17) |= 0x10;
            *(_pLcdBuffer + 18) |= 0x90;
            break;
        case 'B':
            *(_pLcdBuffer + 15) |= 0x50;
            *(_pLcdBuffer + 16) |= 0xA0;
            *(_pLcdBuffer + 17) |= 0x70;
            //*(_pLcdBuffer + 18) |= 0x20;
            break;
        case 'z':
            //*(_pLcdBuffer + 15) |= 0x30;
            //*(_pLcdBuffer + 16) |= 0x20;
            *(_pLcdBuffer + 17) |= 0x10;
            *(_pLcdBuffer + 18) |= 0x60;
            break;   
        case 'R':
            *(_pLcdBuffer + 15) |= 0x40;
            *(_pLcdBuffer + 16) |= 0xB0;
            //*(_pLcdBuffer + 17) |= 0x10;
            *(_pLcdBuffer + 18) |= 0xE0;
            break;
        case 'Z':
            //*(_pLcdBuffer + 15) |= 0x30;
            *(_pLcdBuffer + 16) |= 0xC0;
            *(_pLcdBuffer + 17) |= 0x10;
            *(_pLcdBuffer + 18) |= 0x20;
            break;
        case '\'':
            //*(_pLcdBuffer + 15) |= 0x30;
            *(_pLcdBuffer + 16) |= 0x40;
            //*(_pLcdBuffer + 17) |= 0x10;
            //*(_pLcdBuffer + 18) |= 0x60;
            break;
        
        default:
            break;
    }
}

void SetL3U1(char c)
{
    *(_pLcdBuffer + 22) &= ~0x05;
    *(_pLcdBuffer + 23) &= ~0x0F;
    *(_pLcdBuffer + 24) &= ~0x0F;
    *(_pLcdBuffer + 25) &= ~0x0F;
    
    switch(c)
    {
        case 'm':
            *(_pLcdBuffer + 22) |= 0x01;
            *(_pLcdBuffer + 23) |= 0x02;
            *(_pLcdBuffer + 24) |= 0x02;
            *(_pLcdBuffer + 25) |= 0x05;
            break;
        case 'u':
            *(_pLcdBuffer + 22) |= 0x01;
            //*(_pLcdBuffer + 23) |= 0x00;
            *(_pLcdBuffer + 24) |= 0x01;
            *(_pLcdBuffer + 25) |= 0x01;
            break;
        case 'n':
            //*(_pLcdBuffer + 22) |= 0x00;
            *(_pLcdBuffer + 23) |= 0x01;
            //*(_pLcdBuffer + 24) |= 0x00;
            *(_pLcdBuffer + 25) |= 0x05;
            break;
        case 'p':
            //*(_pLcdBuffer + 22) |= 0x00;
            *(_pLcdBuffer + 23) |= 0x0C;
            //*(_pLcdBuffer + 24) |= 0x00;
            *(_pLcdBuffer + 25) |= 0x0D;
            break;
        case 'f':
            //*(_pLcdBuffer + 22) |= 0x00;
            *(_pLcdBuffer + 23) |= 0x08;
            //*(_pLcdBuffer + 24) |= 0x00;
            *(_pLcdBuffer + 25) |= 0x0D;
            break;
        case 'a':
            *(_pLcdBuffer + 22) |= 0x05;
            *(_pLcdBuffer + 23) |= 0x0A;
            *(_pLcdBuffer + 24) |= 0x01;
            *(_pLcdBuffer + 25) |= 0x05;
            break;
        case 'K':
            //*(_pLcdBuffer + 22) |= 0x00;
            *(_pLcdBuffer + 23) |= 0x05;
            //*(_pLcdBuffer + 24) |= 0x00;
            *(_pLcdBuffer + 25) |= 0x0D;
            break;
        case 'M':
            *(_pLcdBuffer + 22) |= 0x05;
            *(_pLcdBuffer + 23) |= 0x04;
            *(_pLcdBuffer + 24) |= 0x08;
            *(_pLcdBuffer + 25) |= 0x09;
            break;
        case 'G':
            *(_pLcdBuffer + 22) |= 0x01;
            *(_pLcdBuffer + 23) |= 0x0A;
            *(_pLcdBuffer + 24) |= 0x01;
            *(_pLcdBuffer + 25) |= 0x09;
            break;
        case 'T':
            //*(_pLcdBuffer + 22) |= 0x00;
            *(_pLcdBuffer + 23) |= 0x08;
            *(_pLcdBuffer + 24) |= 0x06;
            //*(_pLcdBuffer + 25) |= 0x00;
            break;
        case 'V':
            //*(_pLcdBuffer + 22) |= 0x00;
            *(_pLcdBuffer + 23) |= 0x04;
            //*(_pLcdBuffer + 24) |= 0x00;
            *(_pLcdBuffer + 25) |= 0x0B;
            break;
            
        case 'A':
            *(_pLcdBuffer + 22) |= 0x05;
            *(_pLcdBuffer + 23) |= 0x0A;
            //*(_pLcdBuffer + 24) |= 0x00;
            *(_pLcdBuffer + 25) |= 0x0D;
            break;            
        case 'H':
            *(_pLcdBuffer + 22) |= 0x05;
            *(_pLcdBuffer + 23) |= 0x02;
            //*(_pLcdBuffer + 24) |= 0x00;
            *(_pLcdBuffer + 25) |= 0x0D;
            break;
        case 'C':
            //*(_pLcdBuffer + 22) |= 0x00;
            *(_pLcdBuffer + 23) |= 0x08;
            *(_pLcdBuffer + 24) |= 0x01;
            *(_pLcdBuffer + 25) |= 0x09;
            break;
        case 'B':
            *(_pLcdBuffer + 22) |= 0x05;
            *(_pLcdBuffer + 23) |= 0x0A;
            *(_pLcdBuffer + 24) |= 0x07;
            //*(_pLcdBuffer + 25) |= 0x00;
            break;
        case 'z':
            //*(_pLcdBuffer + 22) |= 0x00;
            //*(_pLcdBuffer + 23) |= 0x00;
            *(_pLcdBuffer + 24) |= 0x01;
            *(_pLcdBuffer + 25) |= 0x06;
            break;    
        case 'R':
            *(_pLcdBuffer + 22) |= 0x04;
            *(_pLcdBuffer + 23) |= 0x0B;
            //*(_pLcdBuffer + 24) |= 0x01;
            *(_pLcdBuffer + 25) |= 0x0E;
            break;
        case 'Z':
            //*(_pLcdBuffer + 22) |= 0x00;
            *(_pLcdBuffer + 23) |= 0x0C;
            *(_pLcdBuffer + 24) |= 0x01;
            *(_pLcdBuffer + 25) |= 0x02;
            break;
        case '\'':
            //*(_pLcdBuffer + 22) |= 0x00;
            *(_pLcdBuffer + 23) |= 0x04;
            //*(_pLcdBuffer + 24) |= 0x01;
            //*(_pLcdBuffer + 25) |= 0x06;
            break;
        
        default:
            break;
    }
}

void SetL3U2(char c)
{
    *(_pLcdBuffer + 19) &= ~0x0F;
    *(_pLcdBuffer + 20) &= ~0x0F;
    *(_pLcdBuffer + 21) &= ~0x0F;
    *(_pLcdBuffer + 22) &= ~0x0A;
    
    switch(c)
    {
        case 'm':
            *(_pLcdBuffer + 19) |= 0x03;
            *(_pLcdBuffer + 20) |= 0x02;
            *(_pLcdBuffer + 21) |= 0x04;
            *(_pLcdBuffer + 22) |= 0x02;
            break;
        case 'u':
            *(_pLcdBuffer + 19) |= 0x01;
            //*(_pLcdBuffer + 20) |= 0x01;
            *(_pLcdBuffer + 21) |= 0x01;
            *(_pLcdBuffer + 22) |= 0x02;
            break;
        case 'n':
            //*(_pLcdBuffer + 19) |= 0x00;
            *(_pLcdBuffer + 20) |= 0x01;
            *(_pLcdBuffer + 21) |= 0x04;
            *(_pLcdBuffer + 22) |= 0x02;
            break;
        case 'p':
            *(_pLcdBuffer + 19) |= 0x04;
            *(_pLcdBuffer + 20) |= 0x08;
            *(_pLcdBuffer + 21) |= 0x04;
            *(_pLcdBuffer + 22) |= 0x0A;
            break;
        case 'f':
            //*(_pLcdBuffer + 19) |= 0x00;
            *(_pLcdBuffer + 20) |= 0x08;
            *(_pLcdBuffer + 21) |= 0x04;
            *(_pLcdBuffer + 22) |= 0x0A;
            break;
        case 'a':
            *(_pLcdBuffer + 19) |= 0x0B;
            *(_pLcdBuffer + 20) |= 0x08;
            *(_pLcdBuffer + 21) |= 0x05;
            *(_pLcdBuffer + 22) |= 0x02;
            break;
        case 'K':
            *(_pLcdBuffer + 19) |= 0x04;
            *(_pLcdBuffer + 20) |= 0x01;
            *(_pLcdBuffer + 21) |= 0x04;
            *(_pLcdBuffer + 22) |= 0x0A;
            break;
        case 'M':
            *(_pLcdBuffer + 19) |= 0x0D;
            //*(_pLcdBuffer + 20) |= 0x00;
            *(_pLcdBuffer + 21) |= 0x08;
            *(_pLcdBuffer + 22) |= 0x0A;
            break;
        case 'G':
            *(_pLcdBuffer + 19) |= 0x03;
            *(_pLcdBuffer + 20) |= 0x08;
            *(_pLcdBuffer + 21) |= 0x01;
            *(_pLcdBuffer + 22) |= 0x0A;
            break;
        case 'T':
            //*(_pLcdBuffer + 19) |= 0x00;
            *(_pLcdBuffer + 20) |= 0x0E;
            //*(_pLcdBuffer + 21) |= 0x00;
            //*(_pLcdBuffer + 22) |= 0x00;
            break;
        case 'V':
            *(_pLcdBuffer + 19) |= 0x04;
            //*(_pLcdBuffer + 20) |= 0x00;
            *(_pLcdBuffer + 21) |= 0x02;
            *(_pLcdBuffer + 22) |= 0x0A;
            break;
            
        case 'A':
            *(_pLcdBuffer + 19) |= 0x0B;
            *(_pLcdBuffer + 20) |= 0x08;
            *(_pLcdBuffer + 21) |= 0x04;
            *(_pLcdBuffer + 22) |= 0x0A;
            break;            
        case 'H':
            *(_pLcdBuffer + 19) |= 0x0B;
            //*(_pLcdBuffer + 20) |= 0x00;
            *(_pLcdBuffer + 21) |= 0x04;
            *(_pLcdBuffer + 22) |= 0x0A;
            break;
        case 'C':
            //*(_pLcdBuffer + 19) |= 0x00;
            *(_pLcdBuffer + 20) |= 0x08;
            *(_pLcdBuffer + 21) |= 0x01;
            *(_pLcdBuffer + 22) |= 0x0A;
            break;
        case 'B':
            *(_pLcdBuffer + 19) |= 0x0B;
            *(_pLcdBuffer + 20) |= 0x0E;
            *(_pLcdBuffer + 21) |= 0x01;
            //*(_pLcdBuffer + 22) |= 0x00;
            break;
        case 'z':
            //*(_pLcdBuffer + 19) |= 0x00;
            //*(_pLcdBuffer + 20) |= 0x00;
            *(_pLcdBuffer + 21) |= 0x07;
            //*(_pLcdBuffer + 22) |= 0x00;
            break;   
        case 'R':
            *(_pLcdBuffer + 19) |= 0x0A;
            *(_pLcdBuffer + 20) |= 0x09;
            *(_pLcdBuffer + 21) |= 0x06;
            *(_pLcdBuffer + 22) |= 0x08;
            break;
        case 'Z':
            *(_pLcdBuffer + 19) |= 0x04;
            *(_pLcdBuffer + 20) |= 0x08;
            *(_pLcdBuffer + 21) |= 0x03;
            //*(_pLcdBuffer + 22) |= 0x00;
            break;
        case '\'':
            *(_pLcdBuffer + 19) |= 0x04;
            //*(_pLcdBuffer + 20) |= 0x00;
            //*(_pLcdBuffer + 21) |= 0x07;
            //*(_pLcdBuffer + 22) |= 0x00;
            break;
        
        default:
            break;
    }
}

void SetL3U3(char c)
{
    *(_pLcdBuffer + 15) &= ~0x05;
    *(_pLcdBuffer + 16) &= ~0x0F;
    *(_pLcdBuffer + 17) &= ~0x0F;
    *(_pLcdBuffer + 18) &= ~0x0F;
    
    switch(c)
    {
        case 'm':
            *(_pLcdBuffer + 15) |= 0x01;
            *(_pLcdBuffer + 16) |= 0x02;
            *(_pLcdBuffer + 17) |= 0x02;
            *(_pLcdBuffer + 18) |= 0x05;
            break;
        case 'u':
            *(_pLcdBuffer + 15) |= 0x01;
            //*(_pLcdBuffer + 16) |= 0x00;
            *(_pLcdBuffer + 17) |= 0x01;
            *(_pLcdBuffer + 18) |= 0x01;
            break;
        case 'n':
            //*(_pLcdBuffer + 15) |= 0x00;
            *(_pLcdBuffer + 16) |= 0x01;
            //*(_pLcdBuffer + 17) |= 0x00;
            *(_pLcdBuffer + 18) |= 0x05;
            break;
        case 'p':
            //*(_pLcdBuffer + 15) |= 0x00;
            *(_pLcdBuffer + 16) |= 0x0C;
            //*(_pLcdBuffer + 17) |= 0x00;
            *(_pLcdBuffer + 18) |= 0x0D;
            break;
        case 'f':
            //*(_pLcdBuffer + 15) |= 0x00;
            *(_pLcdBuffer + 16) |= 0x08;
            //*(_pLcdBuffer + 17) |= 0x00;
            *(_pLcdBuffer + 18) |= 0x0D;
            break;
        case 'a':
            *(_pLcdBuffer + 15) |= 0x05;
            *(_pLcdBuffer + 16) |= 0x0A;
            *(_pLcdBuffer + 17) |= 0x01;
            *(_pLcdBuffer + 18) |= 0x05;
            break;
        case 'K':
            //*(_pLcdBuffer + 15) |= 0x00;
            *(_pLcdBuffer + 16) |= 0x05;
            //*(_pLcdBuffer + 17) |= 0x00;
            *(_pLcdBuffer + 18) |= 0x0D;
            break;
        case 'M':
            *(_pLcdBuffer + 15) |= 0x05;
            *(_pLcdBuffer + 16) |= 0x04;
            *(_pLcdBuffer + 17) |= 0x08;
            *(_pLcdBuffer + 18) |= 0x09;
            break;
        case 'G':
            *(_pLcdBuffer + 15) |= 0x01;
            *(_pLcdBuffer + 16) |= 0x0A;
            *(_pLcdBuffer + 17) |= 0x01;
            *(_pLcdBuffer + 18) |= 0x09;
            break;
        case 'T':
            //*(_pLcdBuffer + 15) |= 0x00;
            *(_pLcdBuffer + 16) |= 0x08;
            *(_pLcdBuffer + 17) |= 0x06;
            //*(_pLcdBuffer + 18) |= 0x00;
            break;
        case 'V':
            //*(_pLcdBuffer + 15) |= 0x00;
            *(_pLcdBuffer + 16) |= 0x04;
            //*(_pLcdBuffer + 17) |= 0x00;
            *(_pLcdBuffer + 18) |= 0x0B;
            break;
            
        case 'A':
            *(_pLcdBuffer + 15) |= 0x05;
            *(_pLcdBuffer + 16) |= 0x0A;
            //*(_pLcdBuffer + 17) |= 0x00;
            *(_pLcdBuffer + 18) |= 0x0D;
            break;            
        case 'H':
            *(_pLcdBuffer + 15) |= 0x05;
            *(_pLcdBuffer + 16) |= 0x02;
            //*(_pLcdBuffer + 17) |= 0x00;
            *(_pLcdBuffer + 18) |= 0x0D;
            break;
        case 'C':
            //*(_pLcdBuffer + 15) |= 0x00;
            *(_pLcdBuffer + 16) |= 0x08;
            *(_pLcdBuffer + 17) |= 0x01;
            *(_pLcdBuffer + 18) |= 0x09;
            break;
        case 'B':
            *(_pLcdBuffer + 15) |= 0x05;
            *(_pLcdBuffer + 16) |= 0x0A;
            *(_pLcdBuffer + 17) |= 0x07;
            //*(_pLcdBuffer + 18) |= 0x00;
            break;
        case 'z':
            //*(_pLcdBuffer + 15) |= 0x00;
            //*(_pLcdBuffer + 16) |= 0x00;
            *(_pLcdBuffer + 17) |= 0x01;
            *(_pLcdBuffer + 18) |= 0x06;
            break; 
        case 'R':
            *(_pLcdBuffer + 15) |= 0x04;
            *(_pLcdBuffer + 16) |= 0x0B;
            //*(_pLcdBuffer + 17) |= 0x01;
            *(_pLcdBuffer + 18) |= 0x0E;
            break;
        case 'Z':
            //*(_pLcdBuffer + 15) |= 0x00;
            *(_pLcdBuffer + 16) |= 0x0C;
            *(_pLcdBuffer + 17) |= 0x01;
            *(_pLcdBuffer + 18) |= 0x02;
            break;
        case '\'':
            //*(_pLcdBuffer + 15) |= 0x00;
            *(_pLcdBuffer + 16) |= 0x04;
            //*(_pLcdBuffer + 17) |= 0x01;
            //*(_pLcdBuffer + 18) |= 0x06;
            break;
        
        default:
            break;
    }
}

void SetR2Sign(char c)
{
	if(c == '-')
		*(_pLcdBuffer + 15) |= 0x02;
	else
		*(_pLcdBuffer + 15) &= ~0x02; 	
}

void SetR2Point(int idx, char c)
{
	switch(idx)
	{
		case 0 : *(_pLcdBuffer + 13) = (c == '.') ? *(_pLcdBuffer + 13) | 0x01 : *(_pLcdBuffer + 13) & ~0x01;
			break;
		case 1 : *(_pLcdBuffer + 11) = (c == '.') ? *(_pLcdBuffer + 11) | 0x01 : *(_pLcdBuffer + 11) & ~0x01;
			break;
		case 2 : *(_pLcdBuffer + 9) = (c == '.') ? *(_pLcdBuffer + 9) | 0x01 : *(_pLcdBuffer + 9) & ~0x01;
			break;
		case 3 : *(_pLcdBuffer + 7) = (c == '.') ? *(_pLcdBuffer + 7) | 0x01 : *(_pLcdBuffer + 7) & ~0x01;
			break;
	}		
}

void SetL1Sign(char c)
{
	if(c == '-')
		*(_pLcdBuffer + 40) |= 0x08;
	else
		*(_pLcdBuffer + 40) &= ~0x08;
}

void SetL2Sign(char c)
{
	if(c == '-')
		*(_pLcdBuffer + 41) |= 0x08;
	else
		*(_pLcdBuffer + 41) &= ~0x08;
}

void SetL3Sign(char c)
{
	if(c == '-')
		*(_pLcdBuffer + 43) |= 0x08;
	else
		*(_pLcdBuffer + 43) &= ~0x08;
}

void SetL2Num(int idx, char c)
{
	if(idx == 0)
	{
		*(_pLcdBuffer + 31) &= ~0xF0; *(_pLcdBuffer + 30) &= ~0xF0;
		switch(c)
		{
			case '0' :  *(_pLcdBuffer + 31) |= 0xF0; *(_pLcdBuffer + 30) |= 0xA0; 
				break;
			case '1' :  *(_pLcdBuffer + 31) |= 0x00; *(_pLcdBuffer + 30) |= 0xA0; 
				break;
			case '2' :  *(_pLcdBuffer + 31) |= 0xB0; *(_pLcdBuffer + 30) |= 0xC0; 
				break;
			case '3' :  *(_pLcdBuffer + 31) |= 0x90; *(_pLcdBuffer + 30) |= 0xE0; 
				break;
			case '4' :  *(_pLcdBuffer + 31) |= 0x40; *(_pLcdBuffer + 30) |= 0xE0; 
				break;
			case '5' :  *(_pLcdBuffer + 31) |= 0xD0; *(_pLcdBuffer + 30) |= 0x60; 
				break;
			case '6' :  *(_pLcdBuffer + 31) |= 0xF0; *(_pLcdBuffer + 30) |= 0x60; 
				break;
			case '7' :  *(_pLcdBuffer + 31) |= 0x80; *(_pLcdBuffer + 30) |= 0xA0; 
				break;
			case '8' :  *(_pLcdBuffer + 31) |= 0xF0; *(_pLcdBuffer + 30) |= 0xE0; 
				break;
			case '9' :  *(_pLcdBuffer + 31) |= 0xC0; *(_pLcdBuffer + 30) |= 0xE0; 
				break;
		}		
	}
	else if(idx == 1)
	{
		*(_pLcdBuffer + 29) &= ~0xF0; *(_pLcdBuffer + 28) &= ~0xF0;
		switch(c)
		{
			case '0' :  *(_pLcdBuffer + 29) |= 0xF0; *(_pLcdBuffer + 28) |= 0xA0; 
				break;
			case '1' :  *(_pLcdBuffer + 29) |= 0x00; *(_pLcdBuffer + 28) |= 0xA0; 
				break;
			case '2' :  *(_pLcdBuffer + 29) |= 0xB0; *(_pLcdBuffer + 28) |= 0xC0; 
				break;
			case '3' :  *(_pLcdBuffer + 29) |= 0x90; *(_pLcdBuffer + 28) |= 0xE0; 
				break;
			case '4' :  *(_pLcdBuffer + 29) |= 0x40; *(_pLcdBuffer + 28) |= 0xE0; 
				break;
			case '5' :  *(_pLcdBuffer + 29) |= 0xD0; *(_pLcdBuffer + 28) |= 0x60; 
				break;
			case '6' :  *(_pLcdBuffer + 29) |= 0xF0; *(_pLcdBuffer + 28) |= 0x60; 
				break;
			case '7' :  *(_pLcdBuffer + 29) |= 0x80; *(_pLcdBuffer + 28) |= 0xA0; 
				break;
			case '8' :  *(_pLcdBuffer + 29) |= 0xF0; *(_pLcdBuffer + 28) |= 0xE0; 
				break;
			case '9' :  *(_pLcdBuffer + 29) |= 0xC0; *(_pLcdBuffer + 28) |= 0xE0; 
				break;
		}
	}
	else if(idx == 2)
	{
		*(_pLcdBuffer + 27) &= ~0xF0; *(_pLcdBuffer + 26) &= ~0xF0;
		switch(c)
		{
			case '0' :  *(_pLcdBuffer + 27) |= 0xF0; *(_pLcdBuffer + 26) |= 0xA0; 
				break;
			case '1' :  *(_pLcdBuffer + 27) |= 0x00; *(_pLcdBuffer + 26) |= 0xA0; 
				break;
			case '2' :  *(_pLcdBuffer + 27) |= 0xB0; *(_pLcdBuffer + 26) |= 0xC0; 
				break;
			case '3' :  *(_pLcdBuffer + 27) |= 0x90; *(_pLcdBuffer + 26) |= 0xE0; 
				break;
			case '4' :  *(_pLcdBuffer + 27) |= 0x40; *(_pLcdBuffer + 26) |= 0xE0; 
				break;
			case '5' :  *(_pLcdBuffer + 27) |= 0xD0; *(_pLcdBuffer + 26) |= 0x60; 
				break;
			case '6' :  *(_pLcdBuffer + 27) |= 0xF0; *(_pLcdBuffer + 26) |= 0x60; 
				break;
			case '7' :  *(_pLcdBuffer + 27) |= 0x80; *(_pLcdBuffer + 26) |= 0xA0; 
				break;
			case '8' :  *(_pLcdBuffer + 27) |= 0xF0; *(_pLcdBuffer + 26) |= 0xE0; 
				break;
			case '9' :  *(_pLcdBuffer + 27) |= 0xC0; *(_pLcdBuffer + 26) |= 0xE0; 
				break;
		}
	}	
}

void SetL2Point(int idx, char c)
{
	switch(idx)
	{
		case 0 : *(_pLcdBuffer + 30) = (c == '.') ? *(_pLcdBuffer + 30) | 0x10 : *(_pLcdBuffer + 30) & ~0x10;
			break;
		case 1 : *(_pLcdBuffer + 28) = (c == '.') ? *(_pLcdBuffer + 28) | 0x10 : *(_pLcdBuffer + 28) & ~0x10;
			break;
		case 2 : *(_pLcdBuffer + 26) = (c == '.') ? *(_pLcdBuffer + 26) | 0x10 : *(_pLcdBuffer + 26) & ~0x10;
			break;
	}		
}

void SetL3Num(int idx, char c)
{
	if(idx == 0)
	{
		*(_pLcdBuffer + 31) &= ~0x0F; *(_pLcdBuffer + 30) &= ~0x0E;
		switch(c)
		{
			case '0' :  *(_pLcdBuffer + 31) |= 0x0F; *(_pLcdBuffer + 30) |= 0x0A; 
				break;
			case '1' :  *(_pLcdBuffer + 31) |= 0x00; *(_pLcdBuffer + 30) |= 0x0A; 
				break;
			case '2' :  *(_pLcdBuffer + 31) |= 0x0B; *(_pLcdBuffer + 30) |= 0x0C; 
				break;
			case '3' :  *(_pLcdBuffer + 31) |= 0x09; *(_pLcdBuffer + 30) |= 0x0E; 
				break;
			case '4' :  *(_pLcdBuffer + 31) |= 0x04; *(_pLcdBuffer + 30) |= 0x0E; 
				break;
			case '5' :  *(_pLcdBuffer + 31) |= 0x0D; *(_pLcdBuffer + 30) |= 0x06; 
				break;
			case '6' :  *(_pLcdBuffer + 31) |= 0x0F; *(_pLcdBuffer + 30) |= 0x06; 
				break;
			case '7' :  *(_pLcdBuffer + 31) |= 0x08; *(_pLcdBuffer + 30) |= 0x0A; 
				break;
			case '8' :  *(_pLcdBuffer + 31) |= 0x0F; *(_pLcdBuffer + 30) |= 0x0E; 
				break;
			case '9' :  *(_pLcdBuffer + 31) |= 0x0C; *(_pLcdBuffer + 30) |= 0x0E; 
				break;
		}
	}
	else if(idx == 1)
	{
		*(_pLcdBuffer + 29) &= ~0x0F; *(_pLcdBuffer + 28) &= ~0x0E;
		switch(c)
		{
			case '0' :  *(_pLcdBuffer + 29) |= 0x0F; *(_pLcdBuffer + 28) |= 0x0A; 
				break;
			case '1' :  *(_pLcdBuffer + 29) |= 0x00; *(_pLcdBuffer + 28) |= 0x0A; 
				break;
			case '2' :  *(_pLcdBuffer + 29) |= 0x0B; *(_pLcdBuffer + 28) |= 0x0C; 
				break;
			case '3' :  *(_pLcdBuffer + 29) |= 0x09; *(_pLcdBuffer + 28) |= 0x0E; 
				break;
			case '4' :  *(_pLcdBuffer + 29) |= 0x04; *(_pLcdBuffer + 28) |= 0x0E; 
				break;
			case '5' :  *(_pLcdBuffer + 29) |= 0x0D; *(_pLcdBuffer + 28) |= 0x06; 
				break;
			case '6' :  *(_pLcdBuffer + 29) |= 0x0F; *(_pLcdBuffer + 28) |= 0x06; 
				break;
			case '7' :  *(_pLcdBuffer + 29) |= 0x08; *(_pLcdBuffer + 28) |= 0x0A; 
				break;
			case '8' :  *(_pLcdBuffer + 29) |= 0x0F; *(_pLcdBuffer + 28) |= 0x0E; 
				break;
			case '9' :  *(_pLcdBuffer + 29) |= 0x0C; *(_pLcdBuffer + 28) |= 0x0E; 
				break;
		}
	}
	else if(idx == 2)
	{
	 	*(_pLcdBuffer + 27) &= ~0x0F; *(_pLcdBuffer + 26) &= ~0x0E;
		switch(c)
		{
			case '0' :  *(_pLcdBuffer + 27) |= 0x0F; *(_pLcdBuffer + 26) |= 0x0A; 
				break;
			case '1' :  *(_pLcdBuffer + 27) |= 0x00; *(_pLcdBuffer + 26) |= 0x0A; 
				break;
			case '2' :  *(_pLcdBuffer + 27) |= 0x0B; *(_pLcdBuffer + 26) |= 0x0C; 
				break;
			case '3' :  *(_pLcdBuffer + 27) |= 0x09; *(_pLcdBuffer + 26) |= 0x0E; 
				break;
			case '4' :  *(_pLcdBuffer + 27) |= 0x04; *(_pLcdBuffer + 26) |= 0x0E; 
				break;
			case '5' :  *(_pLcdBuffer + 27) |= 0x0D; *(_pLcdBuffer + 26) |= 0x06; 
				break;
			case '6' :  *(_pLcdBuffer + 27) |= 0x0F; *(_pLcdBuffer + 26) |= 0x06; 
				break;
			case '7' :  *(_pLcdBuffer + 27) |= 0x08; *(_pLcdBuffer + 26) |= 0x0A; 
				break;
			case '8' :  *(_pLcdBuffer + 27) |= 0x0F; *(_pLcdBuffer + 26) |= 0x0E; 
				break;
			case '9' :  *(_pLcdBuffer + 27) |= 0x0C; *(_pLcdBuffer + 26) |= 0x0E; 
				break;
		}
	}	
}

void SetL3Point(int idx, char c)
{
	switch(idx)
	{
		case 0 : *(_pLcdBuffer + 30) = (c == '.') ? *(_pLcdBuffer + 30) | 0x01 : *(_pLcdBuffer + 30) & ~0x01;
			break;
		case 1 : *(_pLcdBuffer + 28) = (c == '.') ? *(_pLcdBuffer + 28) | 0x01 : *(_pLcdBuffer + 28) & ~0x01;
			break;
		case 2 : *(_pLcdBuffer + 26) = (c == '.') ? *(_pLcdBuffer + 26) | 0x01 : *(_pLcdBuffer + 26) & ~0x01;
			break;
	}		
}

void SetL1Num(int idx, char c)
{
	if(idx == 0)
	{
		*(_pLcdBuffer + 32) &= ~0x0F; *(_pLcdBuffer + 33) &= ~0x07; 
		switch(c)
		{
			case '0' :  *(_pLcdBuffer + 32) |= 0x0F; *(_pLcdBuffer + 33) |= 0x05; 
				break;
			case '1' :  *(_pLcdBuffer + 32) |= 0x00; *(_pLcdBuffer + 33) |= 0x05; 
				break;
			case '2' :  *(_pLcdBuffer + 32) |= 0x0D; *(_pLcdBuffer + 33) |= 0x03; 
				break;
			case '3' :  *(_pLcdBuffer + 32) |= 0x09; *(_pLcdBuffer + 33) |= 0x07; 
				break;
			case '4' :  *(_pLcdBuffer + 32) |= 0x02; *(_pLcdBuffer + 33) |= 0x07; 
				break;
			case '5' :  *(_pLcdBuffer + 32) |= 0x0B; *(_pLcdBuffer + 33) |= 0x06; 
				break;
			case '6' :  *(_pLcdBuffer + 32) |= 0x0F; *(_pLcdBuffer + 33) |= 0x06; 
				break;
			case '7' :  *(_pLcdBuffer + 32) |= 0x01; *(_pLcdBuffer + 33) |= 0x05; 
				break;
			case '8' :  *(_pLcdBuffer + 32) |= 0x0F; *(_pLcdBuffer + 33) |= 0x07; 
				break;
			case '9' :  *(_pLcdBuffer + 32) |= 0x03; *(_pLcdBuffer + 33) |= 0x07; 
				break;
		}
	}
	else if(idx == 1)
	{
		*(_pLcdBuffer + 34) &= ~0x0F; *(_pLcdBuffer + 35) &= ~0x07; 
		switch(c)
		{
			case '0' :  *(_pLcdBuffer + 34) |= 0x0F; *(_pLcdBuffer + 35) |= 0x05; 
				break;
			case '1' :  *(_pLcdBuffer + 34) |= 0x00; *(_pLcdBuffer + 35) |= 0x05; 
				break;
			case '2' :  *(_pLcdBuffer + 34) |= 0x0D; *(_pLcdBuffer + 35) |= 0x03; 
				break;
			case '3' :  *(_pLcdBuffer + 34) |= 0x09; *(_pLcdBuffer + 35) |= 0x07; 
				break;
			case '4' :  *(_pLcdBuffer + 34) |= 0x02; *(_pLcdBuffer + 35) |= 0x07; 
				break;
			case '5' :  *(_pLcdBuffer + 34) |= 0x0B; *(_pLcdBuffer + 35) |= 0x06; 
				break;
			case '6' :  *(_pLcdBuffer + 34) |= 0x0F; *(_pLcdBuffer + 35) |= 0x06; 
				break;
			case '7' :  *(_pLcdBuffer + 34) |= 0x01; *(_pLcdBuffer + 35) |= 0x05; 
				break;
			case '8' :  *(_pLcdBuffer + 34) |= 0x0F; *(_pLcdBuffer + 35) |= 0x07; 
				break;
			case '9' :  *(_pLcdBuffer + 34) |= 0x03; *(_pLcdBuffer + 35) |= 0x07; 
				break;
		}
	}
	else if(idx == 2)
	{
		*(_pLcdBuffer + 36) &= ~0x0F; *(_pLcdBuffer + 37) &= ~0x07;  
		switch(c)
		{
			case '0' :  *(_pLcdBuffer + 36) |= 0x0F; *(_pLcdBuffer + 37) |= 0x05; 
				break;
			case '1' :  *(_pLcdBuffer + 36) |= 0x00; *(_pLcdBuffer + 37) |= 0x05; 
				break;
			case '2' :  *(_pLcdBuffer + 36) |= 0x0D; *(_pLcdBuffer + 37) |= 0x03; 
				break;
			case '3' :  *(_pLcdBuffer + 36) |= 0x09; *(_pLcdBuffer + 37) |= 0x07; 
				break;
			case '4' :  *(_pLcdBuffer + 36) |= 0x02; *(_pLcdBuffer + 37) |= 0x07; 
				break;
			case '5' :  *(_pLcdBuffer + 36) |= 0x0B; *(_pLcdBuffer + 37) |= 0x06; 
				break;
			case '6' :  *(_pLcdBuffer + 36) |= 0x0F; *(_pLcdBuffer + 37) |= 0x06; 
				break;
			case '7' :  *(_pLcdBuffer + 36) |= 0x01; *(_pLcdBuffer + 37) |= 0x05; 
				break;
			case '8' :  *(_pLcdBuffer + 36) |= 0x0F; *(_pLcdBuffer + 37) |= 0x07; 
				break;
			case '9' :  *(_pLcdBuffer + 36) |= 0x03; *(_pLcdBuffer + 37) |= 0x07; 
				break;
		}
	}	
}

void SetL1Point(int idx, char c)
{
	switch(idx)
	{
		case 0 : *(_pLcdBuffer + 33) = (c == '.') ? *(_pLcdBuffer + 33) | 0x08 : *(_pLcdBuffer + 33) & ~0x08;
			break;
		case 1 : *(_pLcdBuffer + 35) = (c == '.') ? *(_pLcdBuffer + 35) | 0x08 : *(_pLcdBuffer + 35) & ~0x08;
			break;
		case 2 : *(_pLcdBuffer + 37) = (c == '.') ? *(_pLcdBuffer + 37) | 0x08 : *(_pLcdBuffer + 37) & ~0x08;
			break;
	}
}

void SetL1(unsigned char *pData, char u1, char u2, bool update)
{
    unsigned char i, nidx;
    int numc = 3;

    SetL1Sign(*pData++);	

	nidx = 0;

	for(i = 0; i < numc; i++)
	{
        SetL1Num(i, ' ');
        SetL1Point(i, ' ');		
	}
    
    while(nidx < numc)
    {
        if(*pData >= '0' && *pData <= '9')
        {
            SetL1Num(nidx, *pData);
            nidx++;
        }
        else if(*pData == '.' && nidx > 0)
        {
            SetL1Point(nidx - 1, '.');
        }
        
        pData++;
    }
    
    while((*pData >= '0' && *pData <= '9') || *pData == '.')
        pData++;	

	SetL1U1(*pData);    
    SetL1U2(u1);
    SetL1U3(u2);
        
	if(update)
		WriteData();
}

void SetL2(unsigned char *pData, char u1, char u2, bool update)
{
    unsigned char i, nidx;
    int numc = 3;

    SetL2Sign(*pData++);	

	nidx = 0;

	for(i = 0; i < numc; i++)
	{
        SetL2Num(i, ' ');
        SetL2Point(i, ' ');		
	}
    
    while(nidx < numc)
    {
        if(*pData >= '0' && *pData <= '9')
        {
            SetL2Num(nidx, *pData);
            nidx++;
        }
        else if(*pData == '.' && nidx > 0)
        {
            SetL2Point(nidx - 1, '.');
        }
        
        pData++;
    }
    
    while((*pData >= '0' && *pData <= '9') || *pData == '.')
        pData++;	

	SetL2U1(*pData);    
    SetL2U2(u1);
    SetL2U3(u2);
        
	if(update)
		WriteData();
}

void SetL3(unsigned char *pData, char u1, char u2, bool update)
{
    unsigned char i, nidx;
    int numc = 3;

    SetL3Sign(*pData++);	

	nidx = 0;

	for(i = 0; i < numc; i++)
	{
        SetL3Num(i, ' ');
        SetL3Point(i, ' ');		
	}
    
    while(nidx < numc)
    {
        if(*pData >= '0' && *pData <= '9')
        {
            SetL3Num(nidx, *pData);
            nidx++;
        }
        else if(*pData == '.' && nidx > 0)
        {
            SetL3Point(nidx - 1, '.');
        }
        
        pData++;
    }
    
    while((*pData >= '0' && *pData <= '9') || *pData == '.')
        pData++;	

	SetL3U1(*pData);    
    SetL3U2(u1);
    SetL3U3(u2);
        
	if(update)
		WriteData();
}

void SetR1(unsigned char *pData, char unit, bool update)
{
	unsigned char i, nidx;
    int numc = 4;

    SetR1Sign(*pData++);	

	nidx = 0;

	for(i = 0; i < numc; i++)
	{
        SetR1Num(i, ' ');
        SetR1Point(i, ' ');		
	}
    
    while(nidx < numc)
    {
        if(*pData >= '0' && *pData <= '9')
        {
            SetR1Num(nidx, *pData);
            nidx++;
        }
        else if(*pData == '.' && nidx > 0)
        {
            SetR1Point(nidx - 1, '.');
        }
        
        pData++;
    }
    
    while((*pData >= '0' && *pData <= '9') || *pData == '.')
        pData++;	

	SetR1U1(*pData);    
    SetR1U2(unit);
        
	if(update)
		WriteData();
}

void SetR2(unsigned char *pData, char unit, bool update)
{
	unsigned char i, nidx;
    int numc = 4;

    SetR2Sign(*pData++);	

	nidx = 0;

	for(i = 0; i < numc; i++)
	{
        SetR2Num(i, ' ');
        SetR2Point(i, ' ');		
	}
    
    while(nidx < numc)
    {
        if(*pData >= '0' && *pData <= '9')
        {
            SetR2Num(nidx, *pData);
            nidx++;
        }
        else if(*pData == '.' && nidx > 0)
        {
            SetR2Point(nidx - 1, '.');
        }
        
        pData++;
    }
    
    while((*pData >= '0' && *pData <= '9') || *pData == '.')
        pData++;	

	SetR2U1(*pData);    
    SetR2U2(unit);
        
	if(update)
		WriteData();
}


////////////// LCD USER Function /////////////////
void LCD_Clear(bool update)
{
	memset(_pLcdBuffer, 0x00, LCD_BUF_SIZE);

	if(update)
		WriteData();
}

void LCD_Init(unsigned char *pLcdBuffer)
{
	_pLcdBuffer = pLcdBuffer;
	
	CS_HIGH;
	WR_HIGH;
		
	WriteCommand(LCD_CMD_SYSEN); 	
	WriteCommand(LCD_CMD_LCDON);
	WriteCommand(LCD_CMD_RC32K);
}

void LCD_ToggleHeart(bool update)
{
	if(*(_pLcdBuffer + 44) & 0x80)
		*(_pLcdBuffer + 44) &= ~0x80;				
	else
		*(_pLcdBuffer + 44) |= 0x80;
	
	if(update)
		WriteData();
}

void LCD_Update(void)
{
	WriteData();
}

void LCD_Loading(int idx, bool update)
{
	int temp = idx % 4;

	SetR1Num(0, 'L');
	SetR1Num(1, 'o');
	SetR1Num(2, 'A');
	SetR1Num(3, 'd');

	SetR2Num(0, ' ');
	SetR2Num(1, ' ');
	SetR2Num(2, ' ');
	SetR2Num(3, ' ');

	SetR2Num(temp, 'o');
	
	if(update)
		WriteData();	
}

void LCD_CtrlType(int idx, bool update)
{
	*(_pLcdBuffer + 38) &= ~0xF0;
	*(_pLcdBuffer + 38) |= (0x10 << idx);
	
	if(update)
		WriteData();
}

void LCD_Run(bool run, bool update)
{
	if(run != 0)
		*(_pLcdBuffer + 44) |= 0x40;
	else
		*(_pLcdBuffer + 44) &= ~0x40;
	
	if(update)
		WriteData();
}

void LCD_Cell(bool cell, bool update)
{
	if(cell != 0)
		*(_pLcdBuffer + 44) |= 0x20;
	else
		*(_pLcdBuffer + 44) &= ~0x20;
	
	if(update)
		WriteData();
}

void LCD_Err(bool err, bool update)
{
	if(err != 0)
		*(_pLcdBuffer + 44) |= 0x10;
	else
		*(_pLcdBuffer + 44) &= ~0x10;
	
	if(update)
		WriteData();
}

void LCD_CtrlMode(int value, bool update)
{
	*(_pLcdBuffer + 38) &= ~0x0F;
	*(_pLcdBuffer + 38) |= value;
	
	if(update)
		WriteData();		
}

void LCD_SetL1(double value, char u1, char u2, bool update)
{
    char buff[12]; memset(buff, 0, sizeof(buff));
    
    DoubleToStringII(value, buff, 3);
    
    SetL1((unsigned char*)buff, u1, u2, update);
}

void LCD_SetL2(double value, char u1, char u2, bool update)
{
    char buff[12]; memset(buff, 0, sizeof(buff));
    
    DoubleToStringII(value, buff, 3);
    
    SetL2((unsigned char*)buff, u1, u2, update);
}

void LCD_SetL3(double value, char u1, char u2, bool update)
{
    char buff[12]; memset(buff, 0, sizeof(buff));
    
    DoubleToStringII(value, buff, 3);
    
    SetL3((unsigned char*)buff, u1, u2, update);
}

void LCD_SetR1(double value, char unit, bool update)
{
    char buff[12]; memset(buff, 0, sizeof(buff));
    
    DoubleToStringII(value, buff, 4);
    
    SetR1((unsigned char*)buff, unit, update);
}

void LCD_SetR2(double value, char unit, bool update)
{
    char buff[12]; memset(buff, 0, sizeof(buff));
    
    DoubleToStringII(value, buff, 4);
    
    SetR2((unsigned char*)buff, unit, update);
}

static char	*cUpSubUnit[] = {" ","K","M","G","T","---"};
static char	*cDnSubUnit[] = {" ","m","u","n","p","f","a","---",};

/*void FloatToString(float fValue, char* pChar, char bOption)
{
	char cFormat[12];
	int iMinus;
	int iTemp;
	int iTemp1;
	int iTemp2;
	int iTemp3;
	float fTemp;
	float fVal;

	iMinus = false;
	memset(cFormat, 0x0, 12);
	if(fValue < 0.0) 
        iMinus = true;
    
	fVal = fabs(fValue);
    
	if(fVal == 0.0) 
        iTemp1 = 0;
	else 
		iTemp1 = (int)floor(log10(fVal));

	if(bOption == 1) 
        iTemp3 = 3;
	else 
        iTemp3 = 4;
    
	if(iTemp1 < 0) 
    {
		iTemp = iTemp1 / -3;
		iTemp++;
		if((iTemp1% - 3) == 0) 
            iTemp --;
		fTemp = fVal*pow(10.0,(iTemp * 3)); 
		iTemp2 = (iTemp3 - 1) - ((iTemp * 3) + iTemp1);
		if(bOption == 2) 
        {            
			sprintf(cFormat, "%%3d%%s", iTemp2);            
			sprintf(pChar, cFormat,(int)fTemp, cDnSubUnit[iTemp]);
		}
		else 
        {
			if(iMinus == true) 
                sprintf(cFormat, "-%%%d.%df%%s", iTemp3, iTemp3 - 1);
			else 
                sprintf(cFormat, " %%%d.%df%%s", iTemp3, iTemp3 - 1, iTemp2); 
            
			sprintf(pChar, cFormat, fTemp, cDnSubUnit[iTemp]);
		}
	}
	else if(iTemp1 > 0) 
    {
		iTemp = iTemp1/3;
		fTemp = fVal * pow(10.0,(iTemp * -3)); 
		iTemp2 = (iTemp3-1) +((iTemp * 3) - iTemp1);
		if(bOption == 2) 
        {
			sprintf(cFormat, "%%3d%%s", iTemp2);
			sprintf(pChar, cFormat, (int)fTemp, cUpSubUnit[iTemp]);
		}
		else 
        {
			if(iMinus == true) 
                sprintf(cFormat, "-%%%d.%df%%s", iTemp3, iTemp3 - 1, iTemp2); 
			else 
                sprintf(cFormat, " %%%d.%df%%s", iTemp3, iTemp3 - 1, iTemp2);
            
			sprintf(pChar, cFormat, fTemp, cUpSubUnit[iTemp]);
		}
	}
	else 
    {
		iTemp = 0;
		if(bOption == 2) 
        {
			sprintf(cFormat, "%%3d%%s", iTemp2);
			sprintf(pChar, cFormat, (int)fVal, cUpSubUnit[iTemp]);
		}
		else 
        {
			if(iMinus == true) 
                sprintf(cFormat, "-%%%d.%df%%s", iTemp3, iTemp3 - 1);
			else 
                sprintf(cFormat, " %%%d.%df%%s", iTemp3, iTemp3 - 1);
            
			sprintf(pChar, cFormat, fVal, cUpSubUnit[iTemp]);
		}
	}
}*/

void FloatToStringII(float fValue, char* pChar, int point)
{
	char cFormat[12];
	int iMinus;
	int iTemp;
	int iTemp1;
	float fTemp = 0;
	float fVal;

	iMinus = false;
	memset(cFormat, 0x0, 12);
	if (fValue < 0.0)
		iMinus = true;

	fVal = fabs(fValue);

	if (fVal == 0.0)
		iTemp1 = 0;
	else
		iTemp1 = (int)floor(log10(fVal));

	if (iTemp1 < 0)
	{
		iTemp = iTemp1 / -3;
		iTemp++;
		if ((iTemp1 % -3) == 0) iTemp--;

		fTemp = fVal*pow(10.0, (iTemp * 3));

		fTemp = GenFormat(fTemp, iMinus ? '-' : ' ', cFormat, sizeof(cFormat), &iTemp, false, point);

		snprintf(pChar, sizeof(cFormat), cFormat, fTemp, cDnSubUnit[iTemp]);
	}
	else if (iTemp1 > 0)
	{
		iTemp = iTemp1 / 3;
		fTemp = fVal * pow(10.0, (iTemp * -3));

		fTemp = GenFormat(fTemp, iMinus ? '-' : ' ', cFormat, sizeof(cFormat), &iTemp, true, point);

		snprintf(pChar, sizeof(cFormat), cFormat, fTemp, cUpSubUnit[iTemp]);
	}
	else
	{
		iTemp = 0;
		fTemp = fVal;
		fTemp = GenFormat(fTemp, iMinus ? '-' : ' ', cFormat, sizeof(cFormat), &iTemp, true, point);

		snprintf(pChar, sizeof(cFormat), cFormat, fTemp, cUpSubUnit[iTemp]);
	}
}

void DoubleToStringII(double fValue, char* pChar, int point)
{
	char cFormat[12];
	int iMinus;
	int iTemp;
	int iTemp1;
	double fTemp = 0;
	double fVal;

	iMinus = false;
	memset(cFormat, 0x0, 12);
	if (fValue < 0.0)
		iMinus = true;

	fVal = fabs(fValue);

	if (fVal == 0.0)
		iTemp1 = 0;
	else
		iTemp1 = (int)floor(log10(fVal));

	if (iTemp1 < 0)
	{
		iTemp = iTemp1 / -3;
		iTemp++;
		if ((iTemp1 % -3) == 0) iTemp--;

		fTemp = fVal*pow(10.0, (iTemp * 3));

		fTemp = GenFormat(fTemp, iMinus ? '-' : ' ', cFormat, sizeof(cFormat), &iTemp, false, point);

		snprintf(pChar, sizeof(cFormat), cFormat, fTemp, cDnSubUnit[iTemp]);
	}
	else if (iTemp1 > 0)
	{
		iTemp = iTemp1 / 3;
		fTemp = fVal * pow(10.0, (iTemp * -3));

		fTemp = GenFormat(fTemp, iMinus ? '-' : ' ', cFormat, sizeof(cFormat), &iTemp, true, point);

		snprintf(pChar, sizeof(cFormat), cFormat, fTemp, cUpSubUnit[iTemp]);
	}
	else
	{
		iTemp = 0;
		fTemp = fVal;
		fTemp = GenFormat(fTemp, iMinus ? '-' : ' ', cFormat, sizeof(cFormat), &iTemp, true, point);

		snprintf(pChar, sizeof(cFormat), cFormat, fTemp, cUpSubUnit[iTemp]);
	}
}

double Rounding(double x, int digit)
{
	return (floor((x)* pow(10.0, digit) + 0.5) / pow(10.0, digit));
}

double GenFormat(double val, char sign, char* pFormat, int fmsize, int* pUnitIdx, bool unitup, int point)
{
	double resval = val;
	int exp = *pUnitIdx;

	if (point == 4)
	{
		if (Rounding(resval, 0) >= 1000)
		{
			resval = resval / pow(10, 3);
			unitup ? exp++ : exp--; *pUnitIdx = exp;
			snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 1, 3);
		}
		else if (Rounding(resval, 1) >= 100)
		{
			snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 3, 1);
		}
		else if (Rounding(resval, 2) >= 10)
		{
			snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 2, 2);
		}
		else if (Rounding(resval, 3) >= 1)
		{
			snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 1, 3);
		}
		else
		{
			if (resval >= 100)
				snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 3, 1);
			else if (resval >= 10)
				snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 2, 2);
			else if (resval >= 1)
				snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 1, 3);
			else
				snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 1, 3);
		}
	}
	else if (point == 3)
	{
		if (Rounding(resval, 0) >= 1000)
		{
			resval = resval / pow(10, 3);
			unitup ? exp++ : exp--; *pUnitIdx = exp;
			snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 1, 2);
		}
		else if (Rounding(resval, 0) >= 100)
		{
			snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 3, 0);
		}
		else if (Rounding(resval, 1) >= 10)
		{
			snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 2, 1);
		}
		else if (Rounding(resval, 2) >= 1)
		{
			snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 1, 2);
		}
		else
		{
			if (resval >= 100)
				snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 3, 0);
			else if (resval >= 10)
				snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 2, 1);
			else if (resval >= 1)
				snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 1, 2);
			else
				snprintf(pFormat, fmsize, "%c%%%d.%df%%s", sign, 1, 2);
		}
	}

	return resval;
}