    .text
    .global map_list
    .type map_list , %function

@ void map_list(node_t* lista , int (*f)(int))
    
    map_list :
        push {r4 , lr}
        mov r4 , r1         @ f => r4
    loop : 
        cmp r0 , #0         @ lista == NULL ?
        beq return
        push {r0}           @ salvo lista
        mov r1 , r0         @ lista => r1
        ldr r0 , [r1]       @ lista->val => r0 
        blx r4              @ f(r0) => r0 
        pop {r1}            @ lista => r1
        str r0 , [r1] , #4  @ r0 => lista->val ; lista->next => r1
        ldr r0 , [r1]       @ lista->next => r0
        b loop 
    return :
        pop {r4 , lr}
        mov pc , lr

