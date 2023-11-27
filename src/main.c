#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 


extern int myatoi(char * p);

int main(int argc, char *argv[]){
    
    printf("number: %d\n", myatoi(argv[1]));

    return 0;
}