	.386P
.model tiny
default_string_length	 = 0Bh
string_offset 			 = 900h

string_color  	   = 100b
back_ground_color  = 101b
blink_flag 		   = 10001000b

.code
org 100h


Start:
	; SETTING ADDRESING FOR VIDEO MEM
	mov bx, 0b800h      ; setting es for addresing to VideoMemory
	mov es, bx

	; SETTING STRING (if program runs with option -c, than it will display list of its argument except of -c
	xor bx, bx
	mov cl, [bx + 80h]
	mov ch, 0h

	cmp cl, 3h 			; check numer of symbols in arguments
	jb DEFAULT_STR		; 3 because of extra space before '-c'

	mov dx, [bx + 81h + 1h]  ; +2, because of space

	cmp dx, 'c-'
	jne DEFAULT_STR
	
CONSOLE_ARG:
	mov si, 081h		; set address, from console arguments begin to compy in load inst

	;xor bx, bx
	;mov cl, [bx + 80h]	; set cx, to number of symbols of argumnets

	jmp END_DEFAULT_STR

DEFAULT_STR:
	lea	si, STRING_TO_BE_DISPLAYED
	mov cx, default_string_length
END_DEFAULT_STR:
	
	mov bx, string_offset	    ; offset for string position on the display
	
	mov ah, back_ground_color
	shl ah, 3h
	
	or ah, string_color        ; set	ting color for the strin
	or ah, blink_flag

	; SETTING LOAD INSTRUCTION
	cld			    ; counter for load will increment
	
	
AGAIN:	lodsb
	
	mov es:[bx], ax
	
	add bx, 2h
	loop AGAIN

	;exit(0)
	mov ax, 4c00h
	int 21h


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	DATA SEGMENT			     ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
STRING_TO_BE_DISPLAYED: db 'Hello world$' ; length = 11 

end 	Start
	