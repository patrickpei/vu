# Lecture 03-20-17

## Optimal Binary Search Trees
- Minimizing weight * depth
- There is a property that is going to speed-up the program
    - Future DP: do problems have this property or not?
        - Makes significant improvement on runtime
- Example
    - When people tell you who you look like
    - | Person        | Frequency     |
      | ------------- |:-------------:|
      | 1 | 10 |
      | 2 | 7 |
      | 3 | 5 |
      | 4 | 6 |
      | 5 | 9 |
      | 6 | 12 |
    - T<sub>1-2</sub>24, 17, 1 (trees of 2 elements)
    - T<sub>1-3</sub>37, 22, 2 (trees of 3 elements)
    - T<sub>2-4</sub>
- Choose roots
- Subtrees are split into "consecutive sets of items"
- 2 element trees, root would be larger
- For any Tij Keeping track of:
    - Cost of the best search tree on that set of elements
    - Save breakpoint (root) in order to reconstruct tree
    - Weight
        - Is equivalent to the cost of the tree
- For sets of 3:
    - If 1 root, tree for 2,3
    - If 2 root, tree for 1,3
- In general
    - Tij which is k,
    - weight(root) + cost(left) + weight(left) + cost(right) + weight(right) for each choice of root
- N^2 number of entries
- Takes at most time proportional to N = O(N^3)

## Property
- Adding an element on the right can not move the root to the left
- Adding an element on the left can not move the root to the right
- Example
    - Say a tree had root 3, with subtrees T12, T45
    - Then, adding an element 6, then only need to search 3-6
- Not true for matrix chain multiplication
    - Will be a homework problem
- What is the order notation improvement?
    - From O(N^3) -> O(N^2)
- #times in row root increases: <= n
- #times in row root stays same: <= n
- Now O(n) per row now as opposed to O(n) per element

## Common thought process:
- If I add an element to the right, can it move my root to the left?

## HW4 Mergesort
- Worst thing to do: repeat a comparison
    - Wouldn't split up the number of outcomes at all
- Heap sort will do that but mergesort will not
- Next worse thing:
    - Breaking it up so that only one of these outcomes is consistent with x < y
    - All others are consistent with x > y
    - Fundamentally, would like to split in 2
- For any value of k, before this comparison, there are k comparisons
    - Could have as many as k - 1 outcomes