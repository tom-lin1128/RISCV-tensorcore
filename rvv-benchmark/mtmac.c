// This file is for extend ISA "mtmtp" test.

#include <stdio.h>
void *tensormul(size_t n, const int *x, const int *y, int *z);
/*
int mtmtp_c(int a, int b, int c) {
    a = b * c + a; 
    return a;
}
__attribute__((noinline))
int mtmtp_asm(int a, int b, int c) {
    asm __volatile__ (".word 0x02C5856B\n");
    return a;
}
*/
int main(int argc, char** argv) {
    # define N 16
    //int a = 2, b = 3, c = 4;
    //printf("C code = %d \nASM code = %d\n", mtmtp_c(a, b, c), mtmtp_asm(a, b, c));
    //printf("testing..\n");
    const int x[N]= { 	2, 1, 3, 4, 
    		      	5, 2, 7, 3,
    		      	3, 2, 5, 1,
    		      	1, 7, 3, 2};
    const int y[N]= { 	5, 3, 4, 2, 
    		    	3, 1, 7, 1,
    		    	2, 5, 4, 1,
    		    	4, 1, 3, 3};
    int z[N] = { 	1, 1, 1, 1, 
    		 	1, 1, 1, 1,
    		    	1, 1, 1, 1,
    		    	1, 1, 1, 1};;
    tensormul(N, x, y, z);
    for(int i = 0; i < N; i++){
      printf("%d ", z[i]);
    }
    printf("\n");
}
