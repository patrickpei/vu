# Lecture 02-10-17

## Homework Corrections
- 2: will T be MST for G'
- 3: minimal -> MST

## Digression: algorithm analysis
- Example of famous open problem 
    - whether can go into infinite loop
    ```
    read x
    while x != 1:
        if isOdd(x):
            x = 3x + 1
        else:
            x /= 2
    ```

## Union-Find
- Relates to above because the algorithmic analysis is similarly difficult
- Recall the strategy:
    - Sets: tree (inverted tree)
    - Operations
        - FIND
            - Climb tree until root
            - *"Collapsing find"*
                - Climb tree a second time and make every element on the path to the root a child of the root 
            - Technique: path compression?
        - UNION
            - Make root of smaller set a child of the root of the larger set
                - Smaller: fewer elementsv (as opposed to height)
- Runtime analysis:
    - UNION: O(1)
    - FIND: O(logn), actually theta(logn)
        - Possible hw question: can you build a tree of height log(n)? easily done
    - Claim: every tree of height h has >= 2<sup>h</sup> nodes
        - Basis
            - Smallest tree has h = 0 and 2<sup>0</sup> = 1 node
        - Inductive hypothesis:
            - Every tree of height k = has >= 2<sup>k</sup> nodes
        - Inductive step:
            - Every tree of height k + 1 has >= 2<sup>k + 1</sup> nodes given that the inductive hypothesis is true
            - For trees T1 and T2, T2 must have height = k and also must have >= 2<sup>k</sup> nodes by IH
                - T1 must have >= 2<sup>k</sup> nodes because it was the parent of such a tree
                - To get a tree of 2<sup>k + 1</sup>, then 2<sup>k</sup> + 2<sup>k</sup> = 2<sup>k + 1</sup>
    - Height: length of a path from root to leaf
    - Terminology: 
        - M operations on a set of size N
    - Claim: no tree has height > log(n)
        - Maximum height: log(n)
    - Same if used "height of tree" as predicate for ordering, then would have been the same except collapsing find would be more difficult since the height could be altered every operation
        - Fundamentally why we use size-based union
    - Point of collapsing find:
        - Kruskal's: takes edges and for each edge does a find on both endpoint, if a vertex is on the end of many edges, then many finds on same element
        - M find operations can take O(Mlogn), actually a theta bound
        - Example:
            - Build a tree of log(n)
            - Repeatedly perform FIND on element at height log(n)
    - Tarjan while doing this gave a name of the analysis:
        - Amortized analysis
        - Amortized cost in accounting
            - Say you're running a business and every 10 years you have to buy a new machien at $100,000
                - Profit: $20,000 per year
        - Overall cost over period of time
        - Before collapsing find:
            - theta(mlogn)
        - With collapsing find:
            - O(mlogn)
            - For 20 years after this had been developed, no one knew how to exactly analyze
            - Solved by Tarjan 
            - Partial analysis will be done in graduate algorithms

## Ackermann's Function
- In history, tried to come up with what a computer is
- Automata: what problems can be solved on a computer
    - Not a technical school
    - Solvability
- Computer: Turing machine
    - Most general model of a computer
- Linguists: language / grammar
- Mathmeticians: functions
- *What is a computable function?*
    - Recurisve functions
    - Primitive recursive functions:
    ```
    A(m, n) = 
        n + 1                       if m = 0
        A(m - 1, 1)                 if m > 0 and n = 0
        A(m - 1, A(m, n - 1))       if m > 0 and n > 0
    ```
    - Proved not primitive recurisve by exceeding growth speed
    - How is this related to union-find?
        - Runtime of ackermann's is directly related
    - Try to calculate for A(6, 6)