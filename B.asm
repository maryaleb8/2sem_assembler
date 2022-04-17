extern printf
extern scanf

section .text
global main
main:
	sub esp, 12					;вроде как, регистр, отвечающий за верхушку стека передаваемых параметров, но я не уверен
	; или пишем mov eax, x
	;push eax
	;push .str_in
	;call scanf
	;movzx eax, word[x]				;mov eax, [X](в кв скобках содержимое), and eax, 0xFFFF

	;push eax
	;push .str_out
	;call printf
	;add esp, 16

	lea eax, [esp + 8]				;непонятно что и зачем
	mov [esp + 4], eax				;вроде как передача eax в стек параметров, но непонятно зачем
	mov [esp + 0], dword .str_in			;добавление строки формата в качестве параметра, но непонятно, почему нельзя использовать push
	call scanf					;вызов scanf
	
	movzx eax, word[esp + 8]			;непонятно, что означает movZX и word
	mov [esp + 4], eax				;второй параметр для вывода (eax, в который записали строкой выше)
	mov [esp + 0], dword .str_out			;добавление строки формата в качестве параметра
	call printf					;вызов printf
	
	add esp, 12					;возврат esp в исходное положение
	
	xor eax, eax					;возврат нуля
	ret
.str_in:
	db "%u", 0					;строка формата для ввода
.str_out:
	db `%u\n`, 0					;строка формата для вывода

;section .data						;сюда пишем все данные
;X:
	;dd 0						; rd-reserved data, dd-data dword
