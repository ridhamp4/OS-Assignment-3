#include "types.h"
#include "stat.h"
#include "user.h"

#define SIZE (8 * 1024 * 1024) // 8 MB

int main(void)
{
    char *p;
    int i;
    int PAGE_SIZE = 4096;
    int NUM_PAGES = 10;

    printf(1, "On-demand paging test starting\n");

    // Grow heap lazily via sbrk but don't touch pages yet
    p = sbrk(NUM_PAGES * PAGE_SIZE);
    p = p; // starting address returned by sbrk
    for (i = 0; i < NUM_PAGES * PAGE_SIZE; i += PAGE_SIZE)
    {
        p[i] = i % 256; // Touch 1 byte per page, should fault then allocate
    }
    for (i = 0; i < NUM_PAGES * PAGE_SIZE; i += PAGE_SIZE)
    {
        if (p[i] != (i % 256))
        {
            printf(1, "ondemandtest: memory error at %d\n", i);
            exit();
        }
    }
    printf(1, "ondemandtest: success\n");
    exit();
}
