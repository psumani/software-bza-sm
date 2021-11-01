#include "sif_zim.h"


void InitSIFConfig(void)
{
    m_pSysConfig->mSIFCfg.Type = (byte)ZIM;
	m_pSysConfig->mSIFCfg.BoardVersion.Major = 1;
	m_pSysConfig->mSIFCfg.BoardVersion.Minor = 1;
	m_pSysConfig->mSIFCfg.BoardVersion.Revision = 0;
	m_pSysConfig->mSIFCfg.BoardVersion.Build = 0;
	m_pSysConfig->mSIFCfg.FirmwareVersion.Major = FIRMWARE_VER_MAJOR;
	m_pSysConfig->mSIFCfg.FirmwareVersion.Minor = FIRMWARE_VER_MINOR;
	m_pSysConfig->mSIFCfg.FirmwareVersion.Revision = FIRMWARE_VER_REV;
	m_pSysConfig->mSIFCfg.FirmwareVersion.Build = FIRMWARE_VER_BUILD;
	m_pSysConfig->mSIFCfg.Serial[0] = 'I';
	m_pSysConfig->mSIFCfg.Serial[1] = 'F';
	m_pSysConfig->mSIFCfg.Serial[2] = '0';
	m_pSysConfig->mSIFCfg.Serial[3] = '2';
	m_pSysConfig->mSIFCfg.Serial[4] = 'x';
	m_pSysConfig->mSIFCfg.Serial[5] = 'x';
	m_pSysConfig->mSIFCfg.Serial[6] = 'x';
	m_pSysConfig->mSIFCfg.Serial[7] = 'x';
	m_pSysConfig->mSIFCfg.Serial[8] = 'x';
	m_pSysConfig->mSIFCfg.Serial[9] = 'x';
	m_pSysConfig->mSIFCfg.Serial[10] = 'x';
	m_pSysConfig->mSIFCfg.Serial[11] = 'x';
}

void InitConnConfig(void)
{
    m_pConnCfg->ID = ID_CONNCONFIG;
	m_pConnCfg->Serial[0] = 'R';
	m_pConnCfg->Serial[1] = '0';
	m_pConnCfg->Serial[2] = '5';
	m_pConnCfg->Serial[3] = 'x';
	m_pConnCfg->Serial[4] = 'x';
	m_pConnCfg->Serial[5] = 'x';
	m_pConnCfg->Serial[6] = 'x';
	m_pConnCfg->Serial[7] = 'x';
	m_pConnCfg->Serial[8] = 'x';
	m_pConnCfg->Serial[9] = 'x';
	m_pConnCfg->Serial[10] = 'x';
	m_pConnCfg->Serial[11] = 'x';
    
	m_pConnCfg->mEthernetCfg.Mac[0] = 0x00;
	m_pConnCfg->mEthernetCfg.Mac[1] = 0x1B;
	m_pConnCfg->mEthernetCfg.Mac[2] = 0xC5;
	m_pConnCfg->mEthernetCfg.Mac[3] = 0x08;
	m_pConnCfg->mEthernetCfg.Mac[4] = 0x11;
	m_pConnCfg->mEthernetCfg.Mac[5] = 0x00;
	
	m_pConnCfg->mEthernetCfg.Gateway[0] = 169;
	m_pConnCfg->mEthernetCfg.Gateway[1] = 254;
	m_pConnCfg->mEthernetCfg.Gateway[2] = 17;
	m_pConnCfg->mEthernetCfg.Gateway[3] = 1;
	
	m_pConnCfg->mEthernetCfg.SubnetMask[0] = 255;
	m_pConnCfg->mEthernetCfg.SubnetMask[1] = 255;
	m_pConnCfg->mEthernetCfg.SubnetMask[2] = 255;
	m_pConnCfg->mEthernetCfg.SubnetMask[3] = 0;
	
	m_pConnCfg->mEthernetCfg.IpAddress[0] = 169;
	m_pConnCfg->mEthernetCfg.IpAddress[1] = 254;
	m_pConnCfg->mEthernetCfg.IpAddress[2] = 17;
	m_pConnCfg->mEthernetCfg.IpAddress[3] = 2;
	
	m_pConnCfg->mEthernetCfg.Port = 2000;
		
	m_pConnCfg->mEthernetCfg.dhcp = 1;
	
	memset(m_pConnCfg->mEthernetCfg.hostname, 0, sizeof(m_pConnCfg->mEthernetCfg.hostname));    
	sprintf((char*)m_pConnCfg->mEthernetCfg.hostname, "%s-%02X%02X", DEF_HOST_NAME,m_pConnCfg->mEthernetCfg.Mac[4], m_pConnCfg->mEthernetCfg.Mac[5]);
}

void InitSysConfig(void)
{
    m_pSysConfig->ID = ID_ZIMCONFIG;
    m_pSysConfig->BaseTick = 1;
    m_pSysConfig->DaqTick = 200;
    m_pSysConfig->mZimCfg.ZimBDVersion = 1300;
	m_pSysConfig->mZimCfg.cModel[0] = 'x';
	m_pSysConfig->mZimCfg.cModel[1] = 'x';
	m_pSysConfig->mZimCfg.nSerial = 0;
	m_pSysConfig->mZimCfg.ZimFWVersion = 1020;
	
	InitConnConfig();
    InitSIFConfig();
}

void InitMemoryMap(void)
{
    /*_pNandBuffer = (byte*)SDRAM_ADDR_BASE;
	m_pLcdBuffer = (byte*)(_pNandBuffer + 4096);
	m_pConnCfg = (stConnCfg*)(m_pLcdBuffer + LCD_BUF_SIZE);	
    m_pSysConfig = (stSystemConfig*)(m_pConnCfg + 1);	
    m_pGlobalVar = (stGlobalVar*)(m_pSysConfig + 1);
	pRTD_Coef= (st_zim_RTD_Coef*)(m_pGlobalVar + 1);
    m_pRdDataBuf = (byte*)(pRTD_Coef + 1);*/
    
	/*
    _pNandBuffer = (byte*)SDRAM_ADDR_BASE;
    
    m_pJsonAbout = (char*)(_pNandBuffer + 4096); 
    m_pJsonChannel = (char*)(m_pJsonAbout + MAX_JSON_ABOUT);
    m_pJsonCook = (char*)(m_pJsonChannel + MAX_JSON_CHANNEL);
    m_pJsonSamples = (char*)(m_pJsonCook + MAX_JSON_COOK); 
    m_pHtmlBuff = (char*)(m_pJsonSamples + MAX_JSON_SAMPLES);
    
	m_pLcdBuffer = (byte*)(m_pHtmlBuff + MAX_HTML_BUFSIZE);    
	m_pConnCfg = (stConnCfg*)(m_pLcdBuffer + LCD_BUF_SIZE);	
    m_pSysConfig = (stSystemConfig*)(m_pConnCfg + 1);	
    m_pGlobalVar = (stGlobalVar*)(m_pSysConfig + 1);
	pRTD_Coef= (st_zim_RTD_Coef*)(m_pGlobalVar + 1);
    m_pRdDataBuf = (byte*)(pRTD_Coef + 1);
	*/
	_pNandBuffer = (byte*)SDRAM_ADDR_BASE;
    
	m_pConnCfg = (stConnCfg*)(_pNandBuffer + 4096);	
    m_pSysConfig = (stSystemConfig*)(m_pConnCfg + 1);	
    m_pGlobalVar = (stGlobalVar*)(m_pSysConfig + 1);
	pRTD_Coef= (st_zim_RTD_Coef*)(m_pGlobalVar + 1);
	m_pLcdBuffer = (byte*)(pRTD_Coef + 1);    
    m_pRdDataBuf = (byte*)(m_pLcdBuffer + LCD_BUF_SIZE);
	
    m_pJsonAbout = (char*)(m_pRdDataBuf + 4096); 
    m_pJsonChannel = (char*)(m_pJsonAbout + MAX_JSON_ABOUT);
    m_pJsonCook = (char*)(m_pJsonChannel + MAX_JSON_CHANNEL);
    m_pJsonSamples = (char*)(m_pJsonCook + MAX_JSON_COOK); 
    m_pHtmlBuff = (char*)(m_pJsonSamples + MAX_JSON_SAMPLES);
    
    memset(_pNandBuffer,0x0,4096);
    
    
	memset(m_pConnCfg,0x0,DEF_SIZE_CONN_CFG);
    memset(m_pSysConfig,0x0,DEF_SIZE_SYS_CFG);
    memset(m_pGlobalVar,0x0,sizeof(stGlobalVar));
	memset(pRTD_Coef,0x0,sizeof(st_zim_RTD_Coef));
	memset(m_pLcdBuffer,0x0,LCD_BUF_SIZE);
	
	memset(m_pJsonAbout, 0x0, MAX_JSON_ABOUT);
    memset(m_pJsonChannel, 0x0, MAX_JSON_CHANNEL);
    memset(m_pJsonCook, 0x0, MAX_JSON_COOK); 
    memset(m_pJsonSamples, 0x0, MAX_JSON_SAMPLES);

	pRTD_Coef->StandardType = DEF_RTD_STANDARDTYPE_ITS90;
		
	pRTD_Coef->ptxIPTS68[0] = +3.90802e-03;
	pRTD_Coef->ptxIPTS68[1] = -5.80195e-07;
	pRTD_Coef->ptxIPTS68[2] = -4.27350e-12; 
	
	pRTD_Coef->ptxITS90[0] = +3.9083E-03;
	pRTD_Coef->ptxITS90[1] = -5.7750E-07;
	pRTD_Coef->ptxITS90[2] = -4.1830E-12; 
	
	pRTD_Coef->pt1000Correction[0] = 1.51892983e-15;
	pRTD_Coef->pt1000Correction[1] = -2.85842067e-12;
	pRTD_Coef->pt1000Correction[2] = -5.34227299e-09;
	pRTD_Coef->pt1000Correction[3] = 1.80282972e-05;
	pRTD_Coef->pt1000Correction[4] = -1.61875985e-02;
	pRTD_Coef->pt1000Correction[5] = 4.84112370e+00;    
	
	pRTD_Coef->pt100Correction[0] = 1.51892983e-10;
	pRTD_Coef->pt100Correction[1] = -2.85842067e-08;
	pRTD_Coef->pt100Correction[2] = -5.34227299e-06;
	pRTD_Coef->pt100Correction[3] = 1.80282972e-03;
	pRTD_Coef->pt100Correction[4] = -1.61875985e-01;
	pRTD_Coef->pt100Correction[5] = 4.84112370e+00; 
}

extern byte* pSrcMacAddr;
extern byte* pSubnetMask;
extern byte* pGatewayIp;
extern byte* pSrcIpAddr;

void InitEthernet(void)
{

	memcpy(&m_pGlobalVar->mEthernetCfg,&m_pConnCfg->mEthernetCfg,sizeof(m_pConnCfg->mEthernetCfg));
		
    pSrcMacAddr = m_pGlobalVar->mEthernetCfg.Mac;
    pSubnetMask = m_pGlobalVar->mEthernetCfg.SubnetMask;
    pGatewayIp = m_pGlobalVar->mEthernetCfg.Gateway;
    pSrcIpAddr = m_pGlobalVar->mEthernetCfg.IpAddress;
    m_pGlobalVar->mEthernetCfg.dhcp = FALSE;

    /////////

    // First dhcp check
    if(m_pConnCfg->mEthernetCfg.dhcp)
    {
        int chkcount = 1;    
        init_dhcp_client(DHCP_SOCK_NUM, 0, 0);
        
        while(chkcount > 0)
        {
            if(getIP_DHCPS())
			{
				m_pGlobalVar->mEthernetCfg.dhcp = TRUE;
                break;
			}      
            chkcount--;
        }
    }
	
    if(m_pGlobalVar->mEthernetCfg.dhcp == FALSE)
    {
        // not found dhcp        
        for(int i = 0; i < 4; i++)
        {
            pSubnetMask[i] = m_pConnCfg->mEthernetCfg.SubnetMask[i];
            pGatewayIp[i] = m_pConnCfg->mEthernetCfg.Gateway[i];
            pSrcIpAddr[i] = m_pConnCfg->mEthernetCfg.IpAddress[i];
        }
        
        w5100_init();
        w5100_sysinit(0x55, 0x55);
    } 
	
    m_SocketStatus = START;
	m_Socket = TCP_SOCK_NUM;
    m_SocketStatus = START;
}

unsigned char LoadFATHeader()
{
    //byte* temp = buffer;
    byte buffer[NAND_MAIN_SIZE + NAND_SPARE_SIZE];
    stFATHeader fh;
    byte* temp = (byte*)&fh;
    
	int size = sizeof(stFATHeader);
	uint page = NAND_PAGE_FILEHEAD;
	
	while(size > 0)
	{
		if(Nand_ReadPage(page, buffer) == FLASH_ERROR)
			return false;
        
        int rd = size > NAND_MAIN_SIZE ? NAND_MAIN_SIZE : size;
        
        memcpy(temp, buffer, rd);
		
		page++;
		temp += rd;
		size -= rd;
	}
    
    if(fh.ID == 0x25)
	{
        sFATHeader = fh;
        
        for(int i = 0; i < sFATHeader.FileCount; i++)
        {
            int len = strlen((const char*)sFATHeader.sFileHeaders[i].Name);
            
            for(int j = 0; j < len; j++)
            {
                if(sFATHeader.sFileHeaders[i].Name[j] == '\\')
				{
                   sFATHeader.sFileHeaders[i].Name[j] = '/';
				}
            }
        }
	}
	return true;
}

void InitDevice(void)
{
	memset(&m_pGlobalVar->mStatusInf.mreqdevice,0x0,sizeof(st_zim_device));
	memset(&m_pGlobalVar->mStatusInf.flow_dds_clk,0x0,sizeof(m_pGlobalVar->mStatusInf.flow_dds_clk));
	memset(&m_pGlobalVar->mStatusInf.flow_dds_sig,0x0,sizeof(m_pGlobalVar->mStatusInf.flow_dds_sig));
	m_pGlobalVar->Start = 0;
	m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_NONE;
	m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_NONE;
    m_pGlobalVar->ResetICE = 0;

	m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.data.iac.adcval = 0x800000;
	m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.data.iac.value = 0.0;
	m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.data.vac.adcval = 0x800000;
	m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.data.vac.value = 0.0;
	
	m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.frequency = 1000.0;
	m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.Phase = 270.0;
	m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.reset = 0;
	m_pGlobalVar->mStatusInf.mreqdevice.dds_sig.pwdn = 1;
		
	m_pGlobalVar->mStatusInf.mreqdevice.dds_clk.frequency = 1024000.0;
	m_pGlobalVar->mStatusInf.mreqdevice.dds_clk.Phase = 0.0;
	m_pGlobalVar->mStatusInf.mreqdevice.dds_clk.reset = 0;
	m_pGlobalVar->mStatusInf.mreqdevice.dds_clk.pwdn = 0;
	
	memcpy(&m_pGlobalVar->mStatusInf.mdevice,&m_pGlobalVar->mStatusInf.mreqdevice,sizeof(st_zim_device));

	m_pGlobalVar->mStatusInf.mdevice.dds_clk.frequency = 0;
	m_pGlobalVar->mStatusInf.mdevice.dds_clk.Phase = 0.1;
	m_pGlobalVar->mStatusInf.mdevice.dds_clk.reset = 1;
	m_pGlobalVar->mStatusInf.mdevice.dds_clk.pwdn = 1;
	
	m_pGlobalVar->mStatusInf.mdevice.dds_sig.frequency = 0;
	m_pGlobalVar->mStatusInf.mdevice.dds_sig.Phase = 0.1;
	m_pGlobalVar->mStatusInf.mdevice.dds_sig.reset = 1;
	m_pGlobalVar->mStatusInf.mdevice.dds_sig.pwdn = 0;
	
	m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.cfg.iac_flt = DEF_FLT_LOWLATENCY; 
	m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.cfg.vac_flt = DEF_FLT_LOWLATENCY; //DEF_FLT_LOWLATENCY; //DEF_FLT_WIDEBAND1
	m_pGlobalVar->mStatusInf.flow_adc_ac.stat = 0xFF;

	m_pGlobalVar->mStatusInf.mreqdevice.adc_rtd.config.data = 0xD0;
	m_pGlobalVar->mStatusInf.mreqdevice.adc_rtd.data.fault = 0;
	m_pGlobalVar->mStatusInf.mreqdevice.adc_rtd.data.adcval = 0x4000;
	m_pGlobalVar->mStatusInf.mreqdevice.adc_rtd.data.Rvalue = 1000.0;
	m_pGlobalVar->mStatusInf.mreqdevice.adc_rtd.data.Tvalue = 0.0;
	
	m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do.data = DEF_DEVDO_VDC_RNG0;
	
	m_pGlobalVar->mStatusInf.mdevice.ctrl_do.data = 0x1000;

	RefreshFPGA();
	
	
	m_pGlobalVar->mStatusInf.iac_rngno = 0;
	m_pGlobalVar->mStatusInf.iac_in_rngno = 0;
	m_pGlobalVar->mStatusInf.vdc_rngno = 0;
	
	m_pGlobalVar->mStatusInf.m_msADC = 250;
	m_pGlobalVar->mStatusInf.meis.eis_cond.ondelay = 12;
	m_pGlobalVar->mStatusInf.AutoVdcRange = 1;
	
	proc_eis_reset();
}

void InitGlobalVar(void)
{
    m_pGlobalVar->Start = 0;
	m_pGlobalVar->Stop = DEF_EIS_LASTTESTSTATUS_NONE;
    m_pGlobalVar->nTimeTick = m_pSysConfig->DaqTick;
    if(m_pGlobalVar->nTimeTick < 0) m_pGlobalVar->nTimeTick = 1;

	m_pGlobalVar->OpenI2C = FALSE;
	m_pGlobalVar->OpenMX25V = FALSE;
	m_pGlobalVar->OpenSPI = FALSE;
	m_pGlobalVar->EnaChkTimeOut = 0;
	m_pGlobalVar->ResetICE = 0;
	m_pGlobalVar->TmpResetICE = 0;
	m_pGlobalVar->bCalib = 0; 

	m_pGlobalVar->mStatusInf.meis.eis_cond.initFreq = 1000.0;
    m_pGlobalVar->mStatusInf.meis.eis_cond.finalFreq = 1;
    m_pGlobalVar->mStatusInf.meis.eis_cond.density = 10;
    m_pGlobalVar->mStatusInf.meis.eis_cond.iteration = 1;
    m_pGlobalVar->mStatusInf.meis.eis_cond.iacrng = 2;
    m_pGlobalVar->mStatusInf.meis.eis_cond.ondelay = 12;
	m_pGlobalVar->mStatusInf.meis.eis_cond.skipcycle = 1.0;
	m_pGlobalVar->mStatusInf.meis.eis_cond.item[0].cycle = 0;

	//InitDevice();
}

unsigned char SaveConnCfgInfo(void)
{
	int i;
	byte* temp = (byte*)m_pConnCfg;
	int size = DEF_SIZE_CONN_CFG;
	uint page = NAND_PAGE_CONNCFGINF;
	int nBlock = size / (int)NAND_BLK_SIZE + 1;
	
	for(i = NAND_BLOCK_CONNCFG; i<NAND_BLOCK_CONNCFG + nBlock; i++)
    {
        if(Nand_EraseBlock(i) == FLASH_ERROR)
        {
            return false;
        }
    }
	
	while(size > 0)
	{
		Nand_WritePage(page, temp);
		
		page++;
		temp += NAND_MAIN_SIZE;
		size -= NAND_MAIN_SIZE;
	}
	return true;
}

unsigned char SaveSysCfgInfo(void)
{
	int i;
	byte* temp = (byte*)m_pSysConfig;
	int size = DEF_SIZE_SYS_CFG;
	uint page = NAND_PAGE_SYSINF;
	int nBlock = size / (int)NAND_BLK_SIZE + 1;
	
	for(i = NAND_BLOCK_SYSINF; i<NAND_BLOCK_SYSINF + nBlock; i++)
    {
        if(Nand_EraseBlock(i) == FLASH_ERROR)
        {
            return false;
        }
    }
	
	while(size > 0)
	{
		Nand_WritePage(page, temp);
		
		page++;
		temp += NAND_MAIN_SIZE;
		size -= NAND_MAIN_SIZE;
	}

	return true;
}

unsigned char LoadConnCfgInfo(void)
{
	byte buffer[NAND_MAIN_SIZE + NAND_SPARE_SIZE];
    byte* temp = (byte*)m_pConnCfg;
    int size = DEF_SIZE_CONN_CFG;
	uint page = NAND_PAGE_CONNCFGINF;  //1 block = 64(NAND_PG_PER_BLK) page  ... 16 block   16 * 64 = 1024
    bool bchkid = false;
	while(1)
    {
        if(Nand_ReadPage(page, buffer) == FLASH_ERROR)
        {
            return false;
		}
		if(bchkid == false)
		{
			if(buffer[0] != (byte)ID_CONNCONFIG)
			{
				return false;
			}
			bchkid = true;
		}
		if(size >= NAND_MAIN_SIZE)
		{
			memcpy(temp, buffer, NAND_MAIN_SIZE);
			temp += NAND_MAIN_SIZE;
			size -= NAND_MAIN_SIZE;
		}
		else
		{
			memcpy(temp, buffer, size);	
			size -= size;
			break;
		}
        page++;
    }
	
	return true;
}

unsigned char LoadSysCfgInfo(void)
{
	byte buffer[NAND_MAIN_SIZE + NAND_SPARE_SIZE];
    byte* temp = (byte*)m_pSysConfig;
    int size = DEF_SIZE_SYS_CFG;
	uint page = NAND_PAGE_SYSINF;  //1 block = 64(NAND_PG_PER_BLK) page  ... 16 block   17 * 64 = 1024
    bool bchkid = false;
	while(1)
    {
        if(Nand_ReadPage(page, buffer) == FLASH_ERROR)
        {
            return false;
		}
		if(bchkid == false)
		{
			if(buffer[0] != (byte)ID_ZIMCONFIG)
			{
				return false;
			}
			bchkid = true;
		}
		if(size >= NAND_MAIN_SIZE)
		{
			memcpy(temp, buffer, NAND_MAIN_SIZE);
			temp += NAND_MAIN_SIZE;
			size -= NAND_MAIN_SIZE;
		}
		else
		{
			memcpy(temp, buffer, size);	
			size -= size;
			break;
		}
        page++;
    }
	
	return true;
}
/*
unsigned char LoadRangeInfo(void)
{
	byte buffer[NAND_MAIN_SIZE + NAND_SPARE_SIZE];
    byte* temp = (byte*)&m_pGlobalVar->ranges;
    int size = DEF_SIZE_RANGE;
	uint page = NAND_PAGE_RANGEINF;  //1 block = 64(NAND_PG_PER_BLK) page  ... 16 block   27 * 64 = 1728
	bool bchkid = false;
	while(1)
    {
        if(Nand_ReadPage(page, buffer) == FLASH_ERROR)
        {
            return false;
		}
		if(bchkid == false)
		{
			if(buffer[0] != (byte)ID_RANGEINFO)
			{
				return false;
			}
			bchkid = true;
		}
		if(size >= NAND_MAIN_SIZE)
		{
			memcpy(temp, buffer, NAND_MAIN_SIZE);
			temp += NAND_MAIN_SIZE;
			size -= NAND_MAIN_SIZE;
		}
		else
		{
			memcpy(temp, buffer, size);	
			size -= size;
			break;
		}
        page++;
    }
	
	return true;
}

unsigned char SaveRangeInfo(void)
{
	int i;
	byte* temp = (byte*)&m_pGlobalVar->ranges;
	int size = DEF_SIZE_RANGE;
	uint page = NAND_PAGE_RANGEINF;
	int nBlock = size / (int)NAND_BLK_SIZE + 1;
	
	for(i = NAND_BLOCK_RANGEINF; i<NAND_BLOCK_RANGEINF + nBlock; i++)
    {
        if(Nand_EraseBlock(i) == FLASH_ERROR)
        {
            return false;
        }
    }
	
	while(size > 0)
	{
		Nand_WritePage(page, temp);
		
		page++;
		temp += NAND_MAIN_SIZE;
		size -= NAND_MAIN_SIZE;
	}
	return true;
}
*/

unsigned char LoadSystemInformation(void)
{
	if(LoadConnCfgInfo() == false)
	{
		SaveConnCfgInfo();
        return false;
	}
	
    if(LoadSysCfgInfo() == false)
    {
        SaveSysCfgInfo();
        return false;
    }

	m_pSysConfig->mSIFCfg.FirmwareVersion.Major = FIRMWARE_VER_MAJOR;
	m_pSysConfig->mSIFCfg.FirmwareVersion.Minor = FIRMWARE_VER_MINOR;
	m_pSysConfig->mSIFCfg.FirmwareVersion.Revision = FIRMWARE_VER_REV;
	m_pSysConfig->mSIFCfg.FirmwareVersion.Build = FIRMWARE_VER_BUILD;
	return true;
}

void Initialize(void)
{
	Init_arm();
    InitMemoryMap();	
	InitSysConfig();
	InitRangeInf();

	LCD_Init(m_pLcdBuffer);
	LCD_Clear(true);
	LCD_Loading(0,true);
	
	Set_IceResetB(false);

	LCD_Loading(1,true);
    m_pGlobalVar->mStatusInf.ChkInitProc = LoadSystemInformation();

	LCD_Loading(2,true);
	InitGlobalVar();

	LCD_Loading(3,true);

	Init_Timer();

    __enable_interrupt();
	
	LCD_Loading(0,true);
	Init_SPI();
	LCD_Loading(1,true);
	
	if(Init_I2C() == _NO_ERROR)
	{
		m_pGlobalVar->OpenI2C = TRUE;
//		if(ScanZIM(0,0x50) == _NO_ERROR)
//		{
//			m_pGlobalVar->mStatusInf.devicecount = 1;
//		}
	}
	
	LCD_Loading(2,true);
	LCD_Loading(3,true);
	
	OnLed0(true);
	OnLed1(true);
	OnLed2(true);
	OnLed3(true);

	InitEthernet();
	
	LoadFATHeader();
	
    InitHttp();

    if(m_pGlobalVar->mStatusInf.ChkInitProc == false)
    {
        OnLed0(false);
        OnLed1(false);
        OnLed2(false);
        OnLed3(false);
    }
	else
	{
		OnLed0(true);
		OnLed1(false);
		OnLed2(false);
		OnLed3(false);	
	}

	proc_read_version();
	
	SetJsonAbout(); 
	LCD_Clear(true);
}

