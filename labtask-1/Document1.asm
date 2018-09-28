include irvine32.inc

.data 
	str12 Byte "Roll No : 17P-6075", 0 
	str7 Byte "==========================", 0
	str1 Byte "Welcome to this lab", 0
	str2 Byte "Sum = ", 0
	str3 Byte "Product = ", 0
	str4 Byte "value = Product + sum = ", 0
	str5 Byte "value2 = (((x-y)-z)-w) = ", 0
	str6 Byte "value3 = (((x+y)*z)-x) = ", 0
	w Dword 15
	x Dword 25
	y Dword 35
	z Dword 45
	value Dword ?
	value2 Dword ?
	value3 Dword ?

.code 
	Main Proc
	
	mov edx,offset str12
	call writestring
	call crlf
	
	mov edx,offset str7
	call writestring
	call crlf
	
	mov edx,offset str1
	call writestring
	call crlf
	
	xor eax, eax           
	mov eax, w
	mul x
	mul y
	mul z
	mov edx,offset str3
	call writestring
	call writedec          ;Product 590625
	call crlf 
	mov value, eax
	
	
	
	xor eax, eax
	mov eax, w 
	add eax, x
	add eax, y
	add eax, z
	mov edx,offset str2
	call writestring
	call writedec          ; sum 120
	call crlf
	
	
	add eax, value
	mov edx,offset str4
	call writestring
	call writeint          ;value = sum + product = 590745   
	call crlf              
	
	
	xor eax, eax
	mov eax, x
	sub eax, y
	sub eax, z
	sub eax, w
	mov edx,offset str5
	call writestring
	call writeint           ;((x-y)-z)-w = -70
	call crlf
	
	
	xor eax, eax
	mov eax, x
	add eax, y
	mul z
	sub eax, x
	mov edx,offset str6
	call writestring
	call writeint            ;((x+y)*z)-x = 2675
	call crlf
	
	
	mov edx,offset str7
	call writestring
	call crlf
	
	
	exit
	Main endp
	End Main
	