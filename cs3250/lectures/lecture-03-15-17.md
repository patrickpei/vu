# Lecture 03-15-17

## Discuss Exam
1. 
2. Detect cycles
    - a. Toplogical sort
    - b. Ways
        - DFS with back edges
        - Divide into connected components, see for each there are k-1 edges in component of k vertices
3. 
4. Cross edges
    - a. Undirected: 0
    - b. Directed: (n<sup>2</sup>)

## Begin Dynamic Programming
- Divide into pieces and look from the top level
- Examples
    - factorial
    - fibonacci
        - Fib(20) >= 2 * fib(18) >= 2 * 2 * fib(16) = 2<sup>n</sup>
- Fundmental idea: save computed values to avoid recomputation
- Starting from the easiest
- DP gets correct solution for things that intuitive solutions are incorrect for

## DP Problems
- Matrix chain multiplication
    - [i x j] times [j * k]
    - Standard multiplication takes O(i * j * k)
    - M1 * M2 * M3 ... Mi
    - Some orders of multiplication takes fewer operations than others (since matrix multiplication is associative)
- Ideas:
    - Finding the largest and multiplying those first
        - Example of that doing badly:
            - [99 x 100] * [100 * 99] * [99 x 1]
                - (99 * 100 * 99) + (99 * 99 * 1) = ~10^6
                - (100 * 99 * 1) + (99 * 100 * 1) = ~10^4
    - Finding the smallest and multiplying those first:
        - Example of that doing badly
            - Didn't show "maybe homework problem"
    - No one knows a greedy algorithm that solves this efficiently
    - Divide & conquer
        - n - 1 choices of how to divide
        - also exponential
- Approach:
    - How to bound the subproblems
    - Always multiplying consecutive matrices
    - "Easiest to hardest"
