#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 

#include"mylist.h"

extern void printl(node_t* list);

int main(int argc, char *argv[]){
    node_t *list = create_list(10);

    printl(list);
    freelist(list);
    return 0;
}