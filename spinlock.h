// spinlock.h
#ifndef SPINLOCK_H
#define SPINLOCK_H

struct spinlock {
    uint        locked;
    char        *name;
    struct cpu  *cpu;
    uint        pcs[10];
};

#endif
