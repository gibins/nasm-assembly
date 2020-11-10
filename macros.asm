%macro write_string 2;numeric 2 is the number of argument 
	mov eax,4
	mov ebx,1
	mov ecx,%1; %1 is the  first argument
	mov edx,%2; %2 is the second argument
	int 0x80
%endmacro

section .text
	global _start
_start: 
	write_string msg1,len1; calling macro
	write_string msg2,len2

	mov eax,1
	int 0x80

section .data
	msg1 db "first message",0xa
	len1 equ $-msg1

	msg2 db "Second message",0xa
	len2 equ $-msg2


