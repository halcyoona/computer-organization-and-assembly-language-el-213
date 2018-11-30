include irvine32.inc


;program  to find the total odd number in an integer and find sum of even number 

.data 
	val1 dword 577897654
	val2 dword 10
	val3 dword 2
	temp dword ?
	temp2 dword 0
	evenSum dword ?
	strEven byte "Even sum is : ",0
	strOdd byte "Total Odd numbers are : ",0
.code 

main proc

mov edx, 0
mov eax, val1
mov esi, 0
L1:	mov edx, 0
	cdq
	div val2
	mov temp, eax
	mov eax, edx
	mov temp2, eax
	mov edx, 0
	cdq
	div val3
	cmp edx, 0
	JE evenn
	inc esi
	jmp next

evenn:	
	mov eax, temp2
	add evenSum, eax
	
next:	mov eax, temp
	cmp eax, 0
	JE outt
	loop L1
	
outt:	mov eax,evenSum
	mov edx, offset strEven
	call writestring
	call writedec
	call crlf
	mov edx, offset strOdd
	call writestring
	mov eax,esi
	call writedec
	call crlf


exit 
main endp
End Main
	
