#include<stdio.h>
#include<stdlib.h>


#include"mylist.h"

extern node_t* merge(node_t* a,node_t* b);

//Sto main l'ha scritto il mencagli ho solo aggiunto cose per stampare
//Pieno di memory leak brutto codice assai però me lo tengo a fini didattici
int main()
{
    // creo la prima lista
    node_t *prima_list = create_list(10) ;
    print_list(prima_list);
    // creo la seconda lista
    node_t *seconda_list = create_list(10);
    
    print_list(seconda_list);
    
    node_t *result_list = merge(prima_list, seconda_list);
    print_list(result_list);
    // stampo la lista unita
    free(result_list);

    return 0;
}
