    .text
    .global headins
    .type headins , %function

@ node_t * headins(node_t* lista, int n)

    headins :
        push {r4 , lr}
        push {r0 , r1}      @salvo lista ed n sullo stack
        mov r0 , #8         @ 8 byte per node_t
        bl malloc       
        cmp r0 , #0         @ ritorno malloc == NULL?
        beq malloc_err
        mov r4 , r0         @ new_head => r4
        pop {r2 , r3}       @ lista => r2 ; n => r3
        str r3 , [r0] , #4  @ r3 => new_head->val ; new_head->next => r0
        str r2 , [r0]       @ new_head->next = lista 
        mov r0 , r4         @ new_head => r0
        pop {r4 , lr}
        mov pc , lr

    malloc_err :
        ldr r0 , =malloc_msg
        bl printf
        mov r7 , #1
        mov r0 , #1
        svc 0

    .data
    malloc_msg :
        .string "Malloc Error"
