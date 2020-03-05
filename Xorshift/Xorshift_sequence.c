#include <stdio.h>

#define START_VALUE 1

unsigned int rand();

int main()
{
	for(int i = 1; i < 1000000; i++)
		printf("%u", rand() % 2);
	
	return 0;
}

unsigned int rand()
{
	static unsigned int rand_val = START_VALUE;

	rand_val ^= rand_val << 13;
	rand_val ^= rand_val >> 17;
	rand_val ^= rand_val << 5;

	return rand_val;
}
