#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h>

#include"../mylib/mylib.h"


//Inserimento iun testa
extern node_t* headins(node_t* list, int val);

int main(int argc, char *argv[]){
    node_t *list = NULL;
    for (int i = 0; i<10; i++) {
        list = headins(list, i);
    }

    print_list(list);

    freelist(list) ;

    return 0;
}