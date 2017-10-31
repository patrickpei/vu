# Docker
- lightweight virtualization technique

## Internal
- Uses linux containers
    - linux namespaces: resource isolation
    - linux cgroups: resource usage control or hardware configuration
    - linux chroot: fs isolation
- AUFS FS for VC
- Runs on host OS
- Shares host OS kernel with containers

## Pros & Cons
- Pros: lightweight, fast, scalable
- Cons: less isolation, kernel OS in container must match host OS

## Docker daemon
- Runs by executing daemon in background (owned by root)
- Communication via unix sockets

## Container Theory
- Requirements
    - Process-based virtualization: supported in the host OS
    - Lighweight VMs
    - Kernel >= 2.6 namespace types:
        1. PID
        2. Mount FS
        3. Network
        4. IPC
        5. UTS (node / domain / host name)
        6. User (user / group ids)
    - syscalls:
        - clone: new ns
        - unshare: change ns
        - setns: attach new ns
- Building blocks
    - namespaces: isolation
        - capability that enables global system resource to be encapsulated
    - cgroups: resource management
        - CPU time, system memory, network bandwith
        - subsystems or "resource controllers"
            - blkio, cpu, cpuaact, cpuset, memory, devices, freezer, net_cls, net_prio
        - rules
            1. hierarchy can have multiple subsystems attached
            2. subsystem can't be attached to more than one hierarchy
            3. task can be part of 1 cgroup in a hierarchy (multiple if different hierarchies)
            4. when task forks itself, child belongs to same cgroup
        - implications of rules
            - one way subsystem is metered for a task
            - cgroups can have parameters to control
            - possible to dynamically merge / split hierarchies
    - COW: storage optimizations
        - share until update
        - used in BTRFS, AUFS
