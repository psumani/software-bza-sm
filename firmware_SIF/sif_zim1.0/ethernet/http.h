/////////////////////////////////////////////////////////////////////////////////////////
//
// Wiznet W5100 HTTP Server
//
// --------------------------------------------------------------------------------------
//
// Filename:      http.h
// Version:       1.0
// Date:          15/10/2011
// Author:        Joel Guittet - http://myfreescalewebpage.free.fr
//
/////////////////////////////////////////////////////////////////////////////////////////
//
// Revisions
//
// Version	| Author		| Description
// --------------------------------------------------------------------------------------
//			|				| 
//
/////////////////////////////////////////////////////////////////////////////////////////


#ifndef	HTTP_H_
#define	HTTP_H_


//---------------------------------------------------------------------------------------
// Includes
//---------------------------------------------------------------------------------------

//#include <string.h>
//#include <stdio.h>
//#include "typedef.h"
//#include "socket.h"
//#include "dhcp.h"
//#include "w5100.h"
//#include "fat.h"
//#include "sd.h"
//#include "../defines/type.h"

#include "../sif_zim.h"

//---------------------------------------------------------------------------------------
// Definitions
//---------------------------------------------------------------------------------------

#define HTTP_SOCKET							(3)						/* Socket used in W5100 device */
#define HTTP_PORT							(80)					/* HTTP Server Port, usually 80 */

#define HTTP_RX_BUFFER_SIZE					(2050) //(2050)					/* Size of the buffer for incoming messages */ 
#define HTTP_TX_BUFFER_SIZE					(2050)					/* Size of the buffer for replying messages (imposed by SD Card library) */
#define HTTP_BUFFER_SIZE					(2048)					/* Size of the buffer for replying messages (imposed by SD Card library) 512*/
#define HTTP_SOCK_ESTABLISHED_TIMEOUT		(20000)					/* Timeout used to disconnect the socket if nothing received from client */

#define INITIAL_WEBPAGE				"index.htm"
#define M_INITIAL_WEBPAGE			"m/index.htm"
#define MOBILE_INITIAL_WEBPAGE		"mobile/index.htm"

#define INITIAL_WEBPAGE_L			"index.html"
#define M_INITIAL_WEBPAGE_L			"m/index.html"
#define MOBILE_INITIAL_WEBPAGE_L	"mobile/index.html"

// Web content structure for file in code flash memory
#define MAX_CONTENT_CALLBACK		104

//#define MAX_HTML_BUFSIZE            500000
#define MAX_HTML_BUFSIZE            3000000

/*********************************************
* HTTP Process states list
*********************************************/
#define STATE_HTTP_IDLE             0           /* IDLE, Waiting for data received (TCP established) */
#define STATE_HTTP_REQ_INPROC  		1           /* Received HTTP request from HTTP client */
#define STATE_HTTP_REQ_DONE    		2           /* The end of HTTP request parse */
#define STATE_HTTP_RES_INPROC  		3           /* Sending the HTTP response to HTTP client (in progress) */
#define STATE_HTTP_RES_DONE    		4           /* The end of HTTP response send (HTTP transaction ended) */

/*********************************************
* HTTP Simple Return Value
*********************************************/
#define HTTP_FAILED					0
#define HTTP_OK						1
#define HTTP_RESET					2

/*********************************************
* HTTP Content NAME length
*********************************************/
#define MAX_CONTENT_NAME_LEN		128

/*********************************************
* HTTP Timeout
*********************************************/
#define HTTP_MAX_TIMEOUT_SEC		3			// Sec.

typedef enum
{
   NONE,		///< Web storage none
   CODEFLASH,	///< Code flash memory
   SDCARD,    	///< SD card
   DATAFLASH,	///< External data flash memory
   LOCAL
} StorageType; 

typedef struct _st_http_socket
{
	uint8_t			sock_status;
	uint8_t			file_name[MAX_CONTENT_NAME_LEN];
	uint32_t 		file_start;
	uint32_t 		file_len;
	uint32_t 		file_offset; // (start addr + sent size...)
	uint8_t			storage_type; // Storage type; Code flash, SDcard, Data flash ...
}st_http_socket;

typedef struct _httpServer_webContent
{
    uint8_t     content_type;
	uint8_t	*	content_name;
	uint8_t		content_name_len;
	uint32_t	content_len; 
    uint32_t    content_ipage;
	uint8_t * 	content;
}httpServer_webContent;

//---------------------------------------------------------------------------------------
// Prototypes
//---------------------------------------------------------------------------------------

void InitHttp(void);
void HTTP_Server(void);

#endif
