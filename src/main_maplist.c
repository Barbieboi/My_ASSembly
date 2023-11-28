#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 

#include"mylist.h"

//Applica ad ogni elemento della lista la funzione f
extern void map_list(node_t* list, int (*f)(int));

int foo(int x){
    return 420 ;
}

int main(int argc, char *argv[]){

    node_t *list = create_list(20);

    print_list(list);  
    puts("-------------------");
    map_list(list, &foo);
    print_list(list);

    freelist(list);
    return 0;
}

