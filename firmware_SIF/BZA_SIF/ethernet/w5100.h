#ifndef W5100_H
#define W5100_H

#include "../defines/type.h"

#define MSB(n) ((n & 0xFF00) >> 8)
#define LSB(n) (n & 0xFF)

#define MAX_SOCKET_NUM		4
#define DEF_HOST_NAME		"ZIM"
#define MCU_BASE_ADDR		0xE0000000

#define REG_MODE			MCU_BASE_ADDR
#define REG_GW_BASE			MCU_BASE_ADDR + 0x0001
#define REG_SUB_BASE		MCU_BASE_ADDR + 0x0005
#define REG_SHA_BASE		MCU_BASE_ADDR + 0x0009
#define REG_SIP_BASE		MCU_BASE_ADDR + 0x000F
#define REG_IMR_BASE        MCU_BASE_ADDR + 0x0016
#define REG_RMS_BASE		MCU_BASE_ADDR + 0x001A
#define REG_TMS_BASE		MCU_BASE_ADDR + 0x001B

#define REG_CH_BASE			MCU_BASE_ADDR + 0x0400

#define REG_CH_SIZE			0x0100

#define REG_Sn_MODE(ch)		*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE)))
#define REG_Sn_CMD(ch)		*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0001))
#define REG_Sn_INT(ch)		*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0002))
#define REG_Sn_STATUS(ch)	*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0003))
#define REG_Sn_PORT(ch, i)	*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0004 + i))
#define REG_Sn_DHA(ch, i)	*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0006 + i))
#define REG_Sn_DIP(ch, i)	*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x000C + i))
#define REG_Sn_DPORT(ch, i)	*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0010 + i))
#define REG_Sn_MSS(ch, i)	*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0012 + i))
#define REG_Sn_PROTO(ch)	*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0014))
#define REG_Sn_TOS(ch)		*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0015))
#define REG_Sn_TTL(ch)		*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0016))
#define REG_Sn_TXFS(ch, i)	*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0020 + i))
#define REG_Sn_TXRD(ch, i)	*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0022 + i))
#define REG_Sn_TXWR(ch, i)	*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0024 + i))
#define REG_Sn_RXRS(ch, i)	*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0026 + i))
#define REG_Sn_RXRD(ch, i)	*((byte*)(REG_CH_BASE + (ch * REG_CH_SIZE) + 0x0028 + i))

#define BUF_TX_BASE			MCU_BASE_ADDR + 0x4000
#define BUF_RX_BASE			MCU_BASE_ADDR + 0x6000

//Mode Register
#define MR_RST				0x80
#define MR_PB				0x10
#define MR_PPPOE			0x08
#define MR_LB				0x04
#define MR_AI				0x02
#define MR_IND				0x01

//Socket n Mode Register
#define Sn_MR_CLOSE			0x00
#define Sn_MR_TCP			0x01
#define Sn_MR_UDP			0x02
#define Sn_MR_IPRAW			0x03
#define Sn_MR_MACRAW		0x04
#define Sn_MR_PPPOE			0x05
#define Sn_MR_ND			0x20
#define Sn_MR_MULTI			0x80

// Socket n Command Register
#define Sn_CR_OPEN			0x01
#define Sn_CR_LISTEN		0x02
#define Sn_CR_CONNECT		0x04
#define Sn_CR_DISCON		0x08
#define Sn_CR_CLOSE			0x10
#define Sn_CR_SEND			0x20
#define Sn_CR_SEND_MAC		0x21
#define Sn_CR_SEND_KEEP		0x22
#define Sn_CR_RECV			0x40

// Socket n Status Register
#define Sn_SR_CLOSED		0x00
#define Sn_SR_INIT			0x13
#define Sn_SR_LISTEN		0x14
#define Sn_SR_SYNSENT		0x15
#define Sn_SR_SYNRECV		0x16
#define Sn_SR_ESTABLISHED	0x17
#define Sn_SR_FINWAIT		0x18
#define Sn_SR_CLOSING		0x1A
#define Sn_SR_TIMEWAIT		0x1B
#define Sn_SR_CLOSEWAIT		0x1C
#define Sn_SR_LASTACK		0x1D
#define Sn_SR_UDP			0x22
#define Sn_SR_IPRAW			0x32
#define Sn_SR_MACRAW		0x42
#define Sn_SR_PPPOE			0x5F

// Socket n Interrupt Register
#define Sn_IR_SEND_OK		0x10
#define Sn_IR_TIMEOUT		0x08
#define Sn_IR_RECV			0x04
#define Sn_IR_DISCON		0x02
#define Sn_IR_CON			0x01

// dhcp.h //
/* DHCP state machine. */
#define	STATE_DHCP_DISCOVER	1
#define	STATE_DHCP_REQUEST	2
#define	STATE_DHCP_LEASED	3
#define	STATE_DHCP_REREQUEST	4
#define	STATE_DHCP_RELEASE	5

#define	MAX_DHCP_RETRY		2
#define	DHCP_WAIT_TIME		2

#define DHCP_FLAGSBROADCAST	0x8000

#define	DHCP_SERVER_PORT	67
#define DHCP_CLIENT_PORT    68

/* DHCP message OP code */
#define DHCP_BOOTREQUEST	1
#define DHCP_BOOTREPLY		2

/* DHCP message type */
#define	DHCP_DISCOVER		1
#define DHCP_OFFER		    2
#define	DHCP_REQUEST		3
#define	DHCP_DECLINE		4
#define	DHCP_ACK		    5
#define DHCP_NAK		    6
#define	DHCP_RELEASE		7
#define DHCP_INFORM		    8

/* DHCP RETRANSMISSION TIMEOUT (microseconds) */
#define DHCP_INITIAL_RTO	( 4*1000000)
#define DHCP_MAX_RTO		(64*1000000)

#define DHCP_HTYPE10MB		1
#define DHCP_HTYPE100MB		2

#define DHCP_HLENETHERNET	6
#define DHCP_HOPS		    0
#define DHCP_SECS		    0

#define MAGIC_COOKIE		0x63825363

//////////////////////////////////
//////////////////////////////////
/* Receive and Transmit Socket Memory size */
#define W5100_SOCKET_SIZE_1KB				(0x00)					/* 1KB */
#define W5100_SOCKET_SIZE_2KB				(0x01)					/* 2KB */
#define W5100_SOCKET_SIZE_4KB				(0x02)					/* 4KB */
#define W5100_SOCKET_SIZE_8KB				(0x03)					/* 8KB */

//---------------------------------------------------------------------------------------
// W5100 Sockets Size Definitions (1KB, 2KB, 4KB or 8KB, can be modified to match software requirements)
//---------------------------------------------------------------------------------------

#define W5100_TX_SOCKET_0_SIZE				W5100_SOCKET_SIZE_2KB
#define W5100_TX_SOCKET_1_SIZE				W5100_SOCKET_SIZE_2KB
#define W5100_TX_SOCKET_2_SIZE				W5100_SOCKET_SIZE_2KB
#define W5100_TX_SOCKET_3_SIZE				W5100_SOCKET_SIZE_2KB

#define W5100_RX_SOCKET_0_SIZE				W5100_SOCKET_SIZE_2KB
#define W5100_RX_SOCKET_1_SIZE				W5100_SOCKET_SIZE_2KB
#define W5100_RX_SOCKET_2_SIZE				W5100_SOCKET_SIZE_2KB
#define W5100_RX_SOCKET_3_SIZE				W5100_SOCKET_SIZE_2KB

/* Sockets Transmit Size definitions in bytes */
#define W5100_TX_SOCKET_0_SIZE_BYTES		(1024 << W5100_TX_SOCKET_0_SIZE)
#define W5100_TX_SOCKET_1_SIZE_BYTES		(1024 << W5100_TX_SOCKET_1_SIZE)
#define W5100_TX_SOCKET_2_SIZE_BYTES		(1024 << W5100_TX_SOCKET_2_SIZE)
#define W5100_TX_SOCKET_3_SIZE_BYTES		(1024 << W5100_TX_SOCKET_3_SIZE)

/* Sockets Receive Size definitions in bytes */
#define W5100_RX_SOCKET_0_SIZE_BYTES		(1024 << W5100_RX_SOCKET_0_SIZE)
#define W5100_RX_SOCKET_1_SIZE_BYTES		(1024 << W5100_RX_SOCKET_1_SIZE)
#define W5100_RX_SOCKET_2_SIZE_BYTES		(1024 << W5100_RX_SOCKET_2_SIZE)
#define W5100_RX_SOCKET_3_SIZE_BYTES		(1024 << W5100_RX_SOCKET_3_SIZE)

/* Transmit Address in the Memory Map */
#define W5100_TX_MEMORY_BASE_ADDRESS		BUF_TX_BASE//(0x4000)
#define W5100_TX_MEMORY_SOCKET_0_ADDRESS	(W5100_TX_MEMORY_BASE_ADDRESS)
#define W5100_TX_MEMORY_SOCKET_1_ADDRESS	(W5100_TX_MEMORY_BASE_ADDRESS + W5100_TX_SOCKET_0_SIZE_BYTES)
#define W5100_TX_MEMORY_SOCKET_2_ADDRESS	(W5100_TX_MEMORY_BASE_ADDRESS + W5100_TX_SOCKET_0_SIZE_BYTES + W5100_TX_SOCKET_1_SIZE_BYTES)
#define W5100_TX_MEMORY_SOCKET_3_ADDRESS	(W5100_TX_MEMORY_BASE_ADDRESS + W5100_TX_SOCKET_0_SIZE_BYTES + W5100_TX_SOCKET_1_SIZE_BYTES + W5100_TX_SOCKET_2_SIZE_BYTES)

/* Receive Address in the Memory Map */
#define W5100_RX_MEMORY_BASE_ADDRESS		BUF_RX_BASE//(0x6000)
#define W5100_RX_MEMORY_SOCKET_0_ADDRESS	(W5100_RX_MEMORY_BASE_ADDRESS)
#define W5100_RX_MEMORY_SOCKET_1_ADDRESS	(W5100_RX_MEMORY_BASE_ADDRESS + W5100_RX_SOCKET_0_SIZE_BYTES)
#define W5100_RX_MEMORY_SOCKET_2_ADDRESS	(W5100_RX_MEMORY_BASE_ADDRESS + W5100_RX_SOCKET_0_SIZE_BYTES + W5100_RX_SOCKET_1_SIZE_BYTES)
#define W5100_RX_MEMORY_SOCKET_3_ADDRESS	(W5100_RX_MEMORY_BASE_ADDRESS + W5100_RX_SOCKET_0_SIZE_BYTES + W5100_RX_SOCKET_1_SIZE_BYTES + W5100_RX_SOCKET_2_SIZE_BYTES)

//////////////////////////////////

typedef struct
{
	byte I_STATUS[MAX_SOCKET_NUM];
	ushort TMASK[MAX_SOCKET_NUM];			// Variable for Tx buffer MASK in each channel
	ushort RMASK[MAX_SOCKET_NUM];			// Variable for Rx buffer MASK in each channel
	ushort TSIZE[MAX_SOCKET_NUM];			// Max Tx buffer size by each channel
	ushort RSIZE[MAX_SOCKET_NUM];			// Max Rx buffer size by each channel
	uint TBUFBASEADDR[MAX_SOCKET_NUM];	// Tx buffer base address by each channel
	uint RBUFBASEADDR[MAX_SOCKET_NUM]; 	// Rx buffer base address by each channel
	byte SUBN_VAR[4];	
} stW5100Var;

/** 
 * @brief	DHCP option and value (cf. RFC1533) 
 */
enum
{
	padOption		=	0,
	subnetMask		=	1,
	timerOffset		=	2,
	routersOnSubnet		=	3,
	timeServer		=	4,
	nameServer		=	5,
	dns			=	6,
	logServer		=	7,
	cookieServer		=	8,
	lprServer		=	9,
	impressServer		=	10,
	resourceLocationServer	=	11,
	hostName		=	12,
	bootFileSize		=	13,
	meritDumpFile		=	14,
	domainName		=	15,
	swapServer		=	16,
	rootPath		=	17,
	extentionsPath		=	18,
	IPforwarding		=	19,
	nonLocalSourceRouting	=	20,
	policyFilter		=	21,
	maxDgramReasmSize	=	22,
	defaultIPTTL		=	23,
	pathMTUagingTimeout	=	24,
	pathMTUplateauTable	=	25,
	ifMTU			=	26,
	allSubnetsLocal		=	27,
	broadcastAddr		=	28,
	performMaskDiscovery	=	29,
	maskSupplier		=	30,
	performRouterDiscovery	=	31,
	routerSolicitationAddr	=	32,
	staticRoute		=	33,
	trailerEncapsulation	=	34,
	arpCacheTimeout		=	35,
	ethernetEncapsulation	=	36,
	tcpDefaultTTL		=	37,
	tcpKeepaliveInterval	=	38,
	tcpKeepaliveGarbage	=	39,
	nisDomainName		=	40,
	nisServers		=	41,
	ntpServers		=	42,
	vendorSpecificInfo	=	43,
	netBIOSnameServer	=	44,
	netBIOSdgramDistServer	=	45,
	netBIOSnodeType		=	46,
	netBIOSscope		=	47,
	xFontServer		=	48,
	xDisplayManager		=	49,
	dhcpRequestedIPaddr	=	50,
	dhcpIPaddrLeaseTime	=	51,
	dhcpOptionOverload	=	52,
	dhcpMessageType		=	53,
	dhcpServerIdentifier	=	54,
	dhcpParamRequest	=	55,
	dhcpMsg			=	56,
	dhcpMaxMsgSize		=	57,
	dhcpT1value		=	58,
	dhcpT2value		=	59,
	dhcpClassIdentifier	=	60,
	dhcpClientIdentifier	=	61,
	endOption		=	255
};

typedef struct _RIP_MSG
{
	byte	op; 
	byte	htype; 
	byte	hlen;
	byte	hops;
	uint	xid;
	ushort	secs;
	ushort	flags;
	byte	ciaddr[4];
	byte	yiaddr[4];
	byte	siaddr[4];
	byte	giaddr[4];
	byte	chaddr[16];
	byte	sname[64];
	byte	file[128];
	byte	OPT[312];
} RIP_MSG;

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
void SetIntMaskReg(byte val);
uint8 GetStatus(SOCKET s);

// Socket n Register
void SetSockModeReg(SOCKET s, byte protocol, byte flag);
void SetSockCmdReg(SOCKET s, byte cmd);
void SetSockIntReg(SOCKET s, byte reg);
void SetSockPortReg(SOCKET s, ushort port);
void SetSockDipReg(SOCKET s, byte *ipaddr);
void SetSockDportReg(SOCKET s, ushort port);
void SetSockRxrdReg(SOCKET s, ushort reg);

byte GetSockModeReg(SOCKET s);
byte GetSockCmdReg(SOCKET s);
byte GetSockIntReg(SOCKET s);
byte GetSockStaReg(SOCKET s);
ushort GetSockRxrdReg(SOCKET s);
ushort GetSockPortReg(SOCKET s);
///////////////////////////////////////////////////////////////////////////////
extern ushort TSIZE[MAX_SOCKET_NUM];

extern void w5100_init(void);

extern byte W5100_Read(UInt32 addr);
extern void W5100_Write(UInt32 addr, uint8 data);
extern void w5100_sysinit(byte txsize, byte rxsize);

extern void init_dhcp_client(SOCKET s, void (*ip_update)(void), void (*ip_conflict)(void));
extern uint init_dhcpc_ch(SOCKET s);
extern uint getIP_DHCPS(void);
extern void check_DHCP_state(SOCKET s);

extern void recv_data_processing(SOCKET s, byte *rdata, ushort len);
extern void send_data_processing(SOCKET s, byte *wdata, ushort len);
extern ushort GetRecvDataSize(SOCKET s);
extern ushort GetTransFreeSize(SOCKET s);
extern ushort GetTrasnMaxSize(SOCKET s);

extern void read_data(SOCKET s, ushort srcptr, byte *dst, ushort len);
#endif