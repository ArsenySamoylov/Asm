%include "macroses.asm"
org 100h

Start:

;    mov ah, 11110000b
;    mov bx, STRING
;    call PUT_BINARY_AX_IN_BUFFER

;    SYS_PUT_STRING STRING
   
;    ; put screen to wait
;    GETCH
   
;    mov dx, 0AFEh
;    mov si, HEX_STRING
;    call PUT_HEX_DX_IN_BUFFER
   
;    SYS_PUT_STRING HEX_STRING
   
;    ; put screen to wait
;    GETCH

;    mov ax, -1d
;    mov bx, DEC_STRING
;    call PUT_DECIMAL_IN_BUFFER

;    SYS_PUT_STRING DEC_STRING
   
;    mov bl, 0d
;    mov bh, 0d
;    mov dh, 25d
;    mov dl, 50h

;    mov si, 0b800h
;    mov es, si

;    call DRAW_FRAME
    ;;;;;;;;;;;;;;;;;;;;

    ;;;;;;;;;;;;;;;;;;;;;;;
    mov dx, DEC_INPUT_BUF

    call GET_DECIMAL_FROM_STDIN
    


    mov ax, di
    mov bx, DEC_STRING


    call PUT_DECIMAL_IN_BUFFER


    SYS_PUT_STRING DEC_STRING

    GETCH
    
    ; exit
   EXIT 0h

%include "CLS.ASM"
%include "PUT_STR.ASM"
%include "PUT_IN_BINARY_AX.asm"
%include "PUT_HEX_DX_IN_BUFFER.asm"
%include "PUT_DECIMAL_IN_BUFFER.asm"
%include "DRAW_FRAME.asm"
%include "GET_DECIMAL_FROM_STDIN.asm"

STRING:     db "NEGRU_PIDORASU))   $"
HEX_STRING: db "====$"
DEC_STRING: db "-----$"
DEC_INPUT_BUF: db 6h, "%****^$" ; 5h - max input size, * -for chars, ^ - for CR, % - for input length
TEST_STR: db 6h, "%****^$" ; 5h - max input size, * -for chars, ^ - for CR, % - for input length