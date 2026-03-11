# Elaboration: Idea 1 - Uncovering the Micro-Mechanisms of Coalition Building via Bipartite ERGMs

This document expands on the first project idea from `final_project_ideas.md`, thoroughly outlining how to implement it while strictly adhering to the requirements set in the `project_guidelines.md`.

---

## 1. Code Reuse and Data Integration

To implement this project, we can reuse existing scripts in the `Social_Network_Models/code` directory. 
*   **`generate_network_function.R`**: This script can be repurposed to ingest the raw SQL-esque tables and output adjacency matrices or edge lists.
*   **`Homework Social Networks 2_ERGMs_example_solution.R`**: This provides the exact syntax for specifying Exponential Random Graph Models (ERGMs) using the `ergm` package, including how to handle nodal attributes and evaluate Goodness of Fit (GOF).

### Two Ways to Integrate and Model the Data

Based on `schema_and_network_overview.md`, the data allows for two distinct analytical approaches:

**Approach A: Bipartite ERGM on the Actor-Concept Network**
*   **Method:** We model the direct 1:N and N:M relationships from `classification_master_refined.csv`. The network consists of two node sets: Actors and Concepts. An edge exists if an actor expresses a `stance` towards a concept.
*   **Academic Argument:** This approach aligns closely with *relationalist theory* (Erikson, 2013). Relationalists argue that actors define their identities and interests *through* their ties to specific issues or meanings. By modeling the bipartite graph, we observe the exact micro-mechanisms of interest formation, testing whether organizational attributes (e.g., `actor_class`, `organization_size`) predict ties to particular policy concepts, before any macro-level coalitions are assumed.

**Approach B: One-Mode ERGM on the Actor Congruence Network**
*   **Method:** We project the bipartite data into an Actor-Actor network. Actors are connected if they share the same stance on the same `concept_id` (using the SQL join logic described in the schema). We then apply a standard one-mode ERGM.
*   **Academic Argument:** This tests *formalist theories* of social capital and structural equivalence (Fuhse, 2020). By analyzing the one-mode projection, we can test for structural phenomena like *triadic closure* (transitivity). It allows us to argue that advocacy actors seek dense, closed network clusters to coordinate lobbying efforts, and whether attribute homophily (e.g., same `country`) facilitates this closure.

---

## 2. Literature Review Integration

We will extensively utilize the provided `@literature` directory to substantiate our theoretical claims and methodological choices:

*   **Erikson, E. (2013). *Formalist and relationalist theory in social network analysis.* **
    *   *Usage:* To frame the Theoretical background. We will contrast the formalist view (actors as pre-existing entities that form coalitions) with the relationalist view (actors defining their advocacy identities through their ties to specific policy concepts).
*   **Lusher, Koskinen, & Robins (2013). *Exponential random graph models for social networks.* **
    *   *Usage:* To substantiate the Methods section. This text justifies the use of ERGMs to model the micro-mechanisms (local configurations like stars and triangles) that generate the observed global network structure.
*   **Fuhse, J. A. (2020). *Theories of Social Networks.* **
    *   *Usage:* To derive hypotheses regarding resource mobilization. We can use Fuhse to argue why stakeholders of the same `organization_size` might structurally align to maximize their social capital.
*   **Snijders et al. (2010). *Introduction to stochastic actor-based models for network dynamics.* ** (or similar ERGM/SAOM introductory texts like Snijders 2017)
    *   *Usage:* While primarily longitudinal, their exposition of structural network effects (like homophily and transitivity) provides a strong mathematical justification for our included ERGM terms.

---

## 3. Detailed Project Outline and Hypotheses

Following the strict structure defined in `project_guidelines.md` (emulating a journal article format, 3,500 - 5,000 words):

### 1. Introduction
*   **Context:** The EU Advanced Materials Act (AMA) consultation.
*   **Problem:** Existing analyses treat stakeholder tribes as macro-level monoliths. 
*   **Contribution:** This study shifts from descriptive coalition mapping to predictive alliance formation by uncovering the *micro-mechanisms* (homophily, structural closure) driving these coalitions.

### 2. Literature Background
*   Review existing work on EU advocacy and lobbying networks.
*   Introduce Erikson (2013) and Fuhse (2020) to ground the study in sociological network theory, explicitly contrasting formalist and relationalist approaches to coalition building.

### 3. Theory (Hypotheses)
*   *Expectation origin:* Based on the relationalist view that shared attributes breed shared policy conceptualizations.
*   *Hypothesis 1 (Attribute Homophily):* Organizations of the same `actor_class` (e.g., Science vs. SME) are significantly more likely to share ties to the same policy concepts than organizations from different classes, controlling for baseline network density.
*   *Hypothesis 2 (Structural Closure/Transitivity):* In the Actor Congruence projection, there will be a significant positive effect for triadic closure, indicating that advocacy structures naturally form dense, closed "echo chambers" rather than open, uncoordinated hubs.

### 4. Methods
*   **Analytical Strategy:** Exponential Random Graph Models (ERGMs), utilizing the `ergm` package in R.
*   Substantiate this choice using Lusher et al. (2013), emphasizing the ability to model interdependencies between network ties which standard logistic regression cannot do.

### 5. Data & Measures
*   **Data:** Extracts from `actor_metadata_refined.csv` and `classification_master_refined.csv`.
*   **Measures (Variables):** 
    *   *Dependent Variable:* The network tie (Actor-Concept or Actor-Actor agreement).
    *   *Nodal Covariates:* `actor_class`, `organization_size`, `country`. 
    *   *Structural terms:* Edges, Mutual, GWESP (for transitivity).
    *   *(Note: Technical data manipulation details will purposefully be omitted per the guidelines).*

### 6. Results
*   Present ERGM results alongside Goodness of Fit (GOF) simulations in properly formatted, self-generated tables and figures (no screenshots).
*   Describe results objectively (e.g., "The positive coefficient for the `actor_class` nodematch term indicates significant homophily..."). Avoid post-hoc reasoning.

### 7. Discussion
*   Synthesize findings with prior literature (did micro-mechanisms match the macro-tribes identified by previous clustering methods?).
*   **Target Audience Implications:** Provide actionable intelligence for EU advocacy groups. Conclude with how organizations can use these predictive patterns to identify latent allies (organizations with similar structural profiles) before drafting joint position papers. What to do next: Apply longitudinal models (RHEMs) to temporal consultation data.
