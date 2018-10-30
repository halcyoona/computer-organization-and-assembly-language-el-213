include irvine32.inc

.data

str1 byte "Step on no pets",0

.code

main proc

mov ecx, sizeof str1
dec ecx
start:
	mov al,str1[ecx]
	call writechar
	loop start
	
mov al, str1[ecx]
call writechar
call crlf
exit	
main endp
End Main