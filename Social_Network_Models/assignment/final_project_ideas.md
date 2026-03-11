# Final Project Ideas: Network Analysis of EU Advanced Materials Act Consultation

Based on the intersection of the Statistical Network Models course syllabus and the AMA Proof of Concept (PoC) repository, here are three high-value project ideas that utilize existing literature, reuse course code, and provide actionable insights for EU advocacy.

## Idea 1: Uncovering the Micro-Mechanisms of Coalition Building via Bipartite ERGMs

**The Concept:** The PoC currently uses Spectral Clustering on a one-mode projection to find macro-level "Tribes." But *why* do these ties form in the first place? Does shared institutional type (e.g., `Science` vs. `Big_Industry`) drive agreement, or does shared financial power (`Total budget`)? We can apply **Exponential Random Graph Models (ERGMs)** directly on the bipartite network (Actors x Concepts/Instruments) to uncover these micro-mechanisms.

*   **Code Reuse (`code`):** Adapt `Homework Social Networks 2_ERGMs.R` (and the provided example solutions) to specify and estimate ERGMs on the bipartite graph, utilizing the `ergm` package and assessing Goodness of Fit (GOF).
*   **Literature Integration (`literature`):** Frame the research question around structural versus attribute homophily, drawing primarily on **Erikson (2013)** (*Formalist and relationalist theory in social network analysis*) and **Lusher et al. (2013)** (*Exponential random graph models for social networks*).
*   **Value for EU Advocacy Bubble:** This shifts the tool from descriptive coalition mapping to predictive alliance formation. It provides actionable intelligence to advocacy groups on not just *who* is in a coalition, but *which underlying organizational traits* are the strongest predictors of policy alignment—crucial data for building cross-sector lobbying alliances.

## Idea 2: Analyzing "Agenda Setters" vs. "Followers" using Relational Hyper Event Models (RHEMs)

**The Concept:** The PoC treats the Call for Evidence as a static snapshot, limiting the use of longitudinal SAOMs. However, the individual submissions scraped have exact publication timestamps. Since advocacy is a dynamic, reactive process, we can model the sequence of submissions using **Relational Hyper Event Models (RHEMs)** to trace how the discourse evolved minute-by-minute.

*   **Code Reuse (`code`):** While RHEMs are introduced in a later workshop (Session 9), you can heavily repurpose the data wrangling and bipartite network generation scripts, specifically leveraging the logic in `generate_network_function.R` and the cross-sectional statistical groundwork from Lab Session 2.
*   **Literature Integration (`literature`):** Justify the modeling of exact communication timestamps using **Lerner & Lomi (2023)**, and ground the theoretical process of network formation dynamically using **Rawlings et al. (2024)**.
*   **Value for EU Advocacy Bubble:** This identifies the temporal dynamics of influence: "agenda setters" versus "followers." Does Big Industry set the narrative early, triggering NGOs to react, or do specific actors reliably spawn counter-submissions? Knowing when to intervene is as actionable as knowing who to partner with.

## Idea 3: The Financial ROI of Structural Brokerage (Action Theory & Social Capital)

**The Concept:** The PoC successfully scraped Transparency Register data, including EU grants. We can test "Action Theory and Social Capital" concepts from the syllabus (Session 2). Specifically, do actors who occupy central bridging positions—connecting disparate policy concepts or distinct "Tribes"—secure more EU grants? This tests whether strategic network capital predicts financial capital.

*   **Code Reuse (`code`):** Leverage `generate_network_function.R` for creating and visualizing the core network. You can integrate the statistical attribute modeling approaches (like nodal covariates for grants) directly from `Homework Social Networks 2_ERGMs_example_solution.R`.
*   **Literature Integration (`literature`):** Anchor the theoretical framework in **Fuhse (2020)** (*Theories of Social Networks*) and **Wimmer & Lewis (2010)**, focusing on how actors mobilize resources via network ties and occupy advantageous positions (e.g., brokers bridging structural holes).
*   **Value for EU Advocacy Bubble:** This analysis attempts to prove (or disprove) the tangible financial return on investment (ROI) of specific advocacy strategies. Does having a diversified, central policy portfolio actually correlate with institutional success (like higher grants under Horizon Europe)? This provides a hard "business case" for specific lobbying strategies in Brussels.
