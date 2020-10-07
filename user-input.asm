section .data

	userMsg db "Please Enter two Numbers"
	lenUserMsg equ $-userMsg

	dispMsg db "You have entered numbers"
	lenDispMsg equ $-dispMsg

section .bss

	num1 resb 5; space reserved for first number
	num2 resb 5; space reserved for second number

section .text

	global _start

_start:
	mov eax,4
	mov ebx,1
	mov ecx,userMsg
	mov edx,lenUserMsg
	int 80h; show first message

	mov eax,3
	mov ebx,2
	mov ecx,num1
	mov edx,5
	int 80h; read and store first number

	mov eax,3
	mov ebx,2
	mov ecx,num2
	mov edx,5
	int 80h; read and store second number

	mov eax,4
	mov ebx,1
	mov ecx,dispMsg
	mov edx, lenDispMsg
	int 80h; display user prompt

	mov eax,4
	mov ebx,1
	mov ecx,num1
	mov edx,5
	int 80h; display first enterd number

	mov eax,4
	mov ebx,1
	mov ecx,num2
	mov edx,5
	int 80h; display first enterd number

	mov eax,1
	mov ebx,0
	int 80h
	

