include irvine32.inc



; show time procedure
.data


str1 byte "Time is : ",0
str2 byte ":",0
time1 word 0001001000000111b

.code

showFileTime proc

mov edx,offset str1
call writestring
mov bx, ax
shr ax, 11
call writedec

mov edx, offset str2
call writestring

mov ax, bx
shl ax, 5
shr ax, 10
call writedec

mov edx, offset str2
call writestring
mov ax, bx
shl ax, 11
shr ax, 11
call writedec
call crlf

ret
showFileTime endp



main proc

xor eax, eax
mov ax, time1
call showFileTime

exit
main endp
End Main