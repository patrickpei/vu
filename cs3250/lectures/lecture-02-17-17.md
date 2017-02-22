# Lecture 02-17-17

## Take home exam 3 review
1. Shortest path does not remain the same
    - Increasing longer paths by more than shorter paths
    - Most of the credit:
        - Prim's
2. 5 to all weights
    - Partial:
        - Prim's / Kruskal's algorithm would process all the same 
    - Full proof:
        - Prove that every spanning tree can be constructed by ties during Prim's / Kruskal's
        - If every spanning tree has exactly n - 1 edges, therefore every tree on n vertices must be n 
            - Cost of old tree + 5 * (n - 1) which means must be 
            - Because if another that was better, it'd be exactly the same so if better in one, better in other
3. Design O(k(n + m)) MST for integer weights
    - Key point: always looking for best edge out of the tree
        - Before: kept cost of best edge to each vertex, had to scan entire array
        - Kept lists of edges of weight 1 to k
        - Old array: 
        - Double linked list
    - To find smallest edge out of current tree: scan array of k
    - To use kruskals: can sort edges in O(m)
        - Problem is that almost linear time O(alpha(n))
4. Truck clearance
    - Variant of Djikstra / MST
    - Maximum MST

## Huffman Codes
- Historically the first formal attempt to minimize the size of data
- Different number of bits for different characters
- Store by frequency
    - Scan the message beforehand and get the exact frequency
    - Assumption: for each character, we know the frequency of that character
    - Fixed bit string with each character
- Cost: sum(product * frequency)
    - can certainly compare codes but how to generate the best?
- Required constraint:
    - Code is uniquely decipherable (only one interpretation per message)
- Prefix code
    - Means that the code for any character is not a prefix of the code for another character
    - Advantages: easy to encode/decode
- Represented in a tree
    - Characters as the leaves in this tree
- Huffman
    - Best possible unique decipherable code
    - All codes built on top of this 
    - Greedy algorithm (hard to see)
    - We can necessarily put at the lowest level of the tree the two least frequent letters
    - Algorithm:
        - Repeatedly look for two least frequent and combine
        - Non-obvious:
            - Treat this new tree as a new character with frequency (combined of old)
        - Greedy because constructing best and never going back
    - Runtime
        - Naive: O(n<sup>2</sup>)
        - Sort by frequencies: O(nlogn)
        - Balanced binary tree: find smallest / insert back: O(logn)
        - Do better:
            - Suppose already sorted by frequency
            - O(n) if already sorted