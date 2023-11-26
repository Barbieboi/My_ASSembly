.text
.global rec_fact
.type rec_fact , %function

rec_fact :
        @push {lr}
        cmp r0 , #0
        bne else 
        mov r0 , #1
        mov pc, lr
    else :
        push {r0 , lr}
        sub r0 , r0 , #1
        bl fact 
        pop {r1 , lr}
        mul r0 ,r0 , r1    
        mov pc, lr     
