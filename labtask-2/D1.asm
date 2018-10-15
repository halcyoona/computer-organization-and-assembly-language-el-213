include irvine32.inc

.data

	a Dword ?
	x Dword ?
	b Dword ?
	final Dword ?

.code
	Main Proc
	xor eax, eax
	call readint
	mov a, eax
	call readint
	mov x, eax
	mul x
	mul a
	mov final, eax
	call readint
	mov b, eax
	mul x
	add final, eax
	call readint
	add eax, final
	call writeint
	call crlf
	exit
	Main endp
	End  Main