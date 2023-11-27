#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 

struct nodo
{
    int value;
    struct nodo *next;
};

typedef struct nodo node_t;

extern int sum_list(node_t* list);

int main(int argc, char *argv[]){
    node_t *list = NULL;
    node_t *prec = NULL;
    for (int i = 0; i<4; i++) {
        node_t *elem = (node_t *) malloc(sizeof(node_t));
        if (elem == NULL) {
            printf("Errore malloc\n");
            exit(1);
        }
        elem->value = i;
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

    int sum = sum_list(list);

    return 0;
}