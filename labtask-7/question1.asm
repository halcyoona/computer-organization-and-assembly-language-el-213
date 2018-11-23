Include irvine32.inc
.data
	a dword 16
	b dword 32
	d dword 64
	c1 dword 64
	e dword 0
	eg dword 0
	ls dword 0
	gr dword 0
	count dword 0
	str1 byte "e is  ",0
	str2 byte "  times less than d",0
.code
	main PROC
	mov ecx, 0
	mov eax, a
	add eax, b
	mov e, eax
	mov eax, e
	cmp eax, d
	jne firstIfFalse
	cmp eax, 0
	jna firstIfFalse
	mov ebx, 1
	mov eg, ebx
	jmp secondIf

firstIfFalse:	cmp eax, d
		jna firstElseIfFalse
		cmp eax, 0
		je firstElseIfFalse
		mov ebx, 0
		mov eg, 0
		jmp secondIf

firstElseIfFalse:	cmp eax, d
			ja movetobody
			cmp eax, 10
			ja movetobody
			jmp secondIfElseFalse
			
movetobody:	mov ebx, 1
		mov gr, ebx
		jmp secondIf

secondIfElseFalse:	mov ebx, 0
			mov gr, ebx

secondIf:	cmp eax, d
		jnb secondIfFalse
		mov ebx, 1
		mov ls, ebx
		jmp whileLoop
		
secondIfFalse:	mov ebx, 0
		mov ls, 0
		jmp whileLoop
		
whileLoop:	cmp eax, d
		je next
		inc ecx
		mov edx, offset str1
		call writestring
		mov count, ecx
		loop whileLoop

next:	mov edx, offset str1
	call writestring
	mov eax, count
	call writedec
	mov edx, offset str2
	call writestring 
	call crlf
			
	
	exit
	main ENDP
END main