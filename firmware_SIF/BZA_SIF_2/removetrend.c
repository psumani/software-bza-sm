// remove trend

#include "BZA_SIF.h"

#define MAX_COEF  5


inline void SumOfReversion(double* pRaw, int Ns,double* pSum)
{
	
	int i, j;
	double tmp;
	
	*pSum = 0.0;
	
	for (i = 0; i < Ns - 1; i++)
	{		
		for (j = i + 1; j < Ns; j++)
		{
			tmp = *(pRaw+j) - *(pRaw+i);
			if (tmp > 0) *pSum += 1.0;
		}
	}
}


void MeanAndVariance(double* pRaw, int start, int length, double* pMean, double* pStDev, double* pVariance)
{
	double n = (double)length;
	
	double tmp;
	double sum;
	int i;

	sum = 0.0;
	
	for (i = start; i < start + length; i++)
	{
		sum += *(pRaw+i);
	}
	
	if(n == 0.0)  *pMean = 0.0;
	else *pMean = sum / n;

	
	sum = 0.0;
	
	for (i = start; i < start + length; i++)
	{
		tmp = *(pRaw+i) - *pMean;
		sum += tmp * tmp;
	}
	
	n -= 1.0;
	
	if(n == 0.0) 
	{
		*pVariance = 0.0;
		*pStDev = 0.0;
	}
	else
	{
		*pVariance = sum / n;
		*pStDev = sqrt(*pVariance);
	}
}

/*
StationaryTest : Check if a time series is stationary or not
----------------------------------------------------------------------------------------
Xt : Time series data
L : Number of seb-sequences, default = 2
----------------------------------------------------------------------------------------
Xt를 L개의 subsequences 로 나눈다. 
각 시리즈의 평균과 표준편차를 mu[L], sigma[L]라 하자.
mu와 sigma의 도치된 갯수를 더해서, Smu, Ssigma라 하자.
Xt가 stationary하다면 평균 0, 표준편자 1인 정규 분포를 만족해야 한다.

Sampling rate fs로 전압 데이터를 1초 동안 읽어서, 통계적으로 일정한 값인지 확인한다.
----------------------------------------------------------------------------------------
*/

bool StationaryTest(double* pRaw , int Ns, int L) //?Ns
{
	double* pMeans = NULL;
	double* pVariances = NULL;
	double mean, stdev, variance;
	
	int start;
	int length;
	int i;
	
	if(L == 0) return false;
	
	length = (int)(Ns / L);
		
	pMeans = malloc(sizeof(double) * Ns * L);
	pVariances = malloc(sizeof(double) * Ns * L);
	if(pMeans == NULL || pVariances == NULL)
	{
		if(pMeans)
		{
			free(pMeans);
			pMeans = NULL;
		}
		if(pVariances)
		{
			free(pVariances);
			pVariances = NULL;
		}
		return false;
	}
	
	for (i = 0; i < L; i++)
	{	
		start = length * i;
		MeanAndVariance(pRaw, start, length, &mean, &stdev, &variance);
		*(pMeans + i) = mean;
		*(pVariances + i) = variance;
	}

	double mu = (L - 1.0) * L / 4.0; // theoretical mean
	double v = sqrt(L* (2.0 * L* L+ 3.0 * L - 5.0) / 72.0); // theoretical variance
	
	if (isnan(v)  || v == 0.0) return false;
	
	double testMeans;
	double testVariances;
	
	SumOfReversion(pMeans, L, &testMeans) ;
	
	testMeans = fabs(testMeans+ 0.5 - mu) / v;
	
	SumOfReversion(pVariances, L, &testVariances);
	
	testVariances = fabs(testVariances+ 0.5 - mu) / v;
		
	
	//const double x95 = 1.96039491692533962;
	const double x68 = 0.9944218144220955;

	if(pMeans)
	{
		free(pMeans);
		pMeans = NULL;
	}
	if(pVariances)
	{
		free(pVariances);
		pVariances = NULL;
	}
	if(testMeans < x68 && testVariances < x68) 
	{
		return true;
	}
	return false;
}

bool QRdecomposition(mat A, mat *pQ, mat *pR)
{
    return householder(A, pR, pQ);
}

bool  RemoveTrend(st_zim_eis_raw_val* pXt, st_zim_eis_raw_val* pX, int Ns, int CP,stCompdrift* pCompdrift) 
{
    /*
	Returns detrended input signal Xt.

	pXt : input signal, Ns x 1 vector
    pX : output signal, Ns * 1 vector, Memory 할당 후 넘겨줘야 함.
	Ns : number of data
	CP : Points of a Cycle
	
	X  : detrended output, Ns x 1 vector

	pXt = a + b*t + c*t^2 + A2*sin(2*w*t + p2) + A1*sin(w*t + p1)
	   = a + b*t + c*t^2 + d*sin(2*w*t) + e*cos(2*w*t) + f*sin(w*t) + g*cos(w*t)
	where d = A2*cos(2*p2) , e = A2*sin(p2) , f = A1*cos(p1) and g = A1*sin(p1)

	pX  = pXt - (a + b*t + c*t^2 + d*sin(2*w*t) + e*cos(2*w*t))

	p0 = a;
    p1 = b;
	p2 = c;
	A2 = sqrt(pow(d, 2) + pow(e, 2));
    p2 = atan2(e, d) * (double)180.0 / (double)PI;
    A1 = sqrt(pow(f, 2) + pow(g, 2));
    p1 = atan2(g, f) * (double)180.0 / (double)PI;
	*/
	

	int i, j, k;
	double t, wt, w, dt;
	
    mat pMat = NULL;
	mat pNewMat = NULL;
	mat pQ = NULL;
	mat pR = NULL;;
	
    st_zim_eis_raw_val Y[MAX_COEF];   
	st_zim_eis_raw_val S[MAX_COEF];
	st_zim_eis_raw_val  newXt[MAX_COEF];
	
	st_zim_eis_raw_val sum, a, b, c, d, e; //, f, g;

	memset(pCompdrift,0x0,sizeof(stCompdrift));
	memset(Y,0x0,sizeof(st_zim_eis_raw_val) * MAX_COEF);
	memset(S,0x0,sizeof(st_zim_eis_raw_val) * MAX_COEF);
	memset(newXt,0x0,sizeof(st_zim_eis_raw_val) * MAX_COEF);
	
	memset(&sum,0x0,sizeof(st_zim_eis_raw_val));
	memset(&a,0x0,sizeof(st_zim_eis_raw_val));
	memset(&b,0x0,sizeof(st_zim_eis_raw_val));
	memset(&c,0x0,sizeof(st_zim_eis_raw_val));
	memset(&d,0x0,sizeof(st_zim_eis_raw_val));
	memset(&e,0x0,sizeof(st_zim_eis_raw_val));
	
	if(CP == 0) return false;
	
	pMat = matrix_new(Ns, MAX_COEF);
	pNewMat = matrix_new(MAX_COEF, MAX_COEF);

	if(pMat == NULL || pNewMat == NULL) 
	{
		if(pNewMat) matrix_delete(pNewMat);
    	if(pMat) matrix_delete(pMat);
		return false;
	}

	dt = 1.0;
	w = (double)TwoPI / (CP * dt); //w = 2 pi f = 2 pi / (N dt)
	for(i = 0; i < Ns; i++)
    {
        t = dt * (double)i;
        wt = w * t;
        *(pMat->v[i]+0) = 1.0;
        *(pMat->v[i]+1) = t;
		*(pMat->v[i]+2) = t * t;
		*(pMat->v[i]+3) = sin(wt);
        *(pMat->v[i]+4) = cos(wt);
        //*(pMat->v[i]+3) = sin(2.0 * wt);
        //*(pMat->v[i]+4) = cos(2.0 * wt);		
    }

	for (i = 0; i < pMat->n; i++)
	{
		for (j = 0; j < pMat->n; j++)
		{
			pNewMat->v[i][j] = 0.0;
			if (i == 0)
			{
				newXt[j].iac = 0.0;
				newXt[j].vac = 0.0;
			}
			for (k = 0; k < pMat->m; k++)
			{
				pNewMat->v[i][j] += pMat->v[k][i] * pMat->v[k][j]; // newA = A'A

				if (i == 0)
				{
					newXt[j].iac += pMat->v[k][j] * (pXt+k)->iac; // newXt = A'Xt
					newXt[j].vac += pMat->v[k][j] * (pXt+k)->vac; // newXt = A'Xt
				}
			}			
		}
	}

    if(QRdecomposition(pNewMat, &pQ, &pR) == false)
	{
		if(pQ) matrix_delete(pQ);
		if(pR) matrix_delete(pR);
		if(pNewMat) matrix_delete(pNewMat);
		if(pMat) matrix_delete(pMat);
			
		return false;
	}


	for(i = 0; i < MAX_COEF; i++)
	{
		sum.iac = 0.0;
		sum.vac = 0.0;
		if(pQ)
		{
			for(j = 0; j < MAX_COEF; j++)
			{
				sum.iac += pQ->v[j][i] * newXt[j].iac;
				sum.vac += pQ->v[j][i] * newXt[j].vac;
			}
		}
		Y[i].iac = sum.iac;
		Y[i].vac = sum.vac;
	}
	
	for(i = (MAX_COEF-1); i >= 0; i--)
	{
		sum.iac = 0.0;
		sum.vac = 0.0;
		if(pR)
		{
			for(j = i + 1; j < MAX_COEF; j++)
			{
				sum.iac += pR->v[i][j] * S[j].iac;
				sum.vac += pR->v[i][j] * S[j].vac;
			}
			
			if(isnan(pR->v[i][i]) || pR->v[i][i] == 0.0) 
			{
				S[i].iac = 0.0;
				S[i].vac = 0.0;
			}
			else
			{
				S[i].iac = (Y[i].iac - sum.iac) / pR->v[i][i];   //devide
				S[i].vac = (Y[i].vac - sum.vac) / pR->v[i][i];
			}
		}
		else
		{
			S[i].iac = 0.0;
			S[i].vac = 0.0;
		}
	}

    a.iac = S[0].iac;
    b.iac = S[1].iac;
    c.iac = S[2].iac;
    d.iac = S[3].iac;
	e.iac = S[4].iac;
	//f.iac = S[5].iac;
	//g.iac = S[6].iac;
	
	a.vac = S[0].vac;
    b.vac = S[1].vac;
    c.vac = S[2].vac;
    d.vac = S[3].vac;
	e.vac = S[4].vac;
	//f.vac = S[5].vac;
	//g.vac = S[6].vac;
    
    for(i = 0; i < Ns; i++)
	{
		t = dt * (double)i;
        wt = w * t;
 //       (pX + i)->iac = (pXt + i)->iac - a.iac - (b.iac * t) - (c.iac * t * t) - (d.iac * sin(2.0 * wt)) - (e.iac * cos(2.0 * wt));
//		(pX + i)->vac = (pXt + i)->vac - a.vac - (b.vac * t) - (c.vac * t * t) - (d.vac * sin(2.0 * wt)) - (e.vac * cos(2.0 * wt));

		(pX + i)->iac = (pXt + i)->iac - (b.iac * t) - (c.iac * t * t) ;//- (f.iac * sin(2.0 * wt)) - (g.iac * cos(2.0 * wt));
		(pX + i)->vac = (pXt + i)->vac - (b.vac * t) - (c.vac * t * t);// - (f.vac * sin(2.0 * wt)) - (g.vac * cos(2.0 * wt));
	}

	pCompdrift->IAC.p0 = a.iac;
    pCompdrift->IAC.p1 = b.iac;
	pCompdrift->IAC.p2 = c.iac;
	pCompdrift->IAC.real = d.iac;
	pCompdrift->IAC.imag = e.iac;
	
	pCompdrift->IAC.Amplitude = sqrt(pow(d.iac, 2) + pow(e.iac, 2));
    pCompdrift->IAC.Phase = atan2(e.iac, d.iac) * (double)180.0 / (double)PI;
	
	//pCompdrift->AC.Amplitude2 = sqrt(pow(f.iac, 2) + pow(g.iac, 2));
    //pCompdrift->IAC.Phase2 = atan2(g.iac, f.iac) * (double)180.0 / (double)PI;

	
	pCompdrift->VAC.p0 = a.vac;
    pCompdrift->VAC.p1 = b.vac;
	pCompdrift->VAC.p2 = c.vac;
	pCompdrift->VAC.real = d.vac;
	pCompdrift->VAC.imag = e.vac;
	
	pCompdrift->VAC.Amplitude = sqrt(pow(d.vac, 2) + pow(e.vac, 2));
    pCompdrift->VAC.Phase = atan2(e.vac, d.vac) * (double)180.0 / (double)PI;
	
    //pCompdrift->VAC.Amplitude2 = sqrt(pow(f.vac, 2) + pow(g.vac, 2));
    //pCompdrift->VAC.Phase2 = atan2(g.vac, f.vac) * (double)180.0 / (double)PI;

	
	if(pQ) matrix_delete(pQ);
	if(pR) matrix_delete(pR);
	if(pNewMat) matrix_delete(pNewMat);
    if(pMat) matrix_delete(pMat);
		
    return true;
}