.186
.model tiny

include macroses.asm
.code
org 100h

Start:
	
    mov ah, 11001110b
    mov al, ' '
    
    mov bx, 0B800h
    mov es, bx

    call CLR_SCR

    mov si, OFFSET STRING
    mov bl, 3
    mov bh, 24

    mov ch, ah

    mov ch, 11101010b
    call PUT_STR

    mov ax, 1010100101b
    mov bx, offset STRING
    
    call PUT_BINARY_AX_IN_BUFFER

    mov si, OFFSET STRING
    mov bl, 3
    mov bh, 24

    mov ch, ah

    mov ch, 11101010b
    call PUT_STR


    .Exitt

include CLS.ASM
include PUT_STR.ASM
include PUT_IN~1.ASM

STRING: db "NEGRU_PIDORASU))$"

end Start