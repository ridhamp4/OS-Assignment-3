#include "types.h"
#include "stat.h"
#include "user.h"

#define SIZE (8 * 1024 * 1024) // 8 MB

int main(void)
{
    char *p;
    int i;

    printf(1, "On-demand paging test starting\n");

    for (i = 0; i < SIZE; i += 4096) {
        p = (char*)i;
        *p = i % 256; // write triggers on-demand page allocation
        if (*p != i % 256)
            printf(1, "memory test failed at 0x%x\n", i);
    }

    printf(1, "On-demand paging test succeeded\n");
    exit();
}
