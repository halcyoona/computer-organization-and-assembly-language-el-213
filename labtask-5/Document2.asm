include irvine32.inc

.data

temp dword 0

.code

main proc
mov ecx, 0

label1:  
	call dumpregs
	
	loop label1

exit	
main endp
End Main