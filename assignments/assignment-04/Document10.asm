include irvine32.inc


; program to introduce decimal point in a string number

.data 

num byte "100123456789765",0
decimalPoint dword 5

str1 byte "Number is : ",0
str2 byte "Number in decimal Form is : ",0

.code

writeScaled proc

inc edx
inc edx
mov al, 0
mov [edx], al
dec edx
dec edx

L1:	mov al, [edx]
	inc edx
	mov [edx], al
	dec edx
	dec edx
	loop L1
	inc edx
	mov al, 46
	mov [edx], al
ret
writeScaled endp

main proc

mov edx, offset str1
call writestring
mov edx, offset num
call writestring
call crlf

mov edx, offset num
add edx, 14
mov ecx, decimalPoint
call writeScaled



mov edx, offset str2
call writestring
mov edx, offset num
call writestring
call crlf


exit 
main endp
end main