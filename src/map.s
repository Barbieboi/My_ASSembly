    .text
    .global map
    .type map , %function

map :   
        push {lr}   
        mov r2 , #0 @ r2 = result
    loop : 
        cmp r1 , #0 @ho finito ?
        beq return
        push {r0, r1}
        ldr r3 , [r0] 
        mov r0 , r3
        push {r2}
        bl myatoi
        pop {r2}
        cmp r0, #0xffffffff 
        beq else 
        mov r1 , r0
        lsr r1 , #2
        add r2 , r2 , r1
    else :
        pop {r0, r1}
        add r0 , r0 , #4
        sub r1 , r1 , #1
        b loop

    return :
        mov r0 , r2
        pop {lr}
        mov pc , lr
