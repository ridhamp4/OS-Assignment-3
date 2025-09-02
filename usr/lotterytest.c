#include "types.h"
#include "stat.h"
#include "user.h"
#include "pstat.h"

#define SPIN_ITERS     2000     // very small so we don't hog CPU
#define SAMPLE_ROUNDS  12
#define SAMPLE_GAP     20       // ticks between samples

static void busy_ticks(int ticks) {
  // Burn a little CPU, then yield time via sleep(1) (no yield syscall needed)
  for (int t = 0; t < ticks; t++) {
    for (volatile int i = 0; i < SPIN_ITERS; i++) ;
    sleep(1);                   // give the scheduler a tick
  }
}

int
main(int argc, char *argv[])
{
  struct pstat ps;
  int kids[4] = {-1,-1,-1,-1};

  srand(321);
  printf(1, "lottery_demo2: long-running children (compute <-> sleep)\n");

  // Make parent (sampler) easy to schedule so it prints reliably
  settickets(getpid(), 100);

  // child 0: 1 ticket, short sleep
  if ((kids[0] = fork()) == 0) {
    settickets(getpid(), 1);
    for (;;) { busy_ticks(3); sleep(3); }
  }

  // child 1: 5 tickets, medium sleep
  if ((kids[1] = fork()) == 0) {
    settickets(getpid(), 5);
    for (;;) { busy_ticks(5); sleep(10); }
  }

  // child 2: 10 tickets, short sleep
  if ((kids[2] = fork()) == 0) {
    settickets(getpid(), 10);
    for (;;) { busy_ticks(6); sleep(2); }
  }

  // child 3: 8 tickets, never sleeps (baseline CPU user)
  if ((kids[3] = fork()) == 0) {
    settickets(getpid(), 8);
    for (;;) { busy_ticks(6); }   // continuous compute; no boosts
  }

  // parent: sample every SAMPLE_GAP ticks
  for (int r = 0; r < SAMPLE_ROUNDS; r++) {
    sleep(SAMPLE_GAP);
    if (getpinfo(&ps) == 0) {
      printf(1, "\n--- Round %d ---\n", r);
      for (int i = 0; i < NPROC; i++) {
        if (!ps.inuse[i]) continue;
        int pid = ps.pid[i];
        int show = (pid == 1 || pid == 2); // init/shell
        for (int k = 0; k < 4; k++) if (pid == kids[k]) show = 1;
        if (!show) continue;
        printf(1, "pid %d tickets=%d runticks=%d boostsleft=%d\n",
               ps.pid[i], ps.tickets[i], ps.runticks[i], ps.boostsleft[i]);
      }
    }
  }

  // stop children and reap
  for (int k = 0; k < 4; k++) if (kids[k] > 0) kill(kids[k]);
  while (wait() > 0) ;

  // summary
  if (getpinfo(&ps) == 0) {
    int rt[4] = {0,0,0,0};
    for (int i = 0; i < NPROC; i++)
      for (int k = 0; k < 4; k++)
        if (ps.inuse[i] && ps.pid[i] == kids[k]) rt[k] = ps.runticks[i];
    int total = rt[0] + rt[1] + rt[2] + rt[3];
    if (total > 0) {
      printf(1, "\nFinal runticks: C0=%d  C1=%d  C2=%d  C3=%d  (total=%d)\n",
             rt[0], rt[1], rt[2], rt[3], total);
      printf(1, "Approx shares (%%): %.1f  %.1f  %.1f  %.1f\n",
             100.0f*rt[0]/total, 100.0f*rt[1]/total,
             100.0f*rt[2]/total, 100.0f*rt[3]/total);
    }
  }

  printf(1, "lottery_demo2 done.\n");
  exit();
}
