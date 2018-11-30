include irvine32.inc

;program to find the prime number in array


.data 
	arr dword 2,23,25,78,22,9
	temp dword 2
	temp1 dword 0
	stroutput byte "Total Number of  Prime number in array are : ",0
	strinput byte "Not Prime Numbers : ",0
.code 


main proc



mov ecx, 0
mov ecx, 6
mov esi, 0
mov edi , 0
mov edx, offset strinput
call writestring
call crlf
L4:	mov temp1, ecx	
	mov ecx, arr[esi]
	dec ecx
	L3:	mov edx, 0
		mov eax, 0
		mov eax, arr[esi]
		;mov ebx, temp
		;cmp ebx, eax
		;jae counter
		cmp ecx, 1
		jbe counter
		cdq
		div ecx
		cmp edx, 0
		JE notPrime
		;inc temp
		loop L3
	counter:	inc edi
			jmp next

	notPrime:	mov eax, arr[esi]
			call writedec
			call crlf
	next:		add esi,4
			mov ecx, temp1
			loop L4
	


call crlf
call crlf
mov edx, offset stroutput
call writestring
mov eax, edi
call writedec
call crlf
exit 
main endp
End Main
	
