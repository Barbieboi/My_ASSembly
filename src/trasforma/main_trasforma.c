#include <stdio.h>
#include <stdlib.h>
#include <string.h>


extern void trasforma(char *, char *, char *, int);
int main(int argc, char ** argv) {
    int N = 5;
    char from[] = {'a', 'e', 'i', 'o', 'u'};
    char to [] = {'x', 'y', 'w', 'z', 'h'};
    char * s[] = {"", "u", "cmpxt", "aiuoe", "vediamo come va con questa frase"};
    char *ok[] = {"", "h", "cmpxt", "xwhzy", "vydwxmz czmy vx czn qhystx frxsy"};
    int nw = 5;
    int i;
    for(i=0; i<nw; i++) {
        char * tmp = (char *) malloc(strlen(s[i])+1);
        strcpy(tmp, s[i]);
        trasforma(tmp, from, to, N);
        if(strcmp(tmp, ok[i]) == 0) {
            printf("OK <%s> -> <%s>\n", s[i], tmp);
        } else {
            printf("Errore: %s dovrebbe essere %s\n", tmp, ok[i]);
        }
    }
    return(0);
}
