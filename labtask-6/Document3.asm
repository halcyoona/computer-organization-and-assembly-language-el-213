include irvine32.inc

.data

num1 dword 5 dup(?)
result dword ?
temp dword 0
.code

min proc 
pushad

mov esi, 0
mov eax,num1[esi]
mov temp,eax

mov ecx, lengthof num1
;mov eax, ecx
;call writedec
call crlf
L1 :	mov eax, num1[esi]
	cmp eax, temp
	JA next
	;mov eax, num1[esi]
	mov temp, eax
next: 	add esi, 4
	loop L1
mov eax, temp
mov result,eax
popad
ret
min endp


main proc 

mov esi, 0
call readint
mov num1[esi], eax
add esi, 4

call readint
mov num1[esi], eax
add esi, 4

call readint
mov num1[esi], eax
add esi, 4

call readint
mov num1[esi], eax
add esi, 4

call readint
mov num1[esi], eax

call min

mov eax,result
call writedec
call crlf

exit 
main endp


End Main
