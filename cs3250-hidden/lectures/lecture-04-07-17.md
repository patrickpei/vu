# Lecture 04-07-17
- Taken by rgli 

## How to deal with NP-completeness
- Approximation algorithms
- Algorithms that do not find the actual solution, but close to it
- In other fields, seen as an answer with a percent area of error
- Minimization algorithm
    - R<sub>alg</sub> = max error over all inputs (solution found by algorithm / optimal solution)
- Bin packing
    - Next fit
        - 1 open bin, adds elements until overflow, shuts bin, opens new bin
    - R<sub>NF</sub> < 2
        - Use even number of bins (1...2k)
        - Use odd number of bins (1...2k, 2k + 1)
        - Sum of a pair of bins > 1
        - If NF uses 2k bins then weight > K
        - Optimal = k + 1
        - 2k / (k + 1) < 2 and (2k + 1)/(k + 1) < 2
    - Variations
        - First fit: put new objects in 1st bin it fits in