	.file	"testov.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	lea	rsi, .LC0[rip]
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	xor	eax, eax
	pop	rdx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
