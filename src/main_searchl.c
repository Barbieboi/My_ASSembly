#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 


#include"mylib.h"

extern int searchl(node_t* list, int k);

int main(int argc, char *argv[]){
    if(argc != 2){
        puts("Uso: ./searchl val") ;
        exit(EXIT_FAILURE);
    }
    node_t *list = create_list(20);

    if(searchl(list, atoi(argv[1])) == 1){
        puts("Found it!");
    }

    freelist(list);
    return 0;
}