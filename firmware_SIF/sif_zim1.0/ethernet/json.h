#ifndef JSON_H
#define JSON_H

#define MAX_JSON_ABOUT      1000
#define MAX_JSON_CHANNEL    6000

#define MAX_JSON_COOK       10000
#define MAX_JSON_SAMPLES    200000

void SetJsonAbout(void);
void SetJsonChannel(void);
void SetJsonCook(void);
void SetJsonSamples(int index);

#endif