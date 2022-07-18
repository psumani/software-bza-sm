#include "init.h"
#include "sif_zim.h"

byte GenCheckSum(byte* buf, int len)
{
	byte sum = 0;
	
	for(int i = 0; i < len - 1; i++)
	{
		sum += *buf++;
	}
	
	return sum; 
}

void SendAck(int s)
{
	_Packet[s].Header.ID = PACKET_ID;
	_Packet[s].Header.FrameCount = 0;
	_Packet[s].Header.DataLength = 0;
	_Packet[s].Header.Error = 0;	
	_Packet[s].CheckSum = GenCheckSum((byte*)&_Packet[s], sizeof(Packet));
	
	send(m_Socket[s], (byte*)&_Packet[s], sizeof(Packet));	
}

void SendError(int s, byte error)
{
	_Packet[s].Header.ID = PACKET_ID;
	_Packet[s].Header.FrameCount = 0;
	_Packet[s].Header.DataLength = 0;
	_Packet[s].Header.Error = error;	
	_Packet[s].CheckSum = GenCheckSum((byte*)&_Packet[s], sizeof(Packet));
	
	send(m_Socket[s], (byte*)&_Packet[s], sizeof(Packet));
}

int Compress(void* dest, void* src, int size)
{
	byte repeat = 0;
	int dst_size = 0;
	
	byte* src_t = (byte*)src;
	byte* dst_t = (byte*)dest;
	
	for(int i = 0; i < size; i++, src_t++)
	{
		if(*src_t == 0)
		{
			repeat++;
			
			if(repeat >= 255)
			{
				*dst_t++ = 0x3C; dst_size++;
				*dst_t++ = 0x00; dst_size++;
				*dst_t++ = 0x11; dst_size++;
				*dst_t++ = repeat; dst_size++;
				*dst_t++ = 0x3E; dst_size++;
				
				repeat = 0;
			}
		}
		else
		{
			if(repeat > 5)
			{
				*dst_t++ = 0x3C; dst_size++;
				*dst_t++ = 0x00; dst_size++;
				*dst_t++ = 0x11; dst_size++;
				*dst_t++ = repeat; dst_size++;
				*dst_t++ = 0x3E; dst_size++;				
			}
			else
			{
				for(int j = 0; j < repeat; j++)
				{
					*dst_t++ = 0x00; dst_size++;					
				}
			}
			
			*dst_t++ = *src_t; dst_size++;
			
			repeat = 0;
		}
	}
	
	if(repeat > 5)
	{
		*dst_t++ = 0x3C; dst_size++;
		*dst_t++ = 0x00; dst_size++;
		*dst_t++ = 0x11; dst_size++;
		*dst_t++ = repeat; dst_size++;
		*dst_t++ = 0x3E; dst_size++;
	}
	else
	{
		for(int i = 0; i < repeat; i++)
		{
			*dst_t++ = 0x00; dst_size++;					
		}
		
		repeat = 0;
	}
	
	return dst_size;
}

bool PacketProc(int s, Packet packet)
{
	if(packet.Header.FrameNo == 0)
	{
		m_PtrRdData[s] = m_pRdDataBuf[s];
	}
	memcpy(m_PtrRdData[s], packet.Data, packet.Header.DataLength);
	
	m_PtrRdData[s] += packet.Header.DataLength;
		
	if(packet.Header.FrameNo < packet.Header.FrameCount - 1)
	{
		SendAck(s);
		return false;		
	}	
		
	return true;
}

inline void ApplyConnStat(void)
{
	byte dhcp;
	dhcp = m_pGlobalVar->mEthernetCfg.dhcp;
	memcpy(&m_pGlobalVar->mEthernetCfg, &m_pConnCfg->mEthernetCfg, sizeof(m_pGlobalVar->mEthernetCfg));
	m_pGlobalVar->mEthernetCfg.dhcp = dhcp;
}

bool CommChkStatus(int s)
{
	if(m_pGlobalVar->mStatusInf.devicecount == 0 || m_pGlobalVar->mStatusInf.meis.eis_status.teststatus == DEF_EIS_TESTSTATUS_NOZIM)
	{
		SendError(s,DEF_ERROR_NO_DEVICE);
		return false;
	}
	if(m_pGlobalVar->mStatusInf.meis.eis_status.teststatus == DEF_EIS_TESTSTATUS_OVERT)
	{
		SendError(s,DEF_ERROR_DETECTOVERT);
		return false;
	}
	if(m_pGlobalVar->mStatusInf.meis.eis_status.teststatus == DEF_EIS_TESTSTATUS_FAIL)
	{
		SendError(s,DEF_ERROR_FAIL);
		return false;
	}

	return true;
}

void Parsing(int s)
{	
	CmdHeader* pCmdHeader = (CmdHeader*)m_pRdDataBuf[s];
	byte* pCmdData = (byte*)(pCmdHeader + 1);
	
	if(m_pGlobalVar->mStatusInf.CommLed == true)
	{
	  m_pGlobalVar->mStatusInf.CommLed = false;
	}
	else
	{
	  m_pGlobalVar->mStatusInf.CommLed = true;
	}
	OnLed4(m_pGlobalVar->mStatusInf.CommLed);

	switch(pCmdHeader->Command)
	{
        case CMD_ERASE_NAND :
            {
                if(Nand_EraseBlock(pCmdHeader->Address) == FLASH_ERROR)
                {
                    SendError(s,DEF_ERROR_ERASENAND);
                    return;
                }
                break;
            }
            
		case CMD_PROG_NAND :
            {
                if(Nand_WritePage(pCmdHeader->Address, pCmdData) == FLASH_ERROR)
                {
                    SendError(s,DEF_ERROR_WRITENAND);
                    return;
                }
                break;
            }
			
		case CMD_SETINFO_NAND :
            {
                if(Nand_WritePage(0, pCmdData) == FLASH_ERROR)
                {
                    SendError(s,DEF_ERROR_WRITENAND);
                    return;
                }
                break;
            }
        
		case CMD_REFRESH_WEBSITE :
            {
                SetJsonAbout();
    			LoadFATHeader();
				InitHttp();
            }
				
        case CMD_GET_RDNAND :
            {
				if(Nand_ReadPage(pCmdHeader->Address, _pNandBuffer) == FLASH_ERROR)
				{
					SendError(s,DEF_ERROR_READNAND);
					return;
				}
				m_PtrWrData[s] = _pNandBuffer;
				m_SendDataSize[s] = NAND_MAIN_SIZE;
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
				break;
			}
		
		case CMD_GET_FINDSIFCFG :
			{
				stFindSIFCfg cfg;
				
				memcpy(&cfg,&m_pSysConfig->mSIFCfg,sizeof(stSIFCfg));
				cfg.SockStat = m_SocketStatus[TCP_SOCK_NUM];
				
				m_PtrWrData[s] = (byte*)&cfg;
				m_SendDataSize[s] = sizeof(stFindSIFCfg);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
				break;
			}
 		case DEF_CMD_GET_CONN_INFO :
        case CMD_GET_CONCFG :
			{
				m_PtrWrData[s] = (byte*)m_pConnCfg;
				m_SendDataSize[s] = DEF_SIZE_CONN_CFG;
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
				break;
			}
			
		case DEF_CMD_GET_CONN_STAT :
			{
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mEthernetCfg;
				m_SendDataSize[s] = sizeof(stEthernetCfg);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
				break;
			}
			
		case DEF_CMD_GET_SYSTEM_INFO:	
        case CMD_GET_SYSCFG :    
            {
                m_PtrWrData[s] = (byte*)m_pSysConfig;
                m_SendDataSize[s] = DEF_SIZE_SYS_CFG;
                m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
                m_SendFrameNo[s] = 0;
                break;
            }

        case DEF_CMD_SAVE_SYSTEM_INFO :
		case CMD_SET_SYSCFG :   
            {
                memcpy(m_pSysConfig, pCmdData, sizeof(stSystemConfig));
				proc_read_version();
				

				m_pGlobalVar->zim_id.mVendorInfo.pid = 0x494D;
				m_pGlobalVar->zim_id.mVendorInfo.pver = ByteToUshort(&m_pSysConfig->mZimCfg.cModel[0]);
				
				UshortToByte(m_pSysConfig->mZimCfg.ZimFWVersion,&m_pGlobalVar->zim_id.mVendorInfo.UUID[4]);
				UshortToByte(m_pSysConfig->mZimCfg.ZimBDVersion,&m_pGlobalVar->zim_id.mVendorInfo.UUID[10]);
				SetZimSerialIntToChar(m_pSysConfig->mZimCfg.nSerial,(char*)&m_pGlobalVar->zim_id.mVendorInfo.UUID[12]);

                m_pGlobalVar->nTimeTick = m_pSysConfig->DaqTick;
                if(m_pGlobalVar->nTimeTick < 0) m_pGlobalVar->nTimeTick = 1;
				
				if(SaveSysCfgInfo() == false)
				{
				  	SendError(s,DEF_ERROR_STORESYSINF);
					return;
				}
				if(m_pGlobalVar->bNoEprom == 0)
				{
					if(m_pGlobalVar->mStatusInf.devicecount > 0)
					{
						if(WriteZimId(0,0x50) == _ERROR)
						{
							SendError(s,DEF_ERROR_STORESYSINF);
							return;
						}
					}
				}
                break;
            }
		
        case CMD_SAVE_CONNCFG :  
			{
				memcpy(m_pConnCfg, pCmdData, DEF_SIZE_CONN_CFG);
				ApplyConnStat();
				if(SaveConnCfgInfo() == false)
				{
					SendError(s,DEF_ERROR_STORESYSINF);
					return;
				}
				break;
			}
		case DEF_CMD_SAVE_CONN_INFO :
			{
				if(SaveConnCfgInfo() == false)
				{
					SendError(s,DEF_ERROR_STORESYSINF);
					return;
				}
				break;
			}
			
		case DEF_CMD_SET_CONN_INFO :
            {	
				stUserEthernetCfg mCfg;
				memcpy(&mCfg, pCmdData, sizeof(stUserEthernetCfg));
				memcpy(&m_pConnCfg->mEthernetCfg.Gateway[0],&mCfg,sizeof(stUserEthernetCfg));
				SetJsonAbout();
                break;
            }
		
        case DEF_LAN_CMD_CHK_NOISE :
			{
				if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					SendError(s,DEF_ERROR_NO_DEVICE);
					return;
				}
				if(CheckThermoStat() == 1)
				{
					m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_OVERT;
					SendError(s,DEF_ERROR_DETECTOVERT);
					return;
				}
				if(m_pGlobalVar->Start == 0 && m_pGlobalVar->stat_sinectrl == 0)
				{
					memcpy(&m_pGlobalVar->mStatusInf.mRms.info, pCmdData, sizeof(st_zim_eis_rms_Inf));
					memcpy(&m_pGlobalVar->mStatusInf.meis.eis_status.RmsInfo, &m_pGlobalVar->mStatusInf.mRms.info, sizeof(st_zim_eis_rms_Inf));
					m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_BEGIN;
					m_pGlobalVar->Start = 2;
				}
				else
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				break;
			}
			
		case DEF_LAN_CMD_ENABLE_TIMEOUT :
			{
				m_pGlobalVar->EnaChkTimeOut = pCmdHeader->Address;
				break;
			}
			
		case DEF_LAN_CMD_START_DEVICE :
			{
				
				if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					SendError(s,DEF_ERROR_NO_DEVICE);
					return;
				}
				
				if(m_pGlobalVar->mStatusInf.meis.eis_status.teststatus == DEF_EIS_TESTSTATUS_OVERT)
				{
					SendError(s,DEF_ERROR_DETECTOVERT);
					return;
				}
				
				if(pCmdHeader->Length >= sizeof(st_rtc))
				{
					memcpy((void*)&m_pGlobalVar->mStatusInf.meis.eis_status.rtc, pCmdData, sizeof(st_rtc));
				}
				else
				{
					m_pGlobalVar->mStatusInf.meis.eis_status.rtc.tick = 0;
				}
				
				if(m_pGlobalVar->Start == 0 && m_pGlobalVar->stat_sinectrl == 0)
				{
					m_pGlobalVar->Stop = DEF_EIS_LASTTESTSTATUS_NONE;
					m_pGlobalVar->bCalib = pCmdHeader->Address;
					memset(m_pGlobalVar->mStatusInf.meis.eis_item, 0x0,sizeof(st_zim_eis_item) * MAX_EIS_FREQ_CNT);
					memset(m_pGlobalVar->mStatusInf.meis.eis_raw, 0x0,sizeof(st_zim_eis_raw) * MAX_EIS_FREQ_CNT);
					m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_BEGIN;
					m_pGlobalVar->Start = 1;
				}
				else
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				break;
			}
		
		case DEF_LAN_CMD_REFRESH_VAC :	
			{
				if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					SendError(s,DEF_ERROR_NO_DEVICE);
					return;
				}
				
				if(m_pGlobalVar->mStatusInf.meis.eis_status.teststatus == DEF_EIS_TESTSTATUS_OVERT)
				{
					SendError(s,DEF_ERROR_DETECTOVERT);
					return;
				}
				if(m_pGlobalVar->stat_sinectrl == 0 && m_pGlobalVar->Start == 0)
				{
					m_pGlobalVar->stat_sinectrl = 1;
				}
				else
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				break;
			}
			
		case DEF_LAN_CMD_STOP_DEVICE :
			{
				if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					SendError(s,DEF_ERROR_NO_DEVICE);
					return;
				}
				if(m_pGlobalVar->Start > 0)
				{
					m_pGlobalVar->bCalib = 0;
	//				if(m_pGlobalVar->mStatusInf.meis.eis_status.teststatus == DEF_EIS_TESTSTATUS_RUN)
	//				{
						m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_STOP;
						m_pGlobalVar->Stop = DEF_EIS_LASTTESTSTATUS_STOP;
						m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_EISSTOP;
						OnLed4(false);
	//				}
				}
				else if(m_pGlobalVar->stat_sinectrl > 0)
				{
					m_pGlobalVar->stat_sinectrl = 99;
				}
				break;
			}

		case CMD_RESET_SET_FPGA_ICE:	
			{
				/*if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					SendError(s,DEF_ERROR_NO_DEVICE);
					return;
				}*/
				m_pGlobalVar->ResetICE = 1;
				m_pGlobalVar->devchk = 0;
				m_pGlobalVar->mStatusInf.devicecount = 0;
				Set_IceResetB(true);
				
				break;
			}
		
		case CMD_RESET_CLR_FPGA_ICE:	
			{
				/*if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					SendError(s,DEF_ERROR_NO_DEVICE);
					return;
				}*/
				Set_IceResetB(false);
				m_pGlobalVar->ResetICE = 0;
				break;
			}
		
		case CMD_CONN_FPGA_PROM:	
			{
				/*if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					SendError(s,DEF_ERROR_NO_DEVICE);
					return;
				}*/
				if(MX25V_spi_open() != _NO_ERROR)
				{
					SendError(s,DEF_ERROR_FAIL);
					return;
				}
				m_pGlobalVar->OpenMX25V = TRUE;
				break;
			}
		
		case CMD_CLOSE_FPGA_PROM:	
			{
				/*if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					SendError(s,DEF_ERROR_NO_DEVICE);
					return;
				}*/
				MX25V_spi_close();
				m_pGlobalVar->OpenMX25V = FALSE;
				break;
			}
			
		case CMD_EREASE_FPGA_PROM:	
			{
				/*if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					SendError(s,DEF_ERROR_NO_DEVICE);
					return;
				}*/
				if(MX25V_erase_chip() != _NO_ERROR)
				{
					SendError(s,DEF_ERROR_FAIL);
					return;
				}
				 break;
			}
			
		case CMD_PROG_FPGA_PROM:	
			{
				/*if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					SendError(s,DEF_ERROR_NO_DEVICE);
					return;
				}*/
				if(MX25V_write_buffer(pCmdHeader->Address,pCmdData,pCmdHeader->Length) != _NO_ERROR)
				{
					SendError(s,DEF_ERROR_FAIL);
					return;
				}
				 break;
			}
			
		case CMD_READ_FPGA_PROM:	
			{
				/*if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					SendError(s,DEF_ERROR_NO_DEVICE);
					return;
				}*/
				if(MX25V_read_buffer(pCmdHeader->Address,_pNandBuffer,256) == _ERROR)
				{
					SendError(s,DEF_ERROR_READNAND);
					return;
				}
				m_PtrWrData[s] = _pNandBuffer;
				m_SendDataSize[s] = 256;
				m_SendFrameCount[s] = 1;
				m_SendFrameNo[s] = 0;
				 break;
			}
		
		case CMD_READ_ZIM_ROM:	
			{
				if(m_pGlobalVar->bNoEprom == 0)
				{
					ReadRangeInfo(0,0x50, (void*)&m_pGlobalVar->ranges);
				}
				else
				{
					LoadRangeInfo();
				}
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->ranges;
				m_SendDataSize[s] = sizeof(st_zim_rnginf);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
				 break;
			}
			
		case CMD_PROG_ZIM_ROM:	
			{
				if(pCmdData[0] != ID_RANGEINFO)
				{
					SendError(s,DEF_ERROR_NOMATCHVERSION);
					return;
				}
				
				memcpy(&m_pGlobalVar->ranges, pCmdData, sizeof(st_zim_rnginf));
				
				SaveRangeInfo();
				if(m_pGlobalVar->bNoEprom == 0)
				{
					if(ProgRangeInfo(0,0x50, (void*)pCmdData) == _ERROR)
					{
						SendError(s,DEF_ERROR_NO_DEVICE);
						return;
					}
				}
				break;
			}
			
		case CMD_READ_DATA :
			_Packet[s].Header.ID = PACKET_ID;
			_Packet[s].Header.FrameCount = m_SendFrameCount[s];
			_Packet[s].Header.FrameNo = m_SendFrameNo[s];
			_Packet[s].Header.DataLength = (m_SendDataSize[s] > PACKET_DATA_SIZE) ? PACKET_DATA_SIZE : m_SendDataSize[s];
			_Packet[s].Header.Reserved01 = 0;
			_Packet[s].Header.Error = 0;
			memcpy(_Packet[s].Data, m_PtrWrData[s], _Packet[s].Header.DataLength);
			_Packet[s].CheckSum = GenCheckSum((byte*)&_Packet[s], sizeof(Packet));
			
			if(send(m_Socket[s], (byte*)&_Packet[s], sizeof(Packet)) == sizeof(Packet))
			{			
				m_PtrWrData[s] += _Packet[s].Header.DataLength;
				m_SendFrameNo[s]++;
				m_SendDataSize[s] -= _Packet[s].Header.DataLength;
			}
			return;

	  case CMD_REFRESH_ZIM_ROM:		
			{
				break;
			}
			
		case CMD_GET_RNGINFO :
			{
				st_zim_rnginf1 mOldRangeInf;
				mOldRangeInf.ID = ID_RANGEINFO_1;
				memcpy(&mOldRangeInf.mSafety, &m_pGlobalVar->ranges.mSafety, sizeof(st_zim_Safety_inf));
				memcpy(&mOldRangeInf.mEisCalInfo, &m_pGlobalVar->ranges.mEisIRngCalInfo[5], sizeof(st_zim_Eis_Cal_info));
				memcpy(&mOldRangeInf.iac_rng[0], &m_pGlobalVar->ranges.iac_rng[0], sizeof(st_zim_adc_rnginf) * DEF_MAX_IAC_RNGCNT);
				memcpy(&mOldRangeInf.vac_rng, &m_pGlobalVar->ranges.vac_rng, sizeof(st_zim_adc_rnginf));
				memcpy(&mOldRangeInf.vdc_rng[0], &m_pGlobalVar->ranges.vdc_rng[0], sizeof(st_zim_adc_rnginf) * DEF_MAX_VDC_RNGCNT);
				memcpy(&mOldRangeInf.rtd_rng, &m_pGlobalVar->ranges.rtd_rng, sizeof(st_zim_adc_rnginf));

				memcpy(&mOldRangeInf.mEisIRngCalInfo[0], &m_pGlobalVar->ranges.mEisIRngCalInfo[1],sizeof(st_zim_Eis_Cal_info));
				memcpy(&mOldRangeInf.mEisIRngCalInfo[1], &m_pGlobalVar->ranges.mEisIRngCalInfo[3],sizeof(st_zim_Eis_Cal_info));
				memcpy(&mOldRangeInf.mEisIRngCalInfo[2], &m_pGlobalVar->ranges.mEisIRngCalInfo[5],sizeof(st_zim_Eis_Cal_info));
				memcpy(&mOldRangeInf.mEisIRngCalInfo[3], &m_pGlobalVar->ranges.mEisIRngCalInfo[7],sizeof(st_zim_Eis_Cal_info));
			
				m_PtrWrData[s] = (byte*)&mOldRangeInf;
				m_SendDataSize[s] = sizeof(st_zim_rnginf1);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }	
			
		case CMD_SET_RNGINFO :
			{
				if(pCmdData[0] != ID_RANGEINFO_1)
				{
					SendError(s,DEF_ERROR_NOMATCHVERSION);
					return;
				}
				st_zim_rnginf1 mOldRangeInf;
				memcpy(&mOldRangeInf, pCmdData, sizeof(st_zim_rnginf1));
				
				memcpy(&m_pGlobalVar->ranges.mSafety, &mOldRangeInf.mSafety, sizeof(st_zim_Safety_inf));
				m_pGlobalVar->ranges.mEisCable.selected = 0;
				
				int i;
				for(i=0; i<4; i++)
				{
					m_pGlobalVar->ranges.mEisCable.Ls[i] = 0.0;
				}
				for(i=0; i<4; i++)
				{
					m_pGlobalVar->ranges.mEisCable.bnouse[i] = 0;
				}
				
				m_pGlobalVar->ranges.mEisCable.dnouse = 0.0;
				memcpy(&m_pGlobalVar->ranges.vdc_rng[0], &mOldRangeInf.vdc_rng[0], sizeof(st_zim_adc_rnginf)*DEF_MAX_VDC_RNGCNT);
				memcpy(&m_pGlobalVar->ranges.rtd_rng, &mOldRangeInf.rtd_rng, sizeof(st_zim_adc_rnginf));
				
				memcpy(&m_pGlobalVar->ranges.mEisIRngCalInfo[0],&mOldRangeInf.mEisIRngCalInfo[0],sizeof(st_zim_Eis_Cal_info));
				memcpy(&m_pGlobalVar->ranges.mEisIRngCalInfo[1],&mOldRangeInf.mEisIRngCalInfo[0],sizeof(st_zim_Eis_Cal_info));
				memcpy(&m_pGlobalVar->ranges.mEisIRngCalInfo[2],&mOldRangeInf.mEisIRngCalInfo[1],sizeof(st_zim_Eis_Cal_info));
				memcpy(&m_pGlobalVar->ranges.mEisIRngCalInfo[3],&mOldRangeInf.mEisIRngCalInfo[1],sizeof(st_zim_Eis_Cal_info));
				memcpy(&m_pGlobalVar->ranges.mEisIRngCalInfo[4],&mOldRangeInf.mEisIRngCalInfo[2], sizeof(st_zim_Eis_Cal_info));
				memcpy(&m_pGlobalVar->ranges.mEisIRngCalInfo[5],&mOldRangeInf.mEisIRngCalInfo[2], sizeof(st_zim_Eis_Cal_info));
				memcpy(&m_pGlobalVar->ranges.mEisIRngCalInfo[6],&mOldRangeInf.mEisIRngCalInfo[3],sizeof(st_zim_Eis_Cal_info));
				memcpy(&m_pGlobalVar->ranges.mEisIRngCalInfo[7],&mOldRangeInf.mEisIRngCalInfo[3],sizeof(st_zim_Eis_Cal_info));
                break;
            }	
			
		case CMD_GET_RNGINFO1 :
			{
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->ranges;
				m_SendDataSize[s] = sizeof(st_zim_rnginf);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }	
			
		case CMD_SET_RNGINFO1 :
			{
				if(pCmdData[0] != ID_RANGEINFO)
				{
					SendError(s,DEF_ERROR_NOMATCHVERSION);
					return;
				}
				memcpy(&m_pGlobalVar->ranges, pCmdData, sizeof(st_zim_rnginf));
                break;
            }	
			
		case CMD_SAVE_RNGINFO :	
			{
				SaveRangeInfo();
				if(m_pGlobalVar->bNoEprom == 0)
				{
					if(WriteRangeInfo(0,0x50) == _ERROR)
					{
						SendError(s,DEF_ERROR_STOREZIMINF);
						return;
					}
				}
				break;
			}
			
		case CMD_INIT_RNGINFO :	
			{
				InitRangeInf();
				break;
			}
			
		case CMD_TEST_COMM:
			{
				st_TestCmd mtescmd;
				memcpy(&mtescmd, pCmdData, sizeof(st_TestCmd));
				m_pGlobalVar->commtest = mtescmd.testmode;
				break;
			};
			
		case CMD_GET_DDSCLK :
			{
				if(m_pGlobalVar->mStatusInf.devicecount == 0)
				{
					SendError(s,DEF_ERROR_NO_DEVICE);
					return;
				}
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mStatusInf.mreqdevice.dds_clk;
				m_SendDataSize[s] = sizeof(st_zim_dds);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }	
		case CMD_SET_DDSCLK :
			{
				if(m_pGlobalVar->Start > 0 || m_pGlobalVar->stat_sinectrl > 0)
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				else
				{
					memcpy(&m_pGlobalVar->mStatusInf.mreqdevice.dds_clk, pCmdData, sizeof(st_zim_dds));
					apply_req_dds_clock();
				}
                break;
            }
		case CMD_GET_DDSSIG :
			{
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mStatusInf.mreqdevice.dds_sig;
				m_SendDataSize[s] = sizeof(st_zim_dds);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }		
		case CMD_SET_DDSSIG :
			{
				if(m_pGlobalVar->Start > 0 || m_pGlobalVar->stat_sinectrl > 0)
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				else
				{
					memcpy(&m_pGlobalVar->mStatusInf.mreqdevice.dds_sig, pCmdData, sizeof(st_zim_dds));
					apply_req_dds_signal();
				}
                break;
            }
			
		case CMD_GET_RTD_CFG :
			{
				memcpy(&m_pGlobalVar->mStatusInf.mreqdevice.adc_rtd.config, &m_pGlobalVar->mStatusInf.mdevice.adc_rtd.config, sizeof(st_zim_rtd_cfg));
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mStatusInf.mreqdevice.adc_rtd.config;
				m_SendDataSize[s] = sizeof(st_zim_rtd_cfg);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }
			
		case CMD_SET_RTD_CFG :
			{
				memcpy(&m_pGlobalVar->mStatusInf.mreqdevice.adc_rtd.config, pCmdData, sizeof(st_zim_rtd_cfg));
                break;
            }
		
		case CMD_GET_RTD_DTA :
			{
				memcpy(&m_pGlobalVar->mStatusInf.mreqdevice.adc_rtd.data, &m_pGlobalVar->mStatusInf.mdevice.adc_rtd.data, sizeof(st_zim_rtd_data));
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mStatusInf.mreqdevice.adc_rtd.data;
				m_SendDataSize[s] = sizeof(st_zim_rtd_data);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }
			
		case CMD_GET_DEV_DO :
			{
				memcpy(&m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do, &m_pGlobalVar->mStatusInf.mdevice.ctrl_do, sizeof(st_zim_do));
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do;
				m_SendDataSize[s] = sizeof(st_zim_do);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }
			
		case CMD_SET_DEV_DO :
			{
				if(m_pGlobalVar->Start > 0 || m_pGlobalVar->stat_sinectrl > 0)
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				else
				{

					m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do.data &= ~DEF_DEVDO_MASK;
					m_pGlobalVar->mStatusInf.mreqdevice.ctrl_do.data |= (*pCmdData & DEF_DEVDO_MASK);
				}
				break;
            }
		
		case CMD_GET_AC_ADC_CFG :
			{
				memcpy(&m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.cfg, &m_pGlobalVar->mStatusInf.mdevice.adc_ac.cfg, sizeof(st_zim_adc_ac_cfg));
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.cfg;
				m_SendDataSize[s] = sizeof(st_zim_adc_ac_cfg);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }

		case CMD_SET_AC_ADC_CFG :
			{
				if(m_pGlobalVar->Start > 0 || m_pGlobalVar->stat_sinectrl > 0)
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				else
				{
					memcpy(&m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.cfg, pCmdData, sizeof(st_zim_adc_ac_cfg));
					apply_adc_ac_cfg();
				}
				break;
            }
		
		case CMD_GET_AC_ADC_DATA :
			{
				memcpy(&m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.data, &m_pGlobalVar->mStatusInf.mdevice.adc_ac.data, sizeof(st_zim_adc_ac_data));
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mStatusInf.mreqdevice.adc_ac.data;
				m_SendDataSize[s] = sizeof(st_zim_adc_ac_data);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
				break;
            }
		
		case CMD_GET_VDC_ADC_DATA :
			{
				memcpy(&m_pGlobalVar->mStatusInf.mreqdevice.adc_vdc, &m_pGlobalVar->mStatusInf.mdevice.adc_vdc, sizeof(st_zim_adc_vdc));
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mStatusInf.mreqdevice.adc_vdc;
				m_SendDataSize[s] = sizeof(st_zim_adc_vdc);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }
		case CMD_SET_VDC_RNG :
			{
				m_pGlobalVar->mStatusInf.AutoVdcRange = pCmdHeader->Address;
				break;
			}
		case CMD_SET_COND_EIS :
			{
				if(m_pGlobalVar->Start > 0 || m_pGlobalVar->stat_sinectrl > 0)
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				else
				{
					memcpy(&m_pGlobalVar->mStatusInf.meis.eis_cond, pCmdData, sizeof(st_zim_eis_cond));
				}
				break;
            }
			
		case CMD_GET_STAT_EIS :
			{
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mStatusInf.meis.eis_status;
				m_SendDataSize[s] = sizeof(st_zim_eis_status);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }
		
		case CMD_GET_RAWVAL_EIS :
			{
				if(pCmdHeader->Address >= MAX_EIS_FREQ_CNT)
				{
					SendError(s,DEF_ERROR_FAIL);
					return;
				}
				else
				{
					m_PtrWrData[s] = (byte*)&m_pGlobalVar->mStatusInf.meis.eis_raw[pCmdHeader->Address].raw_val[0];
					m_SendDataSize[s] = sizeof(st_zim_eis_raw_val) * MAX_EIS_RAW_POINT;
					m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
					m_SendFrameNo[s] = 0;
				}
                break;
            }
			
		case CMD_GET_DATA_EIS :
			{
				if(pCmdHeader->Address >= MAX_EIS_FREQ_CNT)
				{
					SendError(s,DEF_ERROR_FAIL);
					return;
				}
				else
				{
					m_PtrWrData[s] = (byte*)&m_pGlobalVar->mStatusInf.meis.eis_item[pCmdHeader->Address];
					m_SendDataSize[s] = sizeof(st_zim_eis_item);
					m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
					m_SendFrameNo[s] = 0;
				}
                break;
            } 
			
		case CMD_GET_COND_EIS :
			{
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mStatusInf.meis.eis_cond;
				m_SendDataSize[s] = sizeof(st_zim_eis_cond);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
			}
			break;
			
		default:
            SendError(s,DEF_ERROR_BAD_COMMAND);
			return;
	}
	if(m_pGlobalVar->mStatusInf.CommTimeOut > DEF_COMM_TIMEOUT)
    {
      *((byte*)(REG_CH_BASE + (m_Socket[s] * REG_CH_SIZE) + 0x0003)) = Sn_SR_CLOSED;
    }
	else SendAck(s);
}


void TCP_Poll_2000(int s)
{
	int time_out = 0xFFFF;
	ushort recvsize;
	byte checksum;
	
	switch(m_SocketStatus[s])
	{
	case START:
		m_pGlobalVar->LedBusyStat = false;
		if(socket(m_Socket[s], Sn_MR_TCP, m_pConnCfg->mEthernetCfg.Port, 0))
		{
			m_SocketStatus[s] = OPEN;
			OnLed4(false);
		}
		else
			close(m_Socket[s]);
		break;
	case OPEN:
		m_pGlobalVar->LedBusyStat = false;
		if(listen(m_Socket[s]))
		{
			m_SocketStatus[s] = LISTEN;
		}
		else
		{
			close(m_Socket[s]);
			m_SocketStatus[s] = START;
		}
		break;
	case LISTEN:
		OnLed2(true);
		m_pGlobalVar->LedBusyStat = false;
		if(*((byte*)(REG_CH_BASE + (m_Socket[s] * REG_CH_SIZE) + 0x0003)) == Sn_SR_ESTABLISHED)
		{			
			
			m_SocketStatus[s] = ESTABLISHED;	
			m_pGlobalVar->mStatusInf.CommTimeOut = 0;
			m_pGlobalVar->mStatusInf.prevrecvsize = 0;
		}

		break;
	case ESTABLISHED:
		{
			OnLed2(false);			
			recvsize = GetRecvDataSize(m_Socket[s]);			
			m_pGlobalVar->LedBusyStat = true;
			if(recvsize >= sizeof(Packet))
			{
				Packet packet;
				m_pGlobalVar->mStatusInf.CommTimeOut = 0;
				recv(m_Socket[s], (byte*)&packet, sizeof(Packet));	
				
				checksum = GenCheckSum((byte*)&packet, sizeof(Packet));
				if(m_pGlobalVar->mStatusInf.CommTimeOut > DEF_COMM_TIMEOUT)
                {
                      close(m_Socket[s]);
                      m_pGlobalVar->mStatusInf.CommTimeOut = 0;
                      m_SocketStatus[s] = START;
                      return;
                }
                else
                {
                    if(checksum == packet.CheckSum)
                    {
                        if(PacketProc(s,packet))
                        {
                            Parsing(s);
                        }
                    }
                    else
                    {
                        SendError(s,DEF_ERROR_FAILCHKSUM);
                    }
                }
			}
				
			if(*((byte*)(REG_CH_BASE + (m_Socket[s] * REG_CH_SIZE) + 0x0003)) == Sn_SR_CLOSEWAIT)
			{
				disconnect(m_Socket[s]);
				while(*((byte*)(REG_CH_BASE + (m_Socket[s] * REG_CH_SIZE) + 0x0003)) != Sn_SR_CLOSED)
				{
					time_out--;
					if(time_out <= 0)
                    {
						break;
                    }
				}
				close(m_Socket[s]);
				m_SocketStatus[s] = START;
			}
			
			if(*((byte*)(REG_CH_BASE + (m_Socket[s] * REG_CH_SIZE) + 0x0003)) == Sn_SR_CLOSED  || m_pGlobalVar->mStatusInf.CommTimeOut > DEF_COMM_TIMEOUT)
			{
				m_pGlobalVar->mStatusInf.CommTimeOut = 0;
				close(m_Socket[s]);			
				m_SocketStatus[s] = START;				
			}
			
			if(m_pGlobalVar->mStatusInf.prevrecvsize != recvsize)
			{
				m_pGlobalVar->mStatusInf.CommTimeOut = 0;
				m_pGlobalVar->mStatusInf.prevrecvsize = recvsize;
			}
		}
		break;
	}
}

void TCP_Poll(int s, int port)
{
	int time_out = 0xFFFF;
	ushort recvsize;
	byte checksum;
	
	switch(m_SocketStatus[s])
	{
	case START:
		m_pGlobalVar->LedBusyStat = false;
		if(socket(m_Socket[s], Sn_MR_TCP, port, 0))
		{
			m_SocketStatus[s] = OPEN;
			OnLed4(false);
		}
		else
			close(m_Socket[s]);
		break;
	case OPEN:
		m_pGlobalVar->LedBusyStat = false;
		if(listen(m_Socket[s]))
		{
			m_SocketStatus[s] = LISTEN;
		}
		else
		{
			close(m_Socket[s]);
			m_SocketStatus[s] = START;
		}
		break;
	case LISTEN:
		OnLed2(true);
		m_pGlobalVar->LedBusyStat = false;
		if(*((byte*)(REG_CH_BASE + (m_Socket[s] * REG_CH_SIZE) + 0x0003)) == Sn_SR_ESTABLISHED)
		{			
			
			m_SocketStatus[s] = ESTABLISHED;	
			m_pGlobalVar->mStatusInf.CommTimeOut = 0;
			m_pGlobalVar->mStatusInf.prevrecvsize = 0;
		}

		break;
	case ESTABLISHED:
		{
			OnLed2(false);			
			recvsize = GetRecvDataSize(m_Socket[s]);			
			m_pGlobalVar->LedBusyStat = true;
			if(recvsize >= sizeof(Packet))
			{
				Packet packet;
				m_pGlobalVar->mStatusInf.CommTimeOut = 0;
				recv(m_Socket[s], (byte*)&packet, sizeof(Packet));	
				
				checksum = GenCheckSum((byte*)&packet, sizeof(Packet));
				if(m_pGlobalVar->mStatusInf.CommTimeOut > DEF_COMM_TIMEOUT)
                {
                      close(m_Socket[s]);
                      m_pGlobalVar->mStatusInf.CommTimeOut = 0;
                      m_SocketStatus[s] = START;
                      return;
                }
                else
                {
                    if(checksum == packet.CheckSum)
                    {
                        if(PacketProc(s,packet))
                        {
                            Parsing(s);
                        }
                    }
                    else
                    {
                        SendError(s,DEF_ERROR_FAILCHKSUM);
                    }
                }
			}
				
			if(*((byte*)(REG_CH_BASE + (m_Socket[s] * REG_CH_SIZE) + 0x0003)) == Sn_SR_CLOSEWAIT)
			{
				disconnect(m_Socket[s]);
				while(*((byte*)(REG_CH_BASE + (m_Socket[s] * REG_CH_SIZE) + 0x0003)) != Sn_SR_CLOSED)
				{
					time_out--;
					if(time_out <= 0)
                    {
						break;
                    }
				}
				close(m_Socket[s]);
				m_SocketStatus[s] = START;
			}
			
			if(*((byte*)(REG_CH_BASE + (m_Socket[s] * REG_CH_SIZE) + 0x0003)) == Sn_SR_CLOSED  || m_pGlobalVar->mStatusInf.CommTimeOut > DEF_COMM_TIMEOUT)
			{
				m_pGlobalVar->mStatusInf.CommTimeOut = 0;
				close(m_Socket[s]);			
				m_SocketStatus[s] = START;				
			}
			
			if(m_pGlobalVar->mStatusInf.prevrecvsize != recvsize)
			{
				m_pGlobalVar->mStatusInf.CommTimeOut = 0;
				m_pGlobalVar->mStatusInf.prevrecvsize = recvsize;
			}
		}
		break;
	}
}