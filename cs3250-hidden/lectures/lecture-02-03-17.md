# Lecture 2-3-17

## Spanning Tree Algorithms
- m > n - 1
    - otherwise graph is not connected
- Algorithms:
    - Find a cycle and delete the longest edge
        - DFS: O(n + m)
        - Delete O(mn)
        - Total time: O(m<sup>2</sup>n)
    - Find arbitrary vertex
        - Find adjacent edge out of T and 
        - Until all vertices in T

## Prim's Algorithm
- O(nm)
    - natural algorithm
- Psuedo-proof
    - Suppose it makes 1st mistake at step i
    ...
    ...
    - 1st mistake: T was part of a MST, at step i, some edge from T to x was added
    ...
    - Not a mistake
    ...
    ...
    ...
    - Therefore never makes 1st mistake
- Proof:
    - T needs to go to x from some vertex U
    - No mistake was made before so T<sub>min</sub> but once added X, mistake was made
    - Add edge from T<sub>min</sub> + u to x
        - Now T has some cycle 
        - At some point, the cycle has to go back into the tree T
    - Claim there's another spanning tree:
        - T<sub>min</sub> minus v-w is a ST
        - Only one way to get between pair of points in a tree
        - Cost(v-w) < Cost(u-x)
            - C(u-x) <= C(vw) because algorithm took the smallest edge out of T
                - Since u-x was chosen over v-w
            - T<sub>min</sub> + u-x \ v-w <= C(T<sub>min</sub>)
            - Now, T<sub>min</sub> + u-x \ v-w is also another MST
                - Contradiction
        - Therefore: adding u-x is not a mistake


## Proof of Greedy Algorithms
- Show that they never make a 1<sup>st</sub> mistake
- Induction
    - Proof BWOC

## Kruskal's Algorithm
- Sort edges in increasing order
- Add next u-v iff does not create a cycle 
    - Personal: I like u-v does not already have a path better than "cycle"
- Not obvious that Prim's/Kruskal's is better
- Both are subproofs of:
    - Any current tree and add the smallest edge out of it, then the greedy algorithm based on any of the trees will always give you a MST
- Analysis:
    - Runtime: O(mlogm) = O(mlogn) since m can be at most n<sup>2</sup> and log(n<sup>2</sup>) = 2log(n)
    - Repeated m times and have to check cycle
        - Adding to current solution and can't have more than n-1 edges = O(n)
    - O(mn + mlogn) also O(mn)
- Worth learning because
    - Cover's *union find algorithm*

## Sollin's Algorithm
- Would be faster than O(mn)
- Natural implementation: O(mlogn)
- Boruvka: Czech railroad engineer in the 1920's
