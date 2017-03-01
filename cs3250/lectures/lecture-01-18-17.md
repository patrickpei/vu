# Lecture 1-18-17

## Graphs
- Care about form of storage because > constant factor
- Representations
    - Adjacency matrix
        - Nodes must be numbered
    - Adjacency lists

## Time complexity
- Matrix: O(1)
- Adjacency list: O(n) 
    - also can be considered "degree" of vertex
    - faster for finding Euler cycles
- Space:
    - Matrix: n^2
    - List: nlogm

## Graph algorithms
- A<sup>k</sup>[x, y] = number of paths from x to y of length k
- Shortest path (weighted, unweighted)
- Traveling salesman
- BFS
- DFS
    - Need to use adjacency lists


## Homework
