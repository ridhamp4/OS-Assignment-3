#include "types.h"
#include "stat.h"
#include "user.h"
#include "pstat.h"

int
main(int argc, char *argv[])
{
  struct pstat ps;
  int pid;

  printf(1, "Boost burn test starting...\n");

  // Child that will sleep and then burn boosts
  pid = fork();
  if(pid == 0){
    settickets(getpid(), 1);

    printf(1, "Child (pid %d) going to sleep...\n", getpid());
    sleep(50);   // earn a nice chunk of boosts
    printf(1, "Child (pid %d) woke up with boosts, now burning them...\n", getpid());

    // CPU-bound loop to *spend boosts*
    volatile int x = 0;
    for(int j = 0; j < 200000000; j++){
      x += j;
    }
    exit();
  }

  // Parent: observe boosts over time
  for(int round = 0; round < 15; round++){
    sleep(20);
    if(getpinfo(&ps) == 0){
      printf(1, "\n--- Round %d ---\n", round);
      for(int i = 0; i < NPROC; i++){
        if(ps.inuse[i] && (ps.pid[i] == pid)){
          printf(1, "pid %d tickets=%d runticks=%d boostsleft=%d\n",
                 ps.pid[i], ps.tickets[i], ps.runticks[i], ps.boostsleft[i]);
        }
      }
    }
  }

  wait();  // wait for child to finish
  printf(1, "Boost burn test finished.\n");
  exit();
}
