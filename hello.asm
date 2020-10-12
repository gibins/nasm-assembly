;Assembly lanaguage program for print a message and exit.
;Implementing sys_write and  sys_exit system calls in nasm assembly

section .text
	global _start; must be declered for kernel

_start:
	mov edx,len	;message length
	mov ecx,msg	;print message
	mov ebx,1	;stdout
	mov eax,4	;move systemcall number 4 to accumulator (sys_write)
	int 0x80	;call interrupt 0x80
	
	mov eax,1	;move systemcall number 1 to accumulator(sys_exit)
	int 0x80	;call interrupt 0x80

section .data
	msg db "hello world",0xa
	len equ $-msg

