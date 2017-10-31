# Xen/KVM Virtualization

## Objectives
- No specialized hardware
- Almost no performance compromise
- Strict performance and security isolation among VMs
- Cannot overlook security / DOS issues
- Support multiple guest OS' on conventional hardware

## Design Principles
- Apps on guest OS won't need modification
- Can support multi-app OS ?
- High performance and strong resource isolation 
- Cannot totally hide the effects of resource virtualization 
    - incorrect TCP round trip estimates based on virtualized time

## Design Considerations
- Hypervisor design
    - Put at lowest level to avoid performance degradation across layers
    - Type 1 hypervisor
- Tradeoff
    - Multiplexes OS which gives
        - clean isolation
        - multiple OS support
    - Comes at the cost of heavyweight solution where OS needs to boot
- (Full virtualization wasn't an option)
    - Face all the ring/permission challenges

## Xen Paravirtualization
- Abstraction similar to actual host 
    - 4 level ring structure
    - Better performance
    - Requires mods to guset OS to execute at privilege level 1 but no change to apps
- Paravirtualization needed at
    - MMU
    - CPU
    - I/O

## Control & Management Architecture
- Goal: separate policy & mechanisms
- Hypervisor provides basic control, runs at privilege 0
- All OS' run at privilege 1
- Key points
    - All OS' execute as guests
    - One guest executes in control plane
    - XenServer uses RedHat

## Paravirtualization of Subsystems
- MMU
    - lower segmentation privileges
    - can read page tables, updates batched/validated by hypervisor
- CPU
    - guest runs at lower privilege level than Xen
- I/O
    - async I/O rings
    - event mechanism instead of hardware interrupts

## Memory Paravirtualization
- Challenges
    - x86 did not provide software-managed TLB
    - TLB misses processed by CPU
    - Valid translations in hardware page table
    - Context switch of guests means complete TLB flush
- Solutions
    - Guest OS responsible for managing page tables
    - Xen takes 64MB at the top of every address space
    - Guest allocates page, registers with Xen
    - Validated by Xen and Xen takes over updating
    - Batch page table updates

## CPU Paravirtualization
- Type 1, guest OS must be at higher level & must be modified
- Privileged instructions validated by Xen
- Exception handlers registered with Xen
