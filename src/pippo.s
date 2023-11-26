.text
.global pippo
.type pippo , %function 

    pippo:
        mov r2 ,r0
        mov r0 , #0
        sub r0 , r2 , r1
        mov pc, lr
