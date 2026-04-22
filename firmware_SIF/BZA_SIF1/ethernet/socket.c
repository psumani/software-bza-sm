#include "socket.h"
#include "global.h"
#include "w5100.h"

static ushort m_LocalPort;

ushort yData;

// Public Function
byte socket(SOCKET s, byte protocol, ushort port, byte flag)
{
	if(protocol == Sn_MR_TCP || protocol == Sn_MR_UDP || protocol == Sn_MR_IPRAW || protocol == Sn_MR_MACRAW || protocol == Sn_MR_PPPOE)
	{
		close(s);
		
		*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE))) = protocol | flag;
		
		if(port != 0)
		{
			*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0004 + 0)) = (byte)(port >> 8);
			*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0004 + 1)) = (byte)(port & 0xFF);
		}
		else
		{
			m_LocalPort++;
			*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0004 + 0)) = (byte)(m_LocalPort >> 8);
			*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0004 + 1)) = (byte)(m_LocalPort & 0xFF);					
		}
		
		*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0001)) = Sn_CR_OPEN;
		while(*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0001)))
		{

		}

		return 1;
	}	
	
	return 0;
}

byte test;

void close(SOCKET s)
{
    if(s == TCP_SOCK_NUM)
	{
		m_pGlobalVar->LedBusyStat = 0;
	}
	
	*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0001)) = Sn_CR_CLOSE;
	
	while(*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0003)))
	{
	}
	
	*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0002)) = 0xFF;	
}

byte listen(SOCKET s)
{
	if(*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0003)) == Sn_SR_INIT)
	{
		
		*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0001)) = Sn_CR_LISTEN;
		while(*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0001)))
		{
		}
		
		if(*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0003)) == Sn_SR_LISTEN)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
	return 0;
}

void recv(SOCKET s, byte* buf, ushort len)
{
	if(len > 0)
	{
		recv_data_processing(s, buf, len);
		
		REG_Sn_CMD(s) = Sn_CR_RECV;		
		
		while(REG_Sn_CMD(s))
        {
 
        }
	}
}
    
ushort send(SOCKET s, byte* buf, ushort len)
{
	ushort ret;
	ushort freesize;
	//byte status;
	
	if(len > GetTrasnMaxSize(s))
		ret = GetTrasnMaxSize(s);
	else
		ret = len;

	do
	{
		freesize = GetTransFreeSize(s);
		
		
		if(REG_Sn_STATUS(s) != Sn_SR_ESTABLISHED) 
		{
			return 0;
		}
		
		/*
		status = REG_Sn_STATUS(s);
		if((status != Sn_SR_ESTABLISHED) && (status != Sn_SR_CLOSEWAIT) && (status != Sn_SR_CLOSED))
		{
			ret = 0;
			break;
		}*/
		
	} while(freesize < ret);
    
	
	
	send_data_processing(s, buf, ret);
	
	REG_Sn_CMD(s) = Sn_CR_SEND;

	while(REG_Sn_CMD(s))
    {
		if(REG_Sn_STATUS(s) != Sn_SR_ESTABLISHED) return 0;
    }

	/*
	while((REG_Sn_INT(s) & Sn_IR_SEND_OK) != Sn_IR_SEND_OK)
	{
		if(REG_Sn_STATUS(s) != Sn_SR_ESTABLISHED) return 0;
	}
*/
	
	 while((REG_Sn_INT(s) & Sn_IR_SEND_OK) != Sn_IR_SEND_OK)
        {
            if(REG_Sn_INT(s) == Sn_IR_TIMEOUT)
            {
                REG_Sn_INT(s) = Sn_IR_SEND_OK | Sn_IR_TIMEOUT;
                return 0;
            }
			
			if(REG_Sn_STATUS(s) != Sn_SR_ESTABLISHED) 
			{
				return 0;
			}
        }
	
	REG_Sn_INT(s) = Sn_IR_SEND_OK;
	return ret;
}

uint16 sendto(SOCKET s, const uint8 *buf, uint16 len, uint8 *addr, uint16 port)
{
    uint16 ret = 0;
    
    if (len > GetTrasnMaxSize(s)) 
        ret = GetTrasnMaxSize(s); // check size not to exceed MAX size.
    else 
        ret = len;
    
    if(((addr[0] == 0x00) && (addr[1] == 0x00) && (addr[2] == 0x00) && (addr[3] == 0x00)) || ((port == 0x00)) ||(ret == 0))
    {
        /* +2008.01 [bj] : added return value */
        ret = 0;
    }
    else
    {
        REG_Sn_DIP(s, 0) = addr[0];
        REG_Sn_DIP(s, 1) = addr[1];
        REG_Sn_DIP(s, 2) = addr[2];
        REG_Sn_DIP(s, 3) = addr[3];
        REG_Sn_DPORT(s, 0) = (uint8)((port & 0xFF00) >> 8);
        REG_Sn_DPORT(s, 1) = (uint8)(port & 0x00FF);
        
        // copy data
        send_data_processing(s, (uint8 *)buf, ret);
        // m2012.03.13 [ys]: set/clear subnet for ARP Errata
        //ClearSUBReg();
        REG_Sn_CMD(s) = Sn_CR_SEND;            
	
        while(REG_Sn_CMD(s))
		{
			if(REG_Sn_STATUS(s) != Sn_SR_ESTABLISHED) return 0;
		}

        while((REG_Sn_INT(s) & Sn_IR_SEND_OK) != Sn_IR_SEND_OK)
        {
            if(REG_Sn_INT(s) == Sn_IR_TIMEOUT)
            {
                REG_Sn_INT(s) = Sn_IR_SEND_OK | Sn_IR_TIMEOUT;
                return 0;
            }
			if(REG_Sn_STATUS(s) != Sn_SR_ESTABLISHED) 
			{
				return 0;
			}
        }
        
        REG_Sn_INT(s) = Sn_IR_SEND_OK;
        //ApplySUBReg();
	}
	return ret;
}

uint16 recvfrom(SOCKET s, uint8 *buf, uint16 len, uint8 *addr, uint16 *port)
{
    uint8 head[8];
    uint16 data_len = 0;
    uint16 ptr = 0;

    if ( len > 0 )
    {
        ptr = REG_Sn_RXRD(s, 0);        
        ptr = ((ptr & 0x00FF) << 8) + REG_Sn_RXRD(s, 1);

        switch(REG_Sn_MODE(s) & 0x07)
        {
            case Sn_MR_UDP :
                read_data(s, ptr, head, 0x08);
                ptr += 8;
                // read peer's IP address, port number.
                addr[0] = head[0];
                addr[1] = head[1];
                addr[2] = head[2];
                addr[3] = head[3];
                *port = head[4];
                *port = (*port << 8) + head[5];
                data_len = head[6];
                data_len = (data_len << 8) + head[7];

                read_data(s, ptr, buf, data_len); // data copy.
                ptr += data_len;

                REG_Sn_RXRD(s, 0) = (uint8)((ptr & 0xff00) >> 8);
                REG_Sn_RXRD(s, 1) = (uint8)(ptr & 0x00ff);                
                break;

            case Sn_MR_IPRAW :
                read_data(s, ptr, head, 0x06);
                ptr += 6;

                addr[0] = head[0];
                addr[1] = head[1];
                addr[2] = head[2];
                addr[3] = head[3];
                data_len = head[4];
                data_len = (data_len << 8) + head[5];
        
                read_data(s, ptr, buf, data_len); // data copy.
                ptr += data_len;

                REG_Sn_RXRD(s, 0) = (uint8)((ptr & 0xff00) >> 8);
                REG_Sn_RXRD(s, 1) = (uint8)(ptr & 0x00ff);                
                break;
                
            case Sn_MR_MACRAW :
                read_data(s, ptr, head, 2);
                ptr+=2;
                data_len = head[0];
                data_len = (data_len<<8) + head[1] - 2;

                read_data(s, ptr, buf, data_len);
                ptr += data_len;
                REG_Sn_RXRD(s, 0) = (uint8)((ptr & 0xff00) >> 8);
                REG_Sn_RXRD(s, 1) = (uint8)(ptr & 0x00ff); 
                break;

            default :
                break;
        }
        
        REG_Sn_CMD(s) = Sn_CR_RECV;

        while(REG_Sn_CMD(s))
		{

		}
    }

    return data_len;    
}

void disconnect(SOCKET s)
{
	*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0001)) = Sn_CR_DISCON;

	while(*((byte*)(REG_CH_BASE + (s * REG_CH_SIZE) + 0x0001)))
	{

	}
}

int16 SOCKET_Send(uint8 u8Socket, char* u8Buffer, uint16 u16Length)
{
	uint16 u16TxPointer;
	UInt32 u32TxBaseAddress;
	uint16 u16TxBufferSize;
	uint16 u16Index;
	int16 s16BytesSent = -1;
	
	/* Base Address and Buffer Size in W5100 device to transmit data */
	switch (u8Socket)
	{
		case 0: 
            u32TxBaseAddress = W5100_TX_MEMORY_SOCKET_0_ADDRESS; 
            u16TxBufferSize = W5100_TX_SOCKET_0_SIZE_BYTES; 
            break;
            
		case 1: 
            u32TxBaseAddress = W5100_TX_MEMORY_SOCKET_1_ADDRESS; 
            u16TxBufferSize = W5100_TX_SOCKET_1_SIZE_BYTES; 
            break;
            
		case 2: 
            u32TxBaseAddress = W5100_TX_MEMORY_SOCKET_2_ADDRESS; 
            u16TxBufferSize = W5100_TX_SOCKET_2_SIZE_BYTES; 
            break;
            
		case 3: 
            u32TxBaseAddress = W5100_TX_MEMORY_SOCKET_3_ADDRESS; 
            u16TxBufferSize = W5100_TX_SOCKET_3_SIZE_BYTES; 
            break;
            
		default: 
            break;
	}
	
	/* Check Socket status */
	if (GetStatus(u8Socket) == Sn_SR_ESTABLISHED)
	{
		/* Get TX pointer */
		u16TxPointer = REG_Sn_TXWR(u8Socket, 0) << 8;
		u16TxPointer += REG_Sn_TXWR(u8Socket, 1);
				
		for (u16Index = 0; u16Index < u16Length && u16Length < u16TxBufferSize; u16Index++)
		{
			/* Write byte */
			W5100_Write(u32TxBaseAddress + (u16TxPointer & (u16TxBufferSize - 1)), u8Buffer[u16Index]);
			
			/* Increment TX Pointer */
			u16TxPointer++;
		}
		
		/* Write TX Pointer */
		REG_Sn_TXWR(u8Socket, 0) = (uint8)(u16TxPointer >> 8);
		REG_Sn_TXWR(u8Socket, 1) = (uint8)(u16TxPointer & 0x00FF);
				
		/* Send data */
		REG_Sn_CMD(u8Socket) = Sn_CR_SEND;
		
		/* Wait */
		
		while (REG_Sn_CMD(u8Socket))
		{
			if (GetStatus(u8Socket) != Sn_SR_ESTABLISHED) return 0;
		}
		
		/* Update number of bytes sent */
		s16BytesSent = (int16)u16Index;
	}
	
	/* Return number of bytes sent */
	return s16BytesSent;
}

int16 Socket_Recv(uint8 u8Socket, char* u8Buffer, uint16 u16Length)
{
    uint16 u16RxRecvSize;
	uint16 u16RxPointer;
	UInt32 u32RxBaseAddress;
	uint16 u16RxBufferSize;
	uint16 u16Index;
	int16 s16BytesReceived = -1;

	/* Base Address and Buffer Size in W5100 device to transmit data */
	switch (u8Socket)
	{
		case 0: 
            u32RxBaseAddress = W5100_RX_MEMORY_SOCKET_0_ADDRESS; 
            u16RxBufferSize = W5100_RX_SOCKET_0_SIZE_BYTES; 
            break;
		case 1: 
            u32RxBaseAddress = W5100_RX_MEMORY_SOCKET_1_ADDRESS; 
            u16RxBufferSize = W5100_RX_SOCKET_1_SIZE_BYTES; 
            break;
		case 2: 
            u32RxBaseAddress = W5100_RX_MEMORY_SOCKET_2_ADDRESS; 
            u16RxBufferSize = W5100_RX_SOCKET_2_SIZE_BYTES; 
            break;
		case 3: 
            u32RxBaseAddress = W5100_RX_MEMORY_SOCKET_3_ADDRESS; 
            u16RxBufferSize = W5100_RX_SOCKET_3_SIZE_BYTES; 
            break;
		default: 
            break;
	}
	
	/* Check Socket status */
	if (GetStatus(u8Socket) == Sn_SR_ESTABLISHED)
	{
		/* Get received size */
		u16RxRecvSize = REG_Sn_RXRS(u8Socket, 0) << 8;
		u16RxRecvSize += REG_Sn_RXRS(u8Socket, 1);
		
		if (u16RxRecvSize > 0)
		{
			/* Get RX pointer */
			u16RxPointer = REG_Sn_RXRD(u8Socket, 0) << 8;
			u16RxPointer += REG_Sn_RXRD(u8Socket, 1);
			
			for (u16Index = 0; u16Index < u16RxRecvSize && u16Index < u16Length; u16Index++)
			{
				/* Read byte */
				u8Buffer[u16Index] = W5100_Read(u32RxBaseAddress + (u16RxPointer & (u16RxBufferSize - 1)));
				
				/* Increment RX Pointer */
				u16RxPointer++;
			}
			
			/* Save new RX Pointer */
			REG_Sn_RXRD(u8Socket, 0) = (uint8)(u16RxPointer >> 8);
			REG_Sn_RXRD(u8Socket, 1) = (uint8)(u16RxPointer & 0x00FF);
			
			/* Send Receive Command */
			REG_Sn_CMD(u8Socket) = Sn_CR_RECV;
			
			/* Wait */

			while (REG_Sn_CMD(u8Socket))
			{
				if (GetStatus(u8Socket) != Sn_SR_ESTABLISHED) return 0;
			}
			
			/* Update number of bytes received */
			s16BytesReceived = (int16)u16Index;
		}
	}

	return s16BytesReceived;
}
