## Final Exam

### Unit 1
- risk: threat, vulnerability, impact
- lifecycle:
    1. design
    2. implement
    3. check
    4. maintain
- default security: full mediation
- design principles
    1. simplicity > complexity
    2. default = block
    3. all access must be filtered
    4. transparent sec against dark sec
    5. segregation of duties
    6. minimum priviledge
    7. minimum common mechanisms
    8. user acceptability
    9. working factor
    10. event log

### Unit 2: Malware
- worm
    - autonomous
    - replicates & spreads
- virus
    - programs contained in others
    - phases:
        1. propagation
        2. latency
        3. activation
        4. damage
- trojan horse
- logic bomb
    - unexpected effect
- backdoor
    - undocumented / secret
- taxonomy
    - only worms are autonomous
    - only worms and viruses are self reproducing
- APT: advanced persistent threat

### Unit 3: Access Control Systems
- BLP
    - data confidentiality
    - rules
        1. read all under
        2. if can read 1 and write 2, l(1) <= l(2)
        3. no change in levels
- BIBA
    - data integrity
    - rules
        1. can write if above
        2. if can read 1 and write 2, l(2) <= l(1)        
        3. no change
- Clark wilson
    - integrity

### Unit 4: Distributed Systems Protocol
- threats
    - passive
        - interception
        - war driving
        - port scan
    - active
        - interruption
            - ddos
            - icmp flood
            - tcp-syn
        - modification
            - ip spoof
            - pharming
            - dns identity theft
        - generation
            - session hijacking

### Unit 4: SSL/TLS
- SSL protocols
    1. handshake
    2. change cipher spec
    3. alert / warning
    4. record
- security services
    1. confidentiality
        - crypto
    2. integrity
        - mac
    3. auth
        - one way funcs
        - question answer
        - e-sign
    4. access control
    5. non-repudiation


