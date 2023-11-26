.text
.global main
.type main , %function

main :
    push {lr}
    cmp r0 , #2 @ argc == 2
    bne err
    ldr r0, [r1, #4] @ carico argv[1]
    bl atoi
    push {r0}
    bl rec_fact @ in r0 metto il risultato
    pop {r1}
    mov r2,r0
    ldr r0, =msg
    bl printf
    @ return 0
    mov r0, #0
    pop {pc}

err : 
    ldr r0 , =err_msg
    bl printf
    @ exit 1
    mov r0 , #1
    mov r7 , #1 
    svc 0 

.data
    msg :
        .string "il fattoriale di %d : %d\n"
    err_msg :
        .string "Something went wrong\n"

