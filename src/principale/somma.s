            .text
            .global somma
            .type somma, %function @ r0 <- puntatore stringa
                                   @ r0 <- risultato
     
    somma :        
        mov r3 , #0
    loop :
        ldrb r1 ,[r0]
        cmp r1 , #0
        beq return
        cmp r1 , #0x30
        blt next
        cmp r1, #0x39
        bhi next
        sub r1, r1 , #0x30
        add r3, r3 , r1
    next :
        add r0 , r0 , #1
        b loop
    return :
        mov r0 , r3 
        mov pc , lr
        
