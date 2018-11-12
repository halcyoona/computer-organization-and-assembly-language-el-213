include irvine32.inc

.data

base dword 0
exp dword 0
result dword ?
.code

power proc 
pushad
mov ecx, eax
mov eax, base
dec ecx
L1 :	mul base
	loop L1
mov result,eax
popad
ret
power endp


main proc 

call readint
mov base, eax
call readint
call power

mov eax,result
call writedec
call crlf

exit 
main endp


End Main
