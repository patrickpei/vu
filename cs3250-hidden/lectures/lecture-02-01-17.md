# Lecture 2-1-17

## Describe a problem (has a famous name)
- Form of connecting networks
- Everything came through the telephone
- Connect everyone so that there is a path between all pairs
- Goal:
    - minimize cost
    - develop a "good" algorithm for deciding how to connect people

## Ideas
- Has to do with spanning tree (only factor is cost, length doesn't matter)
1. Order edges by cost and check if path exists, if not add.
2. Start from a random vertex and add vertices based on minimum cost to adjacent neighbors
3. Horrible:
    - Powerset of all edges and keep track of minimum of the ones that are connected
4. Little less horrible:
    - 

## Other Ideas
- Find cycles
- 

## Considerations
- Correctness
    - least possible cost (not just connected)
- Fastest

## Greedy Algorithms
- Characteristics
    - Natural & easy to understand
    - Fast
    - Often times incorrect
- How to prove (always have to)
- Definition
    - Once it adds to solution, it never goes back
- Side notes
    - Greedy removal: once it throws it away, never gives back
    - Local improvement: start with a solution (which might be bad) and look to improve