    .text
    .global trasforma
    .type trasforma , %function

@ trasforma(char *s , char * from , char * to, int N)
@               r0        r1             r2      r3
trasforma :
        push {r4 , r5 , lr}
        mov r5 , r0 
    main_loop :
        cmp r4 , #0 @ s == NULL ?
        beq str_end
        push {r0 , r1 , r2 , r3 }
        ldrb r0 , [r5]  
        bl cambia
        strb r0 , [r5] , #1
        mov r4 , r0
        pop {r0 , r1 , r2 , r3 }
        b main_loop
    str_end : 
        pop {r4 , r5 , lr}
        mov pc , lr
