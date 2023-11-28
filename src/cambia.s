    .text
    .global cambia
    .type cambia , %function

@ char cambia(char c,  char* from , char* to , int N)
@                r0         r1         r2         r3
cambia :
        push {r4 , r5}
        mov r4 , #0
        mov r5 , r2
    loop :
        cmp r4 , r3
        beq not_found
        ldrb r2 , [r1 , r4] 
        cmp r2 , r0
        beq found 
        add r4 , r4 , #1
        b loop
    found :
        ldrb r0 , [r5 , r4]
        pop {r4 , r5}
        mov pc , lr
    not_found :
        pop {r4 , r5 }
        mov pc , lr
