#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 

extern unsigned int sum(unsigned int a,unsigned int b) ;

extern unsigned int pippo(unsigned int a , unsigned int b);

int main(int argc, char *argv[]){
    if(argc < 2)
        exit(EXIT_FAILURE);
    int a = atoi(argv[1]) ;
	int b = atoi(argv[2]) ;

    printf("sum(%d ,%d) = %d\npippo = %d\n" , a , b , sum(a,b) , pippo(a , b )) ;    

    return 0;
}