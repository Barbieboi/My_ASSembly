
.text
.global main
.type main , %function

main :              @ conta quanti 0 vengono forniti da riga di comando
        push {lr}
        cmp r0 , #2
        blt error
        push {r4}
        add r1 ,r1, #4
        mov r2 , #1
        mov r4 , #0 
    loop :    
        cmp r0 , r2 
        beq end 
        push {r0}
        ldr r0 , [r1] , #4
        push {r1 , r2 }
        bl atoi
        mov r3 , r0 
        pop {r1 , r2 }
        cmp r3 , #0
        addeq r4 , r4 , #1
        add r2 , r2 , #1
        pop {r0}
        b loop
    end :
        mov r1 , r4
        ldr r0 , =msg
        bl printf 
        mov r0, #0 
        pop {r4 , pc}

    error :
        ldr r0 , =errmsg
        bl printf
        mov r0, #0
        pop {pc}


.data
    msg : .string "%d zeroes\n"
    errmsg : .string "no arguments supplied\n"
