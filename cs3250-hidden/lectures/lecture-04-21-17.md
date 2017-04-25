# Lecture 04-21-17

## Exam Review
1. Hamilton path -> cycle
- In NP:
    - Easy to prove NP (just verify uses each once)
- Reduction
    - G' = G + Universal vertex
2. P/NP/NPC concepts
3. K + 1 bins, Edge Double Cover
    - NIFF was 4/3
    - Other part: give a proof where on a certain example it performs k optimal
4. Floyd's algorithm (all pairs shortest path)

## Max Flow, Matching
- Can measure flow across any cut

## Ford & Fulkerson's
- Flow: between 0 and capacity of edge obviously
- G<sub>f</sub>: residual flow graph (how we can change the flow on G)
- For any edge: can increase the flow by C-F and decrease by F
- Represented by a back edge (has capacity F, flow F)
- Why would you want to reduce the flow on an edge?
    - Because this algorithm is based on local improvement
    - Argue that when the algorithm stops, we have the maximum flow
    - Cases where needs to be decreased to find the maximum

## Ford & Fulkerson's algorithm
- At any point in time, have a graph G
    - Everything has a capacity and flow
    - Have a graph G' which will be used to find the maximum
- Start with 0 flow
    - (Works with any legal startin flow)
- While there is a path from S to T in G<sub>f</sub>
    - Increase the flow along that path
    - Change by the smallest capacity on that path
    - So far only forward edges:
        - Simply add to the flow whenever forward edge
    - Back edge:
        - Reduce the flow on the edge 
```
G' = graph with 0 flow      // Works with any legal starting flow
while exists path from S to T:

```
- Argue that when it stops: flow is maximum
    - Take a cut (we can measure across any cut)
- Running time: O(Very very bad)
    - Only if you are an idiot about choosing paths from S to T
