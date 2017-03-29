# Lecture 03-29-17

## Today: Our 1st Reduction

## CNF Conjunctive Normal Form
- Example:
    - (x<sub>1</sub> + x<sub>2</sub> + x<sub>3</sub>)(x<sub>1</sub>' + x<sub>2</sub>)(x<sub>2</sub>' + x<sub>3</sub>')(x<sub>1</sub>' + x<sub>3</sub>)
- Special type of expression
- No negation over more than one literal
- Only negation over literals
- Each clause is just literals & OR
- Variable: X1
- Literal: X1bar 

## Cook's Theorem
- States that the boolean satisifiability problem is NP-complete
- Significant breakthrough
- Prove NP-complete
    - Gary & Johnson has a list to reference
        - Can turn particular problem into that

## CNF Satisifiability
- Whether or not there exists an interpretation that satisfies a given boolean formula

## Clique Problem (Prove is NP-complete)
- Clique
    - All vertices in a clique are adjacent
- Particular graph: "Trampoline"
- Largest clique: 2-3-5-7
- Given a graph G and a number k, does this graph have a clique of size k?
    - K is not necessarily an integer, could be "half the nodes"
- Steps:
    1. Show clique is in NP
    2. Reduction
        - Turn known NP-complete in polynomial time into clique problem
        - Steps of a reduction:
            1. **Make a clear reduction**
            2. Prove that the reduction is correct
                - Ways:
                    - If the answer to the new problem is yes, then the answer to the known NP-complete problem is yes & if the answer to the old problem is yes, then the answer to the new problem is yes
                        - Almost always this way because of the definition of NP
                            - NP there is a short proof that the answer is yes
                    - If the answer to the known NP-complete problem is yes, then the answer to the new problem is yes as well. If the answer to the known NP-complete problem is no, then the answer to the new problem is no as well

## CNF Satisifiability to Clique
1. **Make a clear reduction**
    - Given an boolean expression E, produce a graph G and a number K
        - E -> G,k
    - G has one vertex for every instance of a literal of E
    - An edge from x-y iff x and y are from different clauses and not the complements of each other
    - Now, k = number of clauses in E
    - Any expression E will be satisfiable if it has a clique of size K (part 2)
2. Prove that the reduction is correct
    - Suppose E is satisfiable
        - Take 1 true literal from each clause
        - Map to a set of k vertices which are each adjacent to each other
        - Since from separate clauses, none complement
    - Suppose G has a clique of size k
        - Take clique C of size k
            - k vertices
                - none of which are complements
                - all from different clauses (makes one literal true in each)
            - One thing true in each -> e is satisfiable
- Fundamentally how all reductions will look like