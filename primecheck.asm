section  .text
	global _start
_start:
	xor eax,eax; make accumulator zero
	
	mov eax,'5'; value for tesing  is here
	sub eax,'0'
	
	mov ecx,'2';dividing
	sub ecx,'0'
	
	mov ebx, eax; temp strage
	
loop1:
	div ecx
	add ebx,1
	jz loop1
	
	jnz loop2

	mov eax,4
	mov ebx,1
	mov ecx,primeprompt
	mov edx,8
	int 0x80  	

loop2:
	mov eax,4
	mov ebx,1
	mov ecx,notprimeprompt
	mov edx,8
	int 0x80

	mov eax,1
	int 08h

section .data
	primeprompt db 'Prime Number'
	notprimeprompt db  'Not a prime' 

section .bss
	result resb 9
