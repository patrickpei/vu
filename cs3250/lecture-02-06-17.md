## Spanning Tree Running Time

## Prim's Algorithm
<!--- Running time: O(nm)-->
- Some problems require intuitive sense for algorithms / how the approach would be if done manually
- Algorithm:
    - Keep track (also stores where the edge originates from) of best edge to each vertex initialized with infinity
    - Initialize a starting vertex to 0
    - Keep adding best edge by scanning and finding smallest and then updating best edges
- Using an array, the running time is from O(nm) => O(n<sup>2</sup>)
- Updating:
    - Update costs = O(n)
        - In fact, actually degree(x)
        - Sum of all degrees: O(m)
    - Scan matrix O(n)
        - Always taking constant * n
        - Bottleneck is in finding the smallest value
- Current implementation: running time of O(n<sup>2</sup>)
- For complete graphs:
    - Prim's algorithm is as good as can hoped to be
    - Cannot do better than O(n<sup>2</sup>)

## Kruskal's Algorithm
- To get the algorithm to run faster than it does, it is not something immediately obvious
    - I think he's hinting at union find
- Algorithm:
    1. Sort edges O(mlogm)
    2. From smallest to largest x-y, add x-y iff does not create a cycle O(mn)
        - Saying creates cycle is the same thing as already in a tree
- Since Prim's also runs in O(mn), this can also be improved
- Not showing proof of correctness because it's the same proof as proving Prim's
- Improving the bottleneck:
    - Bottlneck is determining whether a new edge creates a cycle
    - sets(trees)
    - 

## Union Find
- Special type of set problem where every element is in exactly one set
- In building MSTs, at any one point in time, 
- Parts:
    - UNION(S1, S2)
    - FIND(X)
        - name of set X is in
- Application to Kruskal's
    - if FIND(x) != FIND(y)
        - add x-y to MST and UNION(FIND(x), FIND(y))
- Objective: make finds and unions as fast as possible
    - Making finds fast can make unions slow and vice versa
    - Making finds fast:
        - setname array: each vertex number to set number
        - FIND: O(1)
        - UNION: O(n)
    - Making unions fast:
        - Keep list for each set
        - FIND: O(n)
        - UNION: O(1)
    - How to improve both:
        - Use both methods above
            - FIND: O(1)
            - UNION: O(min(size(S1), size(S2)))
        - Other data structures