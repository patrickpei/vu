# Lecture 03-22-17

## All pairs shortest path
- For every pair of vertices x and y, we want to know the shortest path from x to y
- Djikstra's
    - n * O(n<sup>2</sup>)
    - non-negative weight edges
    - greedy algorithm
        - doesn't work because longer edge can take you to negative weight edge later
- Floyd's
    - Deals with negative weigths & negative weight cycles
    - O(n<sup>3</sup>)

## Frequent flyers story
- How to find a negative weight edges & especially cycles

## Floyd's Algorithm
- Negative weights & cycles
- Will work unless there is a negative weight cycle
    - But will be able to detect
- Dynamic programming
- Applies to automata: convert FA to RE
- Standard assumption in graphs: vertices are numbered
- S<sub>ij</sub><sup>k</sup>
    - ij: coordinates
    - k: cost of shortest path from i to j which goes **through** no vertex numbered greater than k
    - Example: 5 -> 12 -> 9 -> 4 -> 8 -> 3 
        - Goes through 12, 9, 4, 8
        - Does not include start and end
        - Into and out of vertex to go **through**
- Going to calculate all
- Steps
    1. Solve all S<sub>ij</sub><sup>0</sup>
    2. Solve all S<sub>ij</sub><sup>1</sup>
    3. Solve all S<sub>ij</sub><sup>2</sup> (vertices 1 and 2)
- Create a matrix M<sup>0</sup>
    - Represents shortest path from i to j without going through edge greater than k
    - If i to j, then cost is cost
    - If i = j, then 0
    - Otherwise, infinity
- Create a matrix M<sup>k</sup>
    - Adding a new edge at each step, using the previous matrix
    - Row and column containing i is going to be the previous values
    - Then compare with and without new vertex k
- `min(`M<sub>ij</sub><sup>k - 1</sup>`, `M<sub>ik</sub><sup>k - 1</sup>` + `M<sub>kj</sub><sup>k - 1</sup>`)`
- How will we determine if there is a negative cycle
    - iff proof
    - If you find a negative value along the diagonal, you will have a negative cycle
    - If negative cycle, then Mx, there will be a negative along the diagonal
- Keep track of intermediate vertex if better
    - This will give the ability to reconstrut the path
- Can do it all in one matrix 
    - Slightly mindblown
