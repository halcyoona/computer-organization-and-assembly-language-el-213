include irvine32.inc

;program to print output in anywhere in screen


.data
	msg byte "Hello World",0
	
.code

main proc

mov dl, 75
mov dh, 5
call gotoxy
mov edx, offset msg
call writestring
call crlf

exit
main endp
End Main