    .text
    .global printl
    .type printl , %function

printl :
        cmp r0 , #0         @ list == NULL
        beq end 
        push {r0 , lr} 
        ldr r1 , [r0]
        ldr r0 , =msg
        bl printf 
        pop {r1 , lr}
        ldr r0 , [r1 , #4]  @ list = list->next
        b printl
    end :
        push {lr}
        ldr r0 , =next_line
        bl printf
        pop {lr }
        mov r0 , #0
        mov pc , lr 

.data 
    msg : 
        .string "%d\t"
    next_line : 
        .string "\n"
