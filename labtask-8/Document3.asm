include irvine32.inc

;program to count number of one's in binary form of a number and at the there will be 1 or 0


.data
	inputStr byte "Enter a number in hexadecimal form : ",0 
	outputStr byte "Output Will be : ",0
	display byte "Number in binay Form is : ",0

.code

main proc


; taking input from user
mov edx, offset inputStr
call writestring
call readhex
call crlf
;mov ax, 1100010110100011b




;displaying number in binary
mov edx, offset display
call writestring
call writebin
call crlf
call crlf





;working
mov ecx, 1
L2:	mov ebx, 0
	mov ecx, 16	
	L1:	RoR ax, 1
		jnc next
		inc ebx
	next:	loop L1	
	mov eax, ebx
	cmp eax, 1
	JNA outt
	inc ecx
	inc ecx
	loop L2


;displaying result
outt: 	mov edx, offset outputStr
	call writestring
	call writebin
	call crlf

exit
main endp
End Main