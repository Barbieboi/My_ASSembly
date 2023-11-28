#define _GNU_SOURCE 
#include <stdio.h>  
#include <stdlib.h> 
#include<string.h>

extern char* reverse(char* s , int n);

int main(int argc, char *argv[]){
    
    char s[] = "palle" ;
    char topi[] = "itopinonavevanonipoti";

    char *rev_s = reverse(s , 5);
    char *rev_topi = reverse(topi, 21);

    printf("s: %s\nrev_s: %s\ntopi: %s\nrev_topi: %s\n" , s, rev_s, topi , rev_topi);

    return 0;
}