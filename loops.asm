section .text
	global _start
_start:
	mov ecx,10; store loop  end  in ecx
	mov eax,'9'; store loop start in eax

l1: 
	mov [num],eax; store loop start  into a temp location , for using eax for sys calls
	
	mov eax,4; setup sys_write systemcall
	mov ebx,1; set data output
	
	push ecx;  push ecx content to stack , ecx needed for  storing display message content
	mov ecx,num; move last eax content  to ecx for display
	
	mov edx,10; store message length  in edx
	int 0x80; interrupt 80h

	mov eax,[num]; mov last displayed content to eax
	sub eax,'0';convert  string to integer
	;inc eax;increment  eax content
	sub eax,1; decrement eax content
	
	add eax,'0'; convert integer to string
	pop ecx; pop stack top content  to ecx
	loop l1;jump to l1 label

	mov eax,1; sys_exit systemcall
	int 0x80

section .bss
	num resb 10
