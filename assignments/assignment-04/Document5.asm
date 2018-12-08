include irvine32.inc

;program to multiply two numbers bitwise by rotation and addtion

.data
	
outputStr byte "output will be : ",0
multiplier byte "Enter Mulitplier : ",0
multiplicand byte "Enter Multiplicand : ",0

.code

multiply proc

mov ecx, 32
mov edx, 0
L1:	shr ebx, 1
	jnc next
	add edx, eax

next:	shl eax, 1
	loop L1 
	
mov eax, edx
ret
multiply endp


main proc

;Enter multiplicand
mov edx, offset multiplicand
call writestring
call readint
mov ebx,eax

;Enter multiplier
mov edx, offset multiplier
call writestring
call readint

call multiply
mov edx, offset outputStr
call writestring
call writedec
call crlf
exit
main endp
End Main