include irvine32.inc

;program to change the central 2 nibble of every element of an array with an another array element 

.data

inputStr byte "Enter values in Array : ",0
OutputStr byte "Output will be  : ", 0
changeStr byte "Displaying array from which we change the input array",0

arrChange dword  0ABh, 0BCh, 0CDh, 0DEh, 0EFh, 0FAh	
arrInput dword  01234h, 05678h, 0789Ah, 09ABCh, 0BCDEh, 0DE12h


.code



main proc

mov ecx, 6
mov esi, 0
mov eax, 0


; taking input from user

mov edx, offset inputStr
call writestring
call crlf
L1:	call readhex
	mov arrInput[esi], eax
	call crlf
	add esi, 4
	loop L1




;displaying array from which we change the input array

call crlf
call crlf
mov edx, offset ChangeStr
call writestring
call crlf
mov ecx, 6
mov esi, 0
L2:	
	mov eax,arrChange[esi]
	call writehex
	call crlf
	add esi, 4
	loop L2




; working 
mov ecx, 6
mov esi, 0

L3:	mov ebx, arrChange[esi]
	mov eax, ebx
	mov eax, arrInput[esi]
	RoL ax, 12
	shrd ax, bx, 4
	RoR bx, 4
	shrd ax, bx, 4
	RoL bx, 4
	RoR ax, 4
	mov arrInput[esi], eax
	add esi, 4
	loop L3




; displaying final result

call crlf
call crlf
mov ecx, 6
mov esi, 0
mov edx, offset OutputStr
call writestring
call crlf
L4:	
	mov eax,arrInput[esi]
	call writehex
	call crlf
	add esi, 4
	loop L4

exit
main endp
End Main