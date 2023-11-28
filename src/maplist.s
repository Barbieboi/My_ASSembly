    .text
    .global map_list
    .type map_list , %function

    map_list :
        push {r4 , lr}
        mov r4 , r1
    loop : 
        cmp r0 , #0 
        beq return
        push {r0}
        mov r1 , r0
        ldr r0 , [r1]
        blx r4
        pop {r1}
        str r0 , [r1] , #4
        ldr r0 , [r1]
        b loop 
    return :
        pop {r4 , lr}
        mov pc , lr

