include Irvine32.inc

.data 

x1 dword 1
y1 dword 2

x2 dword 1
y2 dword 2	
	
distance dword ?
	
.code
	manhttan proc
		
		mov eax, x1
		sub eax , y1
		cmp eax, 0
		JA next        ;neg to positive
		neg eax
		
		mov ebx, x2
		sub ebx , y2
		cmp ebx, 0
		JA next
		neg ebx
next:		
		add eax, ebx
		mov distance , eax

	ret 
	manhttan endp
	
	main proc
	
	call manhttan
	
	
 	call writeint
 	main endp
 	end main
 	
 	exit