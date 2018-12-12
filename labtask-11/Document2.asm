include irvine32.inc

shape STRUCT
	w dword  0
	h dword 0
shape endS



minputstr MACRO var
	mov edx, offset var
	call writestring
ENDM

minput MACRO var, var1, var2

	mov edx, offset var1
	call writestring
	call readint
	mov var.w, eax
	mov edx, offset var2
	call writestring
	call readint
	mov var.h, eax

ENDM

mprint MACRO var, var1, var2

	mov  edx, offset var1
	call writestring
	mov eax, var.w
	call writedec
	call crlf
	
	mov  edx, offset var2
	call writestring
	mov eax, var.h
	call writedec
	call crlf

ENDM




.data
	s1 shape <>
	s2 shape <>
	inputstr1 byte "Enter width : ",0
	inputstr2 byte "Enter height : ",0
	outputstr1 byte "Output width: ",0
	outputstr2 byte "Output height: ",0

.code


main proc

minput s1, inputstr1, inputstr2
mprint s1, outputstr1, outputstr2

minput s2, inputstr1, inputstr2
mprint s2, outputstr1, outputstr2





exit
main endp
end main