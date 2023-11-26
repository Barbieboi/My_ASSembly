    .text
    .global main
    .type main , %function

main :
    push {lr}
    ldr r0 , =msg
    bl printf 
    mov r0 , #0
    pop {pc}

.data
    msg:.string "uccidimi\n"
