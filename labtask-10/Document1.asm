include irvine32.inc


;program to copy data from one string to another string 

.data
	source dword 20 dup(0ffffffffh)
	target dword 20 dup(?)

.code 

main proc
cld
mov ecx, lengthof source 
mov esi, offset source
mov edi, offset target
rep movsd

mov esi, offset target
mov ecx, lengthof target
L1:	mov eax, [esi]
	call writehex
	add esi, 4
	call crlf
	loop L1


exit
main endp
end main