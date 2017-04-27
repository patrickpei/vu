# Lecture 03-31-17

## Independent set (Stable set)
- Graph G,K - does G have an independent set of size K?
- Independent set: set of vertices which have no edges between them
- Prove that this problem is NP-complete

## Independent set reduction
1. Show that in NP
    - If given the set of size K, then can easily verify
2. CLIQUE is transformable into INDEPENDENT-SET
    - GK -> G'K'
    - G' = G complement where there is an edge between x and y iff no edge between x and y in G
    - K' = K
    - Suppose that G has a clique C of size K, then C is an independent set in G'
    - Suppose that G' has an independent set I of size K, then I must form a clique in G of size K
- Easy reduction
- Recall: we turned CNF Satisifiability into CLIQUE
    - We didn't show CLIQUE -> Satisifiability
        - Why not?
        - Since Satisifiability is already in NP-Complete, we don't have to prove again
- 3-Satisifiability is CNF-Satisifiability where there are most 3 literals in each clause
    - Also NP-complete
- Special case will be hard as well

## Cryptography
- If can solve knapsack (which is NP-complete), then can break some common cryptography algorithms

## Vertex Cover
- Graph G, number K
- Pick vertices to cover all edges
- NP-complete
- Claim: vertices that are not part of vertex cover must form an independent set
- Reduction of IS -> VC
    - Show that in NP
        - Given a set of vertices, can verify in polynomial time that the set is a vertex cover
    - IS -> VC
        - GK -> G'K'
        - Let G = G'
        - Let K' = N - K
        - Suppose G has an IS, I of size K
            - V \I forms a VC of G' since vertices not in IS must have edges 
        - Suppose G' has a VC C of size N - K
            - Therefore, G' has a IS of V\C = (N - (N - K)) = size K
            - Because any edges between them would not be covered by the vertex cover, which covers all the edges, so IS

## Edge Cover
- Pick edges to cover all vertices
- Can be solved in polynomial time

## Traveling salesperson problem
- Hard to find order
- Turn covering problem into ordering problem is challenging

## Hamilton Cycle problem
- Euler cycle?
- Cycle that visits every vertex exactly once
- NP-complete to determine whether a graph has a hamilton cycle
- Next time: notion of what we do with NP-complete problems once we know they're NP-complete