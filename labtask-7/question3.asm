include irvine32.inc

.data
	str1 byte "A+",0
	str2 byte "A",0
	str3 byte "A-",0
	str4 byte "B+",0
	str5 byte "B",0
	str6 byte "B-",0
	str7 byte "C+",0
	str8 byte "C",0
	str9 byte "C-",0
	str10 byte "D+",0
	str11 byte "D",0
	str12 byte "F",0
	str13 byte "Enter Marks : ",0
	str14 byte "Grade is : "
.code

	grade proc
		mov edx, offset str13
		call writestring
		call readint
		cmp eax, 89
		jna lab1
		mov edx, offset str1
		; A+
		jmp next
		
	lab1:	cmp eax, 85
		jna lab2
		mov edx, offset str2
		; A
		jmp next
		
	lab2:	cmp eax, 81
		jna lab3
		mov edx, offset str3
		; A-
		jmp next
		
	lab3:	cmp eax, 77
		jna lab4
		mov edx, offset str4
		;B+
		jmp next
		
	lab4:	cmp eax, 73 
		jna lab5
		mov edx, offset str5
		;B
		jmp next
		
	lab5:	cmp eax, 69
		jna lab6
		;B-
		mov edx, offset str6
		jmp next
	
	lab6:	cmp eax, 65
		jna lab7
		mov edx, offset str7
		;C+
		jmp next
		
	lab7:	cmp eax, 61
		jna lab8
		mov edx, offset str8
		;C
		jmp next
		
	lab8:	cmp eax, 57
		jna lab9
		mov edx, offset str9
		;C-
		jmp next
		
	lab9:	cmp eax, 53
		jna lab10
		mov edx, offset str10
		;D+
		jmp next
		
	lab10:	cmp eax, 49
		jna lab11
		mov edx, offset str11
		;D
		jmp next
	
	lab11:	mov edx, offset str12
		jmp next 
		
	next: 	call writestring
		call crlf
		ret
		
	grade endp
	
main proc
	
	call grade
exit
main endp
End main
	