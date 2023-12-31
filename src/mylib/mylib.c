#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 

#include"mylib.h"

void print_list(node_t* list){
    node_t* t = list ;
    printf("[ ");
    while (t != NULL) {
        printf("%d ", t->value);
        t = t->next;
    }
    printf("]\n");
}

void print_array(int *arr , int len){
    for(int i = 0 ; i < len ; i++){
        printf("%d ", arr[i]);
    }
    puts("");
}

node_t* create_list(int n){
    node_t *list = NULL;
    node_t *prec = NULL;
    for (int i = 0; i<n; i++) {
        node_t *elem = (node_t *) malloc(sizeof(node_t));
        if (elem == NULL) {
            printf("Errore malloc\n");
            exit(1);
        }
        elem->value = rand()%250;
        if (prec != NULL) {
            prec->next = elem;
            prec = elem;
        }
        else {
            list = elem;
            prec = elem;
        }
        elem->next = NULL;
    }
    return list ;

}

void freelist(node_t* list){
    node_t* tmp ;
    while(list != NULL){
        tmp = list ;
        list = list->next ;
        free(tmp);
    }
}