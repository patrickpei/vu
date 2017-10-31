# Quiz 2 REST Notes

### Architecture vs style
- Architecture: how to:
    - partition a system
    - components identify / communicate
    - elements evolve independently
- Style: named set of architectural constraints

### REST (Representational State Transfer)
- scalability of component interactions
- generality of interfaces
- independent deployment of components
- intermediary components to
    - reduce interaction latency
    - enforce security
    - encapsulate legacy systems

### Requirements of the Web
- Low entry barrier to structured data
    - hypermedia
    - html + sick tools
- Extensibility
- Distributed info structuring
- Anarchic scalability
- Independent deployment
- Support new goals

### Software Architecture
- abstract representation of runtime elements of software systems during its operation phases
- Many layers, many kinds BOI
- entails
    - identity of elements
    - allocation of elements
    - interaction of elements
    - communication (amount, granularity) of elements
    - interfaces used by elements for ^ communication

### Architecture Style
- Coordinated set of architectural constraints that restrict roles and features of architectural elements
- Relationships permitted among elements
- REST is a style
    - hybrid style
    - "representation" of a resource to transfer resource state which lives on the server into application state on the client

### REST derivation (constraints)
1. Root is NULL (allow anything)
2. Client server
    - evolve independently
3. Client stateless server
    - client side maintains state
    - pros:
        - firewall can inspect request details
        - reliability since state is all on client
        - scalability since less resource consumption
    - cons:
        - more data sent over network RIP nexus5x's (mobile phones)
        - consistency across versions
4. Caching
    - Minimize response time
    - Reliability decreases if cache is stale
    - Response has to indicate cache-bility
5. Uniform interface
    - dynamic content
    - cons
        - transform data to match uniform style
6. Layered system
    - most widespread is 3-tier architecture
        - presentation
        - application processing
        - data management
    - layers evolve independently
    - Overhead might increase crossing layers
    - This + #6 allows for intermediaries(proxies, caches, firewalls)
7. Code on demand
    - clients can download code and run applets/scripts

### Studying architectures
- 3 element types / views
    1. processing elements
        - shows data flow & component interaction
            - user-agent, origin server, proxy, gateway, etc
    2. data elements
        - packet format, HTTP verbs
        - reveals app state as information flows through processing elements
        - in REST:
            - shared understanding of data types / meta data
            - limited exposure to interface
            - can evolve
        - resources & identifiers
            - information = resource
        - representation: bytes + metadata
        - control data
            - caches, persistence, etc
    3. connecting elements / connectors
        - actual communication mechanism (HTTP)
        - abstract interface between communicating components and the mechanics of communication
        - client & server are primary connectors
        - others: (tunnel ie SSL)
- Outcome: web!
