#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 


extern int myatoi(char * p);

extern int map(char **v, int n);

extern int map_ho(char **v, int n , int(*f)(char *p));

int main(int argc, char *argv[]){
    
    char *vect[argc] ;
    for(int i = 1 ; i < argc  ; i++){
        vect[i - 1] = argv[i] ;
    }

    printf("map: %d\nmap_ho: %d\n", map(vect , argc-1) , map_ho(vect , argc-1, &myatoi));

    return 0;
}