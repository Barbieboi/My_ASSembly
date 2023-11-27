    .text
    .global mul_array
    .type mul_array , %function

@ void mul_array(int* a, int n,int k);
@Preso un array a di lunghezza n fa a[i] = a[i] * k

mul_array :
        push {lr}
        cmp r0 , #0 
        beq null
    for :
        cmp r1 , #0
        beq end
        ldr r3 , [r0]
        mul r3 , r3 , r2
        str r3 , [r0] , #4
        sub r1 , r1 , #1
        b for
    end :
        pop {lr}
        mov pc , lr
    
    null :
        ldr r0 , =nullmsg
        bl puts
        mov r7 , #1
        mov r0 , #1
        pop {lr} 
        svc 0

.data
    nullmsg :
        .string "Error: array is NULL"
