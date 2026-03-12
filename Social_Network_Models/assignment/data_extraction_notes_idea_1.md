# Data Description and Extraction Notes

These bullet points describe the dataset, its extraction methodology, and the specific variables required for the Bipartite ERGM analysis (Idea 1). You can use these notes to flesh out your methodology/data sections and fill in the placeholders (like "x and y") in your `main.tex`.

### 1. The Raw Data Source
*   **The Corpus:** The underlying data originates from stakeholder feedback submitted during the public consultation for the EU Advanced Materials Act.
*   **Raw Storage:** The original texts and metadata were initially stored in an SQLite database (`advanced_materials.db`) before processing.
*   *(Source: `schema_and_network_overview.md`, Section 1 & "Other Sources")*

### 2. Data Extraction Methodology ("x and y")
*   **Extraction Technique:** The bipartite network of actors and policy concepts was constructed by computationally extracting statements and stances from the raw text using **Large Language Models (LLMs)**.
*   **Specific Model Used:** The extraction was performed using **Google's Gemini 3 Flash Preview** (`google/gemini-3-flash-preview`).
*   **Taxonomies:** Predefined taxonomies (`seed_taxonomies.json` and `policy_dimensions.txt`) were used to map the unstructured feedback into standardized `concept_id` target nodes.
*   *(Sources: `classification_master_refined.csv` `model` column; `schema_and_network_overview.md` Section 1, Table B)*
*   **LaTeX Suggestion:** For your "x and y" placeholder in `main.tex`, you can write: *"...and with the help of **predefined policy taxonomies** and **LLM-based text extraction (Gemini 3 Flash)**, we extracted a bipartite network..."*

### 3. The Bipartite Network Structure
*   **Mode 1 (The Actors):** The network's first set of nodes consists of the 170 unique stakeholders who submitted feedback. Each actor is identified by a primary key (`feedback_ref`).
*   **Mode 2 (The Concepts):** The second set of nodes consists of the standardized policy concepts (identified by `concept_id`).
*   **The Ties (Edges):** A tie between an actor and a concept is established when the actor's text chunk contains a statement addressing that concept. The edge includes a `stance` attribute (SUPPORT, OPPOSE, NEUTRAL) that defines the weight/type of the relationship.
*   *(Sources: `actor_metadata_refined.csv`; `schema_and_network_overview.md` Section 3.1)*

### 4. Necessary Variables for Idea 1 (Bipartite ERGMs)
To successfully model the advocacy strategies using Bipartite ERGMs (as described in your blueprint article by Helander et al.), the following data structures are strictly necessary:
*   **The Dependent Variable:** The binary bipartite network tie (representing the presence of an Actor-Concept alignment).
*   **Nodal Covariates (Actor Attributes):**
    *   `actor_class` (e.g., Science, SME_Industry, Associations, Big_Industry): Necessary to test Hypothesis 1 regarding attribute homophily/node matching.
    *   `organization_size` (e.g., Micro, Small, Medium, Large): Necessary to test Hypothesis 2 regarding resource capacity mapping to degree centrality.
    *   `country`: Captured as an exogenous control covariate.
*   **Endogenous Structural Terms:** Relational structures generated within the ERGM, such as density (edges), bipartite node stars (to map degree distribution), and four-cycles (to identify cohesive subgroups sharing overlapping policy interests).
*   *(Source: `idea_1_elaboration.md`, "Theory" and "Data, Measures" sections)*
