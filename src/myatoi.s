    .text
    .global myatoi
    .type myatoi , %function

myatoi :
        push { r4, r5 }
        mov r3 , #0         @r3 = risultato
        mov r2 , #0         @ r2 = counter
    loop :
        ldrb r1 , [r0] , #1 @ inserisce in r1 il carattere e incrementa r0
        cmp r1 , #0         @ r1 == NULL ?
        beq stack_read      @ mettere result in r0 e return
        cmp  r1 , #0x30
        blt error
        cmp  r1 , #0x39
        bhi error
        sub r1 , #0x30
        push {r1}           @ riempio lo stack con i miei valori
        add r2 , r2 , #1
        b loop
    stack_read :            @ ho lo stack con i valori in ordine dalle unità in poi 
        mov r0 , #0
        mov r1 , #1         @ potenza di dieci corrente
        mov r5 , #10
    read_loop :
        cmp r0 , r2
        beq return
        pop {r4}
        mul r4 , r4 , r1
        add r3 , r3 , r4
        mul r1 , r1 , r5 
        add r0 , #1
        b read_loop
    return :
        mov r0 , r3
        pop {r4 , r5}
        mov pc , lr

    error :
        mov r0 , #0
    clean :                 @ devo "pulire" lo stack , ho letto r2 valori
        cmp r0 , r2 
        beq end_error
        pop {r1}
        add r0 , r0 , #1 
    end_error :
        mov r0 , #0xffffffff
        pop {r4,  r5}
        mov pc , lr
