include irvine32.inc


;isPrime procedure

.data 
	
	str1 byte "Enter a number : ",0
	strOutput1 byte "Prime number ",0
	strOutput2 byte "Not Prime Number",0
.code 



isPrime proc


L4:	mov edx, offset str1
	call writestring
	call readint
	mov ebx, eax
	cmp eax, -1
	je outt
	mov ecx, eax
	dec ecx
	L3:	
		mov eax, ebx
		mov edx, 0
		cmp ecx, 1
		jbe counter
		cdq
		div ecx
		cmp edx, 0
		JE notPrime
		loop L3
		
	counter:	mov edx,offset strOutput1
			call writestring
			call crlf
			jmp next

	notPrime:	mov edx,offset strOutput2
			call writestring
			call crlf
			
	next:		jmp L4

	outt: ret
	
isPrime endp



main proc

			
	


call isPrime
call crlf
exit 
main endp
End Main
	