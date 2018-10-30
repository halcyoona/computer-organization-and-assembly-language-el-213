include irvine32.inc

.data

str1 byte "Step on no pets",0

.code

main proc

mov ecx, sizeof str1
mov edi, ecx
dec edi

start:
	mov al,str1[edi]
	call writechar
	dec edi
	loop start
	
call crlf
exit	
main endp
End Main