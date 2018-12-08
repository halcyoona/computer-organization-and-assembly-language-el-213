include irvine32.inc


;program to add two number in string

.data
op1 BYTE "100123456789765",0    ; 1001234567.89765
op2 BYTE "900402076502015",0    ; 9004020765.02015
sum BYTE "0000000000000000",0 
str1 BYTE "First Operand : ",0
str2 BYTE "Second Operand : ",0
str3 BYTE "Final Output : ",0

.code



ascAdd proc

mov   bh,0
L1:	mov   ah,0
	mov   al,[esi]  
	add   al,bh
	aaa
	mov   bh,ah
	or    bh,30h
	add   al,[edi] 
	aaa
	or    bh,ah
	or    bh,30h
	or    al,30h
	mov   [edx],al
	dec   esi 
	dec   edi
	dec   edx
	loop  L1

mov [edx],bh

ret
ascAdd endp


main PROC


mov   edx,OFFSET sum
mov   esi, offset op1
mov   edi, offset op2
add esi, 14
add edi, 14
add edx, 15
mov   ecx, 15
call ascAdd

mov edx, offset str1
call  WriteString
mov edx, offset op1
call  WriteString
call crlf

mov edx, offset str2
call  WriteString
mov edx, offset op2
call  WriteString
call crlf


mov edx, offset str3
call  WriteString
mov edx, offset sum
call  WriteString
call  Crlf
exit
main ENDP
End main