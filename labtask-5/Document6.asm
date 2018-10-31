include irvine32.inc

.data

str1 byte "Input Base : ", 0
str2 byte "Input Exponent: ", 0


.code

main proc

xor ebx, ebx
xor eax, eax
mov edx, offset str1
call writestring
call readint
mov ebx, eax

mov edx, offset str2
call writestring
call readint
mov ecx, eax
dec ecx

xor eax, eax
mov eax, ebx

start:
	mul eax
	
	loop start

call writedec

	
call crlf
exit	
main endp
End Main