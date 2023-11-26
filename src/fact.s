.text
.global fact
.type fact , %function

fact:
    mov r1 , r0
loop:
    cmp r1 , #1
    beq end 
    sub r1, r1 ,#1
    mul r0 , r1 , r0 
    b loop
end:
    mov pc ,lr 


