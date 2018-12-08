INCLUDE Irvine32.inc


;use of daa instruction daa means decimal adjustment after addition

.data
op1 WORD 4536h
op2 WORD 7207h
sum DWORD 0000h

str1 byte "First operand : ",0
str2 byte "Second operand : ",0
str3 byte "final Output : ",0
.code

addPacked proc

clc
mov eax, 0
L1:	
	mov   al,[esi]
	adc   al,[edi]
	daa
	mov   [edx],al
	inc   esi
	inc   edi
	inc   edx
	loop L1
mov al, 0
adc al, 0
mov [edx],al
ret
addPacked endp


main PROC

mov edx, offset str1
call writestring
movzx eax, op1
call  WriteHex
call crlf

mov edx, offset str2
call writestring
movzx eax, op2
call  WriteHex
call crlf

mov esi, offset op1
mov edi, offset op2
mov edx, offset sum
mov ecx, sizeof op1
call addPacked


mov edx, offset str3
call writestring
mov eax, sum
call  WriteHex
call crlf

call  Crlf
exit
main ENDP
END main