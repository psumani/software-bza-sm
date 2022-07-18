#include "sif_zim.h"

void SetModeReg(byte val);
byte GetModeReg();
void SetGWReg(byte* ipaddr);
void GetGWReg(byte* ipaddr);
void SetSHAReg(byte* macaddr);
void GetSHAReg(byte* macaddr);
void ClearSUBReg();
void SetSUBVar(byte* subip);
void GetSUBVar(byte* subip);
void ApplySUBReg();
void ReadSUBReg();
void SetSIPReg(byte* srcip);
void GetSIPReg(byte* srcip);
void SetRMSReg(byte rxmode);
void SetTMSReg(byte txmode);

static byte I_STATUS[MAX_SOCKET_NUM];
static ushort TMASK[MAX_SOCKET_NUM];		// Variable for Tx buffer MASK in each channel
static ushort RMASK[MAX_SOCKET_NUM];		// Variable for Rx buffer MASK in each channel
ushort TSIZE[MAX_SOCKET_NUM];		// Max Tx buffer size by each channel
static ushort RSIZE[MAX_SOCKET_NUM];		// Max Rx buffer size by each channel
static uint TBUFBASEADDR[MAX_SOCKET_NUM];	// Tx buffer base address by each channel
static uint RBUFBASEADDR[MAX_SOCKET_NUM]; // Rx buffer base address by each channel
static byte SUBN_VAR[4];

static byte DHCP_SIP[4] = {0, };
static byte DHCP_REAL_SIP[4] = {0, };
static byte OLD_SIP[4];

static uint DHCP_XID;
static SOCKET DHCPC_SOCK;

RIP_MSG* pRIPMSG;


static char dhcp_state;
static char retry_count;

bool TimerEnable = false;
uint TimerCounter = 0;


static byte DHCP_timeout;
static un_l2cval lease_time;
static uint dhcp_time, next_dhcp_time;

static void set_DHCP_network(void);
static void proc_ip_conflict(void);
static void send_DHCP_DISCOVER(SOCKET s);
static void reset_DHCP_time(void);
static char parseDHCPMSG(SOCKET s, uint length);
static void send_DHCP_REQUEST(SOCKET s);
static void check_DHCP_Timeout(void);
static char check_leasedIP(void);
static void send_DHCP_RELEASE_DECLINE(SOCKET s, char msgtype);
void DHCP_timer_handler(void);

byte* pSrcMacAddr;
byte* pSubnetMask;
byte* pGatewayIp;
byte* pSrcIpAddr;

//byte SRC_MAC_ADDR[6];
//byte GET_SN_MASK[4];
//byte GET_GW_IP[4];
byte GET_DNS_IP[4] = "\x00\x00\x00\x00";
//byte GET_SIP[4] = {0, };

void (*dhcp_ip_update)(void) = 0;
void (*dhcp_ip_conflict)(void) = 0;

void read_data(SOCKET s, ushort srcptr, byte *dst, ushort len);
void write_data(SOCKET s, byte *src, ushort dstptr, ushort len);

void iinchip_init(void);

byte GetISR(SOCKET s)
{
	//return I_STATUS[s];
	return I_STATUS[s];
}

void SetISR(SOCKET s, byte val)
{
	//I_STATUS[s] = val;
	I_STATUS[s] = val;
}
// Public Function
void w5100_init(void)
{	
	//byte mac[6] = {0x00, 0x08, 0xDC, 0x00, 0x00, 0x00};
	//byte gwtIp[4] = {169, 254, 17, 1};
	//byte subtIp[4] = {255, 255, 0, 0};
	//byte srctIp[4] = {169, 254, 17, 2};
	
	SetModeReg(MR_RST);
	
	SetGWReg(pGatewayIp);
	SetSHAReg(pSrcMacAddr);
	SetSUBVar(pSubnetMask);
	ApplySUBReg();
	SetSIPReg(pSrcIpAddr);
	
	//SetGWReg(gwtIp);
	//SetSHAReg(mac);
	//SetSUBVar(subtIp);
	//ApplySUBReg();
	//SetSIPReg(srctIp);
}

void w5100_sysinit(byte txsize, byte rxsize)
{
	int tsum, rsum;
	
	tsum = rsum = 0;
	
	SetTMSReg(txsize);		// 2KByte per Socket
	SetRMSReg(rxsize);		// 2KByte per Socket
	
	TBUFBASEADDR[0] = BUF_TX_BASE;
	RBUFBASEADDR[0] = BUF_RX_BASE;
	
	for(int i = 0; i < MAX_SOCKET_NUM; i++)
	{
		TSIZE[i] = 0;
		RSIZE[i] = 0;
		
		if(tsum < 8192)
		{
			switch((txsize >> i * 2) & 0x03)
			{
			case 0 :				
				TSIZE[i] = 1024;
				TMASK[i] = 0x03FF;
				break;
			case 1 :
				TSIZE[i] = 2048;
				TMASK[i] = 0x07FF;
				break;
			case 2 :
				TSIZE[i] = 4096;
				TMASK[i] = 0x0FFF;
				break;
			case 3 :
				TSIZE[i] = 8192;
				TMASK[i] = 0x1FFF;
				break;
			}
		}
		if(rsum < 8192)
		{
			switch((rxsize >> i * 2) & 0x03)
			{
			case 0 :
				RSIZE[i] = 1024;
				RMASK[i] = 0x03FF;
				break;
			case 1 :
				RSIZE[i] = 2048;
				RMASK[i] = 0x07FF;
				break;
			case 2 :
				RSIZE[i] = 4096;
				RMASK[i] = 0x0FFF;
				break;
			case 3 :
				RSIZE[i] = 8192;
				RMASK[i] = 0x1FFF;
				break;
			}
		}
		
		tsum += TSIZE[i];
		rsum += RSIZE[i];
		
		if(i != 0)
		{
			TBUFBASEADDR[i] = TBUFBASEADDR[i - 1] + TSIZE[i - 1];
			RBUFBASEADDR[i] = RBUFBASEADDR[i - 1] + RSIZE[i - 1];
		}
	}
}

void init_dhcp_client(SOCKET s, void (*ip_update)(void), void (*ip_conflict)(void))
{
    if(!ip_update)
        dhcp_ip_update = set_DHCP_network;
    else
        dhcp_ip_update = ip_update;
    
    if(!ip_conflict)
        dhcp_ip_conflict = proc_ip_conflict;
	else
        dhcp_ip_conflict = ip_conflict;
    
    init_dhcpc_ch(s);
}

static void set_DHCP_network(void)
{
    iinchip_init();
    
    SetGWReg(pGatewayIp);
    SetSHAReg(pSrcMacAddr);
    SetSUBVar(pSubnetMask);
    ApplySUBReg();
    SetSIPReg(pSrcIpAddr);
    
    w5100_sysinit(0x55, 0x55);
}

static void proc_ip_conflict(void)
{
    // Display Message
    // "The IP Address from DHCP server is CONFLICT!!!\r\n" 
    // "Retry to get a IP address from DHCP server\r\n");
}

uint init_dhcpc_ch(SOCKET s)
{
    uint ret;
    
    DHCP_XID = 0x12345678;
    memset(pSrcIpAddr, 0, 4);
    memset(pGatewayIp, 0, 4);
    memset(pSubnetMask, 0, 4);
    
    iinchip_init();
    SetSIPReg(pSrcIpAddr);
    SetSHAReg(pSrcMacAddr);
    
    SetIntMaskReg(0xEF);
    
    w5100_sysinit(0x55, 0x55);
    
    if(!socket(s, Sn_MR_UDP, DHCP_CLIENT_PORT, 0x00))
        ret = 0;
    else
        ret = 1;
    
    DHCPC_SOCK = s;
    
    return ret;
}

void set_timer()
{
    TimerCounter = 0;
    TimerEnable = true;
}

void kill_timer()
{
    TimerEnable = false;
}

uint getIP_DHCPS(void)
{
    send_DHCP_DISCOVER(DHCPC_SOCK);
    dhcp_state = STATE_DHCP_DISCOVER;
    
    reset_DHCP_time();
    set_timer();
    DHCP_timeout = 0;
    
    while(dhcp_state != STATE_DHCP_LEASED)
    {
        if(DHCP_timeout == 1)
        {
            kill_timer();
            return 0;
        }
        check_DHCP_state(DHCPC_SOCK);
    }
    
    return 1;
}

void DHCP_timer_handler(void)
{
	dhcp_time++;
}

void check_DHCP_state(SOCKET s)
{
    uint len;
	byte type;
	
	type = 0;

	if( s < MAX_SOCKET_NUM && REG_Sn_STATUS(s) != Sn_SR_CLOSED )
	{
		if ((len = GetRecvDataSize(s)) > 0)
		{
			 type = parseDHCPMSG(s, len);
		}
	}
	else if(!socket(s, Sn_MR_UDP, DHCP_CLIENT_PORT, 0x00))
	{
		//DPRINTLN("Fail to create the DHCPC_SOCK(%d)");
	}	
		
	switch(dhcp_state)
	{
        case STATE_DHCP_DISCOVER :
            if (type == DHCP_OFFER) 
            {
                reset_DHCP_time();
                send_DHCP_REQUEST(s);
                dhcp_state = STATE_DHCP_REQUEST;
                //DPRINTLN("state : STATE_DHCP_REQUEST");
            }
            else 
                check_DHCP_Timeout();
            break;

        case STATE_DHCP_REQUEST :
            if (type == DHCP_ACK) 
            {
                reset_DHCP_time();
                if (check_leasedIP()) 
                {
                    set_DHCP_network();
                    dhcp_state = STATE_DHCP_LEASED;
                    //DPRINTLN("state : STATE_DHCP_LEASED");
                } 
                else 
                {
                    dhcp_state = STATE_DHCP_DISCOVER;
                    //DPRINTLN("state : STATE_DHCP_DISCOVER");
                }
            }
            else if (type == DHCP_NAK) 
            {
                reset_DHCP_time();
                dhcp_state = STATE_DHCP_DISCOVER;
                //DPRINTLN("state : STATE_DHCP_DISCOVER");
            }
            else 
                check_DHCP_Timeout();
            break;

        case STATE_DHCP_LEASED :
            if ((lease_time.lVal != 0xffffffff) && ((lease_time.lVal / 2) < dhcp_time)) 
            {
                type = 0;
                memcpy(OLD_SIP, pSrcIpAddr, 4);
                DHCP_XID++;
                send_DHCP_REQUEST(s);
                dhcp_state = STATE_DHCP_REREQUEST;
                //DPRINTLN("state : STATE_DHCP_REREQUEST");
                reset_DHCP_time();
            }
            break;

        case STATE_DHCP_REREQUEST :
            if (type == DHCP_ACK) 
            {
                if(memcmp(OLD_SIP, pSrcIpAddr, 4) != 0)	
                {
                    //DPRINTLN2("OLD_SIP=%s,GET_SIP=%s",inet_ntoa(ntohl(*((u_long*)OLD_SIP))), inet_ntoa(ntohl(*((u_long*)GET_SIP))));
                    if ( dhcp_ip_update != 0 )
                        (*dhcp_ip_update)();
                    //PRINTLN("The IP address from the DHCP server is updated.");				
                }
                else
                {
                    //DPRINTLN("state : STATE_DHCP_LEASED : same IP");
                }
                reset_DHCP_time();
                dhcp_state = STATE_DHCP_LEASED;
            } 
            else if (type == DHCP_NAK) 
            {
                reset_DHCP_time();
                dhcp_state = STATE_DHCP_DISCOVER;
                //DPRINTLN("state : STATE_DHCP_DISCOVER");
            } 
            else 
                check_DHCP_Timeout();
            break;

        case STATE_DHCP_RELEASE :
            break;
        default :
            break;
	}
}

//byte TX_BUF[1024];
//byte RX_BUF[1024];
RIP_MSG sTxRIPMsg;
RIP_MSG sRxRIPMsg;
//RIP_MSG *_pTxRipMsg;
//RIP_MSG *_pRxRipMsg;
uint16 Server_Port;

static char parseDHCPMSG(SOCKET s, uint length)
{
    byte svr_addr[6];
	//uint svr_port;

	//pRIPMSG = (RIP_MSG*)RX_BUF;
    RIP_MSG* pRIPMSG = &sRxRIPMsg;

	uint len;
	byte * p;
	byte * e;
	byte type, opt_len = 0;

	len = recvfrom(s, (byte*)pRIPMSG, length, svr_addr, &Server_Port);
	
	if(pRIPMSG->op != DHCP_BOOTREPLY)
	{
		//DPRINTLN("DHCP : NO DHCP MSG");
	}
	else
	{
		if (Server_Port == DHCP_SERVER_PORT)
		{
			if(memcmp(pRIPMSG->chaddr, pSrcMacAddr, 6) != 0 || pRIPMSG->xid != htonl(DHCP_XID))
            //if(memcmp(pRIPMSG->chaddr, SRC_MAC_ADDR, 6) != 0 || pRIPMSG->xid != DHCP_XID)
			{
				//PRINTLN("No My DHCP Message. This message is ignored.");	
				return 0;
			}

			if( *((uint*)DHCP_SIP) != 0x00000000 )
			{
				if( *((uint*)DHCP_REAL_SIP) != *((uint*)svr_addr) && *((uint*)DHCP_SIP) != *((uint*)svr_addr)) 
				{			
					return 0;								
				}
			}

			
			memcpy(pSrcIpAddr, pRIPMSG->yiaddr, 4);
	
			//DPRINTLN("DHCP MSG received..");
			//DPRINTLN4("yiaddr : %d.%d.%d.%d",GET_SIP[0],GET_SIP[1],GET_SIP[2],GET_SIP[3]);
	
			type = 0;
			p = (byte*)(&pRIPMSG->op);
			p = p + 240;
			e = p + (len - 240);
	
			//DPRINTLN3("p : 0x%08X  e : 0x%08X  len : %d\r\n", (u_int)p, (u_int)e, len);
	
			while ( p < e ) 
			{
				switch ( *p++ ) 
				{
				case endOption :
				 	return type;
					break;	
	       			case padOption :
					break;
				case dhcpMessageType :
					opt_len = *p++;
					type = *p;
					//DPRINTLN1("dhcpMessageType : %x", type);
	
					break;
				case subnetMask :
					opt_len =* p++;
					memcpy(pSubnetMask, p, 4);
	
					//DPRINT("subnetMask : ");
					//DPRINTLN4("%d.%d.%d.%d",GET_SN_MASK[0],GET_SN_MASK[1],GET_SN_MASK[2],GET_SN_MASK[3]);
	
					break;
				case routersOnSubnet :
					opt_len = *p++;
					memcpy(pGatewayIp, p, 4);

					//DPRINT("routersOnSubnet : ");
					//DPRINTLN4("%d.%d.%d.%d",GET_GW_IP[0],GET_GW_IP[1],GET_GW_IP[2],GET_GW_IP[3]);
	
					break;
				case dns :
					opt_len = *p++;
					memcpy(GET_DNS_IP, p, 4);
					break;
				case dhcpIPaddrLeaseTime :
					opt_len = *p++;
					//lease_time.lVal = ntohl(*((uint*)p));
                    //lease_time.lVal = *((ulong*)p);
                    memcpy(lease_time.cVal, p, sizeof(uint));
                    lease_time.lVal = swapl(lease_time.lVal);
					break;
	
				case dhcpServerIdentifier :
					opt_len = *p++;
					//PRINTLN4("DHCP_SIP : %d.%d.%d.%d", DHCP_SIP[0], DHCP_SIP[1], DHCP_SIP[2], DHCP_SIP[3]);
					
					if( *((uint*)DHCP_SIP) == 0 || 
					    *((uint*)DHCP_REAL_SIP) == *((uint*)svr_addr) || 
					    *((uint*)DHCP_SIP) == *((uint*)svr_addr) )
					{
						memcpy(DHCP_SIP, p, 4);
						memcpy(DHCP_REAL_SIP, svr_addr, 4);	// Copy the real ip address of my DHCP server					
					}
					else
					{
						//PRINT("Another dhcpServerIdentifier : ");
						//PRINT4("\tMY(%d.%d.%d.%d) ", DHCP_SIP[0], DHCP_SIP[1], DHCP_SIP[2], DHCP_SIP[3]);
						//PRINTLN4("Another(%d.%d.%d.%d) : ", svr_addr[0], svr_addr[1], svr_addr[2], svr_addr[3]);
					}
					break;
				default :
					opt_len = *p++;
					//DPRINTLN1("opt_len : %d", opt_len);	
					break;
				} // switch
				p+=opt_len;
			} // while
		} // if
	}
    
    return 0;
}

static void send_DHCP_REQUEST(SOCKET s)
{
    byte ip[4];
	uint i = 0;

    RIP_MSG* pRIPMSG = &sTxRIPMsg;
	//pRIPMSG = (RIP_MSG*)TX_BUF;
	
	memset((void*)pRIPMSG, 0, sizeof(RIP_MSG));

	pRIPMSG->op = DHCP_BOOTREQUEST;
	pRIPMSG->htype = DHCP_HTYPE10MB;
	pRIPMSG->hlen = DHCP_HLENETHERNET;
	pRIPMSG->hops = DHCP_HOPS;
	pRIPMSG->xid = htonl(DHCP_XID);
	pRIPMSG->secs = htons(DHCP_SECS);

	if(dhcp_state < STATE_DHCP_LEASED)
		pRIPMSG->flags = htons(DHCP_FLAGSBROADCAST);
	else
	{
		pRIPMSG->flags = 0;		// For Unicast
        for(int i = 0; i < 4; i++)
            pRIPMSG->ciaddr[i] = pSrcIpAddr[i];            
	}		

    for(int i = 0; i < 6; i++)
        pRIPMSG->chaddr[i] = pSrcMacAddr[i];

	/* MAGIC_COOKIE */
	pRIPMSG->OPT[i++] = (byte)((MAGIC_COOKIE >> 24) & 0xFF);
	pRIPMSG->OPT[i++] = (byte)((MAGIC_COOKIE >> 16) & 0xFF);
	pRIPMSG->OPT[i++] = (byte)((MAGIC_COOKIE >> 8) & 0xFF);
	pRIPMSG->OPT[i++] = (byte)(MAGIC_COOKIE & 0xFF);

	/* Option Request Param. */
	pRIPMSG->OPT[i++] = dhcpMessageType;
	pRIPMSG->OPT[i++] = 0x01;
	pRIPMSG->OPT[i++] = DHCP_REQUEST;

	pRIPMSG->OPT[i++] = dhcpClientIdentifier;
	pRIPMSG->OPT[i++] = 0x07;
	pRIPMSG->OPT[i++] = 0x01;
	pRIPMSG->OPT[i++] = pSrcMacAddr[0];
	pRIPMSG->OPT[i++] = pSrcMacAddr[1];
	pRIPMSG->OPT[i++] = pSrcMacAddr[2];
	pRIPMSG->OPT[i++] = pSrcMacAddr[3];
	pRIPMSG->OPT[i++] = pSrcMacAddr[4];
	pRIPMSG->OPT[i++] = pSrcMacAddr[5];	

	if(dhcp_state < STATE_DHCP_LEASED)
	{
		pRIPMSG->OPT[i++] = dhcpRequestedIPaddr;
		pRIPMSG->OPT[i++] = 0x04;
		pRIPMSG->OPT[i++] = pSrcIpAddr[0];
		pRIPMSG->OPT[i++] = pSrcIpAddr[1];
		pRIPMSG->OPT[i++] = pSrcIpAddr[2];
		pRIPMSG->OPT[i++] = pSrcIpAddr[3];
	
		pRIPMSG->OPT[i++] = dhcpServerIdentifier;
		pRIPMSG->OPT[i++] = 0x04;
		pRIPMSG->OPT[i++] = DHCP_SIP[0];
		pRIPMSG->OPT[i++] = DHCP_SIP[1];
		pRIPMSG->OPT[i++] = DHCP_SIP[2];
		pRIPMSG->OPT[i++] = DHCP_SIP[3];
	}
	
	// host name
	pRIPMSG->OPT[i++] = hostName;
	//pRIPMSG->OPT[i++] = strlen(m_pConnCfg->mEthernetCfg.hostname) + 3; // length of hostname + 3
    pRIPMSG->OPT[i++] = strlen((char*)m_pConnCfg->mEthernetCfg.hostname);
    strcpy((char*)&(pRIPMSG->OPT[i]), (char*)m_pConnCfg->mEthernetCfg.hostname);
	
	i+=strlen((char*)m_pConnCfg->mEthernetCfg.hostname);
	
	//pRIPMSG->OPT[i++] = SRC_MAC_ADDR[3];
	//pRIPMSG->OPT[i++] = SRC_MAC_ADDR[4];
	//pRIPMSG->OPT[i++] = SRC_MAC_ADDR[5];		
	
	pRIPMSG->OPT[i++] = dhcpParamRequest;
	pRIPMSG->OPT[i++] = 0x08;
	pRIPMSG->OPT[i++] = subnetMask;
	pRIPMSG->OPT[i++] = routersOnSubnet;
	pRIPMSG->OPT[i++] = dns;
	pRIPMSG->OPT[i++] = domainName;
	pRIPMSG->OPT[i++] = dhcpT1value;
	pRIPMSG->OPT[i++] = dhcpT2value;
	pRIPMSG->OPT[i++] = performRouterDiscovery;
	pRIPMSG->OPT[i++] = staticRoute;
	pRIPMSG->OPT[i++] = endOption;

	/* send broadcasting packet */
	if(dhcp_state < STATE_DHCP_LEASED)
	{
        for(int i = 0; i < 4; i++)
            ip[i] = 255;
	}
	else
	{
        for(int i = 0; i < 4; i++)
            ip[i] = DHCP_SIP[i];
	}

	if(0 == sendto(s, (byte*)pRIPMSG, sizeof(RIP_MSG), ip, DHCP_SERVER_PORT))
	{
		//PRINTLN("DHCP : Fatal Error(1).");
		if ( dhcp_ip_conflict != 0 )
			(*dhcp_ip_conflict)();
	}

	//DPRINTLN("sent DHCP_REQUEST");
}

static void check_DHCP_Timeout(void)
{
    if (retry_count <= MAX_DHCP_RETRY) 
	{
		if (next_dhcp_time <= dhcp_time) 
		{
			dhcp_time = 0;
			next_dhcp_time = dhcp_time + DHCP_WAIT_TIME;
			retry_count++;
			switch ( dhcp_state ) 
			{
			case STATE_DHCP_DISCOVER :
				//DPRINTLN("<<timeout>> state : STATE_DHCP_DISCOVER");
				send_DHCP_DISCOVER(DHCPC_SOCK);
				break;
	
			case STATE_DHCP_REQUEST :
				//DPRINTLN("<<timeout>> state : STATE_DHCP_REQUEST");
				send_DHCP_REQUEST(DHCPC_SOCK);
				break;

			case STATE_DHCP_REREQUEST :
				//DPRINTLN("<<timeout>> state : STATE_DHCP_REREQUEST");
				send_DHCP_REQUEST(DHCPC_SOCK);
				break;
	
			default :
				break;
			}
		}
	} 
	else 
	{
		reset_DHCP_time();
		DHCP_timeout = 1;
		
		//send_DHCP_DISCOVER(DHCPC_SOCK);
		//dhcp_state = STATE_DHCP_DISCOVER;
		//DPRINTLN("timeout\r\nstate : STATE_DHCP_DISCOVER");
	}
}

static char check_leasedIP(void)
{
    uint a;

	//PRINT("<Check the IP Conflict : ");
	// sendto is complete. that means there is a node which has a same IP.

	/* +200801 (hwkim) */
	//a = sendto(DHCPC_SOCK, (const u_char*)"CHECK_IP_CONFLICT", 17, GET_SIP, 5000); 
	a = 0; // Skip checking IP Confilct ; W5100 reply itself to ARP requset with self-IP in non-switching network environment.
	/* ---------------*/
	if (a > 0)
	{
		//PRINTLN(" Conflict>");
		send_DHCP_RELEASE_DECLINE(DHCPC_SOCK, 1);
		if ( dhcp_ip_conflict != 0 )
			(*dhcp_ip_conflict)();
		return 0;
	}
	//PRINTLN(" No Conflict>");
    
    return 1;
}

static void send_DHCP_DISCOVER(SOCKET s)
{
    byte ip[4];
    uint i = 0;
    
    RIP_MSG* pRIPMSG = &sTxRIPMsg;
    //pRIPMSG = (RIP_MSG*)TX_BUF;
    
    *((uint*)DHCP_SIP) = 0;
    *((uint*)DHCP_REAL_SIP) = 0;
    
    memset((void*)pRIPMSG, 0, sizeof(RIP_MSG));
    
    pRIPMSG->op = DHCP_BOOTREQUEST;
	pRIPMSG->htype = DHCP_HTYPE10MB;
	pRIPMSG->hlen = DHCP_HLENETHERNET;
	pRIPMSG->hops = DHCP_HOPS;
	pRIPMSG->xid = htonl(DHCP_XID);
    //pRIPMSG->xid = (uint)DHCP_XID;
	pRIPMSG->secs = htons(DHCP_SECS);
    //pRIPMSG->secs = DHCP_SECS;
	pRIPMSG->flags = htons(DHCP_FLAGSBROADCAST);
    //pRIPMSG->flags = DHCP_FLAGSBROADCAST;
	pRIPMSG->chaddr[0] = pSrcMacAddr[0];
	pRIPMSG->chaddr[1] = pSrcMacAddr[1];
	pRIPMSG->chaddr[2] = pSrcMacAddr[2];
	pRIPMSG->chaddr[3] = pSrcMacAddr[3];
	pRIPMSG->chaddr[4] = pSrcMacAddr[4];
	pRIPMSG->chaddr[5] = pSrcMacAddr[5];

	/* MAGIC_COOKIE */
	pRIPMSG->OPT[i++] = (char)((MAGIC_COOKIE >> 24)& 0xFF);
	pRIPMSG->OPT[i++] = (char)((MAGIC_COOKIE >> 16)& 0xFF);
	pRIPMSG->OPT[i++] = (char)((MAGIC_COOKIE >> 8)& 0xFF);
	pRIPMSG->OPT[i++] = (char)(MAGIC_COOKIE& 0xFF);

	/* Option Request Param. */
	pRIPMSG->OPT[i++] = dhcpMessageType;
	pRIPMSG->OPT[i++] = 0x01;
	pRIPMSG->OPT[i++] = DHCP_DISCOVER;

	// Client identifier
	pRIPMSG->OPT[i++] = dhcpClientIdentifier;
	pRIPMSG->OPT[i++] = 0x07;
	pRIPMSG->OPT[i++] = 0x01;
	pRIPMSG->OPT[i++] = pSrcMacAddr[0];
	pRIPMSG->OPT[i++] = pSrcMacAddr[1];
	pRIPMSG->OPT[i++] = pSrcMacAddr[2];
	pRIPMSG->OPT[i++] = pSrcMacAddr[3];
	pRIPMSG->OPT[i++] = pSrcMacAddr[4];
	pRIPMSG->OPT[i++] = pSrcMacAddr[5];
	
	// host name
	pRIPMSG->OPT[i++] = hostName;
	//pRIPMSG->OPT[i++] = strlen(m_pConnCfg->mEthernetCfg.hostname) + 3; // length of hostname + 3
    pRIPMSG->OPT[i++] = strlen((char*)m_pConnCfg->mEthernetCfg.hostname);
    strcpy((char*)&(pRIPMSG->OPT[i]), (char*)m_pConnCfg->mEthernetCfg.hostname);
	
	i+=strlen((char*)m_pConnCfg->mEthernetCfg.hostname);
	
	//pRIPMSG->OPT[i++] = SRC_MAC_ADDR[3];
	//pRIPMSG->OPT[i++] = SRC_MAC_ADDR[4];
	//pRIPMSG->OPT[i++] = SRC_MAC_ADDR[5];

	
	pRIPMSG->OPT[i++] = dhcpParamRequest;
	pRIPMSG->OPT[i++] = 0x06;
	pRIPMSG->OPT[i++] = subnetMask;
	pRIPMSG->OPT[i++] = routersOnSubnet;
	pRIPMSG->OPT[i++] = dns;
	pRIPMSG->OPT[i++] = domainName;
	pRIPMSG->OPT[i++] = dhcpT1value;
	pRIPMSG->OPT[i++] = dhcpT2value;
	pRIPMSG->OPT[i++] = endOption;

	/* send broadcasting packet */
	ip[0] = 255;
	ip[1] = 255;
	ip[2] = 255;
	ip[3] = 255;
    
	if(0 == sendto(s, (byte*)pRIPMSG, sizeof(RIP_MSG), ip, DHCP_SERVER_PORT))
	{
		if ( dhcp_ip_conflict != 0 )
			(*dhcp_ip_conflict)();
	}
}

static void reset_DHCP_time(void)
{
    dhcp_time = 0;
    next_dhcp_time = dhcp_time + DHCP_WAIT_TIME;
    retry_count = 0;
}

static void send_DHCP_RELEASE_DECLINE(SOCKET s, char msgtype)
{
    uint i =0;
	byte ip[4];
	
    RIP_MSG* pRIPMSG = &sTxRIPMsg;
	//pRIPMSG = (RIP_MSG*)TX_BUF;
	memset((void*)pRIPMSG, 0, sizeof(RIP_MSG));

	pRIPMSG->op = DHCP_BOOTREQUEST;
	pRIPMSG->htype = DHCP_HTYPE10MB;
	pRIPMSG->hlen = DHCP_HLENETHERNET;
	pRIPMSG->hops = DHCP_HOPS;
	pRIPMSG->xid = htonl(DHCP_XID);
    pRIPMSG->secs = htons(DHCP_SECS);
    pRIPMSG->flags = 0;	//DHCP_FLAGSBROADCAST;

	pRIPMSG->chaddr[0] = pSrcMacAddr[0];
	pRIPMSG->chaddr[1] = pSrcMacAddr[1];
	pRIPMSG->chaddr[2] = pSrcMacAddr[2];
	pRIPMSG->chaddr[3] = pSrcMacAddr[3];
	pRIPMSG->chaddr[4] = pSrcMacAddr[4];
	pRIPMSG->chaddr[5] = pSrcMacAddr[5];


	/* MAGIC_COOKIE */
	pRIPMSG->OPT[i++] = (byte)((MAGIC_COOKIE >> 24) & 0xFF);
	pRIPMSG->OPT[i++] = (byte)((MAGIC_COOKIE >> 16) & 0xFF);
	pRIPMSG->OPT[i++] = (byte)((MAGIC_COOKIE >> 8) & 0xFF);
	pRIPMSG->OPT[i++] = (byte)(MAGIC_COOKIE & 0xFF);

	/* Option Request Param. */
	pRIPMSG->OPT[i++] = dhcpMessageType;
	pRIPMSG->OPT[i++] = 0x01;
	pRIPMSG->OPT[i++] = ((!msgtype) ? DHCP_RELEASE : DHCP_DECLINE);

	pRIPMSG->OPT[i++] = dhcpClientIdentifier;
	pRIPMSG->OPT[i++] = 0x07;
	pRIPMSG->OPT[i++] = 0x01;
	pRIPMSG->OPT[i++] = pSrcMacAddr[0];
	pRIPMSG->OPT[i++] = pSrcMacAddr[1];
	pRIPMSG->OPT[i++] = pSrcMacAddr[2];
	pRIPMSG->OPT[i++] = pSrcMacAddr[3];
	pRIPMSG->OPT[i++] = pSrcMacAddr[4];
	pRIPMSG->OPT[i++] = pSrcMacAddr[5];	

	pRIPMSG->OPT[i++] = dhcpServerIdentifier;
	pRIPMSG->OPT[i++] = 0x04;
	pRIPMSG->OPT[i++] = DHCP_SIP[0];
	pRIPMSG->OPT[i++] = DHCP_SIP[1];
	pRIPMSG->OPT[i++] = DHCP_SIP[2];
	pRIPMSG->OPT[i++] = DHCP_SIP[3];

	if(msgtype)
	{
		pRIPMSG->OPT[i++] = dhcpRequestedIPaddr;
		pRIPMSG->OPT[i++] = 0x04;
		pRIPMSG->OPT[i++] = pSrcIpAddr[0];
		pRIPMSG->OPT[i++] = pSrcIpAddr[1];
		pRIPMSG->OPT[i++] = pSrcIpAddr[2];
		pRIPMSG->OPT[i++] = pSrcIpAddr[3];		
		pRIPMSG->OPT[i++] = endOption;
		//DPRINTLN("sent DHCP_DECLINE");
	}
	else
	{
		pRIPMSG->OPT[i++] = endOption;
		//DPRINTLN("sent DHCP_RELEASE");
	}
	
	if(!msgtype)
	{
		ip[0] = DHCP_SIP[0];
		ip[1] = DHCP_SIP[1];
		ip[2] = DHCP_SIP[2];
		ip[3] = DHCP_SIP[3];
	}
	else
	{
		ip[0] = 255;
		ip[1] = 255;
		ip[2] = 255;
		ip[3] = 255;
	}

	if(0 == sendto(s, (byte*)pRIPMSG, sizeof(RIP_MSG), ip, DHCP_SERVER_PORT))
	{
		//PRINTLN("DHCP : Fatal Error(2).");
		if ( dhcp_ip_conflict != 0 )
			(*dhcp_ip_conflict)();
	}
}

void recv_data_processing(SOCKET s, byte *rdata, ushort len)
{
	ushort ptr;
	
	ptr = (REG_Sn_RXRD(s, 0) << 8) | REG_Sn_RXRD(s, 1);
	read_data(s, ptr, rdata, len);
	ptr += len;
	REG_Sn_RXRD(s, 0) = MSB(ptr);
	REG_Sn_RXRD(s, 1) = LSB(ptr);
}

void send_data_processing(SOCKET s, byte *wdata, ushort len)
{
	ushort ptr;
	
	ptr = (REG_Sn_TXWR(s, 0) << 8) | REG_Sn_TXWR(s, 1);
	write_data(s, wdata, ptr, len);
	ptr += len;
	REG_Sn_TXWR(s, 0) = MSB(ptr);
	REG_Sn_TXWR(s, 1) = LSB(ptr);
}

ushort GetRecvDataSize(SOCKET s)
{
	ushort val, val1;
	
	val = val1 = 0;

	do
	{
		val1 = (REG_Sn_RXRS(s, 0) << 8) | REG_Sn_RXRS(s, 1);
		
		if(val1 > 0)
		{
			val = (REG_Sn_RXRS(s, 0) << 8) | REG_Sn_RXRS(s, 1);
		}
		
	} while(val != val1);
	
	return val;
}

ushort GetTransFreeSize(SOCKET s)
{
	ushort val, val1;
	
	val = val1 = 0;

	do
	{
		val1 = (REG_Sn_TXFS(s, 0) << 8) | REG_Sn_TXFS(s, 1);
		if(val1 > 0)
		{
			val = (REG_Sn_TXFS(s, 0) << 8) | REG_Sn_TXFS(s, 1);
		}
	} while(val != val1);
	
	return val;
}

ushort GetTrasnMaxSize(SOCKET s)
{
	return TSIZE[s];
}

byte tempsss[4];

// local Function
void SetModeReg(byte val)
{
	*((byte*)REG_MODE) = val;
	
	tempsss[0] = *((byte*)REG_MODE);
}

void SetIntMaskReg(byte val)
{
    *((byte*)REG_IMR_BASE) = val;
}

byte GetModeReg()
{
	return *((byte*)REG_MODE);
}

void SetGWReg(byte* ipaddr)
{
	for(int i = 0; i < 4; i++)
		*((byte*)(REG_GW_BASE + i)) = *(ipaddr + i);	
	
	for(int i = 0; i < 4; i++)
		tempsss[i] = *((byte*)(REG_GW_BASE + i));
}

void GetGWReg(byte* ipaddr)
{
	for(int i = 0; i < 4; i++)
		*(ipaddr + i) = *((byte*)(REG_GW_BASE + i));
}

void SetSHAReg(byte* macaddr)
{
	for(int i = 0; i < 6; i++)
		*((byte*)(REG_SHA_BASE + i)) = *(macaddr + i);
}

void GetSHAReg(byte* macaddr)
{
	for(int i = 0; i < 6; i++)
		*(macaddr + i) = *((byte*)(REG_SHA_BASE + i));
}

void ClearSUBReg()
{
	for(int i = 0; i < 4; i++)
		*((byte*)(REG_SUB_BASE + i)) = 0;
}

void SetSUBVar(byte* subip)
{
	for(int i = 0; i < 4; i++)
		SUBN_VAR[i] = *(subip + i);
}

void GetSUBVar(byte* subip)
{
	for(int i = 0; i < 4; i++)
		*(subip + i) = SUBN_VAR[i];
}

void ApplySUBReg()
{
	for(int i = 0; i < 4; i++)
		*((byte*)(REG_SUB_BASE + i)) = SUBN_VAR[i];
}

void ReadSUBReg()
{
	for(int i = 0; i < 4; i++)
		SUBN_VAR[i] = *((byte*)(REG_SUB_BASE + i));
}

void SetSIPReg(byte* srcip)
{
	for(int i = 0; i < 4; i++)
		*((byte*)(REG_SIP_BASE + i)) = *(srcip + i);
	
	for(int i = 0; i < 4; i++)
		tempsss[i] = *((byte*)(REG_SIP_BASE + i));
}

void GetSIPReg(byte* srcip)
{
	for(int i = 0; i < 4; i++)
		*(srcip + i) = *((byte*)(REG_SIP_BASE + i));
}

void SetRMSReg(byte rxmode)
{
	*((byte*)REG_RMS_BASE) = rxmode;
}

void SetTMSReg(byte txmode)
{
	*((byte*)REG_TMS_BASE) = txmode;
}

uint8 GetStatus(SOCKET s)
{
    return REG_Sn_STATUS(s);
}

// Socket Register
void SetSockModeReg(SOCKET s, byte protocol, byte flag)
{
    REG_Sn_MODE(s) = protocol | flag;
}

void SetSockCmdReg(SOCKET s, byte cmd)
{
    REG_Sn_CMD(s) = cmd;
}

void SetSockIntReg(SOCKET s, byte regdata)
{
    REG_Sn_INT(s) = regdata;
}

void SetSockPortReg(SOCKET s, ushort port)
{
    REG_Sn_PORT(s, 0) = (byte)((port & 0xFF00) >> 8);
    REG_Sn_PORT(s, 1) = (byte)(port & 0x00FF);
}

void SetSockDipReg(SOCKET s, byte *ipaddr)
{
    for(int i = 0; i < 4; i++)
        REG_Sn_DIP(s, i) = (byte)ipaddr[i];
}

void SetSockDportReg(SOCKET s, ushort port)
{
    REG_Sn_DPORT(s, 0) = (byte)((port & 0xFF00) >> 8);
    REG_Sn_DPORT(s, 1) = (byte)(port & 0x00FF);
}

void SetSockRxrdReg(SOCKET s, ushort reg)
{
    REG_Sn_RXRD(s, 0) = (byte)((reg & 0xff00) >> 8);
    REG_Sn_RXRD(s, 1) = (byte)(reg & 0x00ff);  
}

byte GetSockModeReg(SOCKET s)
{
    return REG_Sn_MODE(s);
}

byte GetSockCmdReg(SOCKET s)
{
    return REG_Sn_CMD(s);
}

byte GetSockIntReg(SOCKET s)
{
    return REG_Sn_INT(s);
}

byte GetSockStaReg(SOCKET s)
{
    return REG_Sn_STATUS(s);
}

ushort GetSockRxrdReg(SOCKET s)
{
    ushort ptr = REG_Sn_RXRD(s, 0);        
    ptr = ((ptr & 0x00FF) << 8) + REG_Sn_RXRD(s, 1);
    
    return ptr;
}

ushort GetSockPortReg(SOCKET s)
{
    ushort ptr = REG_Sn_DPORT(s, 0);        
    ptr = ((ptr & 0x00FF) << 8) + REG_Sn_DPORT(s, 1);
    
    return ptr;
}
///////////////////////////////////////////////////////////////////////////////
byte W5100_Read(UInt32 addr)
{
    return *((byte*)addr);
}

void W5100_Write(UInt32 addr, uint8 data)
{
    *((byte*)addr) = data;
}

void read_data(SOCKET s, ushort srcptr, byte *dst, ushort len)
{
	ushort size;
	ushort src_mask;
	byte* src_ptr;
	byte* dst_ptr = dst;
	
	src_mask = srcptr & RMASK[s];
	src_ptr = (byte*)(RBUFBASEADDR[s] + src_mask);
	
	if((src_mask + len) > RSIZE[s])
	{
		size = RSIZE[s] - src_mask;
		for(int i = 0; i < size; i++)
			*dst_ptr++ = *src_ptr++;
		size = len - size;
		src_ptr = (byte*)RBUFBASEADDR[s];
		for(int i = 0; i < size; i++)
			*dst_ptr++ = *src_ptr++;
	}
	else
	{
		for(int i = 0; i < len; i++)
			*dst_ptr++ = *src_ptr++;
	}
}

void write_data(SOCKET s, byte *src, ushort dstptr, ushort len)
{
	ushort size;
	ushort dst_mask;
	byte* dst_ptr;
	byte* src_ptr = src;
	
	dst_mask = dstptr & TMASK[s];
	dst_ptr = (byte*)(TBUFBASEADDR[s] + dst_mask);
	
	if((dst_mask + len) > TSIZE[s])
	{
		size = TSIZE[s] - dst_mask;
		for(int i = 0; i < size; i++)
			*dst_ptr++ = *src_ptr++;
		size = len - size;
		dst_ptr = (byte*)TBUFBASEADDR[s];
		for(int i = 0; i < size; i++)
			*dst_ptr++ = *src_ptr++;
	}
	else
	{
		for(int i = 0; i < len; i++)
			*dst_ptr++ = *src_ptr++;
	}		
}

void iinchip_init(void)
{
    SetModeReg(MR_RST);
}