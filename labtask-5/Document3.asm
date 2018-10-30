include irvine32.inc

.data

temp dword 0

.code

main proc


start:
	call dumpregs
	jmp start

exit	
main endp
End Main