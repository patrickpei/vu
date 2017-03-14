# Lecture 02-22-17

## On Test
- Order notation
    - Easiest:
        - Comparing in terms of order notation
    - Better:
        - Identities of order notation
        - Suppose f(n) = O(g(n)) and g(n) is O(h(n)) is f(n) O(h(h))?
    - Best:
        - Usage of order notation
        - Make it clear to understand difference between different order notations and how to prove
- Graph methods
    - DFS
        - Uses: biconnectivity, articulation points, strongly connected components
        - Easiest: "automatic points", run an existing algorithm
            - To separate passing / nonpassing grades
            - Just literally apply algorithm, ie give LOW values
    - BFS
    - Topological sort
        - Uses: longest path, etc
- Greedy algorithms & UNION-FIND
    - MST
        - Prim's
        - Kruskal's
            - UNION-FIND
    - Shortest path
    - Huffman codes
- Other ("Favorites")
    - Suppose you use a greedy algorithm to solve this problem / here's a type of greedy, show why it doesn't work
    - Try to use the greedy algorithm to find a solution to the traveling salesperson problem
    - Show does or does not work 
        - Above does not
    - Will not deal with divide & conquer
    - "I like to have one hard question"
    - "Unfortunately they have to be easier than homework problems"
        - Would like to but if have too many, too long and impossible
        - Have to ask some questions that are just "not up to the level" of homework questions
    - Probably will give a 5 minute grace period afterward
    - If the limit of f(n) / g(n) is some value, can you conclude that f(n) is O(g(n)) or omega, and other way as well g to f

## Heaps
- Last time used tournament sort, etc
- Not preferred definition:
    - Data structure used to make sorting efficient
- A heap is a complete binary tree on a set of elements
- Different definitions of complete binary tree
    - At last level, fill in children from left to right
    - Restricted notion but easiest to program
- Properties
    1. Structure as mentioned above
    2. Each child has a value >= its parent
        - Some books will call this a min heap
- Claim:
    - Build heap
    - Sort set using heap
- Algorithms
    - Incremental heap building
        - Add next element to tree
        - Bubble up new element
    - Better method
        - Reform heap by moving last element to root
        - But now violated heap property, so bubbling down the root to its correct position
            - When bubbling down, compare with two children and swap with smaller
            - Replacing root by last element and bubble down
- Uses
    - PriorityQueues
    - Sorting
- Implementation
    - Actually stored as array

## Considerations
- Since you have at least n/2 elements that take logn, the bound is theta(nlogn)

## Better way of building a heap
- Like to present in two different ways 
1. Easier to carry around & better program
    - Make exactly same comparisons as divide & conquer
    - From last to first element, bubble down from this position
    - Heapsort (as easy as it gets to program)
    - Intuitively better than incremental because more leaves than roots, thus don't have to start from top
        - Condition in the south??: "might could" 
    - This "little change" -> O(nlogn) to O(n)
2. Way that you could come up with in the first place
    - Divide & conquer
    - Then bubble down the root
    - Analyzing:
        1. Equation
            - Solving 2 subproblems, size of each is N/2, combining is logn
            - T(n) = 2T(n/2) + logn