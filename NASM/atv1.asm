global  _start
section .text

_start:	mov eax, 2 ; SYS_FORK 
	int 0x80
	cmp eax, 0
	jz child

parent:	mov edx, len
	mov ecx, msg
	call print
	call exit

child:	mov edx,cLen
	mov ecx,cMsg
	call print
	call exit

print:	mov     ebx,1
	mov     eax,4
	int     0x80
	ret

exit:	mov     ebx,0
	mov     eax,1
	int     0x80

section .data
	msg db		"Processo pai",0xa
	len equ		$ - msg
	cMsg db		"Processo filho",0xa
	cLen equ	$ - cMsg
