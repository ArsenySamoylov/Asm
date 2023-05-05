.global _start

.text
_start:
   
    movq $1, %rax 

    movq $1,   %rdi
    movq $HELL, %rsi
    movq $(HELL_END - HELL), %rdx
    syscall

    movq $60, %rax
    syscall

HELL: .ascii "Hello world!\n\0"
HELL_END:
