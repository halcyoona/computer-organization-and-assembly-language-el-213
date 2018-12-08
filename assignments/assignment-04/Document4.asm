include irvine32.inc


; program to encrypt and decrypt msg

.data


str1 byte "Input Msg : ",0
str2 byte "Encrytped Msg : ",0
str3 byte "Output Msg : ",0
strInput byte "Hello World!",0
length1 dword 12 
key byte -2,4,1,0,-3,5,2,-4,-4,6
temp dword 0

.code


encrypt proc

pushad

L1:	xor eax, eax
	mov ah, [esi]
	mov al, [edi]
	cmp al, 0
	jb negative
	cmp al, 0
	ja positive
	jmp next
	
	negative:	mov ebx, ecx
			neg al
			movzx ecx, al
			L2:	shr ah,1
				jnc continueLeft
				add ah, 10000000b
			continueLeft:	loop L2
			jmp next
				
				
	positive:	mov ebx, ecx
			movzx ecx,al
			L3:	shl ah, 1
				jnc continueRight
				add ah, 1
			continueRight:	loop L3
			
	next:	mov [esi],ah
		inc esi
		inc edi
		mov ecx, ebx
		loop L1

popad
ret
encrypt endp


decrypt proc

pushad

L1:	xor eax, eax
	mov ah, [esi]
	mov al, [edi]
	cmp al, 0
	jb negative
	cmp al, 0
	ja positive
	jmp next
	
	negative:	mov ebx, ecx
			neg al
			movzx ecx, al
			L2:	shl ah,1
				jnc continueLeft
				add ah, 1
			
			continueLeft:	loop L2
			jmp next
				
				
	positive:	mov ebx, ecx
			movzx ecx,al
			L3:	shr ah, 1
				jnc continueRight
				add ah, 10000000b
			continueRight:	loop L3
			
	next:	mov [esi],ah
		inc esi
		inc edi
		mov ecx, ebx
		loop L1

popad

ret
decrypt endp


main proc


mov edx, offset str1
call writestring
mov edx, offset strInput
call writestring
call crlf

mov ecx, 12
mov esi, offset strInput
mov edi, offset key
call encrypt

mov edx, offset str2
call writestring
mov edx, offset strInput
call writestring
call crlf

mov ecx, 12
mov esi, offset strInput
mov edi, offset key
call decrypt

mov edx, offset str3
call writestring
mov edx, offset strInput
call writestring
call crlf


exit
main endp
End Main