# Lecture 1-13-17

## Order Notation
- lim log<sup>2</sup>n / n
- can use calculus

## Sum of 1 to n
- proof that 

## Explanation for Roger
- The terms are from 1 to n so half of the terms are >= n / 2 (that's the value of each term)
- If half the terms are like ^, and there are n terms, there are n / 2 numbers like ^ (that's how many of those terms there are)
- So, n/2 is the value * n/2 terms with those values = lower bound of n<sup>2</sup>/4

## Graphs
- Representing relationships between objects
- Terminology:
    - edges & vertices
    - nodes & arcs
    - points & lines
- Controversies
    - Smallest graph has 0 or 1 vertex?
    - Empty graph
- Assumption by Spinrad: graphs are undirected
- Special cases:
    - Edge from node to same node
        - reflexive relationships
    - Multiple edges from one node to another
        - assumption in 250: no multiple edges
    - In weighted graphs, length of edge is cost
- Definitions
    - x is a neighbor of y: if you can get from x to y
    - degree of a vertex: number of edges coming out of the vertex
    - n: # vertices
    - m: # edges
    - sum of all vertices (degree(v)) = 2m ??
    - loop = degree + 2

## Homework
- To-do:
    - Derive n(n + 1) / 2
    - Review notes and figure out ??
- Completed: