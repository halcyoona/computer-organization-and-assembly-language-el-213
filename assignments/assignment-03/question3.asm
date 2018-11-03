include irvine32.inc

;program to find the sum of the diagonal of the 2D array
;using this formula to initialize(i*col)+j
;using table formula developed by myself to calculate the sum of diagonal
.data 

str1 byte "Enter Number: " , 0
arr byte 9 dup(?)
result byte 0
row dword 3
col dword 3
tempEdi dword 0
tempEsi dword 0
temp dword 0
temp2 dword 0

.code
Main Proc


;initializing array
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
	

; sum the diagonals 
mov ecx, row
mov esi, row
mov edi, row
add esi, 1
sub edi, 1
mov tempEsi, esi
mov tempEdi, edi
mov esi, 0
mov edi, 0
L1:	mov al, arr[esi]
	add result, al
	add esi, tempEsi
	add edi, tempEdi
	mov al, arr[edi]
	add result, al
	loop L1

;printing the diagonals
mov al, result
call writedec
call crlf
exit
Main endp
End Main