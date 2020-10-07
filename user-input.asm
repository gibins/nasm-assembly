section .data

	userMsg1 db "Please Enter First Number: "
	lenUserMsg1 equ $-userMsg1

	userMsg2 db "Please Enter Second Number: "
	lenUserMsg2 equ $-userMsg2

	dispMsg1 db "Your first number is "
	lenDispMsg1 equ $-dispMsg1

	dispMsg2 db "Your second number is "
	lenDispMsg2 equ $-dispMsg2

section .bss

	num1 resb 5; space reserved for first number
	num2 resb 5; space reserved for second number

section .text

	global _start

_start:
	mov eax,4
	mov ebx,1
	mov ecx,userMsg1
	mov edx,lenUserMsg1
	int 80h; show first message

	mov eax,3
	mov ebx,2
	mov ecx,num1
	mov edx,5
	int 80h; read and store first number

	mov eax,4
	mov ebx,1
	mov ecx,userMsg2
	mov edx,lenUserMsg2
	int 80h; show second message

	mov eax,3
	mov ebx,2
	mov ecx,num2
	mov edx,5
	int 80h; read and store second number

	mov eax,4
	mov ebx,1
	mov ecx,dispMsg1
	mov edx, lenDispMsg1
	int 80h; display user prompt

	mov eax,4
	mov ebx,1
	mov ecx,num1
	mov edx,5
	int 80h; display first enterd number

	mov eax,4
	mov ebx,1
	mov ecx,dispMsg2
	mov edx, lenDispMsg2
	int 80h; display user prompt

	mov eax,4
	mov ebx,1
	mov ecx,num2
	mov edx,5
	int 80h; display second enterd number

	mov eax,1
	mov ebx,0
	int 80h
	

