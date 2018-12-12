include irvine32.inc

distance STRUCT
	f dword 0
	i dword 0
distance ends


minputstr MACRO var
	mov edx, offset var
	call writestring
ENDM

minput MACRO var, var1, var2

	minputstr var1
	call readint
	mov var.f, eax
	minputstr var2
	call readint
	mov var.i, eax

ENDM

mprint MACRO var, var1, var2

	minputstr var1
	mov eax, var.f
	call writedec
	call crlf
	
	minputstr var2
	mov eax, var.i
	call writedec
	call crlf

ENDM

.data
	d1 distance <>
	d2 distance <>
	d3 distance <>
	inputstr1 byte "Enter feet : ",0
	inputstr2 byte "Enter inches : ",0
	outputstr1 byte "Output feet: ",0
	outputstr2 byte "Output inches: ",0
	
.code

main proc

minput d1, inputstr1, inputstr2
minput d2, inputstr1, inputstr2

mov eax, d1.f
add eax, d2.f
mov d3.f, eax

mov eax, d1.i
add eax, d2.i
mov d3.i , eax

mprint d3, outputstr1, outputstr2




exit
main endp
END main