            .text
            .global principale
            .type principale, %function @ r0 <- puntatore inizio lista
                                        @ r0 <- risultato finale
principale : 
        push {r4 ,lr}
        mov r4 , #0
    loop :
        cmp r0 , #0
        beq return
        push {r0}
        ldr r1 , [r0] 
        mov r0 , r1 
        bl somma
        add r4 , r4 , r0
        pop {r0}
        add r0 , r0 , #4
        mov r1, r0 
        ldr r0 , [r1]
        b loop
    return :
        mov r0 , r4 
        pop {r4 ,lr}
        mov pc , lr
