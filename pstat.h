// pstat.h
#ifndef PSTAT_H
#define PSTAT_H

#include "param.h"

struct pstat {
  int inuse[NPROC];     // whether this slot of the process table is in use (1 or 0)
  int pid[NPROC];       // PID of each process
  int tickets[NPROC];   // base tickets for the process (do NOT double here)
  int runticks[NPROC];  // total ticks this process was scheduled
  int boostsleft[NPROC];// remaining boosted lotteries
};

#endif // PSTAT_H
