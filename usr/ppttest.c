#include "types.h"
#include "stat.h"
#include "user.h"
#include "mmu.h"

#define N (8 * (1 << 20))   // 8 MB
#define PGSIZE 4096          // 4 KB pages
#define SUPERPGROUNDUP(a) (((a) + (512*PGSIZE) - 1) & ~((512*PGSIZE)-1))

void print_pt();
void print_kpt();
void ugetpid_test();
void superpg_test();

char *testname = "";

int
main(int argc, char *argv[])
{
  print_pt();
  ugetpid_test();
  print_kpt();
  superpg_test();
  printf(1, "pttest: all tests succeeded\n");
  exit();
}

void
err(char *why)
{
  printf(1, "pttest: %s failed: %s, pid=%d\n", testname, why, getpid());
  exit();
}

void
print_pte(uint va)
{
  uint pte = pgpte((void *) va);   // syscall: get PTE for va
  if (pte == 0) {
    printf(1, "va 0x%x not mapped\n", va);
  } else {
    printf(1, "va 0x%x pte 0x%x pa 0x%x ap 0x%x\n",
           va, pte, PTE_ADDR(pte), PTE_AP(pte));
  }
}

void
print_pt()
{
  printf(1, "print_pt starting\n");

  for (uint i = 0; i < 10; i++) {
    print_pte(i * PTE_SZ);
  }

  uint top = UADDR_SZ / PTE_SZ;
  for (uint i = top - 10; i < top; i++) {
    print_pte(i * PTE_SZ);
  }

  printf(1, "print_pt: OK\n");
}

void
ugetpid_test()
{
    int i;
    printf(1, "ugetpid_test starting\n");
    testname = "ugetpid_test";

    for (i = 0; i < 64; i++) {
        int ret = fork();
        if (ret > 0) {
            // Parent: wait for child to exit
            wait();
        } else if (ret == 0) {
            // Child: check ugetpid
            if (getpid() != ugetpid())
                err("mismatched PID");
            exit(); // child exits
        } else {
            err("fork failed");
        }
    }

    printf(1, "ugetpid_test: OK\n");
}


void
print_kpt()
{
  printf(1, "print_kpt starting\n");
  kpt();   // syscall: dump kernel page table
  printf(1, "print_kpt: OK\n");
}

void supercheck(uint s)
{
    for (uint p = s; p < s + 512 * PTE_SZ; p += PTE_SZ) {
        uint pte = pgpte((void *)p);
        if (pte == 0)
            err("no pte");

        // Check that mapping is valid
        if ((pte & PE_TYPES) == 0)
            err("pte not present");

        if (PTE_AP(pte) != AP_KU && PTE_AP(pte) != AP_KO)
            err("pte wrong access");
    }

    // Optionally check write/read
    for (int i = 0; i < 512 * PTE_SZ; i += PTE_SZ) {
        *(int *)(s + i) = i;
    }
    for (int i = 0; i < 512 * PTE_SZ; i += PTE_SZ) {
        if (*(int *)(s + i) != i)
            err("wrong value");
    }
}



void superpg_test()
{
    int pid;
    printf(1,"superpg_test starting\n");
    testname = "superpg_test";

    char *end = sbrk(N);
    if (end == 0 || end == (char*)0xffffffffffffffff)
        err("sbrk failed");

    uint s = SUPERPGROUNDUP((uint) end);
    supercheck(s);

    if ((pid = fork()) < 0) {
        err("fork");
    } else if (pid == 0) {
        supercheck(s);  // child
        exit();          // exit without arguments
    } else {
        wait();          // parent just waits for child to finish
    }

    printf(1, "superpg_test: OK\n");

}

