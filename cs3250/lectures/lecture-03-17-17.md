# Lecture 03-17-17

## Matrix Chain Multiplication
- Greedy algorithms
     - Fast
     - Easy to understand
     - Have to prove if correct
- Goal: minimize total operations
- Take advantage of subproblems - adjacent multiplication
- As always: go from easiest
- M1, M2, M3, ... Mn
- Mij - represents matrix multiplication of the matrices at indices i, j
- M11, M22, M33, ... Mnn
- M12, M23, M34, M(n-1)n
- M13, M24, M25, .. M2N
- Eventually M1N
- Most trivial subproblem is when i = j
- Theta of N<sup>2</sup> problems to solve
- The shape eventually looks like a staircase (common for DP problems)
- Algorithm
    - Store in a table the results of Mij
    - Row 0 (all cost 0) and Row 1 can be calculated easily
    - Subsequent rows check the ways to do it, get the optimal value, and keep track of where the "breakpoint" is
        - The breakpoint is where the decision was made
    - For each M<sub>ij</sub>: 
        - Calculates every combination of adjacent sequences
        - For example M14 = min(m11 + m24, m12 + m34, m13 + m44)
- Analysis
    - O(n<sup>3</sup>)
    - Each row (descending from M1N) takes n - 1, n - 2, etc time
    - Say only half is being calculated:
        - Each row checks n - 1 breakpoints, each entry takes >= n/2 - 1
        - For 1 + 2 + n/2 rows = N^2
    - N<sup>3</sup> where N is the number of different matrices
    - No one knows how to do this correctly in a greedy manner

## Optimal Binary Search Tree Problem
- Almost the same algorithm as matrix chain multiplication but twist at the end that applies to this but not matrix chain 
- Should always look for this particular technique
- Dynamic set: add and remove from dictionary
    - Also called the dictionary problem
- Static dictionary: words are all fixed
    - No insertion or deletion
    - Space efficient spell checker
        - Some words are more common so should be at the root
        - For each word: frequency
        - Assumption: every lookup is in the dictionary
        - Evaluate cost of two trees: compare cost = sum(weight(i) * level(i))
- To be continued