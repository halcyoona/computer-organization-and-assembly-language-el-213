include irvine32.inc



;adding two number of any length

.data

op1 dword 0ffffeeeeh, 0ddddcccch, 0bbbbh,099998888h, 077776666h, 055554444h, 033332222h, 011110000h
op2 dword 0ffffeeeeh, 0ddddcccch, 0bbbbh,099998888h, 077776666h, 055554444h, 033332222h, 011110000h
;op1 dword 0ffffffffh, 0ffffffffh
;op2 dword 0ffffffffh, 0ffffffffh

result dword 3 dup (?)

str1 byte "First operand : ",0
str2 byte "Second operand : ",0
str3 byte "sum is : ",0


.code


Extended_Add proc

pushad
clc

L1:	mov eax, [esi]
	adc eax, [edi]
	pushfd
	mov [ebx], eax
	sub esi, 4
	sub edi, 4
	sub ebx, 4
	popfd
	loop L1
	
mov eax, 0
adc eax, 0	
mov [ebx], eax

popad
ret
Extended_Add endp



display PROC

pushad

L1:	mov  eax,[esi]
	call WriteHex
	add esi, 4
	loop L1

popad
ret
display ENDP


main proc


mov edx, offset str1
call writestring
mov esi, offset op1
mov ecx, 8
call display
call crlf

mov edx, offset str2
call writestring
mov esi,offset op2
mov ecx,8
call display
call crlf




mov esi, offset op1
mov edi, offset op2
mov ebx, offset result
add esi, 28
add edi, 28
add ebx, 32
mov ecx, 8
call Extended_Add



mov edx, offset str3
call writestring
mov esi,offset result
mov ecx,9
call display
call crlf

exit
main endp
End Main