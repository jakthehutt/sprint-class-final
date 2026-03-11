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

### Core Models
* **Exponential Random Graph Models (ERGMs):** Used for analyzing cross-sectional network data. Moving beyond simple regression, ERGMs simulate network structures based on localized micro-processes (like reciprocity or transitivity) to predict macro-level structural formations.
* **Stochastic Actor-Oriented Models (SAOMs):** A dynamic approach for longitudinal network analysis. SAOMs model how networks evolve over time as consequences of actors continuously changing their network ties. They also handle the co-evolution of networks and actor behavior.
* **Relational Hyper Event Models (RHEMs):** Advanced modeling for sequences of interactions between actors, looking at interaction rates and events.

### Key Theoretical Concepts
* **Formalist vs. Relationalist Theory:** The course balances structural formalisms (e.g. strict mathematical properties) with relational sociology (where ties themselves have cultural and social meaning).
* **Multi-Paradigmatic Perspectives:** Analyzing networks from cognitive, structural, and cultural viewpoints.
* **Macro vs. Micro Dynamics:** Understanding how aggregate structures emerge from individual decisions (homophily, transitivity) and how global structures constrain individual tie formation.

---
*Note: The slide and literature sets have been processed via OCR for easier reading and full-text search.*
