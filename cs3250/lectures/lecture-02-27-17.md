# Lecture 02-27-17

## Today: Finish Quicksort & Comparison Sorting

## Quicksort
- Not being held responsible for arithmetic of quicksort
- T(n+1) <= (n+2)/(n+1) * T(n) + 2c
- T(n) = (n+1)/(n) * T(n-1) + 2c
- T(n+1) <= (n+2)/n * T(n-1) + (n+2)/(n+1) 2c + 2c
- T(n-1) = (n)/(n-1) * T(n-2) + 2c
- T(n+1) <= (n+2)/(n-1) * T(n-2) + (n+2)/(n-1)
- Continuing.. (n+2)/(n-2) * T(n-3) + (n+2)/(n-1)2c + (n+2)/n * 2c + (n+2)/(n+1) * 2c...
- Eventually.. (n+2)/1 * T(1) + (n+2)/2 * 2c + (n+2)/3 * 2c + ... + (n+2)/(n+2) * 2c
- T(n+1) <= O(n) + (n+2) (1/1 + 1/2 + 1/3 + ... + 1/(n+1))2c
- 1/1 + 1/2 + 1/3 + ... is the harmonic series
- So, the runtime of quicksort is proportional to the rate of growth of the harmonic series

## Harmonic series
- Does not converge
- How fast does it grow?
- Analysis: breaking into groups
    - (1) + (1/2 + 1/3) + (1/4 + ... + 1/7) + (1/8 + ... + 1/15) + ....
    - = (1/(n/2) + 1/n)
    - Claim that each group <= 1, have k terms, each <= 1/k
    - each group >= k terms each >= 1/(2k) 
    - Same as >= 1/2
    - Means there are approximately logn groups, growth is proportional to logn
- cnlogn for quicksort

## Comparison sorting
- How do we know other sorting algorithms don't perfrom better than nlogn in the expected case?
- Input:
    - x1, x2, ... xn
- Output:
    - Same but sorted
- The only way we limit the possible sorted lists is by comparing elements
- Every comparison sorting algorithms maps binary trees
    - Will repeat already made comparisons
    - At most 2 children
- Worst case number of comparisons corresponds to what in the tree?
    - Height of the tree
- On n elements goes to a binary tree with n! leaves
    - n leaves implies the height >= logn
    - n! leaves implies the height >= log(n!)
    - Any comparison sorting algorithm in its worst case will make log(n!) comparisons
    - Stirling formula to solve log(n!)
    - What is log(n!)? Have to prove stirling's to use in this class
- log(n!) = log(n * (n-1) * (n-2) * ... * 1) <= log(n<sup>n</sup>) <= nlogn
- log(n!) >= log(n * (n-1) * ... (n/2)) >= log of (n/2) <sup> (n/2) </sup >= (n/2)log(n/2) >= (n/2)log(n) - n/2 = omega(nlogn)
- Expected:
    - Balanced tree: shortest length to a leave
    - Best expected: >= log(n!) = omega(nlogn)
- Every comparison sorting must take nlogn in the expected case

## Noncomparison sorting

## Test
- Order notation
- Graph algorithms
- Greedy algorithms