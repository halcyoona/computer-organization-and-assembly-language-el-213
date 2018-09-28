include irvine32.inc

.data 

	str12 Byte "Roll No : 17P-6075", 0 
	str7 Byte "==========================", 0
	arr1 byte 8, 9, 10
	arr2 byte 4, 5, 6
	arr3 byte 3 dup(?)
	str1 byte "Index ", 0
	str2 byte " : ", 0
	
.code
	Main Proc
	mov edx,offset str12
	call writestring
	call crlf
	mov edx,offset str7
	call writestring
	call crlf
	xor eax, eax
	mov al, arr1+0
	add al, arr2+0
	mov arr3+0, al
	
	xor eax, eax
	mov al, arr1+1
	add al, arr2+1
	mov arr3+1, al
	
	xor eax, eax
	mov al, arr1+2
	add al, arr2+2
	mov arr3+2, al
	
	
	mov edx,offset str1
	call writestring
	mov al, 0
	call writedec
	mov edx,offset str2
	call writestring
	mov al, arr3+0
	call writedec
	call crlf
	
	
	mov edx,offset str1
	call writestring
	mov al, 1
	call writedec
	mov edx,offset str2
	call writestring
	mov al, arr3+1
	call writedec
	call crlf
	
	
	mov edx,offset str1
	call writestring
	mov al, 2
	call writedec
	mov edx,offset str2
	call writestring
	mov al, arr3+2
	call writedec
	call crlf
	
	mov edx,offset str7
	call writestring
	call crlf
	
	exit
	Main endp
	End Main