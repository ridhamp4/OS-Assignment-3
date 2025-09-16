## On-Demand Paging (Lazy Allocation)

### Summary

This codebase was extended to support on-demand paging. Instead of allocating physical memory during `sbrk`/`growproc`, pages are allocated lazily when a process first accesses a virtual page and a data abort (page fault) occurs. The fault handler allocates and maps a zeroed page, then returns to user space to retry the instruction.

### Changes

- **`proc.c`**

  - **`growproc(int n)`**: Switched to lazy allocation. For positive growth, it now only increases `proc->sz` (with a bound check against `UADDR_SZ`) and does not allocate physical pages. Deallocation still frees pages via `deallocuvm`.

- **`vm.c`**

  - **`handle_page_fault(uint fault_addr)`**: Added a dedicated fault handler that:
    - Validates the faulting virtual address is within `proc->sz` and below `UADDR_SZ`.
    - Uses `walkpgdir(..., alloc=1)` to ensure a page table exists.
    - Allocates a zeroed page and maps it with user read/write permissions, then flushes TLB.
  - **`copyuvm(pde_t *pgdir, uint sz)`**: Modified to copy only present PTEs. Unmapped/lazy regions remain holes in the child and will fault on first access.

- **`trap.c`**

  - **`dabort_handler(struct trapframe *r)`**: On a data abort, calls `handle_page_fault(fa)`. If allocation succeeds, prints a message, re-enables interrupts with `sti()`, and returns to user space without panicking.

- **`trap_asm.S`**

  - **`trap_dabort` path**: After calling `dabort_handler`, it now branches to `trapret` to correctly restore state and return, instead of looping.

- **User test: `usr/ondemandtest.c`**

  - Adds a test that grows the heap with `sbrk(NUM_PAGES * PAGE_SIZE)` and then touches one byte per page to trigger faults and allocations. Verifies contents and prints success.

- **`usr/Makefile`**
  - Added `_ondemandtest` to the user programs included in the file system image.

### Rationale

- Lazy allocation reduces immediate physical memory pressure and demonstrates a key VM mechanism: page table creation at fault time rather than up front.
- Returning cleanly from the data abort with interrupts enabled prevents hangs and allows the system to make progress after servicing faults.
- Copying only mapped pages in `copyuvm` preserves laziness across `fork` and keeps semantics consistent between parent and child.

### How to Build & Run

1. Build (already integrated into top-level build):
   ```bash
   make clean
   make
   ```
2. Boot xv6 (your usual run method, e.g., QEMU) and run the test:
   ```
   $ ondemandtest
   On-demand paging test starting
   ... (kernel may print allocation logs) ...
   ondemandtest: success
   ```

### Notes / Pitfalls

- The data abort handler must re-enable interrupts (`sti()`) before returning on success or the system can appear to hang.
- The abort return path in `trap_asm.S` must return via `trapret` after servicing the fault.
- `handle_page_fault` clamps faults to the current process size; invalid addresses still cause the standard fault diagnostics.
