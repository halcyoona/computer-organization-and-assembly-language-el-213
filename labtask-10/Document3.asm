include irvine32.inc


.data

msg byte "Helloworld",0
key byte 'e','i','a',0,-3,2,-4,-4,6
output byte "0000000000"

.code

main proc

mov esi, offset msg
mov edx, offset output
mov ecx, lengthof key
push ecx
mov edi, offset key

L1:	mov al, [edi]
	cmp al, 0
	jb negative
	cmp al, 0
	ja positive
	jmp next
	
	negative:	mov ah, [esi]
			neg al
			push ecx
			movzx ecx, al
		L2:	shl ah,1 
			loop L2
			jmp next
	
	positive:	mov ah, [esi]
			cmp al, 97
			je a
			cmp al, 101
			je e
			cmp al, 105
			je i
			comment $cmp al, 111
			je o
			cmp al, 117
			je u $
			push ecx
			movzx ecx, al
			L3:	shr ah, 1
				loop L3
				jmp next
			
			a:	push ecx
				movzx ecx, al
				L4:	shl ah, 1
					jnc nextt
					add ah, 00000001b
				nextt:	loop L4
				jmp next
				
			e:	push ecx
				movzx ecx, al
				L5:	shl ah, 1
					jnc nexttt
					add ah, 00000001b
					nexttt:	loop L5
				jmp next	
				
			
			i:	push ecx
				movzx ecx, al
				L6:	shl ah, 1
					jnc nextttt
					add ah, 00000001b
					nextttt:	loop L6
				jmp next
			comment &
			o:	push ecx
				movzx ecx, al
				L7:	shl ah, 1
					jnc nexttttt
					add ah, 00000001b
					nexttttt:	loop L7
				jmp next	
					
			u:	push ecx
				movzx ecx, al
				L8:	shl ah, 1
					jnc nextttttt
					add ah, 00000001b
					nextttttt:	loop L8
				
				jmp next
				
			&	
next :	
	mov [edx],ah
	inc edx
	inc esi
	inc edi
	pop ecx
	loop L1

mov edx, offset output
call writestring
call crlf

exit
main endp
End main
	