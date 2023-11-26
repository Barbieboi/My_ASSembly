    .text
    .global merge
    .type merge , %function

merge :
        ands r2 , r0 , r1 @ list a || list b == NULL? => r2 
        beq null @ eq -> Z == 1 ?
        @bla bla



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
