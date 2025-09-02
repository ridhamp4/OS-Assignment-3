#include "types.h"
#include "stat.h"
#include "user.h"
int
main(int argc, char *argv[])
{
  if(argc < 2){
    printf(2, "Usage: pause <seconds>\n");
    exit();
  }

  int n = atoi(argv[1]);  
  if(n <= 0){
    printf(2, "pause: invalid time '%s'\n", argv[1]);
    exit();
  }

  if(sleep(n*10) < 0){
    printf(2, "pause: sleep failed\n");
  }

  exit();
}
