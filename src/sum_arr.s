    .text
    .global sum_arr
    .type sum_arr , %function

sum_arr :
        push {r4}
        mov r4 , r1 @ r4 = length
        mov r2 , #0 @ r2 = res
        mov  r3 , #0 @ r3 = index
    loop :
        cmp r3 , r4 
        beq end
        ldr r1 , [r0] , #4        
        add r2 , r1 , r2
        add r3 , r3 , #1
        b loop
    end :
        mov r0 , r2
        pop {r4}
        mov pc , lr


