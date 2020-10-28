section .text
	global _start
_start:
	xor eax,eax;
	xor edx,edx;

	mov eax,'6'
	sub eax,'0'

	mov ecx,'2'
	sub ecx,'0'
	
	div ecx
	
	mov ecx,eax
	add eax,'0' 	
	
	mov [result1],eax

	mov eax,4
	mov ebx,1
	mov edx,8;
	mov ecx,result1
	int 80h
	
	mov eax,4
	mov ebx,1
	mov edx,20
	mov ecx,prompt
	int 80h
	
	mov eax,1
	mov ebx,0
	int 80h

section .bss
	result1 resb 10;unintialized variable for  result

section .data
	prompt db "Dividing program ",0xa
