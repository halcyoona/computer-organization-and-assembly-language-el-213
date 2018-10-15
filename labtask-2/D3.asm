include irvine32.inc


.data
	vowels byte 5 dup(?)
.code
	Main Proc
	call readchar
	mov vowels+0, al
	call crlf
	
	call readchar
	mov vowels+1, al
	call crlf
	
	call readchar
	mov vowels+2, al
	call crlf
	
	call readchar
	mov vowels+3, al
	call crlf
	
	call readchar
	mov vowels+4, al
	call crlf
	
	mov al, vowels+4
	call writechar
	
	mov al, vowels+3
	call writechar
	
	mov al, vowels+2
	call writechar
	
	mov al, vowels+1
	call writechar
	
	mov al, vowels+0
	call writechar
	call crlf
	exit
	Main endp
	End Main