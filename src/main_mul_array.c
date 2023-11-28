#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 

#include"mylib.h"

extern void mul_array(int *arr, int len, int k);

int main(int argc, char *argv[]){
    
    int n = 10 ;

    int *a = malloc(sizeof(int)*n);

    for(int i = 0 ; i < n ; i++){
        a[i] = rand()%100;
    }


    print_array(a, n);
    puts("--------------------");
    mul_array(a , n , 2);
    print_array(a, n);

    return 0;
}