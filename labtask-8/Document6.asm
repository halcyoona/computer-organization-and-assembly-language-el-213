include irvine32.inc


;program to rotate values in different variables

.data

	byte1 byte 03Bh
	byte2 byte 046h
	byte3 byte 0FFh
.code
 main proc

; moving values into register 
movzx ax, byte3
movzx bx, byte2
movzx cx, byte1

;rotating 4 bits
shrd ax, bx, 4
shrd bx, cx, 4


shr cx, 4
RoL bx, 4
RoL bl, 4
RoL ax, 4
RoL al, 4

mov byte3, al
mov byte2, bl
mov byte1, cl


mov al, byte1
call writehex
call crlf

mov al, byte2
call writehex
call crlf

mov al, byte3
call writehex
call crlf

 	
 
 exit
 main endp
 End Main