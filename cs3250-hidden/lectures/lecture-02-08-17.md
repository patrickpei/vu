# Lecture 02-08-17

## Discuss take home exam 2
1. *Was late to class*
2. Sorting adjacency lists
    - Go through adjacency lists in order and always adding in order
    - Don't need extra space?
    - Twist: if directed:
        - First create lists of edges into the vertex
        - Reverse edges
    - Standard assumption:
        - Vertices are numbered 1...n
3. Identify in O(n+m) all vertices in path from x-y
    - Make subgraph of biconnected components (biconnected component tree)
    - Account for case where starting point is articulation point
    - Also can't DFS on the original graph without keeping track of whether it is leaving a biconnected component or not
4. Single vertex has path to all other vertices in digraph
    - Break into strongly connected components
    - True if exactly 1 vertex has in degree 0 in the strongly connected component graph
    - Derived from harder problem:
        - Notion of connectivity (uni-connected)
            - Path of at least x-y or y-x

## Union-Find
- Create a data structure where both UNION and FIND operations are "fast"
- Based on trees (inverted trees)
- Inverted tree:
    - Every node keeps track of parent
    - Not the same as the MST
    - Will keep the property: the vertices it's connected to is a single set
- Union
    - O(1)
    - Make one tree's root the child of the other's root
- Find
    - Requires that the name of the set it belongs to is at the top of the tree
    - Real implementation is a array representation of a tree
        - Necessary to instantly access node
    - Runtime dependent on the height of the tree: O(n)
        - Height based union
        - Generalized: make root of "smaller", child of "bigger"
        - Definition of smaller:
            - Height vs vertices
    - Strategies:
        - Height based union
        - Size based union
    - Note: addition is by convention O(1) but is actually more complex
    - Not immediately obvious why find is based on height
        - See that it is not easy to keep track of the height of the tree
        - Will partially collapse this tree