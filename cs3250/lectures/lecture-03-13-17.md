# Lecture 03-13-17

## Selection 
- Find the kth largest from set of size n
    - Easy: sort and find, O(nlogn)
    - Find it in O(n) time
        - Suppose you can magically find the median in O(n) time
        - Then you can find the kth largest for any k
            - Why?
            - Divide into less than median, equal to median, greater than median
            - Recurrence: T(n) <= cn + T(n/2)
                - Easy to solve: 2cn so O(n)
                - cn is to find the median
            - Say instead of finding median, found close to median
                - Approximation is close to n/3 and 2n/3
                - T(n) <= cn + T(2n/3)
                    - Still O(n)
            - Goal now: find an element that is provably close to the median

## Finding element that is provably close to the median
- Example:
    - 25 numbers
    - Groups of 5
- First take the median of each 5 element group: O(n) overall
- Recursively find the true median of the set (these medians)
    - T(n) = T(n/5)
    - Not necessarily true median of all the values
    - Argue that the median of these sets is close to the median of the whole set
- Steps:
    1. Find median of 5 element groups
    2. Recursively find the median of these medians: m
    3. Divide groups into
        - s1 < m
        - s2 = m
        - s3 > m
    4. Recursively search for value in s1 or s3

## Runtime analysis
- As an exercise: sort groups and find true median
- If sort, top left of grid is < m, bottom right is > m
- For top right and bottom left, can't guarantee anything
    - No matter what happens, one of these boxes is eliminated
    - Worst: eliminate one of these boxes and nothing else
        - Question: what is the size of the boxes?
        - Recall: #rows will usually be much > #columns
        - Eliminating 3 elements from n/5 rows but only 1/2 of these
        - Necessarily eliminating 3n/10 elements
        - Largest that the recursive call can be: 7n/10 (n - 3n/10)
        - T(n) <= cn + T(n/5)  + T(7n/10)
            - T(n/5) is taking the recursively taking medians and finding median
- Analysis of steps
    1.
    2.
    3.
    4. Recurrence depends on how close the calculated median was to the true median
        - How close to the median can I guarantee the median of the medians is
- Some people will call this a divide & conquer algorithm, some will not

## Runtime analysis of T(n) <= cn + T(n/5)  + T(7n/10)
1. Induction
    - Instead proving T(n) <= 10cn
    - Basis: "really not a problem"
    - Inductive hypothesis
        - for all i < n, T(i) <= 10ci
    - Inductive step:
        - T(n) <= cn + 2cn + 7cn = 10cn
2. Technique: Guess & prove
    - Think you should see it once
    - Figure out: I think it's O(n)
    - cn + k(n / 5) + k(7n/10) <= kn
    - c + k/5 + k7/10 <= more math
    - c <= k/10
    - Show wrong guess example with mergesort

## The Big-5 Algorithm