; Arithmetic operation 
SYS_WRITE equ 4
SYS_EXIT equ 1
STDOUT equ 1
STDIN equ 0

section .text
	global _start:

_start:

	xor eax,eax

	mov eax,'5'
	sub eax,'0'

	mov ebx,'4'
	sub ebx,'0'

	add eax,ebx
	add eax,'0'
	
	mov [result2],eax

	mov eax, SYS_WRITE
	mov ebx,STDOUT
	mov ecx, result1; user prompt
	mov edx,8
	int 0x80
	
	mov eax, SYS_WRITE
	mov ebx,STDOUT
	mov ecx, result2; sum of result
	mov edx,8
	int 0x80
	
	; Subtractionn
	
	xor eax,eax; clear  eax to zero
	mov [result2],eax; clear result variable to zero

	mov eax,'5'
	sub eax,'0'	

	mov ebx,'4'
	sub ebx,'0'
		

	sub eax,ebx
	add eax,'0'
	
	mov [result2],eax

	mov eax, SYS_WRITE
	mov ebx,STDOUT
	mov ecx, result1
	mov edx,8
	int 0x80

	
	mov eax, SYS_WRITE
	mov ebx,STDOUT
	mov ecx, result2
	mov edx,8
	int 0x80

	mov eax,SYS_EXIT
	xor ebx,ebx
	int 0x80

section .data
	result1 db " Result  ",0xa;

section .bss
	result2 resb 5
