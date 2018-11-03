include irvine32.inc

; program to make 2D array and initialize it with user input
;using this formula to access(i*col)+j
.data 

str1 byte "Enter Number: " , 0
arr byte 12 dup(?)
row dword 4
col dword 3
temp dword 0
temp2 dword 0

.code
Main Proc

;initialzing the array
mov ecx, row
mov esi, 0
outer:	mov eax, col
	mov temp2, esi
	mul esi
	mov esi, eax
	mov temp, ecx
	mov ecx, col
	mov edi, 0
	inner:	mov edx, offset str1
		call writestring
		call readint
		mov arr[esi+edi], al
		inc edi
		loop inner
	mov ecx, temp
	mov esi, temp2
	inc esi
	loop outer


;printing the array	
mov ecx, row
mov esi, 0
outt:	mov eax, col
	mov temp2, esi
	mul esi
	mov esi, eax
	mov temp, ecx
	mov ecx, col
	mov edi, 0
	inn:	mov al, arr[esi+edi]
		call writedec
		inc edi
		loop inn
	mov ecx, temp
	call crlf
	mov esi, temp2
	inc esi
	loop outt

exit
Main endp
End Main