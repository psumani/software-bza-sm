#ifndef JSON_DSCR_H
#define JSON_DSCR_H

#define JSON_ABOUT \
"\
{\
\"hostName\":\"%s\",\
\"model\": \"%s\",\
\"description\": \"Impedance Meter\",\
\"frequencyRanges\": \"4kHz to 0.1Hz\",\
\"voltageRanges\": \"%s\",\
\"currentRanges\": \"2A/400mA/200mA/40mA/20mA/4mA/2mA/400uA\",\
\"maxPowerRating\": \"%dW\",\
\"temperatureSensor\": \"PT100\",\
\"macAddress\":\"%s\",\
\"configureIPv4\":\"%s\",\
\"ipAddress\":\"%s\",\
\"subnetMask\":\"%s\",\
\"router\":\"%s\",\
\"port\":%d,\
\"sifBoard\":\"%s\",\
\"sifFirmware\":\"%s\",\
\"sifSerialNumber\":\"%s\",\
\"zimBoard\":\"%s\",\
\"zimFirmware\":\"%s\",\
\"zimSerialNumber\":\"%s\"\
}\
"

#define JSON_CHANNEL_VAL0 \
"\
{\
\"state\":\"%s\",\
\"elapsedTime\":%f,\
\"progress\":%f,\
\"stepFrequency\":%f,\
\"stepSamples\":\
"

#define JSON_CHANNEL_VAL1 \
"\
{\
\"voltage\":%E,\
\"current\":%E\
}\
"

#define JSON_CHANNEL_VAL2 \
"\
\"lastStarted\":\
{\
\"ticks\":%lld,\
\"count\":%d\
}\
"

//\"voltageRange\":%d,\
//\"currentRange\":%d,\
//\"auxTemperature\":%f,\
//\"auxVoltage\":%f\
//}\
//"

#define JSON_COOK_STARTED_KEY \
"\
\"started\":\
"

#define JSON_COOK_STARTED \
"\
{\
\"ticks\":%lld,\
\"count\":%d\
}\
"

#define JSON_COOK_PARAMETERS_KEY \
"\
\"parameters\":\
"

/*st_zim_eis_cond*/
// initFreq
// finalFreq
// density
// iteration
// iacrng
// ondelay
// skipcycle
// st_zim_eis_cond_item[0].cycle
#define JSON_COOK_PARAMETERS \
"\
{\
\"initialFrequency\":%f,\
\"middleFrequency\":%f,\
\"finalFrequency\":%f,\
\"density\":%d,\
\"iteration\":%d,\
\"currentRange\":%d,\
\"maxInitialDelay\":%f,\
\"skip\":%f,\
\"cycles\":%d\
}\
"

#define JSON_COOK_DATA_KEY \
"\
\"data\":\
"
/*st_zim_eis_item*/
// st_zim_eis_item.zdata[freqidx].real
// st_zim_eis_item.zdata[freqidx].imag
// st_zim_eis_item.zdata[freqidx].
// st_zim_eis_item.zdata[freqidx].phase
// st_zim_eis_item
#define JSON_COOK_DATA \
"\
{\
\"pt\":%d,\
\"time\":%E,\
\"frequency\":%E,\
\"zreal\":%E,\
\"zimag\":%E,\
\"zmod\":%E,\
\"zphase\":%E,\
\"idc\":%E,\
\"vdc\":%f,\
\"temperature\":%f,\
\"currentRange\":%d,\
\"eoc\":%f\
}\
"
/*
#define JSON_SAMPLE \
"\
{\
\"time\":%E,\
\"voltage\":%E,\
\"current\":%E\
}\
"
*/

#define JSON_SAMPLE \
"\
{\
\"voltage\":%E,\
\"current\":%E\
}\
"

#endif