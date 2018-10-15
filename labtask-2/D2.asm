include irvine32.inc

.data
	cc Dword ?
	bb Dword ?
	aa Dword ? 
	
	valueB EQU <"Enter b">
	valueC EQU <"Enter C">
	ValueA EQU <"Enter A">
	
	outputA TextEQU <mov edx, OFFSET valueA>
	outputB TextEQU <mov edx, OFFSET valueB>
	outputC TextEQU <mov edx, OFFSET valueC>
	
	input TextEQU<call readint>
	
	inputaa TextEQU<mov aa, eax>
	inputbb TextEQU<mov bb, eax>
	inputcc TextEQU<mov cc, eax>
	
	output TextEQU<call writedec>
	outputs TextEQU<call writestring>
	
	;movaa TextEQU<mov eax, aa>
	;multiply 
	;multiplybb TextEQU<mul bb>
	;increment TextEQU<add eax, 1>
	;valab TextEQU %(valueCC*bb)
	;final TextEQU %(valab+multiplyaa)
	;finalvalue TextEQU<mov eax, final)
.code
	Main proc
	xor eax, eax
	outputA
	outputs
	input
	inputaa
	outputB
	outputs
	input
	inputbb
	outputC
	outputs
	input
	inputcc
	;finalvalue
	exit
	Main endp
 	End Main