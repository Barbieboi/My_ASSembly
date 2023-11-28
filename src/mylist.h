struct nodo
{
    int value;
    struct nodo *next;
};

typedef struct nodo node_t;


void print_list(node_t* list);

node_t* create_list(int n);
