#ifndef _HTTPPARSER_H
#define _HTTPPARSER_H

#include "sif_zim.h"

/* HTTP Method */
#define		METHOD_ERR		0		/**< Error Method. */
#define		METHOD_GET		1		/**< GET Method.   */
#define		METHOD_HEAD		2		/**< HEAD Method.  */
#define		METHOD_POST		3		/**< POST Method.  */

/* HTTP GET Method */
#define		PTYPE_ERR		0		/**< Error file. */
#define		PTYPE_HTML		1		/**< HTML file.  */
#define		PTYPE_GIF		2		/**< GIF file.   */
#define		PTYPE_TEXT		3		/**< TEXT file.  */
#define		PTYPE_JPEG		4		/**< JPEG file.  */
#define		PTYPE_FLASH		5		/**< FLASH file. */
#define		PTYPE_MPEG		6		/**< MPEG file.  */
#define		PTYPE_PDF		7		/**< PDF file.   */
#define 	PTYPE_CGI		8		/**< CGI file.   */
#define     PTYPE_XML       9       /**< XML file.   */ 
#define     PTYPE_CSS       10      /**< CSS file.   */
#define		PTYPE_JS		11		/**< JavaScript file.	*/
#define		PTYPE_JSON		12		/**< JSON (JavaScript Standard Object Notation) file.	*/
#define		PTYPE_PNG		13		/**< PNG file. 	*/
#define		PTYPE_ICO		14		/**< ICON file. */

#define		PTYPE_TTF		20		/**< Font type: TTF file. */
#define		PTYPE_OTF		21		/**< Font type: OTF file. */
#define		PTYPE_WOFF		22		/**< Font type: WOFF file. */
#define     PTYPE_WOFF2     23      /**< Font type: WOFF2 file. */
#define		PTYPE_EOT		24		/**< Font type: EOT file. */
#define		PTYPE_SVG		25		/**< Font type: SVG file. */

#define     PTYPE_ZIM       30
#define     PTYPE_SIF       31

/* HTTP response */
#define		STATUS_OK			200
#define		STATUS_CREATED		201
#define		STATUS_ACCEPTED		202
#define		STATUS_NO_CONTENT	204
#define		STATUS_MV_PERM		301
#define		STATUS_MV_TEMP		302
#define		STATUS_NOT_MODIF	304
#define		STATUS_BAD_REQ		400
#define		STATUS_UNAUTH		401
#define		STATUS_FORBIDDEN	403
#define		STATUS_NOT_FOUND	404
#define		STATUS_INT_SERR		500
#define		STATUS_NOT_IMPL		501
#define		STATUS_BAD_GATEWAY	502
#define		STATUS_SERV_UNAVAIL	503

/* HTML Doc. for ERROR */
static const char  	ERROR_HTML_PAGE[] = "HTTP/1.1 404 Not Found\r\nContent-Type: text/html\r\nContent-Length: 78\r\n\r\n<HTML>\r\n<BODY>\r\nSorry, the page you requested was not found.\r\n</BODY>\r\n</HTML>\r\n\0";
static const char 	ERROR_REQUEST_PAGE[] = "HTTP/1.1 400 OK\r\nContent-Type: text/html\r\nContent-Length: 50\r\n\r\n<HTML>\r\n<BODY>\r\nInvalid request.\r\n</BODY>\r\n</HTML>\r\n\0";

/* HTML Doc. for CGI result  */
#define HTML_HEADER "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nContent-Length: "

/* Response header for HTML*/
#define RES_HTMLHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nConnection: keep-alive\r\nContent-Length: "

/* Response head for TEXT */
#define RES_TEXTHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\nContent-Length: "

/* Response head for GIF */
#define RES_GIFHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: image/gif\r\nContent-Length: "

/* Response head for JPEG */
#define RES_JPEGHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: image/jpeg\r\nContent-Length: "

/* Response head for PNG */
#define RES_PNGHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: image/png\r\nContent-Length: "

/* Response head for FLASH */
#define RES_FLASHHEAD_OK "HTTP/1.1 200 OK\r\nContent-Type: application/x-shockwave-flash\r\nContent-Length: "

/* Response head for XML */
#define RES_XMLHEAD_OK "HTTP/1.1 200 OK\r\nContent-Type: text/xml\r\nConnection: keep-alive\r\nContent-Length: "

/* Response head for CSS */
#define RES_CSSHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: text/css\r\nContent-Length: "		

/* Response head for JavaScript */
#define RES_JSHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: application/javascript\r\nContent-Length: "

/* Response head for JSON */
#define RES_JSONHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: application/json\r\nContent-Length: "

/* Response head for ICO */
#define RES_ICOHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: image/x-icon\r\nContent-Length: "

/* Response head for CGI */
#define RES_CGIHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nContent-Length: "

/* Response head for TTF, Font */
#define RES_TTFHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: application/x-font-truetype\r\nContent-Length: "

/* Response head for OTF, Font */
#define RES_OTFHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: application/x-font-opentype\r\nContent-Length: "

/* Response head for WOFF, Font */
#define RES_WOFFHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: application/font-woff\r\nContent-Length: "

/* Response head for EOT, Font */
#define RES_EOTHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: application/vnd.ms-fontobject\r\nContent-Length: "

/* Response head for SVG, Font */
#define RES_SVGHEAD_OK	"HTTP/1.1 200 OK\r\nContent-Type: image/svg+xml\r\nContent-Length: "

#define MAX_URI_SIZE	    512
#define MAX_URI_PARASIZE    64

typedef struct _st_http_request
{
	uint8_t	METHOD;						/**< request method(METHOD_GET...). */
	uint8_t	TYPE;						/**< request type(PTYPE_HTML...).   */
	uint8_t	URI[MAX_URI_SIZE];			/**< request file name.             */
}st_http_request;

uint8_t get_http_uri_name(uint8_t * uri, uint8_t * uri_buf, uint8_t * uri_para);
void find_http_uri_type(uint8_t * type,	uint8_t * buff);
void parse_http_request(st_http_request * request, uint8_t * buf);
void mid(char* src, char* s1, char* s2, char* sub);
#endif