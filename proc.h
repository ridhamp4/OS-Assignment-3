#ifndef PROC_INCLUDE_
#define PROC_INCLUDE_
#include "spinlock.h"

// Per-CPU state, now we only support one CPU
// struct proc* myproc(void);
struct cpu {
    uchar           id;             // index into cpus[] below
    struct context* scheduler;      // swtch() here to enter scheduler
    volatile uint   started;        // Has the CPU started?

    int             ncli;           // Depth of pushcli nesting.
    int             intena;         // Were interrupts enabled before pushcli?

    // Cpu-local storage variables
    struct cpu*     cpu;
    struct proc*    proc;           // The currently-running process.
};

extern struct cpu cpus[NCPU];
extern int ncpu;

extern struct cpu* cpu;
extern struct proc* proc;           // pointer to current process
struct uproc {
  int pid;
  int ppid;
  int state;
  int syscall_count;
  char name[16];
};

//PAGEBREAK: 17
// Saved registers for kernel context switches.
// Keep it in sync with swtch.S
struct context {
    uint    r4;
    uint    r5;
    uint    r6;
    uint    r7;
    uint    r8;
    uint    r9;
    uint    r10;
    uint    r11;
    uint    r12;
    uint    lr;
};

enum procstate { UNUSED, EMBRYO, SLEEPING, RUNNABLE, RUNNING, ZOMBIE };
void psdump(void);
// Per-process state
struct proc {
    uint            sz;             // Size of process memory (bytes)
    pde_t*          pgdir;          // Page table
    char*           kstack;         // Bottom of kernel stack
    enum procstate  state;          // Process state
    volatile int    pid;            // Process ID
    struct proc*    parent;         // Parent process
    struct trapframe* tf;           // Trap frame for current syscall
    struct context* context;        // swtch() here to run process
    void*           chan;           // If non-zero, sleeping on chan
    int             killed;         // If non-zero, have been killed
    struct file*    ofile[NOFILE];  // Open files
    struct inode*   cwd;            // Current directory
    char            name[16];       // Process name (debugging)
    int             syscall_count;  // Count of syscalls

  // --- lottery scheduling fields ---
    int             tickets;       // Base tickets (children inherit this)
    int             runticks;      // Total ticks actually run

    // --- sleep accounting (for precise wake + compensation) ---
    int             sleeptime;     // Requested sleep duration (in ticks)
    int             sleep_ticks;   // How many ticks the process has been sleeping
    uint            wakeup_tick;   // Tick when the process should wake up
    int             boostsleft;    // How many boosted lottery rounds remain
    uint            sleepstart;

};

// Process table
// struct ptable_t;
struct ptable_t {
  struct spinlock lock;
  struct proc proc[NPROC];
};

extern struct ptable_t ptable;

#endif
