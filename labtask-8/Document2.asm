include irvine32.inc

;program to swap the every pair of bits

.data

inputStr byte "Enter a number in hexadecimal : ",0
outputStr byte "Output will be : ",0
display byte "Number in binary : ",0

.code
main proc


mov edx, offset inputStr
call writestring
call readhex
call crlf
mov edx, offset display
call writestring
call writebin
call crlf
mov ecx, 8

L1:	RoL ax, 1
	jnc next1
	RoL ax, 1
	jnc next3 
	jmp next2
	
next1:	Rol ax, 1
	jnc next2
	RoR ax, 2
	RoL ax, 1
	add ax, 1b
	SHL ax, 1
	jmp next2
	
next3: 	RoR ax, 2
	SHL ax, 1
	SHL ax, 1
	add ax, 1b
	jmp next2

next2: loop L1

mov edx, offset outputStr
call writestring
call writebin
call crlf



exit
main endp
End main