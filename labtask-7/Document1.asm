Include irvine32.inc
.data
	array BYTE "HELLO",0
.code
	main PROC
	mov ecx,LENGTHOF array
	mov esi,OFFSET array
	dec ecx
	Ll:
		or BYTE PTR [esi], 11011111b
		inc esi
		loop Ll
		mov edx, OFFSET array
		Call WriteString
		Call Crlf
		;Alternate method, read character by character
		;mov ecx, LENGTHOF array
		;mov esi, OFFSET array
		;L2:
		;mov al, [esi]
		;Call WriteChar
		;inc esi
		;loop L2
	exit
	main ENDP
END main