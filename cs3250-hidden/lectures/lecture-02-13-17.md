# Lecture 02-13-17

## Ackermann's Function
- "Strange lecture"
- Not responsible for anything but more for "cultural knowledge as CS majors"
- Invented to find out what a computer could/could not do
- Computer can calculate non-primitive recursive function
- Related to running time of union-find
- Grows fast

## What is it?
```
A(m, n) = 
    n + 1                       if m = 0
    A(m - 1, 1)                 if m > 0 and n = 0
    A(m - 1, A(m, n - 1))       if m > 0 and n > 0
```
- Shortcuts:
    - A(0, n) = n + 1
    - A(1, n) = n + 2
    - A(2, n) = 2n + 3
- Tarjan's Inverse Function (simplified)
    - Alpha(n) = smallest i such that A(i, i) >= n
    - Running time of n union-find operations on n element set: n * alpha(n)
    - Alpha function also appears:
        - Davenport sevel sequences
        - "Envelope of sequence of lines"
            - Used in computation geometry for walking around some configuration

## Computability of Ackermann's Function
- Claim: A(i, j) is always computable
- Proof:
    - Double induction
    - BWOC
        - Suppose not, then there is some smallest A(x, y) which is not computable
        - Lexicographically smallest
        - A(x, y) = A(x - 1, A(x, y - 1))
            - A(x, y - 1) is smaller and thus computable & contradiction
