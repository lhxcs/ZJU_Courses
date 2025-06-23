// gcc shellcode_test.c -no-pie -o shellcode_test

#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <errno.h>

char* prepared_str = "Hello ShellCode\n";

int main(int argc, char const *argv[])
{
    void (*funcptr)(void);

    funcptr = mmap(NULL, 0x1000, PROT_EXEC | PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

    if (funcptr == MAP_FAILED) {
        perror("mmap");
        exit(-1);
    }

    read(STDIN_FILENO, funcptr, 0x100);

    funcptr();

    munmap(mmap, 0x1000);

    return 0;
}
