# Detailed Outline: Bipartite ERGMs on the EU Advanced Materials Act Consultation

This document expands on the first project idea from `final_project_ideas.md`, thoroughly outlining how to implement it while strictly adhering to the requirements set in the `project_guidelines.md`. It exclusively focuses on Bipartite ERGMs (Approach A from previous discussions).

---

## 1. Code Reuse and Data Integration

To implement this project, we can reuse existing scripts in the `Social_Network_Models/code` directory. 
*   **`generate_network_function.R`**: This script can be repurposed to ingest the raw SQL-esque tables (`classification_master_refined.csv` and `actor_metadata_refined.csv`) to output the bipartite edge list.
*   **`Homework Social Networks 2_ERGMs_example_solution.R`**: This provides the exact syntax for specifying Exponential Random Graph Models (ERGMs) using the `ergm.bipartite` capabilities in the `statnet` package, including how to handle nodal attributes and evaluate Goodness of Fit (GOF).

**The Data Structure (Bipartite Graph):** 
We model the direct relationships from `classification_master_refined.csv`. The network consists of two node sets: Actors and Concepts. An edge exists if an actor expresses a `stance` towards a concept.

---

## 2. Blueprint Article

As instructed in the class guidelines ("Take one article as a blueprint for your own study and emulate this article"), this project will closely emulate:

> **Helander, N., et al. (2023).** *Challenging the insider–outsider approach to advocacy: how collaboration networks and belief similarities shape strategy choice.*
> DOI: [10.1332/030557322X16681603168232](https://doi.org/10.1332/030557322X16681603168232)

**Why emulate this?** It investigates advocacy strategies on climate change across EU countries using Bipartite ERGMs (`ergm` package in R). Its structure for presenting theoretical arguments tying organizational attributes to bipartite network choices perfectly mirrors our goal of mapping actor traits to policy concepts.

---

## 3. Recommended Report Structure

Following the strict structure defined in `project_guidelines.md` (emulating a journal article format, 3,500 - 5,000 words):

### *Introduction*
*   **Context:** The EU Advanced Materials Act (AMA) consultation.
*   **Problem:** Existing public affairs analyses treat stakeholder tribes as macro-level monoliths (e.g., using clustering). 
*   **Contribution:** This study shifts from descriptive coalition mapping to modeling predictive alliance formation by uncovering the *micro-mechanisms* (e.g., attribute homophily) driving policy concept adoption.

### *Literature background*
*   Review existing theoretical work on EU advocacy and lobbying networks.
*   Introduce Erikson (2013) to ground the study in sociological network theory. We will specifically frame our approach using *relationalist theory*, which argues actors define their identities and interests *through* their ties to specific issues or meanings, rather than treating them as pre-existing monolithic groups.

### *Theory*
*   *Expectation origin:* Expectations derive from the relationalist view that shared organizational attributes breed shared policy conceptualizations.
*   *Hypothesis 1 (Attribute Homophily):* Organizations of the same `actor_class` (e.g., Science vs. SME) are significantly more likely to share ties to the same core policy concepts than organizations from different classes, controlling for baseline network density.
*   *Hypothesis 2 (Resource Centrality):* Drawing loosely on Action Theory (Fuhse, 2020), actors with a larger `organization_size` possess larger capacities and will therefore exhibit significantly higher degree centrality (tie to a wider array of distinct policy concepts) compared to micro-enterprises.

### *Methods*
*   **Analytical Strategy:** Bipartite Exponential Random Graph Models (ERGMs), utilizing the `ergm` package in R.
*   Substantiate this choice using Lusher et al. (2013), emphasizing that ERGMs explicitly model the interdependencies between network ties (like four-cycles, identifying closure) which standard logistic regression cannot do.

### *Data, Measures*
*   **Data:** Derived from `actor_metadata_refined.csv` and `classification_master_refined.csv`.
*   **Measures (Variables):** 
    *   *Dependent Variable:* The network tie (Actor-Concept alignment).
    *   *Nodal Covariates (Actors):* `actor_class`, `organization_size`, `country`. 
    *   *Structural terms:* Edges (density), Bipartite node stars (to model degree distributions), and Four-cycles (to capture overlapping policy interests/closure).
    *   *(Reminder: Technical data manipulation details must explicitly be omitted per guidelines).*

### *Results*
*   Present ERGM results and coefficients alongside Goodness of Fit (GOF) simulations. Let the GOF dictate model fit for bipartite specific structures (e.g., degree distributions).
*   Create self-generated tables and figures (no screenshots; labels sized matching body text).
*   Describe results objectively. For example: "The positive, significant coefficient for the `actor_class` nodematch term indicates significant attribute homophily..." Avoid post-hoc reasoning.

### *Discussion*
*   Synthesize findings with the relationalist versus formalist debate in the literature. Do the micro-mechanisms explain the macro-tribes identified by previous descriptive methods?
*   **Target Audience Implications:** Provide actionable intelligence for EU advocacy groups. Conclude with how organizations can use these predictive parameters (e.g., identifying organizations with similar structural profiles based on size or class) to identify latent allies before drafting joint position papers.
*   **Next Steps:** Suggest longitudinal modeling (e.g., SAOMs or RHEMs) to track how these concepts evolve temporally over multiple stages of EU legislation.
