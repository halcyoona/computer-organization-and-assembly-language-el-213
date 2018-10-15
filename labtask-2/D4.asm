include irvine32.bat

.data
	array word 12,24,54,23,12,45
	
.code
	Main Proc
	mov ax, array+0
	mov bx, array+4
	mov array+4, ax
	mov ax, array+8
	
	