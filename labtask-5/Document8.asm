include irvine32.inc

.data

str1 byte "*", 0
temp dword ?

.code

main proc

mov ecx, 6
mov esi, 1
outer:
	mov temp, ecx
	mov ecx,esi 
	
	inner:
		mov edx, offset str1
		call writestring
		loop inner
	
	mov ecx, temp
	inc esi
	call crlf
	loop outer
		
	


	
call crlf
exit	
main endp
End Main