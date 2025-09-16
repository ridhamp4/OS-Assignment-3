#include "types.h"
#include "arm.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "spinlock.h"
#include "pstat.h"

int sys_fork(void)
{
    return fork();
}

int sys_exit(void)
{
    exit();
    return 0;  // not reached
}

int sys_wait(void)
{
    return wait();
}

int sys_kill(void)
{
    int pid;

    if(argint(0, &pid) < 0) {
        return -1;
    }

    return kill(pid);
}

int sys_getpid(void)
{
    return proc->pid;
}

int sys_sbrk(void)
{
    int addr;
    int n;

    if(argint(0, &n) < 0) {
        return -1;
    }

    addr = proc->sz;

    if(growproc(n) < 0) {
        return -1;
    }

    return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
    return -1;

  acquire(&tickslock);
  ticks0 = ticks;

  proc->wakeup_tick = ticks + n;

  while(ticks - ticks0 < n){
    if(proc->killed){
      release(&tickslock);
      return -1;
    }
    // sleep() will stamp sleepstart when chan == &ticks
    sleep(&ticks, &tickslock);
  }

  release(&tickslock);
  return 0;
}





int sys_uptime(void)
{
    uint xticks;

    acquire(&tickslock);
    xticks = ticks;
    release(&tickslock);

    return xticks;
}
int
sys_ps(void)
{
  psdump();
  return 0;
}
extern uint rseed;

int
sys_srand(void)
{
  int seed;
  if (argint(0, &seed) < 0)
    return -1;
  rseed = seed;
  return 0;
}

int
sys_settickets(void)
{
  int pid, n;
  struct proc *p;

  // Fetch syscall args
  if (argint(0, &pid) < 0 || argint(1, &n) < 0)
    return -1;

  // Tickets must be positive
  if (n <= 0)
    return -1;

  acquire(&ptable.lock);

  // Find process with given PID
  for (p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
    if (p->pid == pid) {
      p->tickets = n;
      release(&ptable.lock);
      return 0;   // success
    }
  }

  release(&ptable.lock);
  return -1;  // PID not found
}
#include "pstat.h"   // ensure kernel sees same struct

// put this in the kernel (sysproc.c or where your sys_getpinfo lives)

int
sys_getpinfo(void)
{
  struct pstat *ps;
  struct proc *p;
  int i = 0;

  if (argptr(0, (void*)&ps, sizeof(*ps)) < 0)
    return -1;

  acquire(&ptable.lock);
  for (p = ptable.proc; p < &ptable.proc[NPROC]; p++, i++) {
    ps->inuse[i]      = (p->state != UNUSED);
    ps->pid[i]        = p->pid;
    ps->tickets[i]    = p->tickets;
    ps->runticks[i]   = p->runticks;
    ps->boostsleft[i] = p->boostsleft;
  }
  release(&ptable.lock);

  return 0;
}

extern void print_proc_page_table(struct proc *p);
int
sys_printpt(void)
{
  if (proc == 0)   // global proc pointer
    return -1;

  print_proc_page_table(proc);
  return 0;
}

int
sys_ugetpid(void)
{
    if (proc == 0)
        return -1;
    return proc->pid;
}
// ensure walkpgdir is visible (declared in vm.c)
// pte_t* walkpgdir(pde_t *pgdir, const void *va, int alloc);

int
sys_pgpte(void)
{
    void *uva;         // user virtual address argument
    pte_t *pte;

    // get user pointer argument 0
    if (argptr(0, (char**)&uva, sizeof(void*)) < 0)
        return -1;

    if (proc == 0)
        return -1;

    pte = walkpgdir(proc->pgdir, uva, 0);
    if (pte == 0)
        return 0;   // not present

    return (int)(*pte);
}
int
sys_kpt(void)
{
    kpt();
    return 0;
}

