#include "httpUtil.h"

uint8_t http_get_cgi_handler(uint8_t * uri_name, uint8_t * buf, uint32_t * file_len)
{
	uint8_t ret = HTTP_OK;
	uint16_t len = 0;

	/*if(predefined_get_cgi_processor(uri_name, buf, &len))
	{
		;
	}
	else*/ if(strcmp((const char *)uri_name, "example.cgi") == 0)
	{
		// To do
		;
	}
	else
	{
		// CGI file not found
		ret = HTTP_FAILED;
	}

	if(ret)	*file_len = len;
	return ret;
}

/*
uint8_t http_post_cgi_handler(uint8_t * uri_name, st_http_request * p_http_request, uint8_t * buf, uint32_t * file_len)
{
	uint8_t ret = HTTP_OK;
	uint16_t len = 0;
	uint8_t val = 0;

	if(predefined_set_cgi_processor(uri_name, p_http_request->URI, buf, &len))
	{
		;
	}
	else if(strcmp((const char *)uri_name, "example.cgi") == 0)
	{
		// To do
		val = 1;
		len = sprintf((char *)buf, "%d", val);
	}
	else
	{
		// CGI file not found
		ret = HTTP_FAILED;
	}

	if(ret)	*file_len = len;
	return ret;
}*/

double mRounding( double x, int digit)
{
	double result = floor(x * pow(10.0, (double)digit) + 0.5) / pow(10.0, (double)digit);
	return result;
}

int GetNumberOfFrequncies(double finalFrequency, double initialFrequency, int density)
{
    bool isInitLog = fabs(log10(initialFrequency)) == (double)((int)fabs(log10(initialFrequency)));
    bool isFinalLog = fabs(log10(finalFrequency)) == (double)((int)fabs(log10(finalFrequency)));
    
    int Factor = (isInitLog && isFinalLog) ? 1 : 0;
    
    //double x = 0.5 + fabs(log10(finalFrequency) - log10(initialFrequency)) * density;
	double x = fabs(log10(finalFrequency) - log10(initialFrequency)) * density;
    
    return Factor + (int)ceil(x); //mRounding(x,0);
}

double RoundToSignificantDigits(double d, int digits)
{
    if (d == 0)
        return 0;

    double scale = pow(10.0, floor(log10(fabs(d))) + 1);
    return scale * mRounding(d / scale, digits);
}

void Build3Frequencies(st_zim_eis_cond* peis_cond,ushort cycle)
{

	if(peis_cond->initFreq < MIN_EIS_FREQUENCY)
		peis_cond->initFreq = MIN_EIS_FREQUENCY;
	if(peis_cond->initFreq > MAX_EIS_FREQUENCY)
		peis_cond->initFreq = MAX_EIS_FREQUENCY;
	
	if(peis_cond->midFreq > MAX_EIS_FREQUENCY)
		peis_cond->midFreq = MAX_EIS_FREQUENCY;
	
	if(peis_cond->finalFreq < MIN_EIS_FREQUENCY)
		peis_cond->finalFreq = MIN_EIS_FREQUENCY;
	if(peis_cond->finalFreq > MAX_EIS_FREQUENCY)
		peis_cond->finalFreq = MAX_EIS_FREQUENCY;
	
	peis_cond->item[0].cycle = cycle;
	peis_cond->item[0].freq = RoundToSignificantDigits(peis_cond->initFreq, 6);
	
	peis_cond->item[1].cycle = cycle;
	peis_cond->item[1].freq = RoundToSignificantDigits(peis_cond->midFreq, 6);
	
	peis_cond->item[2].cycle = cycle;
	peis_cond->item[2].freq = RoundToSignificantDigits(peis_cond->finalFreq, 6);
	
	peis_cond->count = 3;
}

void BuildFrequencies(st_zim_eis_cond* peis_cond,ushort cycle)
{
	int i;
    int point = 0;
	int iteration = MAX(peis_cond->iteration,1);
	int density = MAX(peis_cond->density,0);
	double logIncrement = 1.0 / density;
	double dfreq;
	
	int aPoints;
	int maxPoints;
	
	if(peis_cond->initFreq < MIN_EIS_FREQUENCY)
		peis_cond->initFreq = MIN_EIS_FREQUENCY;
	if(peis_cond->initFreq > MAX_EIS_FREQUENCY)
		peis_cond->initFreq = MAX_EIS_FREQUENCY;
	
	if(peis_cond->finalFreq < MIN_EIS_FREQUENCY)
		peis_cond->finalFreq = MIN_EIS_FREQUENCY;
	if(peis_cond->finalFreq > MAX_EIS_FREQUENCY)
		peis_cond->finalFreq = MAX_EIS_FREQUENCY;
	
	if(peis_cond->initFreq == peis_cond->finalFreq )
	{
		aPoints = 1;
		logIncrement = 0;
	}
	else 
	{
		if(density == 0)
		{
			aPoints = 2;
			logIncrement = peis_cond->finalFreq - peis_cond->initFreq;
		}
		else
		{
			aPoints = GetNumberOfFrequncies(peis_cond->initFreq, peis_cond->finalFreq, density);
			if(peis_cond->initFreq > peis_cond->finalFreq )
			{
				logIncrement = -logIncrement;
			}
		}
	}
	
	maxPoints = aPoints * iteration;
	maxPoints = MIN(maxPoints,MAX_EIS_FREQ_CNT);
	
	point = 0;
	while(point < maxPoints)
	{
		i = 0;
		
		while(i < aPoints)
		{
			if(point >= MAX_EIS_FREQ_CNT) break;
			if(density == 0) dfreq = peis_cond->initFreq + i * logIncrement;
			else dfreq = pow(10.0, log10(peis_cond->initFreq) + i * logIncrement);

			if(dfreq < MIN_EIS_FREQUENCY)
				dfreq = MIN_EIS_FREQUENCY;
			if(dfreq > MAX_EIS_FREQUENCY)
				dfreq = MAX_EIS_FREQUENCY;
			
			dfreq = RoundToSignificantDigits(dfreq, 6);
			peis_cond->item[point].cycle = cycle;
			peis_cond->item[point].freq = dfreq;
			point++;
			i++;
		}
	}
	
	peis_cond->count = point;
}