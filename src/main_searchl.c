#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 


struct nodo
{
    int value;
    struct nodo *next;
};

typedef struct nodo node_t;

extern int searchl(node_t* list, int k);

int main(int argc, char *argv[]){
    if(argc != 2){
        puts("Uso: ./searchl val") ;
        exit(EXIT_FAILURE);
    }
    node_t *list = NULL;
    node_t *prec = NULL;
    for (int i = 0; i<20; i++) {
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

    if(searchl(list, atoi(argv[1])) == 1){
        puts("Found it!");
    }

    return 0;
}