#include "init.h"
#include "BZA_SIF.h"

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

void SendError(int s,byte error)
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

bool PacketProc(int s,Packet packet)
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

void Parsing(int s)
{	
	CmdHeader* pCmdHeader = (CmdHeader*)m_pRdDataBuf[s];
	byte* pCmdData = (byte*)(pCmdHeader + 1);
	ushort ch;
   
    if(m_pGlobalVar->CommLed == true)
    {
      m_pGlobalVar->CommLed = false;
    }
    else
    {
      m_pGlobalVar->CommLed = true;
    }
    OnLed4(m_pGlobalVar->CommLed);

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
				stFindSIFCfg       msifcfg;
				
				memcpy(&msifcfg,&m_pSysConfig->mSIFCfg,sizeof(stSIFCfg));
				msifcfg.SockStat = m_SocketStatus[TCP_SOCK_NUM];
					
				m_PtrWrData[s] = (byte*)&msifcfg;
				m_SendDataSize[s] = sizeof(stFindSIFCfg);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
				break;
			}
		case DEF_CMD_GET_SIFCFG :
			{
				m_PtrWrData[s] = (byte*)&m_pSysConfig->mSIFCfg;
				m_SendDataSize[s] = sizeof(stSIFCfg);       
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
				break;
			}
		case CMD_GET_CONCFG :
			{
				m_PtrWrData[s] = (byte*)m_pConnCfg;
				m_SendDataSize[s] = sizeof(stConnCfg);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
				break;
			}

 		case DEF_CMD_GET_CONN_INFO :
			{
				memcpy(m_pConnCfg->Serial,m_pSysConfig->mSIFCfg.Serial,12);
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
            {
                m_PtrWrData[s] = (byte*)m_pSysConfig;
                m_SendDataSize[s] = sizeof(stSystemConfig);
                m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
                m_SendFrameNo[s] = 0;
                break;
            }

        case DEF_CMD_SAVE_SYSTEM_INFO : 
            {
				memcpy(m_pSysConfig, pCmdData, sizeof(stSystemConfig));
				
                m_pGlobalVar->nTimeTick = m_pSysConfig->DaqTick;
                if(m_pGlobalVar->nTimeTick < 0) m_pGlobalVar->nTimeTick = 1;
				
                break;
            }
		
		case DEF_CMD_GET_DEVCE_INFO:	 
            {
				stDevInf mDev;
				memcpy(&mDev, pCmdData, sizeof(stDevInf));
				memcpy(&mDev.mConnCfg,m_pConnCfg,sizeof(stConnCfg));
				memcpy(&mDev.mSysCfg,m_pSysConfig,sizeof(stSystemConfig));
				
                m_PtrWrData[s] = (byte*)&mDev;
                m_SendDataSize[s] = sizeof(stDevInf);
                m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
                m_SendFrameNo[s] = 0;
                break;
            }

        case DEF_CMD_SAVE_DEVICE_INFO : 
            {
				stDevInf mDev;
				memcpy(&mDev, pCmdData, sizeof(stDevInf));
				
				memcpy(m_pConnCfg,&mDev.mConnCfg,sizeof(stConnCfg));
				memcpy(m_pSysConfig,&mDev.mSysCfg,sizeof(stSystemConfig));
				
                m_pGlobalVar->nTimeTick = m_pSysConfig->DaqTick;
                if(m_pGlobalVar->nTimeTick < 0) m_pGlobalVar->nTimeTick = 1;
                break;
            }
			
		case DEF_CMD_SAVE_CONN_INFO :
			{
				memcpy(m_pConnCfg, pCmdData, DEF_SIZE_CONN_CFG);
				memcpy(m_pSysConfig->mSIFCfg.Serial,m_pConnCfg->Serial,12);
				ApplyConnStat();
				
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
                break;
            }
		
        case DEF_LAN_CMD_CHK_NOISE :
			{
				SendError(s,DEF_ERROR_NOTSUPPORTED);
				break;
			}
			
		case DEF_LAN_CMD_ENABLE_TIMEOUT :
			{
				m_pGlobalVar->mStatusInf.EnaChkTimeOut = pCmdHeader->Address;
				break;
			}
			
		case DEF_LAN_CMD_START_DEVICE :
			{
				if(pCmdHeader->Slot < 0)
				{
					for(ch = 0; ch < MAX_DEV_CHANNEL; ch++)
					{
						if(m_pSysConfig->ChkZIM[ch] == 1)
						{
							if(pCmdHeader->Length >= sizeof(st_rtc))
							{
								memcpy((void*)&m_pGlobalVar->mChVar[ch].mChStatInf.rtc, pCmdData, sizeof(st_rtc));
							}
							else
							{
								m_pGlobalVar->mChVar[ch].mChStatInf.rtc.tick = 0;
							}
							
							if(m_pGlobalVar->mChVar[ch].Start == 0  && m_pGlobalVar->mChVar[ch].CmdStart == 0 )
							{
								m_pGlobalVar->mChVar[ch].CmdStart = 1;
							}
						}
					}
				}
				else
				{
					ch = pCmdHeader->Slot;
					if(m_pSysConfig->ChkZIM[ch] == 0)
					{
						SendError(s,DEF_ERROR_NOZIM);
						return;
					}

					
					if(m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus > DEF_LAST_ERROR_NONE)
					{
						SendError(s,m_pGlobalVar->mChVar[ch].mChStatInf.ErrorStatus);
						return;
					}
					
					if(pCmdHeader->Length >= sizeof(st_rtc))
					{
						memcpy((void*)&m_pGlobalVar->mChVar[ch].mChStatInf.rtc, pCmdData, sizeof(st_rtc));
					}
					else
					{
						m_pGlobalVar->mChVar[ch].mChStatInf.rtc.tick = 0;
					}
					
					if(m_pGlobalVar->mChVar[ch].Start == 0  && m_pGlobalVar->mChVar[ch].CmdStart == 0 )
					{
						m_pGlobalVar->mChVar[ch].bCalib = pCmdHeader->Address;
						m_pGlobalVar->mChVar[ch].CmdStart = 1;
						
					}
					else
					{
						SendError(s,DEF_ERROR_STARTED);
						return;
					}
				}
				break;
			}
		
		case DEF_LAN_CMD_REFRESH_VAC :	
			{
				
				break;
			}
			
		case DEF_LAN_CMD_STOP_DEVICE :
			{
				if(pCmdHeader->Slot < 0)
				{
					for(ch = 0; ch < MAX_DEV_CHANNEL; ch++)
					{
						if(m_pSysConfig->ChkZIM[ch] == 1)
						{
							m_pGlobalVar->mChVar[ch].CmdStop = 1;
							if(pCmdHeader->Address > 0)
							{
								m_pGlobalVar->mChVar[ch].mChStatInf.LastError = pCmdHeader->Address;
								
							}
						}
					}
				}
				else
				{
					ch = pCmdHeader->Slot;
					
					
					if(m_pSysConfig->ChkZIM[ch] == 0)
					{
						SendError(s,DEF_ERROR_NOZIM);
						return;
					}
					   
					if(m_pGlobalVar->mChVar[ch].Start > 0)
					{
						m_pGlobalVar->mChVar[ch].CmdStop = 1;
						if(pCmdHeader->Address > 0)
						{
							m_pGlobalVar->mChVar[ch].mChStatInf.LastError = pCmdHeader->Address;
						}
					}
					else
					{
						SendError(s,DEF_ERROR_NOTSTARTED);
						return;
					}
				}
				break;
			}
			
		case DEF_CMD_SET_SIFMODE:
			{
				if(pCmdHeader->Address == 1)
				{
					m_pGlobalVar->mStatusInf.mode = 1;
				}
				else
				{
					if(m_pGlobalVar->mStatusInf.mode == 1)
					{
						if(proc_chk_run() == true)
						{
							SendError(s,DEF_ERROR_STARTED);
							return;
						}
						m_pGlobalVar->mStatusInf.mode = 2;
					}
				}
				break;
			}
			
			
		case DEF_CMD_SET_CHANNEL:	
			{
				if(m_pGlobalVar->mStatusInf.mode == 1)
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				SetDevChannel(ch);
				break;
			}
		
		case DEF_CMD_CHK_EEPROM:	
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				if(EepromCheckZim(ch,0,EEPROM_ADDR) == _ERROR)
				{
					SendError(s,DEF_ERROR_NOZIM);
					return;
				}

				if(pCmdHeader->Address == 1)
				{
					if(EepromApplyZim(ch,0,EEPROM_ADDR) == _ERROR)
					{
						SendError(s,DEF_ERROR_NOZIM);
						return;
					}
				}
				
				break;
			}
		
		case DEF_CMD_INIT_EEPROM:	
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				InitZimConfig(ch);
					
				if(EepromWriteZimCfg(ch,0,EEPROM_ADDR) == _ERROR)
				{
					SendError(s,DEF_ERROR_NORESP);
					return;
				}
				break;
			}
		case DEF_CMD_CHK_FPGA:	
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				if(proc_read_version(ch) == _ERROR) 
				{
					SendError(s,DEF_ERROR_NORESP);
					return;
				}
				break;
			}
			
		case DEF_CMD_GET_ZIMCFG:	 
            {
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
                m_PtrWrData[s] = (byte*)&m_pSysConfig->mZimCfg[ch];
                m_SendDataSize[s] = DEF_SIZE_ZIMCFG;
                m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
                m_SendFrameNo[s] = 0;
                break;
            }
			
		case CMD_RESET_SET_FPGA_ICE:	
			{
				if(pCmdHeader->Slot >= 0)
				{
					if(m_pGlobalVar->mStatusInf.mode == 1)
					{
						m_pGlobalVar->CmdResetICE = 1;
						m_pGlobalVar->ResetCh = pCmdHeader->Slot;
					}
					else
					{
						SetDevChannel(pCmdHeader->Slot);
						delay(100);
						Set_IceResetB(true);
					}
				}
				break;
			}
		
		case CMD_RESET_CLR_FPGA_ICE:	
			{
				if(m_pGlobalVar->mStatusInf.mode == 1)
				{
					m_pGlobalVar->CmdResetICE = 2;
				}
				else
				{
					Set_IceResetB(false);
				}
				break;
			}
		
		case CMD_CONN_FPGA_PROM:	
			{
				if(MX25V_spi_open() != _NO_ERROR)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				m_pGlobalVar->OpenMX25V = TRUE;
				
				
				break;
			}
		
		case CMD_CLOSE_FPGA_PROM:	
			{
				MX25V_spi_close();
				m_pGlobalVar->OpenMX25V = FALSE;
				break;
			}
			
		case CMD_EREASE_FPGA_PROM:	
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				SetDevChannel(ch);
				
				if(MX25V_erase_chip() != _NO_ERROR)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				 break;
			}
			
		case CMD_PROG_FPGA_PROM:	
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				SetDevChannel(ch);
				
				if(MX25V_write_buffer(pCmdHeader->Address,pCmdData,pCmdHeader->Length) != _NO_ERROR)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				 break;
			}
			
		case CMD_READ_FPGA_PROM:	
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				SetDevChannel(ch);
				
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
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				SetDevChannel(ch);
				
				st_zim_rnginf   	tRanges;
				
				if(ReadRangeInfo(ch, 0,EEPROM_ADDR, (void*)&tRanges) == _ERROR)
				{
					SendError(s,DEF_ERROR_NOZIM);
					return;
				}
				m_PtrWrData[s] = (byte*)&tRanges;
				m_SendDataSize[s] = sizeof(st_zim_rnginf);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
				 break;
			}
			
		case CMD_PROG_ZIM_ROM:	
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				SetDevChannel(ch);
				
				if(pCmdData[10] != ID_RANGEINFO)
				{
					SendError(s,DEF_ERROR_NOMATCHVERSION);
					return;
				}
				
				memcpy(&m_pSysConfig->mZimCfg[ch],pCmdData,sizeof(stZimCfg));
				
				if(WriteZimCfgInfo(ch, 0,EEPROM_ADDR) == _ERROR)
				{
					SendError(s,DEF_ERROR_NOZIM);
					return;
				}
				
				if(WriteRangeInfo(ch, 0,EEPROM_ADDR) == _ERROR)
				{
					SendError(s,DEF_ERROR_NOZIM);
					return;
				}
				
				if(SaveSysCfgInfo() == false)
				{
				  	SendError(s,DEF_ERROR_STORESYSINF);
					return;
				}
				break;
			}
			
		case CMD_REFRESH_ZIM_ROM:		
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				SetDevChannel(ch);
				
				
				if(ReadZimCfgInfo(ch, 0,EEPROM_ADDR,&m_pSysConfig->mZimCfg[ch].info) == _ERROR)
				{
					SendError(s,DEF_ERROR_NOZIM);
					return;
				}
				
				if(ReadRangeInfo(ch, 0,EEPROM_ADDR,&m_pSysConfig->mZimCfg[ch].ranges) == _ERROR)
				{
					SendError(s,DEF_ERROR_NOZIM);
					return;
				}
				
				if(SaveSysCfgInfo() == false)
				{
				  	SendError(s,DEF_ERROR_STORESYSINF);
					return;
				}
				
				break;
			}
			
		case CMD_READ_DATA :
			{
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
			}
	case DEF_LAN_CMD_CALIB_MODE:
			{
				if(pCmdHeader->Slot < 0)
				{
					for(ch=0; ch < MAX_DEV_CHANNEL; ch++)
					{
						m_pGlobalVar->mChVar[ch].bCalib = (pCmdHeader->Address == 0)?0:1;
						if(m_pGlobalVar->mChVar[ch].bCalib == 1)
						{
							m_pGlobalVar->mChVar[ch].mChStatInf.TestStatus = DEF_TESTSTATUS_CALIBRATION;
						}
						else
						{
							m_pGlobalVar->mChVar[ch].mChStatInf.TestStatus = DEF_TESTSTATUS_READY;
						}
					}
				}
				else
				{
					ch = pCmdHeader->Slot;
					m_pGlobalVar->mChVar[ch].bCalib = (pCmdHeader->Address == 0)?0:1;
					if(m_pGlobalVar->mChVar[ch].bCalib == 1)
					{
						m_pGlobalVar->mChVar[ch].mChStatInf.TestStatus = DEF_TESTSTATUS_CALIBRATION;
					}
					else
					{
						m_pGlobalVar->mChVar[ch].mChStatInf.TestStatus = DEF_TESTSTATUS_READY;
					}
				}
				
				break;
				
			}
		case CMD_GET_RNGINFO :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				m_PtrWrData[s] = (byte*)&m_pSysConfig->mZimCfg[ch].ranges;
				m_SendDataSize[s] = sizeof(st_zim_rnginf);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }	

		case CMD_SET_RNGINFO :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				if(pCmdData[0] != ID_RANGEINFO)
				{
					SendError(s,DEF_ERROR_NOMATCHVERSION);
					return;
				}

				memcpy(&m_pSysConfig->mZimCfg[ch].ranges, pCmdData, sizeof(st_zim_rnginf));
                break;
            }	
			
		case CMD_WRITE_ROM :	
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;

				if(SaveConnCfgInfo() == false)
				{
					SendError(s,DEF_ERROR_STORESYSINF);
					return;
				}
				
				if(SaveSysCfgInfo() == false)
				{
				  	SendError(s,DEF_ERROR_STORESYSINF);
					return;
				}
				
				if(m_pSysConfig->EnaROM[ch] == 1)
				{
					SetDevChannel(ch);
					
					if(WriteRangeInfo(ch, 0,EEPROM_ADDR) == _ERROR)
					{
						SendError(s,DEF_ERROR_STOREZIMINF);
						return;
					}
				}
				break;
			}
			
		case CMD_INIT_RNGINFO :	
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				InitRangeInf(ch);
				if(WriteRangeInfo(ch, 0,EEPROM_ADDR) == _ERROR)
				{
					SendError(s,DEF_ERROR_STOREZIMINF);
					return;
				}
				break;
			}
			
		case CMD_GET_DDSCLK :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;

				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].mreqdevice.dds_clk;
				m_SendDataSize[s] = sizeof(st_zim_dds);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }	
		case CMD_SET_DDSCLK :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				if(m_pGlobalVar->mChVar[ch].Start > 0)
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				else
				{
					memcpy(&m_pGlobalVar->mChVar[ch].mreqdevice.dds_clk, pCmdData, sizeof(st_zim_dds));
					apply_req_dds_clock(ch);
				}
                break;
            }
		case CMD_GET_DDSSIG :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].mreqdevice.dds_sig;
				m_SendDataSize[s] = sizeof(st_zim_dds);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }		
		case CMD_SET_DDSSIG :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				if(m_pGlobalVar->mChVar[ch].Start > 0)
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				else
				{
					memcpy(&m_pGlobalVar->mChVar[ch].mreqdevice.dds_sig, pCmdData, sizeof(st_zim_dds));
					apply_req_dds_signal(ch);
				}
                break;
            }
			
		case CMD_GET_RTD_CFG :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				memcpy(&m_pGlobalVar->mChVar[ch].mreqdevice.adc_rtd.config, &m_pGlobalVar->mChVar[ch].mdevice.adc_rtd.config, sizeof(st_zim_rtd_cfg));
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].mreqdevice.adc_rtd.config;
				m_SendDataSize[s] = sizeof(st_zim_rtd_cfg);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }
			
		case CMD_SET_RTD_CFG :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				memcpy(&m_pGlobalVar->mChVar[ch].mreqdevice.adc_rtd.config, pCmdData, sizeof(st_zim_rtd_cfg));
                break;
            }
		
		case CMD_GET_RTD_DTA :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				memcpy(&m_pGlobalVar->mChVar[ch].mreqdevice.adc_rtd.data, &m_pGlobalVar->mChVar[ch].mdevice.adc_rtd.data, sizeof(st_zim_rtd_data));
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].mreqdevice.adc_rtd.data;
				m_SendDataSize[s] = sizeof(st_zim_rtd_data);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }
			
		case CMD_GET_DEV_DO :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				memcpy(&m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do, &m_pGlobalVar->mChVar[ch].mdevice.ctrl_do, sizeof(st_zim_do));
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do;
				m_SendDataSize[s] = sizeof(st_zim_do);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }
			
		case CMD_SET_DEV_DO :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				if(m_pGlobalVar->mChVar[ch].Start > 0)
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				else
				{

					m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do.data &= ~DEF_DEVDO_MASK;
					m_pGlobalVar->mChVar[ch].mreqdevice.ctrl_do.data |= (*pCmdData & DEF_DEVDO_MASK);
				}
				break;
            }
		
		case CMD_GET_AC_ADC_CFG :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				memcpy(&m_pGlobalVar->mChVar[ch].mreqdevice.adc_ac.cfg, &m_pGlobalVar->mChVar[ch].mdevice.adc_ac.cfg, sizeof(st_zim_adc_ac_cfg));
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].mreqdevice.adc_ac.cfg;
				m_SendDataSize[s] = sizeof(st_zim_adc_ac_cfg);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }

		case CMD_SET_AC_ADC_CFG :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				if(m_pGlobalVar->mChVar[ch].Start > 0)
				{
					SendError(s,DEF_ERROR_STARTED);
					return;
				}
				else
				{
					memcpy(&m_pGlobalVar->mChVar[ch].mreqdevice.adc_ac.cfg, pCmdData, sizeof(st_zim_adc_ac_cfg));
					apply_adc_ac_cfg(ch);
				}
				break;
            }
		
		case CMD_GET_AC_ADC_DATA :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				memcpy(&m_pGlobalVar->mChVar[ch].mreqdevice.adc_ac.data, &m_pGlobalVar->mChVar[ch].mdevice.adc_ac.data, sizeof(st_zim_adc_ac_data));
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].mreqdevice.adc_ac.data;
				m_SendDataSize[s] = sizeof(st_zim_adc_ac_data);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
				break;
            }
		
		case CMD_GET_VDC_ADC_DATA :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				memcpy(&m_pGlobalVar->mChVar[ch].mreqdevice.adc_vdc, &m_pGlobalVar->mChVar[ch].mdevice.adc_vdc, sizeof(st_zim_adc_vdc));
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].mreqdevice.adc_vdc;
				m_SendDataSize[s] = sizeof(st_zim_adc_vdc);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }
		case CMD_SET_VDC_RNG :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				m_pGlobalVar->mChVar[ch].AutoVdcRange = pCmdHeader->Address;
				break;
			}
		case CMD_SET_COND_EIS :
			{
				if(pCmdHeader->Slot < 0)
				{
					for(ch = 0; ch < MAX_DEV_CHANNEL; ch++)
					{
						if(m_pSysConfig->ChkZIM[ch] == 1)
						{
							memcpy(&m_pGlobalVar->mChVar[ch].tech_cond, pCmdData, sizeof(st_zim_eis_cond));
						}
					}
				}
				else
				{
					ch = pCmdHeader->Slot;
					
					if(m_pGlobalVar->mChVar[ch].Start > 0)
					{
						SendError(s,DEF_ERROR_STARTED);
						return;
					}
					else
					{
						memcpy(&m_pGlobalVar->mChVar[ch].tech_cond, pCmdData, sizeof(st_zim_eis_cond));
					}
				}
				break;
            }
			
		case CMD_SET_COND_TECH :
			{
				if(pCmdHeader->Slot < 0)
				{
					for(ch = 0; ch < MAX_DEV_CHANNEL; ch++)
					{
						if(m_pSysConfig->ChkZIM[ch] == 1)
						{
							memcpy(&m_pGlobalVar->mChVar[ch].mTech, pCmdData, sizeof(st_Tech));
						}
					}
				}
				else
				{
					ch = pCmdHeader->Slot;
					
					if(m_pGlobalVar->mChVar[ch].Start > 0)
					{
						SendError(s,DEF_ERROR_STARTED);
						return;
					}
					else
					{
						memcpy(&m_pGlobalVar->mChVar[ch].mTech, pCmdData, sizeof(st_Tech));
					}
				}
				break;
            }
		case CMD_GET_HEADINFO :
			
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].mHeadInf;
				m_SendDataSize[s] = sizeof(stResHeaderInfo);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }
		case CMD_SET_HEADINFO :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				else
				{
					ch = pCmdHeader->Slot;
					memcpy(&m_pGlobalVar->mChVar[ch].mHeadInf, pCmdData, sizeof(stResHeaderInfo));
				}
				break;
			}
		case CMD_SET_COND_CALIB:
			{
				if(pCmdHeader->Slot < 0)
				{
					for(ch = 0; ch < MAX_DEV_CHANNEL; ch++)
					{
						if(m_pSysConfig->ChkZIM[ch] == 1)
						{
							memcpy(&m_pGlobalVar->mChVar[ch].tech_calib, pCmdData, sizeof(st_Tech));
						}
					}
				}
				else
				{
					ch = pCmdHeader->Slot;
					
					if(m_pGlobalVar->mChVar[ch].Start > 0)
					{
						SendError(s,DEF_ERROR_STARTED);
						return;
					}
					else
					{
						memcpy(&m_pGlobalVar->mChVar[ch].tech_calib, pCmdData, sizeof(st_Tech));
					}
				}
				break;
            }
			
		case CMD_GET_STAT_EIS :
			{
				if(pCmdHeader->Slot < 0)
				{
					stChStatusInf		mChStatInf[MAX_DEV_CHANNEL];
					memcpy(&mChStatInf[0],&m_pGlobalVar->mChVar[0].mChStatInf,sizeof(stChStatusInf));
					memcpy(&mChStatInf[1],&m_pGlobalVar->mChVar[1].mChStatInf,sizeof(stChStatusInf));
					memcpy(&mChStatInf[2],&m_pGlobalVar->mChVar[2].mChStatInf,sizeof(stChStatusInf));
					memcpy(&mChStatInf[3],&m_pGlobalVar->mChVar[3].mChStatInf,sizeof(stChStatusInf));
					m_PtrWrData[s] = (byte*)&mChStatInf[0];
					m_SendDataSize[s] = sizeof(stChStatusInf) * MAX_DEV_CHANNEL;
				}
				else
				{
					ch = pCmdHeader->Slot;
					m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].mChStatInf;
					m_SendDataSize[s] = sizeof(stChStatusInf);
				}
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }
		
		case CMD_GET_RAWVAL_EIS :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].meis.eis_raw.raw_val[0];
				m_SendDataSize[s] = sizeof(st_zim_eis_raw_val) * MAX_EIS_RAW_POINT;
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
                break;
            }
			
		case CMD_GET_DATA_EIS :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				if((pCmdHeader->Address + pCmdHeader->Length) > m_pGlobalVar->mChVar[ch].mChStatInf.eis_status.rescount)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				else
				{
					m_PtrWrData[s] = (byte*)(m_pTestData[ch] + pCmdHeader->Address);
					m_SendDataSize[s] = pCmdHeader->Length * sizeof(stDefTestData); 
					m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
					m_SendFrameNo[s] = 0;
				}
                break;
            } 
		
		case CMD_GET_COND_EIS :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].tech_cond;
				m_SendDataSize[s] = sizeof(st_zim_eis_cond);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
			}
			break;
			
		case CMD_GET_COND_TECH :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].mTech;
				m_SendDataSize[s] = sizeof(st_Tech);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
			}
			break;
		
		case CMD_GET_COND_CALIB :
			{
				if(pCmdHeader->Slot < 0)
				{
					SendError(s,DEF_ERROR_CMDFAIL);
					return;
				}
				ch = pCmdHeader->Slot;
				
				m_PtrWrData[s] = (byte*)&m_pGlobalVar->mChVar[ch].tech_calib;
				m_SendDataSize[s] = sizeof(st_Tech);
				m_SendFrameCount[s] = (m_SendDataSize[s] / PACKET_DATA_SIZE) + 1;
				m_SendFrameNo[s] = 0;
			}
			break;
			
		default:
            SendError(s,DEF_ERROR_BAD_COMMAND);
			return;
	}
	if(m_pGlobalVar->CommTimeOut > DEF_COMM_TIMEOUT)
    {
      *((byte*)(REG_CH_BASE + (m_Socket[s] * REG_CH_SIZE) + 0x0003)) = Sn_SR_CLOSED;
    }
	else SendAck(s);
}


void TCP_Poll(int s,int port)
{
	int time_out = 0xFFFF;
	ushort recvsize;
	byte checksum;
	
	switch(m_SocketStatus[s])
	{
	case START:

		if(s == TCP_SOCK_NUM)
		{
			m_pGlobalVar->LedBusyStat = 0;
			m_pGlobalVar->LedFlowStat = 1;
		}
		
		if(socket(m_Socket[s], Sn_MR_TCP, port, 0))
		{
			m_SocketStatus[s] = OPEN;
			OnLed4(false);
		}
		else
			close(m_Socket[s]);
		break;
	case OPEN:
		if(s == TCP_SOCK_NUM)
		{
			m_pGlobalVar->LedBusyStat = 0;
		}
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
		if(s == TCP_SOCK_NUM) m_pGlobalVar->LedBusyStat = 0;
		if(*((byte*)(REG_CH_BASE + (m_Socket[s] * REG_CH_SIZE) + 0x0003)) == Sn_SR_ESTABLISHED)
		{			
			if(s == TCP_SOCK_NUM) m_pGlobalVar->LedBusyStat = 1;
			m_SocketStatus[s] = ESTABLISHED;	
			m_pGlobalVar->CommTimeOut = 0;
			m_pGlobalVar->prevrecvsize = 0;
		}

		break;
	case ESTABLISHED:
		{
			OnLed2(false);			
			recvsize = GetRecvDataSize(m_Socket[s]);			
			if(s == TCP_SOCK_NUM) m_pGlobalVar->LedBusyStat = 1;
			if(recvsize >= sizeof(Packet))
			{
				Packet packet;
				m_pGlobalVar->CommTimeOut = 0;
				recv(m_Socket[s], (byte*)&packet, sizeof(Packet));	
				
				checksum = GenCheckSum((byte*)&packet, sizeof(Packet));
				if(m_pGlobalVar->CommTimeOut > DEF_COMM_TIMEOUT)
                {
                      close(m_Socket[s]);
                      m_pGlobalVar->CommTimeOut = 0;
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
			
			if(*((byte*)(REG_CH_BASE + (m_Socket[s] * REG_CH_SIZE) + 0x0003)) == Sn_SR_CLOSED  || m_pGlobalVar->CommTimeOut > DEF_COMM_TIMEOUT)
			{
				m_pGlobalVar->CommTimeOut = 0;
				close(m_Socket[s]);			
				m_SocketStatus[s] = START;				
			}
			
			if(m_pGlobalVar->prevrecvsize != recvsize)
			{
				m_pGlobalVar->CommTimeOut = 0;
				m_pGlobalVar->prevrecvsize = recvsize;
			}
		}
		break;
	}
}
