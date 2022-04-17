; для двойного сканфа изменяем форматную строку на % % и запихиваем в стек икс и игрик

extern printf
extern scanf

section .text
global main
main:
	push X+4
	push X
	push .str_in
	call scanf
	add esp, 12

	mov eax, [X]
	cdq
	idiv dword[X+4]

	push edx
	push .str_out
	call printf
	add esp, 8					;возврат esp в исходное положение
	
	xor eax, eax					;возврат нуля
	ret
.str_in:
	db "%d%d", 0					;строка формата для ввода
.str_out:
	db `%d\n`, 0					;строка формата для вывода

section .bss 						;забито нулями, и начальных значений положить нельзя
X:
	resd 2						;выделили два dwordа

