# Lecture 03-03-17

## Sorting Continued (Radix Sort)
- post office sort / bucket sort
- Comparison sorting: no gaps
- Because there are gaps, have to go through at the end and pick up the "boxes"
- Runtime is not only dependent on input but also dependent on the range
- n numbers in range O-m
    - Time: n + m
    - Consideration: is m smaller than nlogn
    - If m is bad, then can refine to do better
    - Good only up to m < nlogn
- Regular bucket sort will do very badly if numbers in the range of 1 to n<sup>2</sup>
- Won't be good for arbitrary things
- Won't be good if range is something like n<sup>logn</sup>

## How to generalize bucket sort
- Ex: 1000 numbers in the range up to a 1,000,000
- Ex: 10 numbers in range of 0 to 99
- Computers can write numbers in any base easily
    - Even non 2<sup>k</sup> bases
- Numbers in the range 0 to n<sup>2</sup>-1: 2 digit number in base n
- Set up 10 buckets
    - 0 to 9
    - Put in buckets by least significant digit
        - Example
            - 0: 10, 50, etc
    - By most significant digits
        - Sort within bucket
    - General:
        - Least significant to most significant
        - Bucket sort on that digit until you're done
- Sorts correctly in k passes for k digit numbers
- Time complexity:
    - Number of digits * number of inputs
- Radix not taught because other sorting algorithms have no choice
- Choice in radix sort: what base to choose
    - Affects how many digits there are in the number
- Small base: lot of buckets
- Large base: small pass, but then dependent on input size
- Poor applications
    - Sorting people

## Other non-comparison sorts
- Interpolation sort
    - Have a list, look at element, guess about where
    - Got close and sequentially searched
    - Make an assumption
    - Range of data 
    - Can also perform another sub-interpolation sort
    - Expected runtime: mlog(logn)
    - Randomly distributed over any large range
    - Worst case: n<sup>2</sup>
