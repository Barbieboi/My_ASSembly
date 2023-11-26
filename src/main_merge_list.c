#include<stdio.h>
#include<stdlib.h>

struct nodo
{
    int value;
    struct nodo *next;
};

typedef struct nodo node_t;

extern node_t *merge(node_t *prima, node_t *seconda);

void print_list(node_t* list){
    node_t* t = list ;
    printf("[ ");
    while (t != NULL) {
        printf("%d ", t->value);
        t = t->next;
    }
    printf("]\n");
}


//Sto main l'ha scritto il mencagli ho solo aggiunto cose per stampare
//Pieno di memory leak brutto codice assai però me lo tengo a fini didattici
int main()
{
    // creo la prima lista
    node_t *prima_list = NULL;
    node_t *prec = NULL;
    for (int i=0; i<5; i++) {
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
            prima_list = elem;
            prec = elem;
        }
        elem->next = NULL;
    }
    print_list(prima_list);
    // creo la seconda lista
    node_t *seconda_list = NULL;
    prec = NULL;
    for (int i = 0; i<10; i++) {
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
            seconda_list = elem;
            prec = elem;
        }
        elem->next = NULL;
    }
    print_list(seconda_list);
    node_t *result_list = merge(prima_list, seconda_list);
    print_list(result_list);
    // stampo la lista unita
    return 0;
}
