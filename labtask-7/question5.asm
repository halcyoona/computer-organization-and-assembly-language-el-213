include irvine32.inc

.data
	a dword 2
	b dword 3
	g dword 12
	d dword 5
	e dword 8
	temp dword 0
	
.code

max proc
	
	mov eax, a
	mov ebx, b
	cmp eax, ebx
	jae lab1
	mov eax, ebx
	
lab1:	
	mov ebx, g
	cmp eax, ebx
	jae lab2
	mov eax, ebx
	
lab2:	
	mov ebx, d
	cmp eax, ebx
	jae lab3
	mov eax, ebx
	
lab3:
	mov ebx, e
	cmp eax, ebx
	jae next
	mov eax, ebx
	
next:	mov temp, eax
	ret
max endp

main proc


call max
mov eax, temp
call writedec
call crlf
exit

main endp
End main