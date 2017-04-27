# Lecture 04-17-17

## Test
- 3 questions on complexity classes:
    1. Reduction
    2. Understanding
        - What it means to be in NP/NP-complete
    3. Approximation/reduction 
        - could be branch and bound 
    4. DP
        - DP that was almost on the test
            - Optimal matrix chain / optimal binary search
            - Explain the difference that let one be solved in O(N^2) vs 
            - Answer: could not move the root to the left
- Branch & bound: on it only in relation to approximation
- Two times optimal for TSP
    - Build MST and traverse in DFS
    - With a triangle inequality? Did not cover this semester

## Local improvement
- Example: TSP
- Example: Greedy vertex cover
    - Improvements
        - Are all vertices needed?
        - Can I add 2 and get rid of 3?
            - Swapping algorithms

## Max Flow
- What's flowing?
- Digraph
- Can always create:
    - Just assign 0's to everything
- Flow is measured 
- Cut is a division of the vertices
- Can measure flow across any cut