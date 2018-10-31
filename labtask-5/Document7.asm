include irvine32.inc

.data

str1 byte "Input Number : ", 0

.code

main proc

xor eax, eax
mov edx, offset str1
call writestring
call readint

mov ecx, eax
dec ecx

start:
	mul ecx
	
	loop start

call writedec

	
call crlf
exit	
main endp
End Main