    .text
    .global merge
    .type merge , %function

merge :
        ands r2 , r0 , r1 @ list a || list b == NULL? => r2 
        beq null @ eq -> Z == 1 ?
        mov r2 , r0  @ r2 = prima_lista 
    next :
        cmp r2 , #0 
        beq end
        mov r3 , r2 @ r3 = p 
        ldr r2 , [r3, #4] @ r2 = p->next 
        b next
    end :
        str r1 , [r3 , #4]
        mov pc , lr

    null :
        ldr r0 , =errmsg
        bl printf 
        mov r7 ,#1
        mov r0 ,#1
        svc 0

    .data
    errmsg :
        .string "error list a or b is NULL\n"
