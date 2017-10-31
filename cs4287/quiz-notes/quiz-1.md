# View of Cloud computing (CC)
- CC refers to both applications delivered as services over internet & hardware/software that provide those services
- DC hardware + software = cloud
    - public if made available
        - service being sold is utility computing
    - private is internal DCs of an org
- CC = sum of Saas & utility computing

## New aspects
1. infinite computing resources on demand (don't have to plan far ahead)
2. no upfront commitment
3. pay by use

## Enablers
- construction / operation of large-scale commodity-computer DCs at low cost locations
    - decreased electricity cost
    - network bandwidth
    - operations / hardware

## Classes
- application framework
    - AppEngine
- hybrid
    - azure
- hardware virtual machines
    - EC2

## Obstacles & opportunities
1. Business continuity & service availability
    - only solution: multiple CC providers
2. Data lock-in
    - one solution is to deploy across multiple CC providers so that one down doesn't end everything
    - keep local (surge computing)
3. Data confidentiality / auditability
    - primary security mechanism: virtualization
    - think about the virtualized capabilities
4. Data Transfer Bottlenecks
    - physical moment can be faster than bandwith bottlenecks
5. Performance Unpredictability
    - IO interference between VMs
        - might be decreased with flash memory
    - thread usage is a blackbox
6. Scalable Storage
    - how to combine this with durability, high availability, scaling
7. Bugs in Large-Scale Distributed Systems
    - Cannot be reproduced at a small scale
8. Scaling Quickly
    - reduce money
    - be environmentally friendly
    - need a fast & easy to use snapshot/restart tool
9. Reputation Fate Sharing
    - ban IPs
    - legal liability
10. Software Licensing
    - prices of proprietary vs open source 

## Conclusion
1. Need to scale up and down
2. Not bare metal -> VMs
3. Hardware systems developed at scale of a container (>= 1 dozen racks)