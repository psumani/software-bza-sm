#include "../init.h"
#include "../sif_zim.h"

#define DATA_BUF_SIZE		2048

/* Methods */
//static const char c_HTTP_Method_GET[] = "GET";
//static const uint8 c_HTTP_Method_POST[] = "POST";

/* Status Codes */
static const char c_HTTP_200_OK[] = "HTTP/1.0 200 OK\r\n";
//static const char c_HTTP_404_NotFound[] = "HTTP/1.0 404 Not Found\r\n";

char page[]={"\r\nHTTP/1.0 200 OK\r\nContent-Type: text/html\r\n\r\n<html><body><h1>Temperature 26.3</h1></body></html>\r\n\r\n"};

/* Cache Control */
//static const char c_HTTP_CacheControl_NoCache[] = "Pragma: no-cache\r\nExpires: Fri, 01 Jan 1990 00:00:00 GMT\r\nCache-Control: no-cache, must-revalidate\r\n";

/* Content Types */
//static const char c_HTTP_Content_HTML[] = "Content-Type: text/html\r\n";
//static const char c_HTTP_Content_Javascript[] = "Content-Type: text/javascript\r\n";
//static const char c_HTTP_Content_Bmp[] = "Content-Type: image/bmp\r\n";
//static const char c_HTTP_Content_Ico[] = "Content-Type: image/ico\r\n";
//static const char c_HTTP_Content_Jpeg[] = "Content-Type: image/jpeg\r\n";
//static const char c_HTTP_Content_Gif[] = "Content-Type: image/gif\r\n";
//static const char c_HTTP_Content_Png[] = "Content-Type: image/png\r\n";
static const char c_HTTP_Content_Json[] = "Content-Type: application/json\r\n";

/* Content Length */
//static const uint8 c_HTTP_Content_Length[] = "Content-Length: ";

/* Empty Line */
static const char c_HTTP_EmptyLine[] = "\r\n";

/* File Extensions */
//static const char c_HTTP_FileExtension_Htm[] = "htm";
//static const char c_HTTP_FileExtension_Js[] = "js";
//static const char c_HTTP_FileExtension_Bmp[] = "bmp";
//static const char c_HTTP_FileExtension_Ico[] = "ico";
//static const char c_HTTP_FileExtension_Jpg[] = "jpg";
//static const char c_HTTP_FileExtension_Gif[] = "gif";
//static const char c_HTTP_FileExtension_Png[] = "png";
//static const char c_HTTP_FileExtension_Json[] = "json";

/* Functions */
//static const char c_HTTP_Function_GetTemperature[] = "GetTemperature";

static const char c_HTTP_Access_All[] = "Access-Control-Allow-Origin:*\r\n";

/* Json */
static const char c_HTTP_Json_About[] = "about";
static const char c_HTTP_Json_Channel[] = "channel";
static const char c_HTTP_Json_Cook[] = "cook";
static const char c_HTTP_Json_Samples[] = "samples";
static const char c_HTTP_Json_Configure[] = "configure";
static const char c_HTTP_Json_Start[] = "start";
static const char c_HTTP_Json_Stop[] = "stop";
static const char c_HTTP_Content_Length[] = "Content-Length: ";

/* Pages stored in the Flash memory */
//static const char c_HTTP_Page_404[] = "<html><body><div id=\"title\" style=\"width: 800px; margin: 0 auto; text-align:center\"><h1>TheUno WebServer - Error 404</h1></div><br /><div id=\"text\" style=\"width: 800px; margin: 0 auto; text-align:center\"><p>The page requested was not found. Please click <a href=\"index.htm\">this link</a> to return on the main page of the WebServer.</p></div></body></html>\r\n";

static char g_HTTP_RecvMsgBuffer[HTTP_RX_BUFFER_SIZE];
static char g_HTTP_SendMsgBuffer[HTTP_TX_BUFFER_SIZE];

/* Timeout used to close the client socket */
//static UInt32 g_HTTP_SockEstablishedTimeout = 0;

static st_http_request* http_request;				/**< Pointer to received HTTP request */
static st_http_request* parsed_http_request;		/**< Pointer to parsed HTTP request */
static uint8_t * http_response;						/**< Pointer to HTTP response */

// Number of registered web content in code flash memory
static uint16_t total_content_cnt = 0;

st_http_socket HTTPSock_Status[MAX_SOCKET_NUM] = { {STATE_HTTP_IDLE, }, };
httpServer_webContent web_content[MAX_CONTENT_CALLBACK];


typedef enum { POST_NONE, POST_CONFIGURE } ePostStatus;

ePostStatus _postStatus = POST_NONE;

extern byte *_pNandBuffer;

bool _html = false;

void InitHttp(void)
{   
    web_content[total_content_cnt].content_type = 0;
    web_content[total_content_cnt].content_name = "about.json";
	web_content[total_content_cnt].content_name_len = strlen((char*)web_content[total_content_cnt].content_name);
    web_content[total_content_cnt].content_len = 0;
    web_content[total_content_cnt].content = (uint8_t*)m_pJsonAbout;
    total_content_cnt++;    
    
    web_content[total_content_cnt].content_type = 0;
    web_content[total_content_cnt].content_name = "channel.json";
	web_content[total_content_cnt].content_name_len = strlen((char*)web_content[total_content_cnt].content_name);
    web_content[total_content_cnt].content_len = 0;
    web_content[total_content_cnt].content = (uint8_t*)m_pJsonChannel;
    total_content_cnt++;
    
    web_content[total_content_cnt].content_type = 0;
    web_content[total_content_cnt].content_name = "cook.json";
	web_content[total_content_cnt].content_name_len = strlen((char*)web_content[total_content_cnt].content_name);
    web_content[total_content_cnt].content_len = 0;
    web_content[total_content_cnt].content = (uint8_t*)m_pJsonCook;
    total_content_cnt++;
    
    web_content[total_content_cnt].content_type = 0;
    web_content[total_content_cnt].content_name = "samples.json";
	web_content[total_content_cnt].content_name_len = strlen((char*)web_content[total_content_cnt].content_name);
    web_content[total_content_cnt].content_len = 0;
    web_content[total_content_cnt].content = (uint8_t*)m_pJsonSamples;
    total_content_cnt++;  
    
    if(sFATHeader.ID == 0x25)
    {
        for(int i = 0; i < sFATHeader.FileCount; i++)
        {
            web_content[total_content_cnt].content_type = 1;    // 0 : json, 1 : NandFlash            
            web_content[total_content_cnt].content_name = sFATHeader.sFileHeaders[i].Name;
			web_content[total_content_cnt].content_name_len = strlen((char*)web_content[total_content_cnt].content_name);
            if(strcmp((const char*)web_content[total_content_cnt].content_name, "index.html") == 0)
                _html = true;
            
            web_content[total_content_cnt].content_len = sFATHeader.sFileHeaders[i].Size; 
            web_content[total_content_cnt].content_ipage = sFATHeader.sFileHeaders[i].StartPageNum;
            web_content[total_content_cnt].content = (uint8_t*)m_pHtmlBuff;
            total_content_cnt++;
        }
    }
}

void SendHtm(stFileHeader *pFileHeader)
{
	int addr;
	int trlen;
	int tr;
	int length1 = 0;
    int length = pFileHeader->Size;
    int page = pFileHeader->StartPageNum;                   

    /* Send content length */
    //(void)sprintf(g_HTTP_SendMsgBuffer, "Content-Length: %ld\r\n", strlen(page));
    (void)sprintf(g_HTTP_SendMsgBuffer, "Content-Length: %ld\r\n", length);
    SendString(HTTP_SOCKET, (char*)g_HTTP_SendMsgBuffer);    
    if (GetStatus(HTTP_SOCKET) != Sn_SR_ESTABLISHED) return;                        
    /* Add an empty line */
    SendString(HTTP_SOCKET, (char*)c_HTTP_EmptyLine);
    if (GetStatus(HTTP_SOCKET) != Sn_SR_ESTABLISHED) return;        
    while(length > 0)
    {
        Nand_ReadPage(page, _pNandBuffer);
        trlen = DATA_BUF_SIZE < length ? DATA_BUF_SIZE : length;                    
        length -= trlen;
		addr = 0;       
        while(trlen > 0)
        {
            tr = trlen > HTTP_BUFFER_SIZE ? HTTP_BUFFER_SIZE : trlen;
			memset(g_HTTP_SendMsgBuffer,0x0,HTTP_TX_BUFFER_SIZE);
            memcpy(g_HTTP_SendMsgBuffer, &_pNandBuffer[addr], tr);
            SendString(HTTP_SOCKET, (char*)g_HTTP_SendMsgBuffer);
            length1 += tr;
            trlen -= tr;
            addr += tr;
			if (GetStatus(HTTP_SOCKET) != Sn_SR_ESTABLISHED) return;        
        }
        page++;
    }
	SendString(HTTP_SOCKET, (char*)c_HTTP_EmptyLine);
}

double _vValue = 0;
double _iValue = 0;

int8_t getHTTPSequenceNum(uint8_t socket)
{
	if(HTTP_SOCKET == socket)
        return socket;

	return -1;
}

void make_http_response_head(
	char * buf, 	/**< pointer to response header to be made */
	char type, 	/**< response type */
	uint32_t len	/**< size of response header */
	)
{
	char * head;
	char tmp[10];
			
	/*  file type*/
	if 	(type == PTYPE_HTML) 		head = RES_HTMLHEAD_OK;
	else if (type == PTYPE_GIF)		head = RES_GIFHEAD_OK;
	else if (type == PTYPE_TEXT)	head = RES_TEXTHEAD_OK;
	else if (type == PTYPE_JPEG)	head = RES_JPEGHEAD_OK;
	else if (type == PTYPE_FLASH)	head = RES_FLASHHEAD_OK;
	else if (type == PTYPE_XML) 	head =  RES_XMLHEAD_OK;
	else if (type == PTYPE_CSS) 	head = RES_CSSHEAD_OK;
	else if (type == PTYPE_JSON)	head = RES_JSONHEAD_OK;
	else if (type == PTYPE_JS)		head = RES_JSHEAD_OK;
	else if (type == PTYPE_CGI)		head = RES_CGIHEAD_OK;
	else if (type == PTYPE_PNG)		head = RES_PNGHEAD_OK;
	else if (type == PTYPE_ICO)		head = RES_ICOHEAD_OK;
	else if (type == PTYPE_TTF)		head = RES_TTFHEAD_OK;
	else if (type == PTYPE_OTF)		head = RES_OTFHEAD_OK;
	else if (type == PTYPE_WOFF)	head = RES_WOFFHEAD_OK;
	else if (type == PTYPE_EOT)		head = RES_EOTHEAD_OK;
	else if (type == PTYPE_SVG)		head = RES_SVGHEAD_OK;
    else if (type == PTYPE_ZIM)     head = RES_JSONHEAD_OK;
	else head = NULL;

	sprintf(tmp, "%ld\r\n", len);
	strcpy(buf, head);
	strcat(buf, tmp);
    strcat(buf, c_HTTP_Access_All);
	strcat(buf, c_HTTP_EmptyLine);
}

static void send_http_response_header(uint8_t s, uint8_t content_type, uint32_t body_len, uint16_t http_status)
{
	switch(http_status)
	{
		case STATUS_OK: 		// HTTP/1.1 200 OK
			if((content_type != PTYPE_CGI) && (content_type != PTYPE_XML)) // CGI/XML type request does not respond HTTP header
			{
				make_http_response_head((char*)http_response, content_type, body_len);
			}
			else
			{
				// CGI/XML type request does not respond HTTP header to client
				http_status = 0;
			}
			break;
            
		case STATUS_BAD_REQ: 	// HTTP/1.1 400 OK
			memcpy(http_response, ERROR_REQUEST_PAGE, sizeof(ERROR_REQUEST_PAGE));
			break;
            
		case STATUS_NOT_FOUND:	// HTTP/1.1 404 Not Found
			memcpy(http_response, ERROR_HTML_PAGE, sizeof(ERROR_HTML_PAGE));
			break;
            
		default:
			break;
	}

	// Send the HTTP Response 'header'
	if(http_status)
	{
		send(s, http_response, strlen((char *)http_response));
	}
}

void gen_userNand_webContent(uint16_t content_num)
{
    if(web_content[content_num].content_type != 1)
        return;
    
    memset(m_pHtmlBuff, 0, MAX_HTML_BUFSIZE);    
    
    int addr = 0;
	int tr;	    
    int page = web_content[content_num].content_ipage;
    int length = web_content[content_num].content_len;
    
    while(length > 0)
    {
        Nand_ReadPage(page, _pNandBuffer);
        tr = DATA_BUF_SIZE < length ? DATA_BUF_SIZE : length;  
        memcpy(m_pHtmlBuff + addr, _pNandBuffer, tr);        
        length -= tr;
		addr += tr;
        page++;
    }
}

void gen_userReg_webContent(uint16_t content_num, uint8_t* para)
{
    switch(content_num)
    {
        case 0:     // JSON ABOUT
            SetJsonAbout();
            web_content[content_num].content_len = strlen((const char*)web_content[content_num].content);
            break;
            
        case 1:
            SetJsonChannel();
            web_content[content_num].content_len = strlen((const char*)web_content[content_num].content);
            break;
            
        case 2:
            SetJsonCook();
            web_content[content_num].content_len = strlen((const char*)web_content[content_num].content);
            break;
            
        case 3:
        {
            char* ptr = strtok((char*)para, "=");
            if(ptr != NULL)
                ptr = strtok(NULL, "");
            
            int index = atoi(ptr);
            
            SetJsonSamples(index);
            web_content[content_num].content_len = strlen((const char*)web_content[content_num].content);
        }
            break;
    }    
}

uint8_t find_userReg_webContent(uint8_t * content_name, uint16_t * content_num, uint32_t * file_len, uint8_t* para)
{
	uint8_t i;
	uint8_t j;
	uint8_t ret = 0; // '0' means 'File Not Found'
	uint8_t chklen = strlen((char *)content_name);
	uint8_t idxnum[MAX_CONTENT_CALLBACK];
	uint8_t idxcnt;
		
	idxcnt = 0;
	for(i = 0; i < total_content_cnt; i++)
	{
		if(chklen == web_content[i].content_name_len)
		{
			idxnum[idxcnt] = i;
			idxcnt ++;
		}
	}
	
	
	for(i = 0; i < idxcnt; i++)
	{   
		j = idxnum[i];
		if(!strncmp((char *)content_name, (char *)web_content[j].content_name,chklen))        
		{   
            if(web_content[j].content_type == 0)
                gen_userReg_webContent(j, para);
            else if(web_content[j].content_type == 1)
                gen_userNand_webContent(j);
            
			*file_len = web_content[j].content_len;
			*content_num = j;
			ret = 1; // If the requested content found, ret set to '1' (Found)
			break;
		}
	}

	return ret;
}

uint8_t find_userReg_webContent_t(uint8_t * content_name, uint16_t * content_num, uint32_t * file_len, uint8_t* para)
{
	int16_t i;
	uint8_t ret = 0; // '0' means 'File Not Found'
	uint8_t chklen = strlen((char *)content_name)+1;

	for(i = 0; i < total_content_cnt; i++)
	{   
		if(!strncmp((char *)content_name, (char *)web_content[i].content_name,chklen))        
		{   
            if(web_content[i].content_type == 0)
                gen_userReg_webContent(i, para);
            else if(web_content[i].content_type == 1)
                gen_userNand_webContent(i);
            
			*file_len = web_content[i].content_len;
			*content_num = i;
			ret = 1; // If the requested content found, ret set to '1' (Found)
			break;
		}
	}

	return ret;
}


static void send_http_response_cgi(uint8_t s, uint8_t * buf, uint8_t * http_body, uint16_t file_len)
{
	uint16_t send_len = 0;

	send_len = sprintf((char *)buf, "%s%d\r\n\r\n%s", RES_CGIHEAD_OK, file_len, http_body);
	send(s, buf, send_len);
}

uint16_t read_userReg_webContent(uint16_t content_num, uint8_t * buf, uint32_t offset, uint16_t size)
{
	uint8_t * ptr;

	if(content_num > total_content_cnt) return 0;

	ptr = web_content[content_num].content;
	if(offset) ptr += offset;

    memcpy(buf, ptr, size);
	
	//*(buf+size) = 0; // Insert '/0' for indicates the 'End of String' (null terminated)

	//ret = strlen((void *)buf);    
	//return ret;
    return size;
}

static void send_http_response_body(uint8_t s, uint8_t * uri_name, uint8_t * buf, uint32_t start_addr, uint32_t file_len)
{
	int8_t get_seqnum;
	uint32_t send_len;

	uint8_t flag_datasend_end = 0;
	//uint32_t addr = 0;

	if((get_seqnum = getHTTPSequenceNum(s)) == -1) return; // exception handling; invalid number

	// Send the HTTP Response 'body'; requested file
	if(!HTTPSock_Status[get_seqnum].file_len) // ### Send HTTP response body: First part ###
	{
		if (file_len > DATA_BUF_SIZE - 1)
		{
			HTTPSock_Status[get_seqnum].file_start = start_addr;
			HTTPSock_Status[get_seqnum].file_len = file_len;
			send_len = DATA_BUF_SIZE - 1;

/////////////////////////////////////////////////////////////////////////////////////////////////
// ## 20141219 Eric added, for 'File object structure' (fs) allocation reduced (8 -> 1)
			memset(HTTPSock_Status[get_seqnum].file_name, 0x00, MAX_CONTENT_NAME_LEN);
			strcpy((char *)HTTPSock_Status[get_seqnum].file_name, (char *)uri_name);
/////////////////////////////////////////////////////////////////////////////////////////////////

		}
		else
		{
			// Send process end
			send_len = file_len;
		}
        
		//if(HTTPSock_Status[get_seqnum].storage_type == DATAFLASH) 
        //    addr = start_addr;
	}
	else // remained parts
	{
		//if(HTTPSock_Status[get_seqnum].storage_type == DATAFLASH)
		//{
		//	addr = HTTPSock_Status[get_seqnum].file_start + HTTPSock_Status[get_seqnum].file_offset;
		//}

		send_len = HTTPSock_Status[get_seqnum].file_len - HTTPSock_Status[get_seqnum].file_offset;

		if(send_len > DATA_BUF_SIZE - 1)
		{
			send_len = DATA_BUF_SIZE - 1;
			//HTTPSock_Status[get_seqnum]->file_offset += send_len;
		}
		else
		{
			// Send process end
			flag_datasend_end = 1;
		}
	}

/*****************************************************/
	//HTTPSock_Status[get_seqnum]->storage_type == NONE
	//HTTPSock_Status[get_seqnum]->storage_type == CODEFLASH
	//HTTPSock_Status[get_seqnum]->storage_type == SDCARD
	//HTTPSock_Status[get_seqnum]->storage_type == DATAFLASH
/*****************************************************/

	if(HTTPSock_Status[get_seqnum].storage_type == CODEFLASH)
	{
		if(HTTPSock_Status[get_seqnum].file_len) 
            start_addr = HTTPSock_Status[get_seqnum].file_start;
        
		read_userReg_webContent(start_addr, &buf[0], HTTPSock_Status[get_seqnum].file_offset, send_len);
	}
	else if(HTTPSock_Status[get_seqnum].storage_type == DATAFLASH)
	{
		// Data read from external data flash memory
		//read_from_flashbuf(addr, &buf[0], send_len);
		*(buf+send_len+1) = 0; // Insert '/0' for indicates the 'End of String' (null terminated)
	}
	else
	{
		send_len = 0;
	}
	// Requested content send to HTTP client
	if(send_len) 
        send(s, buf, send_len);
	else 
        flag_datasend_end = 1;

	if(flag_datasend_end)
	{
		HTTPSock_Status[get_seqnum].file_start = 0;
		HTTPSock_Status[get_seqnum].file_len = 0;
		HTTPSock_Status[get_seqnum].file_offset = 0;
		flag_datasend_end = 0;
	}
	else
	{
		HTTPSock_Status[get_seqnum].file_offset += send_len;
	}
}

/*
static void send_http_response_body(uint8_t s, uint8_t content_num, uint8_t * buf, uint32_t start_addr)
{
	int8_t get_seqnum;
	uint32_t send_len;

	uint8_t flag_datasend_end = 0;
	uint32_t addr = 0;

	if((get_seqnum = getHTTPSequenceNum(s)) == -1) return; // exception handling; invalid number

	// Send the HTTP Response 'body'; requested file
	if(!HTTPSock_Status[get_seqnum].file_len) // ### Send HTTP response body: First part ###
	{
		if (web_content[content_num].content_len > DATA_BUF_SIZE - 1)
		{
			HTTPSock_Status[get_seqnum].file_start = start_addr;
			HTTPSock_Status[get_seqnum].file_len = web_content[content_num].content_len;
			send_len = DATA_BUF_SIZE - 1;

/////////////////////////////////////////////////////////////////////////////////////////////////
// ## 20141219 Eric added, for 'File object structure' (fs) allocation reduced (8 -> 1)
			memset(HTTPSock_Status[get_seqnum].file_name, 0x00, MAX_CONTENT_NAME_LEN);
			strcpy((char *)HTTPSock_Status[get_seqnum].file_name, (char *)web_content[content_num].content_name);
/////////////////////////////////////////////////////////////////////////////////////////////////
		}
		else
		{
			// Send process end
			send_len = web_content[content_num].content_len;
		}
        
		if(HTTPSock_Status[get_seqnum].storage_type == DATAFLASH) 
            addr = start_addr;
	}
	else // remained parts
	{
		if(HTTPSock_Status[get_seqnum].storage_type == DATAFLASH)
		{
			addr = HTTPSock_Status[get_seqnum].file_start + HTTPSock_Status[get_seqnum].file_offset;
		}

		send_len = HTTPSock_Status[get_seqnum].file_len - HTTPSock_Status[get_seqnum].file_offset;

		if(send_len > DATA_BUF_SIZE - 1)
		{
			send_len = DATA_BUF_SIZE - 1;
			//HTTPSock_Status[get_seqnum]->file_offset += send_len;
		}
		else
		{
			// Send process end
			flag_datasend_end = 1;
		}
	}

////////////////////////////////////////////////////////
	//HTTPSock_Status[get_seqnum]->storage_type == NONE
	//HTTPSock_Status[get_seqnum]->storage_type == CODEFLASH
	//HTTPSock_Status[get_seqnum]->storage_type == SDCARD
	//HTTPSock_Status[get_seqnum]->storage_type == DATAFLASH
////////////////////////////////////////////////////////

	if(HTTPSock_Status[get_seqnum].storage_type == CODEFLASH)
	{
		if(HTTPSock_Status[get_seqnum].file_len) start_addr = HTTPSock_Status[get_seqnum].file_start;
		read_userReg_webContent(start_addr, &buf[0], HTTPSock_Status[get_seqnum].file_offset, send_len);
	}
	else if(HTTPSock_Status[get_seqnum].storage_type == DATAFLASH)
	{
		// Data read from external data flash memory
		//read_from_flashbuf(addr, &buf[0], send_len);        
		*(buf+send_len+1) = 0; // Insert '/0' for indicates the 'End of String' (null terminated)
	}
	else
	{
		send_len = 0;
	}
	// Requested content send to HTTP client
	if(send_len) send(s, buf, send_len);
	else flag_datasend_end = 1;

	if(flag_datasend_end)
	{
		HTTPSock_Status[get_seqnum].file_start = 0;
		HTTPSock_Status[get_seqnum].file_len = 0;
		HTTPSock_Status[get_seqnum].file_offset = 0;
		flag_datasend_end = 0;
	}
	else
	{
		HTTPSock_Status[get_seqnum].file_offset += send_len;
	}
}*/

bool conv_zim(char* uri_name)
{
    bool result = false;
    
    if(strcmp(uri_name, c_HTTP_Json_About) == 0)
        result = true;
    else if(strcmp(uri_name, c_HTTP_Json_Channel) == 0)
        result = true;
    else if(strcmp(uri_name, c_HTTP_Json_Cook) == 0)
        result = true;
    else if(strcmp(uri_name, c_HTTP_Json_Samples) == 0)
        result = true;
    else if(strcmp(uri_name, c_HTTP_Json_Configure) == 0)
        result = true;
    else if(strcmp(uri_name, c_HTTP_Json_Start) == 0)
        result = true;
    else if(strcmp(uri_name, c_HTTP_Json_Stop) == 0)
        result = true;
    return result;
}

bool getbody(char* uri, char* body)
{
    //int length = 0;
    char* ptrbody = strstr(uri, "\r\n\r\n") + 4;
    char* ptr = strtok(uri, "\r\n");
    
    while(true)
    {
        ptr = strtok(NULL, "\r\n");
        if(ptr == NULL) break;
        if(strncmp(ptr, c_HTTP_Content_Length, strlen(c_HTTP_Content_Length)) == 0)
        {
           ptr += strlen(c_HTTP_Content_Length);
           //length = atoi(ptr);           
           
           strcpy(body, ptrbody);          
           break;
        }
    }
    
    return true;
}

void replase(char* p, char s, char r)
{
    char* t = p;
    
    while(*t != '\0')
    {
        if(*t == s)
            *t = r;
        
        t++;
    }
}

void SetIpAddress(byte* addr, char* caddr)
{
    byte* paddr = addr;
    char* token = strtok(caddr, ".");
    
    while(token)
    {
        *paddr++ = atoi(token);
        token = strtok(NULL, ".");
    }
}

bool configure_zim(char* uri)
{    
    char body[200]; memset(body, 0, sizeof(body));
    
    if(!getbody(uri, body))
        return false;
    
    char ipaddr[20]; memset(ipaddr, 0, sizeof(ipaddr));
    char snmask[20]; memset(snmask, 0, sizeof(snmask));
    char gateway[20]; memset(gateway, 0, sizeof(gateway));
    byte flag = 0;
    
    char* token = strtok(body, "&");
    
    while(token)
    {
        if(strncmp(token, "hostName=", strlen("hostName=")) == 0)
        {
            token += strlen("hostName=");
            replase(token, '+', ' ');
            memset(m_pConnCfg->mEthernetCfg.hostname, 0, sizeof(m_pConnCfg->mEthernetCfg.hostname));
            strcpy((char*)m_pConnCfg->mEthernetCfg.hostname, token);
            flag |= 0x1;
        }
        else if(strncmp(token, "configureIPv4=", strlen("configureIPv4=")) == 0)
        {
            token += strlen("configureIPv4=");
            replase(token, '+', ' ');
            
            m_pConnCfg->mEthernetCfg.dhcp = true;
            
            if(strcmp(token, "Manually") == 0)
                m_pConnCfg->mEthernetCfg.dhcp = false;
            else if(strcmp(token, "Using DHCP") == 0)
                m_pConnCfg->mEthernetCfg.dhcp = true;
            
            flag |= 0x2;
        }
        else if(strncmp(token, "ipAddress=", strlen("ipAddress=")) == 0)
        {
            token += strlen("ipAddress=");
            strcpy(ipaddr, token);  
            
            flag |= 0x4;
        }
        else if(strncmp(token, "subnetMask=", strlen("subnetMask=")) == 0)
        {
            token += strlen("subnetMask=");
            strcpy(snmask, token);     
            
            flag |= 0x8;
        }
        else if(strncmp(token, "router=", strlen("router=")) == 0)
        {
            token += strlen("router=");
            strcpy(gateway, token);   
            
            flag |= 0x10;
        }
        
        token = strtok(NULL, "&");
    }
    
    if((flag & 0x1F) == 0x1F)
    {
        SetIpAddress(m_pConnCfg->mEthernetCfg.IpAddress, ipaddr);
        SetIpAddress(m_pConnCfg->mEthernetCfg.SubnetMask, snmask);
        SetIpAddress(m_pConnCfg->mEthernetCfg.Gateway, gateway);
        
        SaveConnCfgInfo();
    }
    else
        return false;
    
    return true;
}

bool start_zim(char* uri)
{    
    char body[200]; memset(body, 0, sizeof(body));

    if(!getbody(uri, body))
        return false;
    
    char s_ifreq[10]; memset(s_ifreq, 0, sizeof(s_ifreq));
	char s_mfreq[10]; memset(s_mfreq, 0, sizeof(s_mfreq));
    char s_ffreq[10]; memset(s_ffreq, 0, sizeof(s_ffreq));
    char s_density[10]; memset(s_density, 0, sizeof(s_density));
    char s_iteration[10]; memset(s_iteration, 0, sizeof(s_iteration));
    char s_irng[10]; memset(s_irng, 0, sizeof(s_irng));
    char s_maxidelay[10]; memset(s_maxidelay, 0, sizeof(s_maxidelay));
    char s_skip[10]; memset(s_skip, 0, sizeof(s_skip));
    char s_cycles[10]; memset(s_cycles, 0, sizeof(s_cycles));
    char s_started[30]; memset(s_started, 0, sizeof(s_started));
	
	
	
    byte flag = 0;
    
    char* token = strtok(body, "&");
	
    while(token)
    {
        if(strncmp(token, "initialFrequency=", strlen("initialFrequency=")) == 0)
        {
            token += strlen("initialFrequency=");
            strcpy(s_ifreq, token);
            
            flag++;
        }
		else if(strncmp(token, "finalFrequency=", strlen("finalFrequency=")) == 0)
        {
            token += strlen("finalFrequency=");
            strcpy(s_ffreq, token);
            
            flag++;
        }
        else if(strncmp(token, "middleFrequency=", strlen("middleFrequency=")) == 0)
        {
            token += strlen("middleFrequency=");
            strcpy(s_mfreq, token);
            
            flag++;
        }
        else if(strncmp(token, "density=", strlen("density=")) == 0)
        {
            token += strlen("density=");
            strcpy(s_density, token);  
            
            flag++;
        }
        else if(strncmp(token, "iteration=", strlen("iteration=")) == 0)
        {
            token += strlen("iteration=");
            strcpy(s_iteration, token);     
            
            flag++;
        }
        else if(strncmp(token, "currentRange=", strlen("currentRange=")) == 0)
        {
            token += strlen("currentRange=");
            strcpy(s_irng, token);   
            
            flag++;
        }
        else if(strncmp(token, "maxInitialDelay=", strlen("maxInitialDelay=")) == 0)
        {
            token += strlen("maxInitialDelay=");
            strcpy(s_maxidelay, token);   
            
            flag++;
        }
        else if(strncmp(token, "skip=", strlen("skip=")) == 0)
        {
            token += strlen("skip=");
            strcpy(s_skip, token);   
            
            flag++;
        }
        else if(strncmp(token, "cycles=", strlen("cycles=")) == 0)
        {
            token += strlen("cycles=");
            strcpy(s_cycles, token);   
            
            flag++;
        }
        else if(strncmp(token, "started=", strlen("started=")) == 0)
        {
            token += strlen("started=");
            strcpy(s_started, token);   
            
            flag++;
        }
        
        token = strtok(NULL, "&");
    }
    
	if(flag == 9)
	{
		s_mfreq[0] = '0';
		s_mfreq[1] = '.';
		s_mfreq[2] = '0';
		flag ++;
	}
	
    if(flag == 10)
    {
		if(m_pGlobalVar->mStatusInf.meis.eis_status.teststatus == DEF_EIS_TESTSTATUS_OVERT)
		{
			return false;
		}
	
        // To Do
        st_zim_eis_cond* peis_cond = &m_pGlobalVar->mStatusInf.meis.eis_cond;
        memset(peis_cond,0x0,sizeof(st_zim_eis_cond));
		
		peis_cond->density = atoi(s_density);
        peis_cond->iteration = atoi(s_iteration);
        peis_cond->iacrng = atoi(s_irng);
        peis_cond->ondelay = atof(s_maxidelay);
		peis_cond->skipcycle = atof(s_skip);   
		ushort cycle = atoi(s_cycles);
		
		peis_cond->initFreq = atof(s_ifreq);
		peis_cond->midFreq = atof(s_mfreq);
		peis_cond->finalFreq = atof(s_ffreq);
			
		
		if(peis_cond->midFreq == 0.0)
		{
			BuildFrequencies(peis_cond,cycle);
		}
		else
		{
			Build3Frequencies(peis_cond,cycle);
		}
        
		
        // To Do Generate
        
        
        //////////////////
        if(m_pGlobalVar->mStatusInf.devicecount == 0)
		{
            return false;
		}
		
        if(CheckThermoStat() == 1)
		{
			m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_OVERT;
			m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_ERROVERT;
			return false;
		}
		
        m_pGlobalVar->mStatusInf.meis.eis_status.rtc.tick = atoll(s_started);

		if(m_pGlobalVar->Start == 0)
		{
			m_pGlobalVar->Stop = DEF_EIS_LASTTESTSTATUS_NONE;
			memset(m_pGlobalVar->mStatusInf.meis.eis_item, 0x0,sizeof(st_zim_eis_item) * MAX_EIS_FREQ_CNT);
			memset(m_pGlobalVar->mStatusInf.meis.eis_raw, 0x0,sizeof(st_zim_eis_raw) * MAX_EIS_FREQ_CNT);
			
			m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_BEGIN;
			m_pGlobalVar->Start = 1;
		}
		else
		{
			return false;
		}
    }
    else
        return false;
    
    return true;
}

bool stop_zim(char* uri)
{    
    if(m_pGlobalVar->mStatusInf.devicecount == 0)
    {
        return false;
    }
    if(m_pGlobalVar->Start > 0)
    {
        m_pGlobalVar->bCalib = 0;
        if(m_pGlobalVar->mStatusInf.meis.eis_status.teststatus == DEF_EIS_TESTSTATUS_RUN)
        {
			m_pGlobalVar->mStatusInf.meis.eis_status.teststatus = DEF_EIS_TESTSTATUS_STOP;
			m_pGlobalVar->Stop = DEF_EIS_LASTTESTSTATUS_STOP;
            m_pGlobalVar->mStatusInf.meis.eis_status.status = DEF_EIS_STATUS_EISSTOP;
            OnLed4(false);
        }
    }
    else
        return false;
    
    return true;
}

void http_process_handler(uint8_t s, st_http_request * p_http_request)
{
    uint8_t * uri_name;
	uint32_t content_addr = 0;
	uint16_t content_num = 0;
	uint32_t file_len = 0;

	uint8_t uri_buf[MAX_URI_SIZE]={0x00, };
    uint8_t uri_par[MAX_URI_PARASIZE] = {0x00, };

	uint16_t http_status;
	int8_t get_seqnum;
	uint8_t content_found;
    
    if((get_seqnum = getHTTPSequenceNum(s)) == -1) return; // exception handling; invalid number
    
    http_status = 0;
	http_response = (uint8_t*)g_HTTP_SendMsgBuffer;
	file_len = 0;
    
    switch (p_http_request->METHOD)
	{
        case METHOD_ERR :
			http_status = STATUS_BAD_REQ;
			send_http_response_header(s, 0, 0, http_status);
			break;
            
        case METHOD_HEAD :
		case METHOD_GET :
			get_http_uri_name(p_http_request->URI, uri_buf, uri_par);
            if(conv_zim((char*)uri_buf))
                strcat((char*)uri_buf, ".json");
            
            uri_name = uri_buf;

			if (!strcmp((char *)uri_name, "/")) 
                strcpy((char *)uri_name, _html ? INITIAL_WEBPAGE_L : INITIAL_WEBPAGE);	// If URI is "/", respond by index.html
			if (!strcmp((char *)uri_name, "m")) 
                strcpy((char *)uri_name, _html ? M_INITIAL_WEBPAGE_L : M_INITIAL_WEBPAGE);
			if (!strcmp((char *)uri_name, "mobile")) 
                strcpy((char *)uri_name, _html ? MOBILE_INITIAL_WEBPAGE_L : MOBILE_INITIAL_WEBPAGE);
			find_http_uri_type(&p_http_request->TYPE, uri_name);	// Checking requested file types (HTML, TEXT, GIF, JPEG and Etc. are included)
            
            if(p_http_request->TYPE == PTYPE_CGI)
			{
				content_found = http_get_cgi_handler(uri_name, (uint8_t*)g_HTTP_SendMsgBuffer, &file_len);
				if(content_found && (file_len <= (DATA_BUF_SIZE-(strlen(RES_CGIHEAD_OK)+8))))
				{
					send_http_response_cgi(s, http_response, (uint8_t*)g_HTTP_SendMsgBuffer, (uint16_t)file_len);
				}
				else
				{
					send_http_response_header(s, PTYPE_CGI, 0, STATUS_NOT_FOUND);
				}
			}            
			else
			{
				// Find the User registered index for web content
				if(find_userReg_webContent(uri_buf, &content_num, &file_len, uri_par))
				{
					content_found = 1; // Web content found in code flash memory
					content_addr = (uint32_t)content_num;
					HTTPSock_Status[get_seqnum].storage_type = CODEFLASH;
				}
				// Not CGI request, Web content in 'SD card' or 'Data flash' requested
				/*if(0 // Read content from Dataflash)
				{
					content_found = 1;
					HTTPSock_Status[get_seqnum].storage_type = DATAFLASH;
					//; // To do
				}
				else
				{
					content_found = 0; // fail to find content
				}*/

				if(!content_found)
				{
					http_status = STATUS_NOT_FOUND;
				}
				else
				{
					http_status = STATUS_OK;
				}

				// Send HTTP header
				if(http_status)
				{
					send_http_response_header(s, p_http_request->TYPE, file_len, http_status);
				}

				// Send HTTP body (content)
				if(http_status == STATUS_OK)
				{
					send_http_response_body(s, uri_name, http_response, content_addr, file_len);
				}
			}
			break;
            
        case METHOD_POST :
			mid((char *)p_http_request->URI, "/", " HTTP", (char *)uri_buf);
            if(conv_zim((char*)uri_buf))
                strcat((char*)uri_buf, ".zim");
			uri_name = uri_buf;
			find_http_uri_type(&p_http_request->TYPE, uri_name);	// Check file type (HTML, TEXT, GIF, JPEG are included)

			if(p_http_request->TYPE == PTYPE_CGI)	// HTTP POST Method; CGI Process
			{
				//content_found = http_post_cgi_handler(uri_name, p_http_request, http_response, &file_len);

				if(content_found && (file_len <= (DATA_BUF_SIZE-(strlen(RES_CGIHEAD_OK)+8))))
				{
					//send_http_response_cgi(s, pHTTP_TX, http_response, (uint16_t)file_len);

					// Reset the H/W for apply to the change configuration information
					//if(content_found == HTTP_RESET) 
                    //    HTTPServer_ReStart();
				}
				else
				{
					send_http_response_header(s, PTYPE_CGI, 0, STATUS_NOT_FOUND);
				}
			}
            else if(p_http_request->TYPE == PTYPE_ZIM)
            {
                content_found = 0;
                
                if(strcmp((const char*)uri_name, "configure.zim") == 0)
                {
                    if(configure_zim((char*)p_http_request->URI))
                        send_http_response_header(s, p_http_request->TYPE, 0, STATUS_OK);
                    else
                        send_http_response_header(s, 0, 0, STATUS_NOT_MODIF);
                }
                else if(strcmp((const char*)uri_name, "start.zim") == 0)
                {
                    if(start_zim((char*)p_http_request->URI))
                        send_http_response_header(s, p_http_request->TYPE, 0, STATUS_OK);
                    else
                        send_http_response_header(s, 0, 0, STATUS_NOT_MODIF);
                }
                else if(strcmp((const char*)uri_name, "stop.zim") == 0)
                {
                    if(stop_zim((char*)p_http_request->URI))
                        send_http_response_header(s, p_http_request->TYPE, 0, STATUS_OK);
                    else
                        send_http_response_header(s, 0, 0, STATUS_NOT_MODIF);
                }
                else
                {
                    send_http_response_header(s, 0, 0, STATUS_NOT_FOUND);
                }
            }
            else if(p_http_request->TYPE == PTYPE_SIF)
            {
                send_http_response_header(s, p_http_request->TYPE, 0, STATUS_OK);
            }
			else	// HTTP POST Method; Content not found
			{
				send_http_response_header(s, 0, 0, STATUS_NOT_FOUND);
			}
			break;
    }
}

void SendJson(char* pdata)
{
    SendString(HTTP_SOCKET, (char*)c_HTTP_200_OK);
//	if (GetStatus(HTTP_SOCKET) != Sn_SR_ESTABLISHED) return;        
    SendString(HTTP_SOCKET, (char*)c_HTTP_Access_All);
//	if (GetStatus(HTTP_SOCKET) != Sn_SR_ESTABLISHED) return;        
    SendString(HTTP_SOCKET, (char*)c_HTTP_Content_Json);
//	if (GetStatus(HTTP_SOCKET) != Sn_SR_ESTABLISHED) return;        
    SendString(HTTP_SOCKET, (char*)c_HTTP_EmptyLine);
//	if (GetStatus(HTTP_SOCKET) != Sn_SR_ESTABLISHED) return;        
    SendString(HTTP_SOCKET, pdata);
}

void HTTP_Server(void)
{
    uint8 u8SocketStatus;
    int16 s16RecvMsgSize;      
    http_request = (st_http_request*)g_HTTP_RecvMsgBuffer;
    parsed_http_request = (st_http_request*)g_HTTP_SendMsgBuffer;
    
    u8SocketStatus = GetStatus(HTTP_SOCKET);
    
    switch(u8SocketStatus)
    {
        case Sn_SR_CLOSED :
            if(socket(HTTP_SOCKET, Sn_MR_TCP, HTTP_PORT, 0))
            {
                if(!listen(HTTP_SOCKET))
                    close(HTTP_SOCKET);
            }
            else
            {
                close(HTTP_SOCKET);
            }
                    
            break;
            
        case Sn_SR_LISTEN :
			if(m_pGlobalVar->LedBusyStat == 0)
			{
				m_pGlobalVar->LedBusy = true;
			}
            break;
            
        case Sn_SR_ESTABLISHED :     
            // HTTP Process states
			if(m_pGlobalVar->LedBusyStat == 0)
			{
				m_pGlobalVar->LedBusy = false;
			}
            switch(HTTPSock_Status[HTTP_SOCKET].sock_status)
            {
                case STATE_HTTP_IDLE :
                    s16RecvMsgSize = Socket_Recv(HTTP_SOCKET, (char*)g_HTTP_RecvMsgBuffer, HTTP_RX_BUFFER_SIZE); //DATA_BUF_SIZE
                    
                    if (s16RecvMsgSize > 0) 
                    {
                        *(((uint8_t *)http_request) + s16RecvMsgSize) = '\0';
                    
                        parse_http_request(parsed_http_request, (uint8_t *)g_HTTP_RecvMsgBuffer);
                        
                        http_process_handler(HTTP_SOCKET, parsed_http_request);
                        
                        if(HTTPSock_Status[HTTP_SOCKET].file_len > 0) 
                            HTTPSock_Status[HTTP_SOCKET].sock_status = STATE_HTTP_RES_INPROC;
						else 
                            HTTPSock_Status[HTTP_SOCKET].sock_status = STATE_HTTP_RES_DONE; // Send the 'HTTP response' end
                    }
                    break;
                    
                case STATE_HTTP_RES_INPROC :
					// Repeat: Send the remain parts of HTTP responses
					// Repeatedly send remaining data to client
					send_http_response_body(HTTP_SOCKET, 0, http_response, 0, 0);

					if(HTTPSock_Status[HTTP_SOCKET].file_len == 0) 
                        HTTPSock_Status[HTTP_SOCKET].sock_status = STATE_HTTP_RES_DONE;
					break;
                    
                case STATE_HTTP_RES_DONE :
					// Socket file info structure re-initialize
					HTTPSock_Status[HTTP_SOCKET].file_len = 0;
					HTTPSock_Status[HTTP_SOCKET].file_offset = 0;
					HTTPSock_Status[HTTP_SOCKET].file_start = 0;
					HTTPSock_Status[HTTP_SOCKET].sock_status = STATE_HTTP_IDLE;

					disconnect(HTTP_SOCKET);
					break;
				default :
					break;
                    
            }
            break;
       	case Sn_SR_CLOSEWAIT:  
			disconnect(HTTP_SOCKET); //close(HTTP_SOCKET);
			break;
/*		
        case Sn_SR_FINWAIT:
		case Sn_SR_CLOSING:
		case Sn_SR_TIMEWAIT:
		case Sn_SR_LASTACK:
			close(HTTP_SOCKET); // Force closing the socket 
			break;
		*/
		default: 
            break;
    }
}