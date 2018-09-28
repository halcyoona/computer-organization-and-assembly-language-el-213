include irvine32.inc

.data 
	str12 Byte "Roll No : 17P-6075", 0 
	str8 Byte "==========================", 0
	str1 Byte "Welcome to this lab", 0
	str2 Byte "Name : Mehmood Munir", 0
	str3 Byte "FatharName : Munir Ahmed", 0
	str4 Byte "emial : halcyoona@gmail.com", 0
	str5 Byte "Phone : 03357024660", 0
	str6 Byte "Sports: Football Taekwondu", 0
	str9 Byte "Site : Halcyoona.wordpress.com", 0
	str10 Byte "Github: http:\\github\halcyoona", 0
	str11 Byte "Twitter: @halcyoona", 0
	str7 Byte "==========================", 0

.code
	Main Proc
	
	mov edx,offset str12
	call writestring
	call crlf
	
	
	mov edx,offset str8
	call writestring
	call crlf
	
	
	mov edx,offset str1
	call writestring
	call crlf
	
	
	mov edx,offset str2
	call writestring
	call crlf
	
	
	mov edx,offset str3
	call writestring
	call crlf
	
	
	mov edx,offset str4
	call writestring
	call crlf
	
	mov edx,offset str5
	call writestring
	call crlf
	
	
	mov edx,offset str6
	call writestring
	call crlf
	
	
	mov edx,offset str9
	call writestring
	call crlf
	
	mov edx,offset str10
	call writestring
	call crlf
	
	
	mov edx,offset str11
	call writestring
	call crlf
	
	mov edx,offset str7
	call writestring
	call crlf
	
	
	exit
	Main endp
	End Main