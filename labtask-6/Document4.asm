include irvine32.inc

.data

num1 dword 5 dup(?)
result dword ?
temp1 dword 0
temp2 dword 0
.code

max proc 
pushad

mov esi, 0
mov eax,num1[esi]
mov temp1, eax
mov temp2, eax

mov ecx, lengthof num1
;mov eax, ecx
;call writedec
call crlf
L1 :	mov eax, num1[esi]
	cmp eax, temp1
	JB next
	mov eax, num1[esi]
	mov temp1, eax
	
next: 	cmp ecx, lengthof num1
	JZ next1
	mov eax, temp1
	cmp eax, temp2
	JAE next1
	cmp eax, num1[esi]
	JB next1
	mov temp2, eax
next1:	add esi, 4
	loop L1
mov eax, temp2
mov result,eax
popad
ret
max endp


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

call max

mov eax,result
call writedec
call crlf

exit 
main endp


End Main
