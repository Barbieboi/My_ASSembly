
.text
.global main
.type main , %function

@controllare quanti numeri negativi ci sono in arr

main:
    push {lr}
    ldr r0, =arr
    mov r1 , #14 @ length 
    mov r2 , #0 @ res
    mov r3 , #0 @ indice i
loop:
    cmp r1 ,r3
    beq end
    ldr r12, [r0 , r3 , lsl #2]
    cmp r12, #0
    addlt r2,#1
    add r3 ,r3 ,#1
    b loop
end:
    ldr r0, =msg
    mov r1 ,r2 
    bl printf
    pop {lr}
    mov r0 ,#0
    mov pc, lr
    
.data
 
arr:.word   -1,-2,-3,-4,-5,-6, 7,-8, 9 ,10 ,11 ,-12 ,-13 ,14
msg:.string "ci sono %d numeri negativi\n"
