global  _start
section .text

_start:	mov eax, 2
	int 0x80
	cmp eax, 0
	jz filho

pai:	mov edx, tamanho
	mov ecx, string
	call print
	mov	ebx,0
	mov	eax,1
	int	0x80

filho:	mov edx,tamanho2
	mov ecx,string2
	call print
	mov	ebx,0
	mov	eax,1
	int	0x80

print:	mov     ebx,1
	mov     eax,4
	int     0x80
	ret

section .data
	string db	"Processo pai",0xa
	tamanho equ	$ - string
	string2 db	"Processo filho",0xa
	tamanho2 equ	$ - string2
