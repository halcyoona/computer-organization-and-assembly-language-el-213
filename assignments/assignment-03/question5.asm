include irvine32.inc
; program to multiply two matrices
; by taking transpose of 2nd mattrix and multiply it with first matrix
; and display the result
.data 

str1 byte "Enter Numbers in Row: " , 0
arr1 byte 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4
arr2 byte 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3 
temparr byte 12 dup(?)
final byte 16 dup(?)
result byte 0
row1 dword 4
col1 dword 3
row2 dword 3
col2 dword 4
temp dword 0
temp2 dword 0
temp3 dword 0

.code
Main Proc


;print array	
mov ecx, row1
mov esi, 0
outt:	mov eax, col1
	mov temp2, esi
	mul esi
	mov esi, eax
	mov temp, ecx
	mov ecx, col1
	mov edi, 0
	inn:	mov al, arr1[esi+edi]
		call writedec
		inc edi
		loop inn
	mov ecx, temp
	call crlf
	mov esi, temp2
	inc esi
	loop outt



;print array	
mov ecx, row2
mov esi, 0
outtt:	mov eax, col2
	mov temp2, esi
	mul esi
	mov esi, eax
	mov temp, ecx
	mov ecx, col2
	mov edi, 0
	innn:	mov al, arr2[esi+edi]
		call writedec
		inc edi
		loop innn
	mov ecx, temp
	call crlf
	mov esi, temp2
	inc esi
	loop outtt

;saving array in a second array in transpose form
mov ecx,col2
mov esi, 0
mov edi, 0
mov ebx, 0
first:	mov temp, ecx
	mov ecx, row2
	second:	mov al, arr2[esi]
		mov temparr[edi],al	
		add esi, col2
		inc edi
		loop second
	inc ebx
	mov esi, ebx
	mov ecx, temp
	loop first


; moving transpose into actuall array
mov ecx, col2
mov eax, row2
mul ecx
mov ecx, eax
mov esi, 0
L1:	mov al, temparr[esi]
	mov arr2[esi], al
	inc esi
	loop L1
	

;print array to check transpose
call crlf
mov ecx, col2
mov esi, 0
ut:	mov eax, row2
	mov temp2, esi
	mul esi
	mov esi, eax
	mov temp, ecx
	mov ecx, row2
	mov edi, 0
	n:	mov al, arr2[esi+edi]
		call writedec
		inc edi
		loop n
	mov ecx, temp
	call crlf
	mov esi, temp2
	inc esi
	loop ut


;multiplying process
mov ecx, row1
mov esi, 0
mov ebx, 0
outer:	mov temp, ecx
	mov ecx, row1
	mov edi, 0
	middle:	mov temp2, ecx
		mov ecx, col1
		mov esi, ebx
		inner:	mov al, arr1[esi]
			mul arr2[edi]
			add result, al
			inc esi
			inc edi
			loop inner
		mov al,result
		;call writedec
		;call crlf
		mov esi,temp3
		mov final[esi], al
		mov al, 0
		mov result, al
		inc esi
		mov temp3, esi
		mov ecx, temp2
		loop middle
	add ebx, 3
	mov ecx, temp
	loop outer
	
;print final array 	
call crlf
mov ecx, row1
mov esi, 0
outttt:	mov eax, row1
	mov temp2, esi
	mul esi
	mov esi, eax
	mov temp, ecx
	mov ecx, row1
	mov edi, 0
	innnn:	mov al, final[esi+edi]
		call writedec
		inc edi
		loop innnn
	mov ecx, temp
	call crlf
	mov esi, temp2
	inc esi
	loop outttt
exit
Main endp
End Main