section .text
	global main
main:
	mov edx,9
	mov ecx,name
	mov ebx,1
	mov eax,4
	int 80h

	mov [name], dword '0xa Toney Doe 0xa';

	mov edx,9
	mov ecx,name
	mov ebx,1
	mov eax,4
	int 80h

	mov eax,1
	int 80h

section .data
	name db ' John Doe ',0xa
