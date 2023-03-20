org 100h

    ; Set keyboard handler
    cli ; stop interupts
    
    xor bx, bx
    mov es, bx
    mov bx, 4h * 9h ; handler addres

    mov cx, es:[bx]                      ; |
    mov [New09IntHandler.old090Fs], cx   ; |
                                         ; |
    mov cx, es:[bx+2h]                   ; |
    mov [New09IntHandler.old090Seg], cx  ; > save previous handler addres

    mov ax, cs                           ; | current segment
    mov word es:[bx], New09IntHandler    ; |
    mov es:[bx + 2h], ax                 ; > set new handler address

    sti ; resume interupts

    ;Stay residdent
    mov ax, 3100h
    mov dx, EOP
    shr dx, 4
    inc dx
    int 21h


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Global variables
alt_flag:        db 0Ah


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
New09IntHandler:
    pusha   ; 

    in al, 60h      ; get scan code
    
    ; cmp al, 38h     ; if (al = 'alt') { alt_flag = 1; }
    ; je .pressed_alt

    cmp al, 1Eh   ; 'a' scan code
    je .pressed_a ; if (al = 'a') { if (alt_flag) -> enable_drawing_frame }

.clear_alt_flag:
    ; mov byte cs:[alt_flag], 0h ; > alt_flag = 0

.@: 
    popa

    db 0eah,        ; | jmp to previous handler
.old090Fs  dw 0h    ; |
.old090Seg dw 0h    ; >

    iret

.pressed_alt:
    ; mov byte cs:[alt_flag], 1h
    jmp .@

.pressed_a:
    ; mov al, cs:[alt_flag]        ; if (alt_falg) 
    ; cmp al, 1h                   ; {draw_frame_falg = 1;
    ; je .clear_password           ;

    ; jmp .clear_alt_flag

    .clear_password:
        push es
        push ds

        mov bx, 0h
        mov ch, 4eh

        mov ax, es
        mov ds, ax

        ; mov ax, 0b800h
        ; mov es, ax

        ; mov si, 15dh
        ; call PUT_STR
    

        mov byte ds:[15dh], 0h
        mov byte ds:[15dh + 1h], 24h

        mov ax, ds
        mov es, ax ; es = ds for stosw

        xor al, al
        mov cx, 14d
        mov di, 15Dh + 2h
        rep stosb ; (ES:DI)= AL

        pop ds
        pop es

        jmp .clear_alt_flag


%include "PUT_STR.ASM"

EOP: