@calcolare la somma degli elemti di un array versione main senza bl o lsl

    .text
    .global main
    .type main , %function

main :
        push {lr}
        ldr r0 , =len 
        ldr r3 , [r0]   @ r3 = lunghezza arr
        ldr r0 , =arr
        mov r2 , #0 
        mov r1 , #0     @ r1 = sum 
    for :    
        cmp r2 , r3
        beq end
        push {r2}
        ldr r2 , [r0] , #4
        add r1 , r1 , r2 
        pop {r2}
        add r2, r2 , #1
        b for
    end :  
        ldr r0 , =msg
        bl printf
        mov r0 , #0 
        pop {pc}




.data
    arr: .word 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    msg: .string "result : %d\n"
    len: .word 10

