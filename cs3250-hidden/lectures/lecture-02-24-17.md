# Lecture 02-24-17

## Test Review
- Order Notation questions:
    1. Comparing two funcitons (simplest)
        -  Show that n^2 + 50n is O(n^2`)
    2. Not comparing single functions, but identity
        - Suppose f(n) is O(g(n)) and g(n) is O(h(n)) prove f(n) is O(h(n))
        - From definition of order notation
    3. Dealing with order notation symbols
        - Is it possible to have average time complexity O(n^2) and worst case cmplexity omega(n^3)
        - &viceversa

## Heap Construction
- Build a heap on the right, build on left, get root and bubble down
- Recursion: T(n) = 2T(n) + Clogn
- Personally easier:
    - From the last position to the first, bubble down from this position

## Proof that algorithm to build a heap is O(n) also <span>&theta;</span>(n)
- Observations:
    - Intuitively better than incremental heap building because on the root it can take log(n) and is constant time on the leaves
    - Whereas in the incremental, always from the root 
    - But not enough to say O(n) 
- Amortized complexity
- Naive analysis:
    - N bubble down operations, most expensive = logn
    - Naturally, O(nlogn)
    - Is not omega(nlogn)
- Amortized analysis:
    - While a single operation can take logn, must prove that the total is n and not nlogn
    - "Charge" for operations in various ways
    - Naturally, charge each element the number of times they bubble down
        - "arithmetic is difficult"
    - Instead,
        - Technically two comparisons
        - Looking at how many "bubblings" go through each level
        - Just over 1/2 are leaves
    - For clarity, assume the leaves bubble through their own level
        - Then <= n bubble through level of leaves
        - Then <= n/2 bubble through level above leaves & etc..
    - Why is this <span>&theta;</span>(n)?
        - Always going to look at every element, so never less than n
        - Just argued that never greater than 2n so QED
- Practical application:
    - Finding kth largest element, can build heap in n, find in klogn
- Notes
    - Constants are not as good as other algorithms
        - By experiment

## Quicksort
- Worst case: <span>&theta;</span>(n<sup>2</sup>)
    - If you always choose largest / smallest as pivot, then first time will be n comparisons, then n - 1 ...
    - Since O & <span>&omega;</span>
- Why do we teach it?
    - O(nlogn) expected
    - Worst case is different from expected
    - Non-trivial expected time case analysis
- Prove O(nlogn) in expected case
    - Expected not dependent on input but pivot
    - T(n) <= 1/n (recursive formula for dealing with set of (n - 1)) + 1/n(recursive formula for size 1 and n - 1) + ...
        - (if largest is chosen)
        - <= because if all could be the same
    - T(n) <= 1/n(T(n-1) + cn) + 1/n(T(n-2) + T(1) + cn) + ...
        - cn time to divide the list
    - T(n) <= 2/n (T(n-1) + T(n-2) + ... + T(1) ) + cn
    - T(n+1) <= 2/(n-1) (T(n) + T(n-1) + .. T(1)) + c(n + 1)
    - (n+1)/n T(n + 1) = 2/n (T(n) + ... + T(1)) + c(n + 1)^2 / (n)
        - multiplied both sides by T(n + 1)
    - T(n) <= 2/n (T(n-1) + T(n-2) + ... + T(1) ) + cn
    - By subtracting: (n+1)/n T(n + 1) - T(n) = 2T(n) + c(n+1)^2 / n - cn
    - Now, T(n+1) depending on T(n)
    - Naturally, isolate T(n) term
    - T(n+1) <= (2+n)/(n+1) T(n) c((2n + 1)/ (n + 1))
    -        <= (2+n)/(n+1)T(n) + 2c
    - Show that last equation is nlogn
