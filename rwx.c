#include <stdio.h>

int main() {
	int a;
	scanf("%o", &a);

	if (a & (1 << 8)) 
		printf("r");
	else 
		printf("-");
	if (a & (1 << 7)) 
		printf("w");
	else 
		printf("-");
	if (a & (1 << 6)) 
		printf("x");
	else 
		printf("-");
	if (a & (1 << 5)) 
		printf("r");
	else 
		printf("-");
	if (a & (1 << 4)) 
		printf("w");
	else 
		printf("-");
	if (a & (1 << 3)) 
		printf("x");
	else 
		printf("-");
	if (a & (1 << 2)) 
		printf("r");
	else 
		printf("-");
	if (a & (1 << 1)) 
		printf("w");
	else 
		printf("-");
	if (a & (1 << 0)) 
		printf("x");
	else 
		printf("-");

	

	return 0;
}
