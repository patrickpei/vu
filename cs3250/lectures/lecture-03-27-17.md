# Lecture 03-27-17

## Sawmill problem
- Cut into specific pieces
- Costs calculated by *size of board*
- Example:
    - 4 | 3 | 7 | 2 | 8
    - ABCD: 24 + 20 + 17 + 10
    - BACD: 24 + 7 + 17 + 10
    - CDBA: 24 + 10 + 14 + 7
- Minimum total cost
- Very similar to matrix multiplication & optimal binary tree

## Office Hours 3/28
- 9:00am - 10:30am, 1:00pm - 2:30pm

## Proving a problem is difficult
- P: decision problems that can be solved in polynomial time
- NP: can very an answer of yes in polynomial time

## P = NP?
- What makes it important?
    1. Many important problems are known to be in NP but not known to be in P
    2. Many important problems are known to be in NP and are in P iff P = NP

## Evidence of difficulty
1. Problem is in NP iff P = NP
2. We believe P != NP
3. Therefore, problem cannot be solved in polynomial time
- Wrong proof
- Hard problem: NP-complete
- Complete: hardest problem in its class

## Reduction:
- Problem A => Problem B
- Any instance of A into an instance of B
- Show A is at least as hard as B
    - A => B or B => A?
    - Answer: B => A
- Answer to instance of y must be same as answer to instance of x
- X => Y
- Reduction must take polynomial time (and space)
- X infinity<sub>p</sub> Y

## NP-Complete
- X is NP-complete if
    1. X is in NP
    2. Every problem in NP polynomially reduced to X
- To show:
    1. Take known NP-complete and turn into X
- Chicken & egg problem