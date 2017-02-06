# Lecture 1-27-17

## Directed acyclic graphs
- Applications
    - Scheduling
        - git logs
    - Gantt chart / Pert chart
        - schedule with things that have to be done before other things
    - Critical path: "blockage"
        - most time intensive path
        - basics of computing?

## Longest path
- Longest path in a graph
    - no good/"fast" algorithm to do so
    - find in directed acyclic graphs "very quickly"

## Topological sort
- Sort order of vertices
    - x<sub>1</sub>, x<sub>2</sub> .. x<sub>n</sub>
- Definition
    - Order of the verticies such that all edges go from the left to the right
- No graph with a cycle can have a topological sort
- Every graph without a cycle *does* have a topological sort

## Proof that every graph without a cycle has a topological sort
- Claim that vertices with no in-edges first
- Must not work because at some point no vertex has 0 in-edges
- Say at some point you get to no vertices with 0 and then run out of vertices because it's finite

## Topological sort part 2
- Time complexity: O(n + m)
- Transitive reduction
    - only include edges that are not implied by transitivity
- Transitive closure
    - include all things implied by transitivity
- Method:
    - store using adjacency lists
        - Using an adjacency matrix: cannot do this in N<sup>2</sup> time
    - keep track of all "in-degrees"
    - Make lists by in degree, then when visiting 0, traverse adjacency list
- Sidenotes
    - Does not make sense on undirected
    - Becomes an efficient algorithm for detecting cycles in a digraph
    - Issues with ordering
        - transferring and setup times between unrelated things
        - "not here, I'll shutup" 
- Use
    - Going to show that easy to find longest path in a acyclic digraph

## Homework
- Take home exam 2: 2/6