# Lecture 04-03-17

## Discuss Homework
1. Fundamentally going to be bad if it makes other multiplication worse
2. Add a desirable matrix on left
3. Same as matrix multiplication
4. Counterexample

## Reductions
- Hamilton cycle problem
- Way to visit every vertex once and come back to the start point
- NP-complete problem
- No quick way
- Final exam question:
    - Prove traveling salesperson is NP-complete
    - Can assume hamilton cycle, then easy to prove 
- Assume DHC (directed hamilton cycle) is NPC
- Show DHC is NPC

## DHC Reduction (Incorrect)
- Show DHC is in NP
    - Given a cycle, can easily verify
- Directed graph G -> undirected graph G'
    - Replace all directed edges with undirected edges
- Suppose that G' has an UHC, then G has a DHC
- Wrong reduction, by dropping directions, lost information

## DHC Reduction (Also incorrect)
- Suppose that G has a DHC:
    - For each v in G, create Vin, Vout in G'
    - Vin -> Vout for each v in G (since same vertex)
    - x->y in G create Xout - Yin (actual edges)
    - If G has a DHC then G' has an UHC
- Suppose that G' has an UHC
    - Problem: can't assume ins and outs are connected
    
## Correct:
- For each edge in G
- Instead of 2, create 3 vertices: xin, xmid, xout
- For each edge from x to y,
- Xout to Yin
- Showed progression of evolving reduction
- Then for undirected, then make 3 (same)
- Only neighbors that mid have are in and out
    - Purpose was to glue in and out
- 