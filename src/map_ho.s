    .text
    .global map_ho
    .type map_ho , %function
    map_ho :
        push {lr}
        mov r3 , r2
        mov r2 , #0 @ r2 = result
    loop :    
        cmp r1 , #0 @ho finito ?
        beq return
        push {r0 , r1}
        ldr r1 , [r0]
        mov r0 , r1
        push {r2, r3}
        blx r3
        pop {r2, r3}
        cmp r0 , #0xffffffff
        beq else 
        mov r1 , r0
        lsr r1 , #2
        add r2 , r2 , r1
    else :
        pop {r0 , r1}
        add r0 , r0 , #4
        sub r1 , r1 , #1
        b loop
    return :
        mov r0 , r2
        pop {lr}
        mov pc , lr
