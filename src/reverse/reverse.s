    .text
    .global reverse
    .type reverse , %function


@ char * reverse(char * s , int n)
@                   r0        r1

reverse :
        push {r4 , r5 , lr}
        cmp r0 , #0         @ s == NULL ?
        beq return
        mov r4 , r0         @ s => r4
        mov r5 , r1         @ len => r5 
        mov r0 , r1         @ r0 pronto per la malloc
        bl malloc
        cmp r0 , #0         @ ritorno malloc NULL ?
        beq err_malloc
        push {r0}           @ salvo rev_s 
        mov r2 , #0         @ \0 => r2
        strb r2 ,[r0 , r5]    @ rev_s[len] = '\0'
        sub r5 , r5 , #1
    loop :
        cmp r5 , #0xffffffff@ len == -1 ?
        beq return
        ldrb r1 , [r4 , r5]  @ metto in r1 s[len-1]
        strb r1 , [r0] , #1  @ rev_s[i] <= r1 , i++
        sub r5 , r5 , #1    @ len--   
        b loop
    return :
        pop {r0}
        pop {r4 , r5 , lr}
        mov pc , lr

    err_malloc :
        pop {r4 , r5 ,lr}
        mov r7, #1
        mov r0 , #1
        svc 0 
