    .text
    .global headins
    .type headins , %function

    headins :
        push {r4 , lr}
        push {r0 , r1}
        mov r0 , #8
        bl malloc
        cmp r0 , #0
        beq malloc_err
        mov r4 , r0 
        pop {r2 , r3}
        str r3 , [r0] , #4
        str r2 , [r0]
        mov r0 , r4 
        pop {r4 , lr}
        mov pc , lr

    malloc_err :
        ldr r0 , =malloc_msg
        bl printf
        mov r7 , #1
        mov r0 , #1
        svc 0

    .data
    malloc_msg :
        .string "Malloc Error"
