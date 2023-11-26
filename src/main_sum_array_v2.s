
@calcolare la somma degli elementi di un array versione con funzione esterna     
    
    .text
    .global main
    .type main , %function

main :
    push {lr}
    ldr r0 , =arr
    ldr r2 , =len
    ldr r1 , [r2]
    push {r0}
    bl sum_arr
    pop {r2}
    mov r1 , r0 
    ldr r0 , =msg
    bl printf
    mov r0 , #0
    pop {pc}
    

.data
    msg: .string "result : %d\naddress: %p\n"
    arr: .word 1,2,3,4,5,6,7,8,9,10
    len: .word 10

    
