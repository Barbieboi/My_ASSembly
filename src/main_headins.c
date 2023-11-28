#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 

struct nodo
{
    int value;
    struct nodo *next;
};

typedef struct nodo node_t;

void print_list(node_t* list){
    node_t* t = list ;
    printf("[ ");
    while (t != NULL) {
        printf("%d ", t->value);
        t = t->next;
    }
    printf("]\n");
}

//Inserimento iun testa
extern node_t* headins(node_t* list, int val);

int main(int argc, char *argv[]){
    node_t *list = NULL;
    node_t *prec = NULL;
    for (int i = 0; i<10; i++) {
        list = headins(list, i);
    }

    print_list(list);

    return 0;
}