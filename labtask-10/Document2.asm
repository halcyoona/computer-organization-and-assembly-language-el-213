include irvine32.inc


;program to find the character in a string

.data
	line byte "Hello world Fast is good",0
	w byte "Fast",0

.code 

main proc

mov ecx, lengthof line 
mov eax, [esi]
mov edi, offset line
cld
repne scasd
jnz next
mov eax, [edi]
call writechar
call crlf
next:	 


exit
main endp
end main