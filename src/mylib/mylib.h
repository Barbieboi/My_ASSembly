struct nodo
{
    int value;
    struct nodo *next;
};

typedef struct nodo node_t;


//Stampa una lista di interi
void print_list(node_t* list);

void print_array(int *arr , int len);

//Crea una lista di n interi randomici
node_t* create_list(int n);

//Free di una lista (Mi urtavano i memory leak)
void freelist(node_t* list);
