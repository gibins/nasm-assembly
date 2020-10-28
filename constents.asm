;Systemcalls and Constents

SYS_EXIT equ 1; for numeric constents
SYS_WRITE equ 4
STDIN  equ 0
STDOUT equ 1

%assign total 3; value can be change later

%define teststring "TEST" ;%define for string value
%define testnumeric 3 ;% define for numeric value


section .text
	global _start:
_start:
	mov eax,SYS_WRITE
	mov ebx,STDOUT
	mov ecx,msg1
	mov edx,testnumeric ;%define numeric value  used here
	int 0x80

	%assign total 10; redefine total

	mov eax,SYS_WRITE
	mov ebx,STDOUT
	mov ecx,msg2
	mov edx,total ; %assign value used here
	int 0x80

	mov eax,SYS_WRITE
	mov ebx,STDOUT
	mov ecx,[teststring] ;%define string  value used here
	mov edx,total ; %assign value used here
	int 0x80

	mov eax,SYS_WRITE
	mov ebx,STDOUT
	mov ecx,[testnumeric] ;%define for numeric value
	mov edx,testnumeric ;%define numeric value used here
	int 0x80

	mov eax, SYS_EXIT
	int 0x80

section .data

	msg1 db 'Message 1',0xa
	len1 equ $-msg1
	
	msg2 db 'Message 2',0xa
	len2 equ $-msg2

  
