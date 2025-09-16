#include "types.h"
#include "stat.h"
#include "user.h"
#include "pstat.h"

int
main(int argc, char *argv[])
{
  struct pstat st;

  // 1. Test srand()
  printf(1, "== Testing srand() ==\n");
  srand(12345);   // set seed
  printf(1, "Seed set to 12345\n\n");

  // 2. Fork some children and set different tickets
  printf(1, "== Forking children with different tickets ==\n");
  int pid1 = fork();
  if(pid1 == 0){
    settickets(getpid(), 10); // child1: 10 tickets
    for(volatile int i=0; i<50000000; i++); // busy work
    exit();
  }

  int pid2 = fork();
  if(pid2 == 0){
    settickets(getpid(), 50); // child2: 50 tickets
    for(volatile int i=0; i<50000000; i++); // busy work
    exit();
  }

  int pid3 = fork();
  if(pid3 == 0){
    settickets(getpid(), 100); // child3: 100 tickets
    for(volatile int i=0; i<50000000; i++); // busy work
    exit();
  }

  // 3. Parent process: wait a little while, then call getpinfo()
  sleep(100); // let children run a bit

  if(getpinfo(&st) != 0){
    printf(1, "getpinfo() failed!\n");
    exit();
  }

  // 4. Print statistics for active processes
  printf(1, "\n== Process Info (from getpinfo) ==\n");
  for(int i=0; i<NPROC; i++){
    if(st.inuse[i]){
      printf(1, "PID %d: tickets=%d, runticks=%d, boostsleft=%d\n",
             st.pid[i], st.tickets[i], st.runticks[i], st.boostsleft[i]);
    }
  }

  // Wait for children to finish
  wait();
  wait();
  wait();

  printf(1, "\n== Test finished ==\n");
  exit();
}
