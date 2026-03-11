# Social Network Models

This repository contains materials for the **Statistical Network Models** course (Network and Data Science).

## 1. Tech Stack
The technical implementation and empirical analysis of the models in this course primarily rely on **R**. 
Key packages and tools used include:
* **R (base script files):** For data wrangling, basic network manipulations, and model estimation.
* **`RSiena` (Simulation Investigation for Empirical Network Analysis):** Used for estimating Stochastic Actor-Oriented Models (SAOMs) and modeling network co-evolution.
* **`ergm` / `statnet` (R suite):** For specifying and estimating Exponential Random Graph Models (ERGMs).

## 2. Main Models and Concepts

This directory explores advanced statistical and sociological techniques to analyze cross-sectional and longitudinal network data:

### Core Models and their Intuition

* **Exponential Random Graph Models (ERGMs):** 
  * *Intuition:* ERGMs analyze cross-sectional snapshot network data. They test structural theories of social behavior by simulating network structures based on localized micro-processes (like reciprocity, transitivity, or homophily) to predict macro-level structural formations. Interpretation of parameters is similar to log-odds in logistic regressions. 
  * *Good at:* Modeling the processes of tie formation and testing strict hypotheses about how a global structure of an empirical network was produced. Robustly implemented via packages like `statnet`/`ergm` in R.
  * *Bad at:* Examining explicit dynamic evolution over time. While temporal extensions (TERGMs) exist, recent literature (e.g., Block et al. 2018) argues they lack consistent interpretations on tie-level probabilities and true network change processes compared to continuous-time models.

* **Stochastic Actor-Oriented Models (SAOMs):**
  * *Intuition:* A process-based, continuous-time approach for longitudinal network analysis. SAOMs use an objective function and a rate function to model how networks evolve over time via "mini-steps" as consequence of actors continuously forming, maintaining, or deleting ties.
  * *Good at:* Handling longitudinal panel data, explicit network evolution, and the co-evolution of networks alongside actor behavior (or multiplex and bi-partite networks). They offer consistent interpretation at the micro-level.
  * *Bad at:* Computationally intensive and complex to specify. They rely heavily on Simulation approximation via Method of Moments and Markov Chains, which can lead to convergence issues or very long estimation times. Typically requires rich multi-wave longitudinal panel data. 

* **Stochastic Block Models (SBMs):** 
  * *Intuition:* A methodological approach for finding blocks of structurally equivalent nodes. Nodes in the same block share similar probabilities of connection to other nodes across the network. 
  * *Good at:* Inductively identifying hidden community structures, cohesive subgroups, or latent social roles without prior knowledge of node attributes. 
  * *Bad at:* Not well-suited for modeling the granular micro-level behavioral mechanisms (like "does an actor close a triad?") compared to ERGM/SAOM frameworks, but rather focuses on partitioning the macro-level structure.

* **Relational Hyper Event Models (RHEMs):**
  * *Intuition:* Advanced modeling for analyzing specific sequences of interactions and communication between actors in continuous time.
  * *Good at:* Fine-grained temporal data where exact timing matters (e.g. timestamps of emails or interactions), examining rates and discrete events instead of static relationships.

### Key Theoretical Concepts
* **Formalist vs. Relationalist Theory:** The course balances structural formalisms (e.g. strict mathematical properties) with relational sociology (where ties themselves have cultural and social meaning).
* **Multi-Paradigmatic Perspectives:** Analyzing networks from cognitive, structural, and cultural viewpoints.
* **Macro vs. Micro Dynamics:** Understanding how aggregate structures emerge from individual decisions (homophily, transitivity) and how global structures constrain individual tie formation.

---
*Note: The slide and literature sets have been processed via OCR for easier reading and full-text search.*
