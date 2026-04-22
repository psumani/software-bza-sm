#ifndef QR_H
#define QR_H

//==============================================================================
// MATRIX (STRUCT AND INPUT) SECTION
//==============================================================================

typedef struct matrix_type {
	int m, n;
	double ** v;
} mat_t, *mat;

mat matrix_new(int m, int n);
void matrix_delete(mat m);
void matrix_initialize(mat m);
bool householder(mat m, mat *R, mat *Q);

#endif