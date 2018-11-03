include irvine32.inc
; program to find the transpose of the 2D Array using temparray
; it work on all cases
.data 

str1 byte "Enter Numbers in Row: " , 0
arr byte 12 dup(?)
temparr byte 12 dup(?)
row dword 3
col dword 4
temp dword 0
temp2 dword 0

.code
Main Proc


;taking input in a array
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


;saving array in a second in transpose form
mov ecx,col
mov esi, 0
mov edi, 0
mov ebx, 0
first:	mov temp, ecx
	mov ecx, row
	second:	mov al, arr[esi]
		mov temparr[edi],al	
		add esi, col
		inc edi
		loop second
	inc ebx
	mov esi, ebx
	mov ecx, temp
	loop first


; moving transpose into actuall array
mov ecx, col
mov eax, row
mul ecx
mov ecx, eax
mov esi, 0
L1:	mov al, temparr[esi]
	mov arr[esi], al
	inc esi
	loop L1
	
	
;print final array 	
call crlf
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