#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 


extern int myatoi(char * p);

extern int map(char **v, int n);

int main(int argc, char *argv[]){
    
    char *vect[argc] ;
    for(int i = 1 ; i < argc  ; i++){
        vect[i - 1] = argv[i] ;
    }

    printf("number: %d\n", map(vect , argc - 1));

    return 0;
}