#include "sif_zim.h"

char getNumber(int n)
{
    if(n>9) 
    {
        return n-10+'a';
    } 
    else 
    {
        return n+'0';
    }
}

void reverse(char* s) 
{
    char *j;
    int c;

    j = s + strlen(s) - 1;
    while(s < j) 
    {
        c = *s;
        *s++ = *j;
        *j-- = c;
    }
}

void itoa(int n, char * s, int base_n)
{
     int i, sign;
 
     if ((sign = n) < 0)  /* record sign */
         n = -n;          /* make n positive */
     i = 0;
     do {       /* generate digits in reverse order */
         s[i++] = getNumber(n % base_n);   /* get next digit */
     } while ((n /= base_n) > 0);     /* delete it */
     if (sign < 0)
         s[i++] = '-';
     s[i] = '\0';     
     reverse(s);
}

void VersionToString(char* cstr, ushort ver)
{
    char temp[20]; memset(temp, 0, sizeof(temp));
    itoa(ver, temp, 10);
    
    int offset = 0;
    for(int i = 0; i < strlen(temp); i++)
    {
        *(cstr + offset++) = temp[i];
        *(cstr + offset++) = '.';
    }
    
    cstr[strlen(cstr) - 1] = 0;
}

void GenZimSerialNumber(char* src, byte* cModel, uint nSerial)
{
    char* pTemp = src;
    int index = 0;
    pTemp[index++] = 'I';
    pTemp[index++] = 'M';
    pTemp[index++] = (char)cModel[0];
    pTemp[index++] = (char)cModel[1];
    for(int i = 0; i < 8; i++)
    {
        int nTemp = (nSerial >> (28 - i * 4)) & 0xF;
        pTemp[index++] = getNumber(nTemp);
    }
}

void GetModelStr(char* src,byte model)
{
    switch(model)
    {
        case DEV_UNKNOWN: strcpy(src, "Unknown");
            break;
		case DEV_BZA1000:
			strcpy(src, "BZA1000");
            break;
        case DEV_BZA100:
			strcpy(src, "BZA100");
            break;
		case DEV_BZA100HZ:
			strcpy(src, "BZA100HZ");
            break;
		case DEV_BZA100HC:
			strcpy(src, "BZA100HC");
            break;
        default: strcpy(src, "Unknown");
            break;
    }
}

void GetVRangeStr(char* src,byte model)
{
    switch(model)
    {
        case DEV_BZA1000:
			strcpy(src, "1000V/100V");
            break;
        case DEV_BZA100:
		case DEV_BZA100HZ:
		case DEV_BZA100HC:
			strcpy(src, "100V/10V");
            break;
        default: 
			strcpy(src, "1000V/100V");
            break;
    }
}

void GetState(char* src, ushort state)
{
    switch(state)
    {
        case DEF_EIS_TESTSTATUS_NONE: strcpy(src, "Idle");
            break;
        case DEF_EIS_TESTSTATUS_RUN: strcpy(src, "Running");
            break;
        case DEF_EIS_TESTSTATUS_FIN: strcpy(src, "Finished");
            break;
        case DEF_EIS_TESTSTATUS_STOP: strcpy(src, "Stopped");
            break;
        case DEF_EIS_TESTSTATUS_NCRUN: strcpy(src, "RunningNoiseLevel");
            break;
		case DEF_EIS_TESTSTATUS_OVERT: strcpy(src, "TooHotFET");
            break;
		case DEF_EIS_TESTSTATUS_FAIL: strcpy(src, "Failed");
            break;
		case DEF_EIS_TESTSTATUS_NOTRDY: strcpy(src, "NotYetReady");
            break;
		case DEF_EIS_TESTSTATUS_NOTCAL: strcpy(src, "NotYetCalibrated");
            break;
		case DEF_EIS_TESTSTATUS_NOZIM: strcpy(src, "Failed");
            break;
		case DEF_EIS_TESTSTATUS_ERRCOMMZIM: strcpy(src, "Failed");
            break;
		case DEF_EIS_TESTSTATUS_CONTFAIL: strcpy(src, "Failed");
            break;
        default: strcpy(src, "None");
            break;
    }
}

void GetStepSample(char* src, st_zim_eis_raw_val* pRealVal)
{
    sprintf(src, JSON_CHANNEL_VAL1, pRealVal->vac, pRealVal->iac);
}

double GetLastValue(st_zim_eis_zdata* pdst, st_zim_eis_item* psrc, st_zim_eis_status* pstatus, short* pCount)
{
    double lastFreq = NAN;
    pdst->img = NAN;
    pdst->mag = NAN;
    pdst->phase = NAN;
    pdst->real = NAN;
    
    short lastStep = -1;
    ushort state = pstatus->teststatus;
    ushort currentStep = pstatus->freqindex;
    ushort zdatacount = pstatus->freqcount;
    
	if(zdatacount > 0) 
	{
		if(state == DEF_EIS_TESTSTATUS_RUN || state == DEF_EIS_TESTSTATUS_STOP)
			lastStep = currentStep - 1;
		else 
			lastStep = currentStep;
	}
    
	
    if(psrc != NULL && lastStep < zdatacount && lastStep >= 0)
    {
        lastFreq = psrc[lastStep].info.freq;
        pdst->img = psrc[lastStep].zdata.img;
        pdst->mag = psrc[lastStep].zdata.mag;
        pdst->phase = psrc[lastStep].zdata.phase;
        pdst->real = psrc[lastStep].zdata.real;
    }
    *pCount = lastStep + 1;
    return lastFreq;    
}

double GetRtdData(st_zim_rtd_data* pdata)
{
    return (pdata->fault != 0 || pdata->adcval == 0x4000) ? NAN : pdata->Tvalue;
}

double GetIdc(st_zim_eis_item* pitem)
{
    double result;
    
    ushort idx = pitem->info.iacrng / 2;
    ushort factor = pitem->info.iacrng % 2;
    
    result = iRange[idx];
    result = (factor == 0) ? result * 0.5 : result * 0.1;
    
    return result;
}

////// 2019-03-22 Json Data
void SetJsonAbout(void)
{
	int type = m_pSysConfig->mZimCfg.cModel[0]-0x30;
	
    memset(m_pJsonAbout, 0x0, MAX_JSON_ABOUT);
	
	char strModel[30]; GetModelStr(strModel,type);
	char strVRng[20]; GetVRangeStr(strVRng,type);
    char strmacaddr[20]; memset(strmacaddr, 0, sizeof(strmacaddr));
    byte macaddr[6]; GetSHAReg(macaddr);
    sprintf(strmacaddr, "%02X:%02X:%02X:%02X:%02X:%02X", macaddr[0], macaddr[1], macaddr[2], macaddr[3], macaddr[4], macaddr[5]);
    char stripaddr[20]; memset(stripaddr, 0, sizeof(stripaddr));
    byte ipaddr[4]; GetSIPReg(ipaddr);    
    sprintf(stripaddr, "%d.%d.%d.%d", ipaddr[0], ipaddr[1], ipaddr[2], ipaddr[3]);
    char strsubnetmask[20]; memset(strsubnetmask, 0, sizeof(strsubnetmask));
    byte subnetmask[4]; GetSUBVar(subnetmask);    
    sprintf(strsubnetmask, "%d.%d.%d.%d", subnetmask[0], subnetmask[1], subnetmask[2], subnetmask[3]);
    char strgw[20]; memset(strgw, 0, sizeof(strgw));
    byte gw[4]; GetGWReg(gw);    
    sprintf(strgw, "%d.%d.%d.%d", gw[0], gw[1], gw[2], gw[3]);   
    char sifbv[10]; memset(sifbv, 0, sizeof(sifbv));
    sprintf(sifbv, "%d.%d.%d.%d", m_pSysConfig->mSIFCfg.BoardVersion.Major, m_pSysConfig->mSIFCfg.BoardVersion.Minor, 
            m_pSysConfig->mSIFCfg.BoardVersion.Revision, m_pSysConfig->mSIFCfg.BoardVersion.Build);
    char siffv[10]; memset(siffv, 0, sizeof(siffv));
    sprintf(siffv, "%d.%d.%d.%d", m_pSysConfig->mSIFCfg.FirmwareVersion.Major, m_pSysConfig->mSIFCfg.FirmwareVersion.Minor, 
            m_pSysConfig->mSIFCfg.FirmwareVersion.Revision, m_pSysConfig->mSIFCfg.FirmwareVersion.Build);
    char sifsn[13]; memset(sifsn, 0, sizeof(sifsn)); memcpy(sifsn, m_pSysConfig->mSIFCfg.Serial, ID_LENGTH);
    char zimbv[10]; memset(zimbv, 0, sizeof(zimbv));
    VersionToString(zimbv, m_pSysConfig->mZimCfg.ZimBDVersion);
    char zimfv[10]; memset(zimfv, 0, sizeof(zimfv));
    VersionToString(zimfv, m_pSysConfig->mZimCfg.ZimFWVersion);
    //m_pSysConfig->mZimCfg.cModel
    char zimsn[15]; memset(zimsn, 0, sizeof(zimsn));    
    GenZimSerialNumber(zimsn, m_pSysConfig->mZimCfg.cModel, m_pSysConfig->mZimCfg.nSerial);
    char dhcp[15]; memset(dhcp, 0, sizeof(dhcp));
    if(m_pConnCfg->mEthernetCfg.dhcp) strcpy(dhcp, "Using DHCP"); else strcpy(dhcp, "Manually");
    sprintf(m_pJsonAbout, JSON_ABOUT, (char*)m_pConnCfg->mEthernetCfg.hostname, strModel, strVRng, (int)m_pGlobalVar->ranges.mSafety.MaxPower,strmacaddr, dhcp, stripaddr, strsubnetmask, strgw, HTTP_PORT, sifbv, siffv, sifsn, zimbv, zimfv, zimsn);  
    
    int length = strlen(m_pJsonAbout);
}

short ResultCount;
////// 2019-04-03 Json Data
void SetJsonChannel(void)
{
    memset(m_pJsonChannel, 0x0, MAX_JSON_CHANNEL);
    
    st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
    st_zim_eis_status* peisSta = &peis->eis_status;
    st_zim_rtd_data* prtddata = &m_pGlobalVar->mStatusInf.mdevice.adc_rtd.data;
    st_zim_adc_vdc* padcvdc = &m_pGlobalVar->mStatusInf.mdevice.adc_vdc;
    
    char state[20]; memset(state, 0, sizeof(state)); GetState(state, peisSta->teststatus);
    double elapsedTime = peisSta->runTimeStamp / 1000.0;
    double progress = (peisSta->freqcount == 0) ? 0 : peisSta->freqindex / (double)peisSta->freqcount * 100;
    double stepFrequency = peisSta->freq;
    sprintf(m_pJsonChannel, JSON_CHANNEL_VAL0, state, elapsedTime, progress, stepFrequency);
    strcat(m_pJsonChannel, "[");
    
    if(peisSta->teststatus == 1 || peisSta->teststatus == 2 || peisSta->teststatus == 3)
    {
        for(int i = 0; i < MAX_EIS_RT_RAW_POINT; i++)
        {
            char stepSample[64]; memset(stepSample, 0, sizeof(stepSample)); GetStepSample(stepSample, &peisSta->Real_val[i]);
            strcat(m_pJsonChannel, stepSample);
            
            if(i < (MAX_EIS_RT_RAW_POINT - 1))
                strcat(m_pJsonChannel, ",");
        }        
    }
    strcat(m_pJsonChannel, "],");
    
    st_zim_eis_zdata lastImpedance;
	ResultCount = 0;
    double lFreq = GetLastValue(&lastImpedance, peis->eis_item, peisSta,&ResultCount);
    double lZr = lastImpedance.real;
    double lZi = lastImpedance.img;
    double lZm = lastImpedance.mag;
    double lZp = isnan(lastImpedance.phase) ? NAN : lastImpedance.phase;
    long long ticks = peisSta->rtc.tick;
    ushort vrng = peisSta->vdc_rngno;
    //ushort irng = peisSta->iac_rngno;
    double auxT = GetRtdData(prtddata);
    double auxV = padcvdc->value;
    
    char val2[300];
    strcat(m_pJsonChannel, "\"lastFrequency\":");
    memset(val2, 0, sizeof(val2));
    if(isnan(lFreq)) strcat(val2, "null"); else sprintf(val2, "%E", lFreq);
    strcat(m_pJsonChannel, val2);
    strcat(m_pJsonChannel, ",");
    
    strcat(m_pJsonChannel, "\"lastZreal\":");
    memset(val2, 0, sizeof(val2));
    if(isnan(lZr)) strcat(val2, "null"); else sprintf(val2, "%E", lZr);
    strcat(m_pJsonChannel, val2);
    strcat(m_pJsonChannel, ",");
    
    strcat(m_pJsonChannel, "\"lastZimag\":");
    memset(val2, 0, sizeof(val2));
    if(isnan(lZi)) strcat(val2, "null"); else sprintf(val2, "%E", lZi);
    strcat(m_pJsonChannel, val2);
    strcat(m_pJsonChannel, ",");
    
    strcat(m_pJsonChannel, "\"lastZmod\":");
    memset(val2, 0, sizeof(val2));
    if(isnan(lZm)) strcat(val2, "null"); else sprintf(val2, "%E", lZm);
    strcat(m_pJsonChannel, val2);
    strcat(m_pJsonChannel, ",");
    
    strcat(m_pJsonChannel, "\"lastZphase\":");
    memset(val2, 0, sizeof(val2));
    if(isnan(lZp)) strcat(val2, "null"); else sprintf(val2, "%E", lZp);
    strcat(m_pJsonChannel, val2);
    strcat(m_pJsonChannel, ",");
    
    memset(val2, 0, sizeof(val2));
	char cFmt[42];
	memset(cFmt, 0, sizeof(cFmt));
	strcpy(cFmt,JSON_CHANNEL_VAL2);
    sprintf(val2, cFmt, ticks, ResultCount);
	
    strcat(m_pJsonChannel, val2);
    strcat(m_pJsonChannel, ",");
    
    strcat(m_pJsonChannel, "\"voltageRange\":");
    memset(val2, 0, sizeof(val2));
    sprintf(val2, "%d", vrng);
    strcat(m_pJsonChannel, val2);
    strcat(m_pJsonChannel, ",");
    
    strcat(m_pJsonChannel, "\"currentRange\":");
    memset(val2, 0, sizeof(val2));
    sprintf(val2, "%d", vrng);
    strcat(m_pJsonChannel, val2);
    strcat(m_pJsonChannel, ",");
    
    strcat(m_pJsonChannel, "\"auxTemperature\":");
    memset(val2, 0, sizeof(val2));
    if(isnan(auxT)) strcat(val2, "null"); else sprintf(val2, "%5.1f", auxT);
    strcat(m_pJsonChannel, val2);
    strcat(m_pJsonChannel, ",");
    
    strcat(m_pJsonChannel, "\"auxVoltage\":");
    memset(val2, 0, sizeof(val2));
    if(isnan(auxV)) strcat(val2, "null"); 
	else 
	{
		if(auxV >= 1000.0) sprintf(val2, "%5.1f", auxV);
		else if(auxV >= 100.0) sprintf(val2, "%5.2f", auxV);
		else sprintf(val2, "%5.3f", auxV);
		
		//sprintf(val2, "%f", auxV);
	}
    strcat(m_pJsonChannel, val2);
    strcat(m_pJsonChannel, "}");
}

void SetJsonCook(void)
{
    memset(m_pJsonCook, 0x0, MAX_JSON_COOK);
    
    st_zim_eis* peis = &m_pGlobalVar->mStatusInf.meis;
    
    // Started
    long long ticks = peis->eis_status.rtc.tick;
    char started[50]; memset(started, 0, sizeof(started));
	
	char cFmt[240]; memset(cFmt, 0, sizeof(cFmt));
	
	strcpy(cFmt,JSON_COOK_STARTED);
    sprintf(started, cFmt, ticks, ResultCount);
    
	if(peis->eis_cond.initFreq < MIN_EIS_FREQUENCY)
		peis->eis_cond.initFreq = MIN_EIS_FREQUENCY;
	if(peis->eis_cond.initFreq > MAX_EIS_FREQUENCY)
		peis->eis_cond.initFreq = MAX_EIS_FREQUENCY;
	
	if(peis->eis_cond.midFreq > MAX_EIS_FREQUENCY)
		peis->eis_cond.midFreq = MAX_EIS_FREQUENCY;
	
	if(peis->eis_cond.finalFreq < MIN_EIS_FREQUENCY)
		peis->eis_cond.finalFreq = MIN_EIS_FREQUENCY;
	if(peis->eis_cond.finalFreq > MAX_EIS_FREQUENCY)
		peis->eis_cond.finalFreq = MAX_EIS_FREQUENCY;
	
    // Parameters
    double ifreq = peis->eis_cond.initFreq;
	double mfreq = peis->eis_cond.midFreq;
    double ffreq = peis->eis_cond.finalFreq;
    ushort density = peis->eis_cond.density;
    ushort iteration = peis->eis_cond.iteration;
    ushort irng = peis->eis_cond.iacrng;
    double ondelay = peis->eis_cond.ondelay;
    double skipcyc = peis->eis_cond.skipcycle;
    ushort cycle = peis->eis_cond.item[0].cycle;
    char parameters[240]; 
	memset(parameters, 0, sizeof(parameters));
	memset(cFmt, 0, sizeof(cFmt));
	
	strcpy(cFmt,JSON_COOK_PARAMETERS);
    sprintf(parameters, cFmt, ifreq, mfreq, ffreq, density, iteration, irng, ondelay, skipcyc, cycle);
    
    strcat(m_pJsonCook, "{");
    strcat(m_pJsonCook, JSON_COOK_STARTED_KEY);
    strcat(m_pJsonCook, started);
    strcat(m_pJsonCook, ",");
    strcat(m_pJsonCook, JSON_COOK_PARAMETERS_KEY);
    strcat(m_pJsonCook, parameters);
    strcat(m_pJsonCook, ",");
    strcat(m_pJsonCook, JSON_COOK_DATA_KEY);
    strcat(m_pJsonCook, "[");
	
	char data[300];
    if(ResultCount > 0)
    {
        for(int i = 0; i < ResultCount; i++)
        {
            int pt = i + 1;
            double time = peis->eis_item[i].info.msBegin / 1000.0;
            double freq = peis->eis_item[i].info.freq;
            double zr = peis->eis_item[i].zdata.real;
            double zi = peis->eis_item[i].zdata.img;
            double zm = peis->eis_item[i].zdata.mag;
            double zp = isnan(peis->eis_item[i].zdata.phase) ? NAN : peis->eis_item[i].zdata.phase;
            double idc = GetIdc(&peis->eis_item[i]);
            double vdc = peis->eis_item[i].info.vdc.begin;
            double temp = peis->eis_item[i].info.rtd.begin;
			double eoc = peis->eis_status.Veoc;
            int irng = peis->eis_item[i].info.iacrng;
            
            memset(data, 0, sizeof(data));
			memset(cFmt, 0, sizeof(cFmt));
			strcpy(cFmt,JSON_COOK_DATA);
            sprintf(data, cFmt, pt, time, freq, zr, zi, zm, zp, idc, vdc, temp, irng, eoc);
            strcat(m_pJsonCook, data);
            strcat(m_pJsonCook, ",");
        }
        
        m_pJsonCook[strlen(m_pJsonCook) - 1] = 0;
    }
    strcat(m_pJsonCook, "]");
    strcat(m_pJsonCook, "}");
}

void SetJsonSamples(int index)
{
	int Count;
	int DRate = 33;
	int i,j;
	double deltaT;
	//double time;
	double iac;
	double vac;
	char samp[100];
	st_zim_eis_raw* peisraw;
	
	memset(m_pJsonSamples, 0x0, MAX_JSON_SAMPLES);
	
	if(index < 0 && m_pGlobalVar->mStatusInf.meis.eis_status.freqcount <= index)
	{
		strcat(m_pJsonSamples, "{}");
		return;
	}

	peisraw = &m_pGlobalVar->mStatusInf.meis.eis_raw[index];
	
	deltaT = 1 / peisraw->info.freq / peisraw->info.cycpoint;
	if(peisraw->info.TotalPoint < 1024 ) DRate = 1;
	Count = (int)floor(peisraw->info.TotalPoint / DRate);
	
	memset(samp, 0, sizeof(samp));
	sprintf(samp, "\"dt\":%E", deltaT);

	strcat(m_pJsonSamples, "{");
    strcat(m_pJsonSamples, samp);
	strcat(m_pJsonSamples, ",");
	
	memset(samp, 0, sizeof(samp));
	sprintf(samp, "\"multiplier\":%d", DRate);
	strcat(m_pJsonSamples, samp);
	strcat(m_pJsonSamples, ",");

    strcat(m_pJsonSamples, "\"data\":");    
	strcat(m_pJsonSamples, "[");	
	j = 0;
    for(i = 0; i < Count; i++,j += DRate)
    {
       // time = j * deltaT;
        iac = peisraw->raw_val[j].iac;
        vac = peisraw->raw_val[j].vac;
        
        memset(samp, 0, sizeof(samp));
        //sprintf(samp, JSON_SAMPLE, time, vac, iac);
		sprintf(samp, JSON_SAMPLE,  vac, iac);
        strcat(m_pJsonSamples, samp);
        if(i < (Count - 1))
            strcat(m_pJsonSamples, ",");
    }     
    strcat(m_pJsonSamples, "]");
	strcat(m_pJsonSamples, "}");
}

////////////////////////////////////////////////////////////////////////////////