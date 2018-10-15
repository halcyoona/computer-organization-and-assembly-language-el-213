include irvine16.inc

.code
Main proc
mov ax, 07FF0h
add al, 10h
call Dumpregs

add ah, 1
call Dumpregs

add ax,2
call Dumpregs

exit
Main endp
End Main