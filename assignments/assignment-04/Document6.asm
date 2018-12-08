include irvine32.inc

;program to find the GCD of two number

.data


x byte 0
y byte 0
result byte 0

str1 byte "GCD is: ",0

.code

GCD proc

push ebp
mov ebp, esp
sub esp, 4


mov eax, [ebp+12]
mov ebx, [ebp+8]
L1:	
	mov edx, 0
	cdq
	div ebx
	mov [ebp-4], edx
	mov eax, ebx
	mov ebx, edx
	cmp edx, 0
	jbe next
	jmp L1

next:	mov [ebp+16], eax
	mov edx, offset str1
	call writestring
	call writedec
	call crlf

ret -4
GCD endp


main proc

push 2
push 24
push 20 
call GCD
exit
main endp
End Main