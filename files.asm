section .text
	global _start

_start:
	;create file
	mov eax,8
	mov ebx,file_name
	mov ecx,0777
	int 0x80

	;write into the file
	mov [fd_out],eax
	
	mov edx,len
	mov ecx,msg
	mov ebx,[fd_out]
	mov eax,4
	int 0x80

	;Close the file
	mov eax,6
	mov ebx,[fd_out]

	;write message indicating end of write
	mov eax,4
	mov ebx,1
	mov ecx,msg_done
	mov edx,len_done
	int 0x80

	; Open the file
	mov eax,5
	mov ebx,file_name	
	mov ecx,0
	mov edx,0777
	int 0x80

	mov [fd_in],eax
	
	; read from the file

	mov eax,3
	mov ebx,[fd_in]
	mov ecx,info
	mov edx,30
	int 0x80

	;Close the file
	mov eax,6
	mov ebx,[fd_in]
	int 0x80
	
	; Print info
	mov eax,4
	mov ebx,1
	mov ecx,info
	mov edx,30
	int 0x80

	mov eax,1
	int 0x80


section .data
	file_name db "myfile.txt"
	len1 equ $-file_name
	
	msg db "Welcome to asm",0xa
	len equ $-msg

	msg_done db "Write to file",0xa
	len_done equ $-msg_done

section .bss
	fd_out resb 1
	fd_in resb 1
	info resb 30

