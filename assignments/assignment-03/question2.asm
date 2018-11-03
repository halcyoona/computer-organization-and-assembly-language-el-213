include irvine32.inc

;program to initilize 2D array and print in reverse
.data 

str1 byte "Enter Numbers in Row: " , 0
arr byte 12 dup(?)
row dword 4
col dword 3
temp dword 0
temp2 dword 0

.code
Main Proc

;initializing array
mov ecx, row
mov esi, 0
outer:	mov edx, offset str1
	mov eax, esi
	call writestring
	mov eax, col
	mov temp2, esi
	mul esi
	mov esi, eax
	mov temp, ecx
	mov ecx, col
	mov edi, 0
	
	inner:	
		call readint
		mov arr[esi+edi], al
		inc edi
		loop inner
	mov ecx, temp
	mov esi, temp2
	inc esi
	loop outer



;printing the array in reverse order	
mov ecx, row
mov esi, row
dec esi
outt:	mov eax, col
	mov temp2, esi
	mul esi
	mov esi, eax
	mov temp, ecx
	mov ecx, col
	mov edi, col
	dec edi
	inn:	mov al, arr[esi+edi]
		call writedec
		dec edi
		loop inn
	mov ecx, temp
	call crlf
	mov esi, temp2
	dec esi
	loop outt

exit
Main endp
End Main