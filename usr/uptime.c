#include "types.h"
#include "stat.h"
#include "user.h"

int
main(void)
{
  int ticks = uptime();     
  int seconds = ticks / 10; 
  int hours   = seconds / 3600;
  int minutes = (seconds % 3600) / 60;
  int secs    = seconds % 60;

  printf(1, "Uptime: %d ticks = %d:%d:%d (hh:mm:ss)\n",
         ticks, hours, minutes, secs);

  exit();
}
