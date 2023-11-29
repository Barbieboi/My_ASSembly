    .text
    .global searchl
    .type searchl , %function

searchl :
        mov r3 , r1 
    loop :
        cmp r0 , #0
        beq not_found
        ldr r1 , [r0]
        cmp r1 , r3
        moveq r0 , #1
        moveq pc , lr 
        ldr r2 , [r0 , #4]
        mov r0 ,r2
        b loop
    
    not_found :
        mov r0 , #0
        mov pc ,lr

