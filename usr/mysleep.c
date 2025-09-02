#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
    printf(1, "mysleep started! pid=%d\n", getpid());
    // Sleep for a long time so we can see it in `ps`
    sleep(1000); 
    printf(1, "mysleep exiting pid=%d\n", getpid());
    exit();
}
