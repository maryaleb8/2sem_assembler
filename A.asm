extern puts
global main
main:
	;puts("Liberté, égalité, fraternité!")
	;puts(str);
	push .str	;передача параметров в стек
	call puts
	pop eax		;вытащить из стека
	
	;return 0;
	xor eax, eax
	ret 	
.str:	;метка локальная, доступна только из main
	;Data Bytes                         V-терминирующий ноль
	db "Liberté, égalité, fraternité!", 0
	;db 'L', 'i', ..., '!', '\0'
	; const char str[] = "...";
