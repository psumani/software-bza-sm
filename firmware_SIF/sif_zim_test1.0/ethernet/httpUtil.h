#ifndef _HTTPUTIL_H_
#define _HTTPUTIL_H_

#include "sif_zim.h"

uint8_t http_get_cgi_handler(uint8_t * uri_name, uint8_t * buf, uint32_t * file_len);
//uint8_t http_post_cgi_handler(uint8_t * uri_name, st_http_request * p_http_request, uint8_t * buf, uint32_t * file_len);

uint8_t predefined_get_cgi_processor(uint8_t * uri_name, uint8_t * buf, uint16_t * len);
uint8_t predefined_set_cgi_processor(uint8_t * uri_name, uint8_t * uri, uint8_t * buf, uint16_t * len);
void Build3Frequencies(st_zim_eis_cond* peis_cond,ushort cycle);
void BuildFrequencies(st_zim_eis_cond* peis_cond,ushort cycle);

#endif