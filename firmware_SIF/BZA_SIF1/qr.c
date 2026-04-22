/*
	# File:    	qr.c
	# Purpose: 	Demonstrate the QR decomposition. The method of Householder
	|			reflections should be used:
	# Input:	rectangular MxN matrix A from the file A.txt which is the
	|			matrix of linear algebraic equasions system. The input file
	|			contains the M and N numbers at the first line. Below them there
	|			are the coefficients of the matrix.
	# Output:   the Q matrix, the R matrix and the QR multiplication (A matrix)
	# Compile:  Using gcc (can also be built it via makefile)
	|           gcc -g -Wall -o qr qr.c
	|           OR make all
	# Usage:    ./qr
	# Note:		The input matrix is hardcoded now. If you want to enter your
	|			own MxN matrix, write the corresponding function to fill A
	|			before calculations
	# Author: 	Nikolai Gaiduchenko, MIPT 2017, 513 group
*/
//==============================================================================
// INCLUDE SECTION
//==============================================================================

#include "BZA_SIF.h"


//==============================================================================
// MATRIX FUNCTIONS PROTOTYPES
//==============================================================================

mat matrix_new(int m, int n);
// PURPOSE:			allocate memory for the matrix
// RETURN VALUE:	the matrix created

void matrix_delete(mat m);
// PURPOSE:			free the memory being allocated to store the matrix
// RETURN VALUE:	Nothing

void matrix_transpose(mat m);
// PURPOSE:			Transpose the matrix (A[i][j] = A[j][i])
// RETURN VALUE:	Nothing

mat matrix_copy(int n, double **a, int m);
// PURPOSE:			Copy the matrix given w/ memory allocation
// RETURN VALUE:	The new matrix which is a copy of the matrix given

mat matrix_mul(mat x, mat y);
// PURPOSE:			Multiply the matrices given
// RETURN VALUE:	The new matrix as a result of multiplication

mat matrix_minor(mat x, int d);
// PURPOSE:			Calculate the Dth minor of the matrix
// RETURN VALUE:	The new matrix whis is the Dth minor of the original one

void matrix_show(mat m);
// PURPOSE:			Print the matrix
// RETURN VALUE:	Nothing

//==============================================================================
// VECTOR FUNCTION PROTOTYPES
//==============================================================================

double *vmadd(double a[], double b[], double s, double c[], int n);
// RETURN VALUE:	c = a + b*s

double* mcol(mat m, double *v, int c);
// PURPOSE:			Take the c-th column from the matrix m and put it into
//					vector v
// RETURN VALUE:	Vector v which is the column c in matrix m

mat vmul(double v[], int n);
// PURPOSE:			Create matrix m = I - v * v^T,
//					where I is the identical matrix
// RETURN VALUE:	The matrix created

double vnorm(double x[], int n);
// PURPOSE:			Find the vector norm (module)
// RETURN VALUE:	||x||

double* vdiv(double x[], double d, double y[], int n);
// PURPOSE:			Divide the vector x[n] by d and store the result in y[n]
// RETURN VALUE:	y[]

//==============================================================================
// THE HOUSEHOLDER METHOD IMPLEMENTATION
//==============================================================================

bool householder(mat m, mat *R, mat *Q)
{
	mat *q;
	double *e;
	double *x;
	mat z, z1;
	double a;
	double b;
	int k, i;
	
	q = NULL;
	e = NULL;
	x = NULL;
	z = m;
	
	q = (mat*)malloc(m->m * sizeof(mat));
	
	if(q)
	{
		memset(q,0x0,sizeof(m->m * sizeof(mat)));
	}
	else
	{
		return false;
	}
	e = (double*)malloc(m->m * sizeof(double));
	if(e == NULL) 
	{
		if(q)
		{
			free(q); 
			q = NULL;
		}
		return false;
	}
	
	x = (double*)malloc(m->m * sizeof(double));
	if(x == NULL) 
	{
		if(q)
		{
			free(q); 
			q = NULL;
		}
		if(e)
		{
			free(e); 
			e = NULL;
		}
		return false;
	}
	
	for (k = 0; k < m->n && k < m->m - 1; k++) {

		memset(e,0x0,m->m * sizeof(double));
		memset(x,0x0,m->m * sizeof(double));
		
		z1 = matrix_minor(z, k);
		if (z != m) matrix_delete(z);
		
		z = z1;
		if(z1 == NULL) 
		{
			if(q)
			{
				free(q); 
				q = NULL;
			}
			if(e)
			{
				free(e); 
				e = NULL;
			}
			if(x)
			{
				free(x); 
				x = NULL;
			}
			return false;
		}
		
		mcol(z, x, k);
		a = vnorm(x, m->m);
		if (m->v[k][k] > 0) 
		{
			a = -a;
		}

		for (i = 0; i < m->m; i++)
		{
			e[i] = (i == k) ? 1.0 : 0.0;
		}
		
		vmadd(x, e, a, e, m->m);
		b = vnorm(e, m->m);
		
		vdiv(e, b, e, m->m); //devide
		
		q[k] = vmul(e, m->m);
		z1 = matrix_mul(q[k], z);

		if (z != m) matrix_delete(z);
		z = z1;

		
	}
	if(e)
	{
		free(e); 
		e = NULL;
	}
	if(x)
	{
		free(x); 
		x = NULL;
	}
	
	matrix_delete(z);
	
	*Q = q[0];
	
	*R = matrix_mul(q[0], m);
	
	for (i = 1; i < m->n && i < m->m - 1; i++) {
		z1 = matrix_mul(q[i], *Q);
		if (i > 1) matrix_delete(*Q);
		*Q = z1;
		matrix_delete(q[i]);
	}
	matrix_delete(q[0]);
	
	z = matrix_mul(*Q, m);
	
	matrix_delete(*R);
	
	*R = z;
	
	matrix_transpose(*Q);
	if(q)
	{
		free(q);
		q = NULL;
	}
	return true;
}

//==============================================================================
// MATRIX FUNCTIONS IMPLEMENTATIONS
//==============================================================================

mat matrix_new(int m, int n)
{
	int i;
	double* pVec;
	mat x = NULL;
	
	x = (mat)malloc(sizeof(mat_t));
	if(x == NULL) return NULL;
	
	x->v = (double **)malloc(sizeof(double*) * m);
	if(x->v == NULL) 
	{
		if(x)
		{
			free(x);
			x = NULL;
		}
		return NULL;
	}
	pVec = (double *)calloc((m * n),sizeof(double));
	if(pVec == NULL)
	{
		if(x->v)
		{
			free(x->v);
			x->v = NULL;
		}
		if(x)
		{
			free(x);
			x = NULL;
		}
		return NULL;
	}
	for (i = 0; i < m; i++)
	{
		x->v[i] = pVec + (n * i);
	}
	x->m = m;
	x->n = n;
	return x;
}

void matrix_initialize(mat m)
{
	memset(m->v[0],0x0,m->m * m-> n * sizeof(double));
}

void matrix_delete(mat m)
{
	if(m->v[0])
	{
		free(m->v[0]); 
		m->v[0] = NULL;
	}
	if(m->v)
	{
		free(m->v);
		m->v = NULL;
	}
	if(m)
	{
		free(m);
		m = NULL;
	}
}

void matrix_transpose(mat m)
{
	int i, j;
	double t;
	if(m)
	{
		for (i = 0; i < m->m; i++) 
		{
			for (j = 0; j < i; j++) 
			{
				t = m->v[i][j];
				m->v[i][j] = m->v[j][i];
				m->v[j][i] = t;
			}
		}
	}
}

mat matrix_copy(int n, double **a, int m)
{
	int i, j;
	
	mat x = matrix_new(m, n);
	if(x == NULL) return NULL;
	
	for (i = 0; i < m; i++)
	{
		for (j = 0; j < n; j++)
		{
			x->v[i][j] = a[i][j];
		}
	}
	return x;
}

mat matrix_mul(mat x, mat y)
{
	int i, j, k;
	mat r;
	if(x == NULL || y == NULL) return NULL;
	
	if (x->n != y->m) return NULL;
	
	r = matrix_new(x->m, y->n);
	if(r == NULL) return NULL;
	
	for (i = 0; i < x->m; i++)
	{
		for (j = 0; j < y->n; j++)
		{
			for (k = 0; k < x->n; k++)
			{
				r->v[i][j] += x->v[i][k] * y->v[k][j];
			}
		}
	}
	return r;
}

mat matrix_minor(mat x, int d)
{
	int i, j;
	mat m;
	
	if(x == NULL) return NULL;
	
	m = matrix_new(x->m, x->n);
	if(m == NULL) return NULL;
	
	for (i = 0; i < d; i++)
	{
		m->v[i][i] = 1;
	}
	for (i = d; i < x->m; i++)
	{
		for (j = d; j < x->n; j++)
		{
			m->v[i][j] = x->v[i][j];
		}
	}
	return m;
}

//==============================================================================
// VECTOR FUNCTIONS IMPLEMENTATIONS
//==============================================================================

/* c = a + b * s */
double *vmadd(double a[], double b[], double s, double c[], int n)
{
	int i;
	for (i = 0; i < n; i++)
	{
		c[i] = a[i] + s * b[i];
	}
	return c;
}

/* m = I - v v^T */
mat vmul(double v[], int n)
{
	int i, j;
	
	mat x = matrix_new(n, n);
	if(x == NULL) return NULL;
	
	for (i = 0; i < n; i++)
	{
		for (j = 0; j < n; j++)
		{
			x->v[i][j] = -2 *  v[i] * v[j];
		}
	}
	for (i = 0; i < n; i++)
	{
		x->v[i][i] += 1;
	}
	return x;
}

/* ||x|| */
double vnorm(double x[], int n)
{
	int i;
	double sum = 0.0;
	for (i = 0; i < n; i++) 
	{
		sum += x[i] * x[i];
	}
	return sqrt(sum);
}

/* y = x / d */
double* vdiv(double x[], double d, double y[], int n)
{
	int i;
	for (i = 0; i < n; i++) 
	{
		if(isnan(d) || d == 0.0) y[i] = 0.0;
		else y[i] = x[i] / d;
	}
	return y;
}

/* take c-th column of m, put in v */
double* mcol(mat m, double *v, int c)
{
	int i;
	if(m)
	{
		for (i = 0; i < m->m; i++)
		{
			v[i] = m->v[i][c];
		}
	}
	return v;
}

void matrix_show(mat m)
{
	int i, j;
	if(m == NULL) return;
	for(i = 0; i < m->m; i++) 
	{
		for (j = 0; j < m->n; j++) 
		{
			printf(" %8.3f", m->v[i][j]);
		}
		printf("\n");
	}
	printf("\n");
}

//==============================================================================
// MAIN CODE SECTION
//==============================================================================
/*
int main()
{
	// read the input MxN matrix from the file
	// M - num of strings
	// N - num of columns

 	unsigned M, N, i, k;
	mat inmat;
	mat R, Q;
	mat m;
	FILE * input = fopen("./A.txt", "r");	// Open input file
	fscanf (input, "%d %d", &M, &N);		// read M and N

	// Allocate memory for input matrix (dynamic) MxN
	inmat = matrix_new(M, N);

	// read matrix coefficients from the input file
	for (i = 0; i < M; i++)
	{
		for (k = 0; k < N; k++)
		{
			fscanf(input, "%lf", &inmat->v[i][k]);
		}
	}
	fclose (input);


	householder(inmat, &R, &Q);

	puts("Q"); matrix_show(Q);
	puts("R"); matrix_show(R);

	// to show their product is the input matrix
	m = matrix_mul(Q, R);
	puts("Q * R"); matrix_show(m);

	matrix_delete(R);
	matrix_delete(Q);
	matrix_delete(m);
	matrix_delete(inmat);
	return 0;
}*/

//==============================================================================
// USAGE EXAMPLE
//==============================================================================
/*
	Input file A.txt contains:
	5 3
	12.000  -51.000    4.000
	 6.000  167.000  -68.000
	-4.000   24.000  -41.000
	-1.000    1.000   -0.000
	 2.000   -0.000    3.000
    Output:
    Q:
    0.846   -0.391    0.343    0.082    0.078
    0.423    0.904   -0.029    0.026    0.045
   -0.282    0.170    0.933   -0.047   -0.137
   -0.071    0.014   -0.001    0.980   -0.184
    0.141   -0.017   -0.106   -0.171   -0.969
    R:
   14.177   20.667  -13.402
   -0.000  175.043  -70.080
    0.000    0.000  -35.202
   -0.000   -0.000   -0.000
    0.000    0.000   -0.000
    Q * R:
   12.000  -51.000    4.000
    6.000  167.000  -68.000
   -4.000   24.000  -41.000
   -1.000    1.000   -0.000
    2.000   -0.000    3.000
*/