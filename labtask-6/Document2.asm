include irvine32.inc

.data

num1 dword 0
result dword ?
.code

factorial proc 
pushad
mov ecx, eax
dec ecx
L1 :	mul ecx
	loop L1
mov result,eax
popad
ret
factorial endp


main proc 

call readint
mov num1, eax

call factorial

mov eax,result
call writedec
call crlf

exit 
main endp


End Main
