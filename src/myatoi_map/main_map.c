#include<stdio.h>
#include<stdlib.h>

extern int myatoi(char *);
extern int map(char ** v, int n);
extern int map_ho(char **v, int n, int (*f)(char *));

int main(int argc, char **argv)
{
    char *v1[] = {"12", "4", "22", "24"};
    char *v2[] = {"", "4", "12", "22"};
    char *v3[] = {"12", "4d", "22"};

    printf("15 / %d\n", myatoi("15"));
    printf("test 1: 15 ASM = %d\n", map(v1, 4));
    printf("test 2: 9 ASM = %d\n", map(v2, 4));
    printf("test 3: 8 ASM = %d\n", map(v3, 3));
    printf("map_ho test 1: 15 ASM = %d\n", map(v1, 4));
    printf("map_ho test 2: 9 ASM = %d\n", map(v2, 4));
    printf("map_ho test 3: 8 ASM = %d\n", map(v3, 3));

    return 0;
}