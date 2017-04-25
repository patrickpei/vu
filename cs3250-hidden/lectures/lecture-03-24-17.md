# Lecture 03-24-17

## Take Home Exam 4 Review:
1. Expand
2. Use the same reasoning for the big 5 selection algorithm
    - Boxes are of size n/3 so recurrence is T(2n/3)
    - Runtime with big 3 becomes O(nlogn)
3. Sorting comparisons
    - Selection sort will repeat
    - Insertion sort will not
4. Mergesort cannot repeat comparisons
    - At any point in time when comparisons are done in merges, you will output one of those to the final list
    - Show that mergesort does not do a good job of always dividing the number of comparisons in two
        - Reach [1, ..., k] merge [k + 1, ..., n]
        - Reach comparison last element k, with any position with [k + 1, ..., n]
        - n orders of interweaving the last element with the other set
    - This leads to another algorithm that always come close to dividing possible outcomes in 2
        - Binary insertion sort
            - Why is this not the easiest nlogn sorting algorithm?
                - Have to shift elements 
                - Sorting algorithms not always bounded on comparisons

## Floyd's Algorithm
 - Advantage: negative weights without negative cycles
    - Will detect if Mii < 0
- Runtime: O(n<sup>3</sup>)
- How can we store n<sup>3</sup> paths with only n<sup>2</sup> paths?
- Time to reconstruct the path, will take time proportional to length of path

## NP completeness
- Trying to prove a problem is hard
- Resources
    - Gary & Johnson - Computers and Intractability
- Going to first limit ourselves to decision problems
    - Yes or no
- Optimization problems
    - Finding the best (optima BST, MST)
- Can have decision version of any of the optimization problems
- Showing that the decision problem is hard, then will show the optimization problem is hard as well
    - Optimization problem is at least as hard as decision

## Classes of problems
- P: decision problems that can be solved in O(n<sup>k</sup>)
- NP: non-deterministic polynomial
    - decision problems that have a polynomial length proof that the answer is yes
    - flipping decision does not mean that the inverse of the problem is in NP!
- Is P related to NP?
    - Suppose something is in P, is it in NP?
        - Yes
- P = NP?
    - Millenial problem
- Next time: prove a problem is difficult