# Lecture 02-20-17

## Divide & Conquer
- Split a problem into pieces, solve problem independently, and combine to solve whole problem
    - Not merely recursive
- Classical problems
    - Mergesort
        - Split a list L into L1 and L2
        - Recursively sort L1 and L2
        - Combine sorted L1 and L2 into one sorted
        - Runtime: O(nlogn)
        - Variants: 10-way mergesort
    - Finding the maximum in a set of elements
        - No one would actually do this
        - Runtime: O(nlogn)

## Analyzing the runtime of divide & conquer algorithms:
- Techniques
    1. Mathematical equation
        - Easier because don't have to solve exactly
        - Examples:
            - Mergesort
                - T(n) = 2 T(n / 2) + cn
                - Two-way mergesort:
                    - 2 subproblems
                - Solving recurrence relations by substitution
                    - T(n) = 2T(n/2) + cn
                    - T(n/2) = 2T(n/4) + c(n/2)
                    - T(n) = 2(2T(n/4) + c(n/2)) + cn
                    - T(n/4) = 2T(n/8) + c(n/4)
                    - T(n) = 4T(n/4) + cn + cn
                    - T(n) = 8T(n/8) + cn + cn + cn
                    - Eventually: T(n) = nT(n/n) + n(cn)
            - Finding max:
                - T(n) = 2T(n/2) + c
                    - Note: sometimes c can change runtime
                    - Master theorem: take equation and get runtime
                - T(n/2) = 2T(n/4) + c
                - T(n) = 2(2T(n/4) + c) + c
                - T(n) = 4T(n/4) + 2c + c
                - T(n/4) = 2T(n/8) + c
                - T(n) = 4(2T(n/8) + c) + c
                - T(n) = 8T(n/8) + 4c + 2c + c 
                - Until: T(n) = nT(n/n) + (n/2)c + (n/4)c + (n/8)c + ... + c
                    - c(1 + 2 + 4 + ... + n/2)
                    - Equivalent to n/2(1 + 1/2 + 1/4 + 1/8 + ...)
                        - = (n/2) * 2 = n
                - Runtime: O(n)
    2. Intuitive understanding
        - Ideas:
            1. What is the algorithm doing
            2. How many levels of recursion
            3. How much work is being done at each level of recursion
        - Examples:
            - Mergesort
                - Diagram
                    - one set of size n, two sets of size n/2, four of size n/4, eventually into sets of size 1
                    - logn levels in this tree
                    - each moving into buffer of twice size, O(n) work 
                    - O(nlogn)
            - Finding max
                - Sports event: NCAA brackets
                - Equal to a tournament
                - n - 1 games since every team loses
                - Tournament method for selection: "Tournament sort"
                - How to teach someone who doesn't know computer science that sorting takes nlogn time
                - Method:
                    - Numbers: form a tournament
                    - Find max in logn then replace with a bye

## Next:
- Use divide & conquer
- Clever ones
    - Multiplication