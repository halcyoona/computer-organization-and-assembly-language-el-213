include irvine32.inc

.data
	var1 DT 0AABBBBCCCCDDDDEEFFFFh
	var2 DT	0AABBBBCCCCDDDDEEFFFFh
	check	dword 0
	sum  word 0, 0, 0, 0, 0, 0 
	;final DT 0
	;multiply byte "a",0
.code

	
	Main proc
	
	;First FFFF + FFFF
	movzx eax, word PTR var1
	mov check, eax
	movzx eax, word PTR var2
	add check, eax

	xor eax, eax
	mov ax, word PTR check
	mov sum, ax
	;call writehex
	
	
	
	;second DDEE + DDEE
	xor eax, eax
	xor ebx, ebx
	movzx ebx, word PTR check+2
	movzx eax, word PTR var1+2
	mov check, eax
	movzx eax, word PTR var2+2
	add check, eax
	add check, ebx
	mov eax, check
	;call writehex
	
	xor eax, eax
	mov ax, word PTR check
	mov sum+2, ax
	;call writehex
	
	
	
	
	;CCDD + CCDD
	xor eax, eax
	xor ebx, ebx
	movzx ebx, word PTR check+2
	movzx eax, word PTR var1+4
	mov check, eax
	movzx eax, word PTR var2+4
	add check, eax
	add check, ebx
	mov eax, check
	;call writehex
		
	xor eax, eax
	mov ax, word PTR check
	mov sum+4, ax
	;call writehex
	
	
	;BBCC + BBCC
	xor eax, eax
	xor ebx, ebx
	movzx ebx, word PTR check+2
	movzx eax, word PTR var1+6
	mov check, eax
	movzx eax, word PTR var2+6
	add check, eax
	add check, ebx
	mov eax, check
	;call writehex
			
	xor eax, eax
	mov ax, word PTR check
	mov sum+6, ax
	;call writehex
	
	
	
	
	;AABB + AABB
	xor eax, eax
	xor ebx, ebx
	movzx ebx, word PTR check+2
	movzx eax, word PTR var1+8
	mov check, eax
	movzx eax, word PTR var2+8
	add check, eax
	add check, ebx
	mov eax, check
	;call writehex
			
	xor eax, eax
	mov ax, word PTR check
	mov sum+8, ax
	;call writehex


	;last 1
	mov ax, word PTR check+2
	mov sum+10, ax
	;call writehex
	
	
	xor eax, eax
	mov ax, sum+10
	call writedec
	mov ax, sum+8
	call writedec
	mov ax, sum+6
	call writedec
	mov ax, sum+4
	call writedec
	mov ax, sum+2
	call writedec
	mov ax, sum
	call writedec
	call crlf
	
	
	
	exit
	Main endp
	End Main