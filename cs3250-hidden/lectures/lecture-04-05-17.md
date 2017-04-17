# Lecture 04-05-17

## Review:
- Recall: steps to show X is NP-complete
    1. Show X is in NP
        - Verify that the answer is yes
    2. Show that a known NP-complete problem Y is polynomially reducable to X
        - Show a clear reduction
        - If the answer to Y is yes, then the answer to transformed problem is yes
        - If the answer to X is yes, then the answer to original problem, Y, is yes
- NP-complete: 
    - Must be in NP
        - Decision problem where you can verify the answer is yes in polynomial time
- NP:
    1. Verify the answer in polynomial time
    2. Solved in polynomial time by a nondeterministic Turing machine

## Some NP-complete problem
1. Bin packing
    - Usually teach the easiest version that is still hard
    - Easiest thing to pack: 1d numbers
    - Given numbers, want to pack in least number of bins possible
    - Decision problem: given items, is it possible to pack it into k bins
2. Knapsack problem
    - Objects with weight, knapsack has capacity
    - Come as close to filling the knapsack as possible
    - Can you put objects in whose weight sums to C?
3. Coloring problem
    - In a graph, if vertices are adjacent, then they must get different colors
    - Make each of the areas a vertex
    - Famous question: can all maps be colored with 4 colors?
        - Planar graphs
            - No edges crossing
    - Application:
        - Conflict graphs
    - Given graph G, can it be colored with K numbers?
        - chormatic number is the minimum number of colors it takes
4. Traveling salesperson
    - Version: G, K
        - G is a weighted graph and complete
            - Is an edge between each pair of vertices
            - Simplest version
    - Is there a tour of cost <= K?
    - Is there a cycle that goes through every vertex exactly once and has total cost <= K?
    - Other versions
        - Wandering salesperson problem

## Coping with NP-completeness
- Mathematical quality of a solution