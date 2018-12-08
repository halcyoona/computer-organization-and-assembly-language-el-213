include irvine32.inc



;subtrating two number of any length

.data

;op1 dword 0ffffeeeeh, 0ddddcccch, 0bbbbh,099998888h, 077776666h, 055554444h, 033332222h, 011110000h
;op2 dword 0ffffeeeeh, 0ddddcccch, 0bbbbh,099998888h, 077776666h, 055554444h, 033332222h, 011110000h
op1 dword 00000000fh, 00000000fh
op2 dword 000000001h, 000000001h
result dword 2 dup (?)

str1 byte "First operand : ",0
str2 byte "Second operand : ",0
str3 byte "result is : ",0


.code


Extended_Sub proc

pushad
clc
L1:	mov eax, [esi]
	sbb eax, [edi]
	pushfd
	mov [ebx], eax
	sub esi, 4
	sub edi, 4
	sub ebx, 4
	popfd
	loop L1
	
mov eax, 0
sbb eax, 0	
mov [ebx], eax

popad
ret
Extended_Sub endp



display PROC

pushad

L1:	mov  eax,[esi]
	call Writehex
	add esi, 4
	loop L1

popad
ret
display ENDP


main proc


mov edx, offset str1
call writestring
mov esi, offset op1
mov ecx, 2
call display
call crlf

mov edx, offset str2
call writestring
mov esi,offset op2
mov ecx,2
call display
call crlf




mov esi, offset op1
mov edi, offset op2
mov ebx, offset result
add esi, 4
add edi, 4
add ebx, 4
mov ecx, 2
call Extended_Sub



mov edx, offset str3
call writestring
mov esi,offset result
mov ecx,2
call display
call crlf

exit
main endp
End Main