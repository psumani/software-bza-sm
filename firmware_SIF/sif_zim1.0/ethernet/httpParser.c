#include "httpParser.h"

void parse_http_request(
	st_http_request * request, 	/**< request to be returned */
	uint8_t * buf				/**< pointer to be parsed */
	)
{
    char * nexttok;
    nexttok = strtok((char*)buf," ");
    
    if(!nexttok)
    {
        request->METHOD = METHOD_ERR;
        return;
    }
    
    if(!strcmp(nexttok, "GET") || !strcmp(nexttok,"get"))
    {
        request->METHOD = METHOD_GET;
        nexttok = strtok(NULL," ");
    }
    else if (!strcmp(nexttok, "HEAD") || !strcmp(nexttok,"head"))
    {
        request->METHOD = METHOD_HEAD;
        nexttok = strtok(NULL," ");
    }
    else if (!strcmp(nexttok, "POST") || !strcmp(nexttok,"post"))
    {
        nexttok = strtok(NULL,"\0");
        request->METHOD = METHOD_POST;
    }
    else
    {
        request->METHOD = METHOD_ERR;
    }

    if(!nexttok)
    {
        request->METHOD = METHOD_ERR;
        return;
    }
    
    strcpy((char *)request->URI, nexttok);
}

uint8_t get_http_uri_name(uint8_t * uri, uint8_t * uri_buf, uint8_t * uri_para)
{
	uint8_t * uri_ptr; 
    uint8_t * uri_para_ptr;
	if(!uri) return 0;

	strcpy((char *)uri_buf, (char *)uri);

	uri_ptr = (uint8_t *)strtok((char *)uri_buf, " ?");
    uri_para_ptr = (uint8_t *)strtok(NULL, "");

	if(strcmp((char *)uri_ptr,"/")) uri_ptr++;
	strcpy((char *)uri_buf, (char *)uri_ptr);
    strcpy((char *)uri_para, (char *)uri_para_ptr);

	return 1;
}

void find_http_uri_type(
	uint8_t * type, 	/**< type to be returned */
	uint8_t * buff		/**< file name */
	) 
{
	/* Decide type according to extension*/

	char * buf;
	buf = (char *)buff;

	if 	(strstr(buf, ".htm")	|| strstr(buf, ".html"))	*type = PTYPE_HTML;
	else if (strstr(buf, ".gif"))							*type = PTYPE_GIF;
	else if (strstr(buf, ".text") 	|| strstr(buf,".txt"))	*type = PTYPE_TEXT;
	else if (strstr(buf, ".jpeg") 	|| strstr(buf,".jpg"))	*type = PTYPE_JPEG;
	else if (strstr(buf, ".swf")) 							*type = PTYPE_FLASH;
	else if (strstr(buf, ".cgi") 	|| strstr(buf,".CGI"))	*type = PTYPE_CGI;
	else if (strstr(buf, ".json") 	|| strstr(buf,".JSON"))	*type = PTYPE_JSON;
	else if (strstr(buf, ".js") 	|| strstr(buf,".JS"))	*type = PTYPE_JS;
	else if (strstr(buf, ".CGI") 	|| strstr(buf,".cgi"))	*type = PTYPE_CGI;
	else if (strstr(buf, ".xml") 	|| strstr(buf,".XML"))	*type = PTYPE_XML;
	else if (strstr(buf, ".css") 	|| strstr(buf,".CSS"))	*type = PTYPE_CSS;
	else if (strstr(buf, ".png") 	|| strstr(buf,".PNG"))	*type = PTYPE_PNG;
	else if (strstr(buf, ".ico") 	|| strstr(buf,".ICO"))	*type = PTYPE_ICO;
	else if (strstr(buf, ".ttf") 	|| strstr(buf,".TTF"))	*type = PTYPE_TTF;
	else if (strstr(buf, ".otf") 	|| strstr(buf,".OTF"))	*type = PTYPE_OTF;
	else if (strstr(buf, ".woff") 	|| strstr(buf,".WOFF"))	*type = PTYPE_WOFF;
    else if (strstr(buf, ".woff2") 	|| strstr(buf,".WOFF2"))*type = PTYPE_WOFF2;
	else if (strstr(buf, ".eot") 	|| strstr(buf,".EOT"))	*type = PTYPE_EOT;
	else if (strstr(buf, ".svg") 	|| strstr(buf,".SVG"))	*type = PTYPE_SVG;
    else if (strstr(buf, ".zim")    || strstr(buf,".ZIM"))  *type = PTYPE_ZIM;
    else if (strstr(buf, "update?target=sif"))               *type = PTYPE_SIF;
	else            										*type = PTYPE_ERR;
}

void mid(char* src, char* s1, char* s2, char* sub)
{
	char* sub1;
	char* sub2;
	uint16_t n;

	sub1=strstr((char*)src,(char*)s1);
	sub1+=strlen((char*)s1);
	sub2=strstr((char*)sub1,(char*)s2);

	n=sub2-sub1;
	strncpy((char*)sub,(char*)sub1,n);
	sub[n]='\0';
}