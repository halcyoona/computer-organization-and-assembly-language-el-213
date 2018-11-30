include irvine32.inc


.data 
	val1 sdword 500000
	val2 sdword 5
	val3 sdword ?

.code


main proc

mov eax, val1
cdq
idiv val2

call dumpregs
call crlf
call writedec
call crlf
mov eax, edx
call writedec
call crlf


exit 
main endp
End Main
	