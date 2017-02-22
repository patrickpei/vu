# Lecture 02-15-17

## Shortest Path Algorithm
- "Single source"
    - From a starting point to all other points in the graph
- "Single source single destination"
    - No advantage to above
    - Same order of complexity as finding cheapest path to all points
- Dijkstra
    - P & V in OS / synchronizations
- Dijkstra's Algorithm
    - Assumptions:
        - Non-negative weight edges
            - For rewards in conjunction with costs
        - Digraph
            - If knew how to solve for undirected, no way to solve digraph
            - Conversely, knowing digraph knows how to solve for undirected
    - Greedy algorithm
    - Steps:
        1. Takes the one with the least cost
        2. Look at all edges out of s & x
            - Only place you can go wrong
    - Prim's algorithm 
        - Simply weight of edge
    - In this:
        - Weight of the edge + the cost of getting to the head of the edge
    - Runtime: O(n<sup>2</sup>)
    - Finalizes distances by order of cheapest to most costly

## "I am going to lie to you"
- *Don't write this down*
- Show you something kind of important to know
- Single source single destination shortest path
    - Simple variant of dijkstra's: bidirectional shortest path
- Find vertices in order of distance from the start vertex
- In the worst case, O(n<sup>2</sup>)
- Average case:
    - Expected: O(sqrt(n))
    - Order: O(n * sqrt(n))
- All this would be true if weights of edges are random numbers

## Lie
- Why do I teach you this?
- Expected time analysis can be very dangerous
- You can often be convinced that things are equally likely to happen
- Problem with model not math
- 