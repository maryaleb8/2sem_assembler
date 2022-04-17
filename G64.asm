;рассматриваем 64 битную систему. аргументы в функции передаются через регистры а не через стек

extern scanf
extern printf
extern puts

default rel

global main
main:
	
	sub rsp, 8; до вызова main стек был кратен 16 код возврата при запуске размера 8

	lea rdx, [Y]
	lea rsi, [X]
	lea rdi, [.fmt_in] ;REL относительный адрес
	xor eax, eax
	call scanf WRT ..plt ;глобальная таблица чтобы обращаться к функции даже если она далеко
	
	mov rax, [X]
	add rax, [Y]
	lea rdi, [.str_no]
	jnc .print ;прыжок с условием carry переноса через разряд
	lea rdi, [.str_yes]

.print:
	call puts WRT ..plt	
	add rsp, 8
	xor eax, eax
	ret


.fmt_in:
	db "%llu%llu", 0
.str_yes:
	db "YES", 0
.str_no:
	db "NO", 0

section .bss
X:
	resq 1
Y:
	resq 1
