struct nodo
{
    int value;
    struct nodo *next;
};

typedef struct nodo node_t;


//Stampa una lista di interi
void print_list(node_t* list);

//Crea una lista di n interi randomici
node_t* create_list(int n);
