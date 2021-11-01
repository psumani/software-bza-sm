#ifndef SOCKET_H
#define SOCKET_H

#include "../defines/type.h"

byte socket(SOCKET s, byte protocol, ushort port, byte flag);
extern void close(SOCKET s);
extern byte listen(SOCKET s);
extern ushort send(SOCKET s, byte *buf, ushort len);
extern uint16 sendto(SOCKET s, const uint8 *buf, uint16 len, uint8 *addr, uint16 port);
extern void recv(SOCKET s, byte *buf, ushort len);
extern uint16 recvfrom(SOCKET s, uint8 *buf, uint16 len, uint8 *addr, uint16 *port); // Receive data (UDP/IP RAW)
extern void disconnect(SOCKET s);

extern int16 Socket_Recv(uint8 u8Socket, char* u8Buffer, uint16 u16Length);
extern int16 SOCKET_Send(uint8 u8Socket, char* u8Buffer, uint16 u16Length);

extern int16 SendString(SOCKET s, char* pdata);

#endif