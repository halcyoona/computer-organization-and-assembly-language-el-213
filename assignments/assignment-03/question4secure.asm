include irvine32.inc
; program to find the transpose of the 2D Array not using temparray
; works only if row == col

.data 

str1 byte "Enter Numbers in Row: " , 0
arr byte 12 dup(?)
row dword 3
col dword 3
temp dword 0
temp2 dword 0

.code
Main Proc

;initializing array with user input
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


;print array 	
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

; taking transpose

mov ecx,col
mov eax, row
mov temp2, eax
dec ecx
mov esi, 0
mov edi, 0
mov ebx, 1
first:	mov temp, ecx
	mov ecx, temp2
	second:	mov al, arr[esi]
		xchg al, arr[edi]
		xchg al, arr[esi]
		add esi, col
		inc edi 
		loop second
	mov eax, temp2
	dec eax
	mov temp2, eax
	add edi, ebx
	mov eax, 1
	mul ebx
	mul col
	add eax, ebx
	mov esi, eax
	;call dumpregs
	mov ecx, temp
	loop first


;printing array
mov ecx, col
mov esi, 0
outtt:	mov eax, row
	mov temp2, esi
	mul esi
	mov esi, eax
	mov temp, ecx
	mov ecx, row
	mov edi, 0
	innn:	mov al, arr[esi+edi]
		call writedec
		inc edi
		loop innn
	mov ecx, temp
	call crlf
	mov esi, temp2
	inc esi
	loop outtt
exit
Main endp
End Main