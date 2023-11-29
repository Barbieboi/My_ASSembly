#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 

extern unsigned int foo(unsigned int a , unsigned int b) ;

int main(int argc, char *argv[]){
    
    int a = atoi(argv[1]) ;
    int b = atoi(argv[2]) ;

    unsigned int c = foo(a, b) ;

    printf("%d" ,c) ;

    return 0;
}