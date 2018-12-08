include irvine32.inc


; program to show the number in string
.data

num dword 12345678h
.code


packedToAsc PROC 

              
mov eax, 0                  
mov ebx, 0
add esi, 3

L1:         
    mov al, [esi]
    mov bl, [esi]                 
    
    shr al, 4
    add al, 48              
    call WriteChar
    
    and bl, 00001111b;                    
    add bl, 48
    mov al, bl 
    call WriteChar            
    dec esi
    loop L1
    call Crlf
ret
packedToAsc endp


main proc

mov esi, offset num
mov ecx, 4
call packedToAsc


exit
main endp
End main