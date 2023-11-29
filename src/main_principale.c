#include<stdio.h>
#include<stdlib.h>

struct nodo
{
    const char *string;
    struct nodo *next;
};

typedef struct nodo node_t;

extern int principale(node_t *lista);
extern int somma(char *string);
// extern int calcola(char c); // scommentare se si svolge le versione opzionale

int main()
{
    // inizializzo un po' di stringhe statiche
    const char *s1 = "P1pp0";
    const char *s2 = "C3ra";
    const char *s3 = "k3h2";
    const char *s4 = "zio";
    const char **ss = (const char **) malloc(sizeof(const char *) * 4);
    ss[0] = s1;
    ss[1] = s2;
    ss[2] = s3;
    ss[3] = s4;

    // creo la lista
    int i=0;
    node_t *prima_list = NULL;
    node_t *prec = NULL;
    for (i=0; i<4; i++) {
        node_t *elem = (node_t *) malloc(sizeof(node_t));
        if (elem == NULL) {
            printf("Errore malloc\n");
            exit(1);
        }
        elem->string = ss[i];
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

    // stampo la lista
    printf("{");
    node_t *result_list = prima_list;
    while (result_list != NULL) {
        printf("[%s] ", result_list->string);
        result_list = result_list->next;
    }
    printf("}\n");

    // calcolo risultato e lo stampo
    int ris = principale(prima_list);
    printf("Risultato è: %d\n", ris);
    free(ss);
    return 0;
}