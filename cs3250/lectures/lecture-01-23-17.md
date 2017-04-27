# Lecture 1-23-17

## Articulation Points & Biconnectivity
- Articulation Point:
    - Node such that if the node is removed, the graph is no longer Connected
- G v. such that G | v is disconnected
- Naive algorithm:
    - DFS/BFS on every node
    - Time: O(n(n + m))
- DFS
    - calculate as back up
- LOW

```
min(DFS#s of vertices adjacent to v, LOW(children of v))

if LOW(v) >= DFS#(parent(v))
    mark parent as articulation point

root: only AP if > 1 child
```

## Biconnectivity
- Biconnected only if no articulation points in between

## How to solve 
- Sometimes better to solve subproblems on biconnected components

## Connected
- Undirected
    - path from one vertex to every other vertex
    - path from all pairs of vertices
- Directed

## Homework
- Connectivity for a digraph
- DFS on digraphs