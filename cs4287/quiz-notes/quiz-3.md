# Virtualization
- Way in which physical resource abstracted and offered in a logical form that users operate over

## Terminology
- Host: physical resource
- Guest: runs in resource, guest os / apps
- VM: container that has guest
- VMM: supervisor
- Hypervisor: same as VMM

## Benefits
- Workload isolation
    - Isolation among VMs
    - Security and reliability
- Consolidation
    - Avoids waste of resources
    - Consolidate into single server
    - Easy upgrades
- Migration
    - Guest decoupled from hardware

# Taxonomy based on abstraction
- Hardware-level (Type 1)
    - on top of hardware
    - all s/w executed by hypervisor
- OS-level (Type 2)
    - runs on virtualized OS
- High level (Type 2)
    - application provided as framework / middleware

# Taxonomy based on resource
- CPU
- Memory
    - RAM via MMU
- I/O
    - storage: logical disks
    - networking: VPNS, VLANS

# Intermediate Solutions
- Para-virtualization
    - Modifies guest OS / drivers
- Full virtualization
    - OS binaries modified by binary translation

# Desired Attributes
- S/W compat
- Isolation
- Encapsulation
- Low overhead & high perf

# Challenges for Intel:
1. Ring aliasing (guest thinks it's higher)
2. Address space compression (guest think it has all memory)
3. Non faulting with privileges
4. Guest transitions
    - SYSENTER / SYSEXIT
5. Interrupt masking
6. Ring compression
7. Hidden state (registers / context switches)

# Intel Tech:
1. root mode (hypervisor)
2. guest mode
3. data structure - VMCS
4. VM bit
5. solves all the above challenges 