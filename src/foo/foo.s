    .text
    .global foo
    .type foo , %function
    foo:
    mul r0 , r0 , r1
    mov pc ,lr
