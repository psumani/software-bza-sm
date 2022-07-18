
#ifndef _LCD_H
#define _LCD_H
#include "defines/type.h"
#define LCD_CMD_SYSEN	0x802
#define LCD_CMD_LCDON	0x806
#define LCD_CMD_RC32K	0x830

#define LCD_BUF_SIZE	45

#define CTRL_TYPE_CC 0x0
#define CTRL_TYPE_CV 0x1
#define CTRL_TYPE_CP 0x2
#define CTRL_TYPE_CR 0x3

#define CTRL_MODE_POT 0x1
#define CTRL_MODE_GST 0x2
#define CTRL_MODE_ZRA 0x4
#define CTRL_MODE_EIS 0x8


void LCD_Init(unsigned char *pLcdBuffer);
void LCD_ToggleHeart(bool update);
void LCD_Clear(bool update);
void LCD_Loading(int idx, bool update);
void LCD_Update(void);
void LCD_CtrlMode(int value, bool update);
void LCD_CtrlType(int idx, bool update);
void LCD_Run(bool run, bool update);
void LCD_Cell(bool cell, bool update);
void LCD_Err(bool err, bool update);

void LCD_SetL1(double value, char u1, char u2, bool update);
void LCD_SetL2(double value, char u1, char u2, bool update);
void LCD_SetL3(double value, char u1, char u2, bool update);
void LCD_SetR1(double value, char unit, bool update);
void LCD_SetR2(double value, char unit, bool update);

#endif