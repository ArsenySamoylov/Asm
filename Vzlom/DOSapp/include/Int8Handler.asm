;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
New08IntHandler:
    pusha      ; 
    mov bp, sp ; save sp in bp, to addres saved values later
    
    push ds    ; save sd     

    db 0B8h         ; | (deprecated, you can use cs)
.selector: dw 0h    ; | mov ax, selector value
    mov ds, ax      ; > set ds for addresing

    mov al, ds:[draw_frame_flag]
    cmp al, 1h
    je .draw_frame

.@:
    pop ds
    popa

    db 0eah,        ; | jmp to previous handler
.old080Fs  dw 0h    ; |
.old080Seg dw 0h    ; >

    iret


.var: db 0h, 0h ; for debug

.draw_frame:
    push si ; |
    push es ; > save the sh*t

    mov bx, 0b800h  ; | 
    mov es, bx      ; > es = b800h

    call UPDATE_SAVE_SCREEN_BUF

    call UPDATE_REGS_VALUE

    mov di, total_position
    mov si, draw_buf
    call PUT_BUFFER_ON_SCREEN
 
    pop es
    pop si
    jmp .@
;/////////////////////////////////////////////////////

;/////////////////////////////////////////////////////
;-----------------------------------------------------
; Expects: es = b800h
; CMPSW (DS:SI), (ES:DI)
; Overwrites: ax, ...
UPDATE_SAVE_SCREEN_BUF:
    mov si, save_buf;debug

    mov di, total_position
    mov si, draw_buf
    
    ; mov bx, save_buf

    mov dx, height + 1h
    
.compare_line:
    mov ax, 0h

    .@:
        mov bl, ds:[si]
        mov cl, es:[di]

        cmp  cl, bl
        jne .mismatch
        
        .continue:
        add di, 1h
        add si, 1h

        inc ax
        cmp ax, width * 2h
        jne .@

    add di, (50h - width) * 2h

    sub dx, 1h
    cmp dx, 1h

    jne .compare_line 

    ret

        .mismatch:
            mov bx, save_buf

            push dx

            mov dx, draw_buf
            sub dx, si
            neg dx

            add bx, dx

            pop dx

            mov ds:[bx], cl

            jmp .continue
;/////////////////////////////////////////////////////

;/////////////////////////////////////////////////////
; Expects: di
; Exit: di - end of printed value
%macro __UPDATE_REG_VALUE 1
    nop

    mov dx, ss:[bp + %1] ; value from stack 
    mov si, value_buf    
    call PUT_HEX_DX_IN_BUFFER

    mov bx, value_buf

%rep 4h
    mov al, ds:[bx]
    mov ds:[di], al

    add di, 2h
    inc bx
%endrep

    nop
%endmacro

value_buf: db "----*"

UPDATE_REGS_VALUE:

    mov di, draw_buf + (width + offset + 4) * 2

    __UPDATE_REG_VALUE ax_offset
    add di, (width - 4h) * 2h

    __UPDATE_REG_VALUE cx_offset
    add di, (width - 4h) * 2h

    __UPDATE_REG_VALUE dx_offset
    add di, (width - 4h) * 2h

    __UPDATE_REG_VALUE bx_offset
    add di, (width - 4h) * 2h

    __UPDATE_REG_VALUE sp_offset
    add di, (width - 4h) * 2h

    __UPDATE_REG_VALUE bp_offset
    add di, (width - 4h) * 2h

    __UPDATE_REG_VALUE si_offset
    add di, (width - 4h) * 2h

    __UPDATE_REG_VALUE di_offset
    add di, (width - 4h) * 2h    

    ret
%include "PUT_HEX_DX_IN_BUFFER.asm"