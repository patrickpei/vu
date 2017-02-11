# Lecture 1-25-17 (Digraphs)

## Weak Connectivity
- Underlying undirected graph is connected 

## ??? connectivity 
- Won't give name because there's a homework problem on it
- For each pair of vertices, there is a path between them

## Strong Connectivity
- for each pair of vertices, there is a path both ways
- Algorithm
    1. DFS on x to make sure can reach all
    2. Reverse graph (flip edges)
    3. Repeat step 1
- Testing with cross edges
    - Is LOW(x) < DFS#(x)
        - If not, break off strongly connected component

## Strongly Connected Component Graph
- Has no cycles