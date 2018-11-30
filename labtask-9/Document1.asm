include irvine32.inc


.data 
	val1 sdword ?
	val2 sdword ?
	val3 sdword ?
	final sdword ?

.code 

main proc

call readhex
mov val1, eax

call readhex
mov val2, eax

call readhex
mov val3, eax

mov eax, val1

mul val2

mov final, eax

call crlf
mov eax, edx
call writehex
mov eax,final
call writehex
call crlf

call dumpregs
call crlf
exit 
main endp
End Main
	