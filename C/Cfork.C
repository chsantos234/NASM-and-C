
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

void forkFunction()
{
	if (fork() == 0)
		printf("Processo filho\n");
	else
		printf("Processo pai\n");
}
int main()
{
	forkFunction();
	return 0;
}
