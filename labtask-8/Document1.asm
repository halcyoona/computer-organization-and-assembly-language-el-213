include irvine32.inc

.data

.code

main proc

mov al, 10101111b
mov bl, 00001111b

;unsigned number SHL
;signed number SAL dest, n


SHL al,2
call writebin
call crlf


mov al, 10101111b
SHR al,2
call writebin
call crlf



mov al, 10101111b
RoL al,2
call writebin
call crlf


mov al, 10101111b
RoR al,2
call writebin
call crlf



mov al, 10101111b
SHLD ax,bx,2
call writebin
call crlf
mov al, bl
call writebin
call crlf



mov al, 10101111b
mov bl, 00001111b
SHRD ax,bx,2
call writebin
call crlf
mov al, bl
call writebin
call crlf



exit
main endp
End Main