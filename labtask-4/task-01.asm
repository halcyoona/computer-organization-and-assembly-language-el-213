include irvine32.inc

; exp = a++  + (b - c *d) - b

.data

a = -11
b = 2
c2 = 3
d word 4
exp word 0

lab1 TextEqu<mov ax, a>
lab2 TextEqu<inc ax>
lab3 TextEqu<mov exp, ax>
lab4 TextEqu<mov ax, c2>
lab5 TextEqu<mul d>
lab6 TextEqu<sub ax, b>
lab7 TextEqu<add ax, exp>
lab8 TextEqu<sub ax, b>
labs TextEqu<neg ax>
lab9 TextEqu<mov exp, ax>
lab10 TextEqu<call writeint>
lab11 TextEqu<call crlf>

.code
Main proc

lab1
lab2
lab3
lab4
lab5
lab6
lab7
lab8
lab9
lab10
lab11
exit
Main endp
End Main