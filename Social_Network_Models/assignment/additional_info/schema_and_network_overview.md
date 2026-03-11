# AMA Consultation Data: SQL & Network Overview

To understand how the Discourse Network Analysis (DNA) is constructed, here is a simplified "SQL-esque" breakdown of the main files, their relationships, and how they form the network.

---

## 1. Tables & Primary Keys

### Table A: `actor_metadata_refined.csv` (The Actors)
This file represents the **nodes** in your network (the stakeholders submitting feedback).
- **`feedback_ref`** `[Primary Key, Unique Identifier]` *(e.g., F33364619)* 
- **`organization`** `[String]`
- **`user_type`** `[Categorical]`
- **`organization_size`** `[Categorical]`
- **`country`** `[Categorical]`
- **`actor_class`** `[Categorical]` *(e.g., Science, SME_Industry)*

### Table B: `classification_master_refined.csv` (The Statements / Edges)
This file contains the LLM-extracted statements from the actors' feedback. It serves as the **junction table** linking Actors to Concepts.
- **`chunk_id`** `[Primary Key, Unique Identifier]` *(e.g., F33364619_C001)*
- **`feedback_ref`** `[Foreign Key]` *(Derived from the prefix of chunk_id, linking back to the Actor)*
- **`concept_id`** `[Foreign Key]` *(Links to the taxonomy, e.g., PD_CfE_1_3)*
- **`stance`** `[Categorical: SUPPORT, OPPOSE, NEUTRAL]` *(Defines the edge type/weight)*
- **`dimension`**, **`reasoning`**, **`quote`** `[Text Context]`

### Other Sources
- `seed_taxonomies.json` & `policy_dimensions.txt`: Definitions for the `concept_id` fields.
- `advanced_materials.db`: An SQLite dump of raw feedback metadata and texts.

---

## 2. Relationships

- **One-to-Many (1:N): Actor ↔ Statements.** 
  One Actor (`feedback_ref`) can have many extracted statements (`chunk_id`). 

- **Many-to-Many (N:M): Actors ↔ Concepts.** 
  Through the classification table, many Actors can discuss the same Concept, and one Actor can discuss many different Concepts. 

---

## 3. How the Network is Built (Discourse Network Analysis)

To generate the network outputs (e.g., the adjacency matrices or visualization HTMLs in `/analysis_output`):

1. **Bipartite Graph (Actor-Concept Network)**
   By performing a `JOIN` on `feedback_ref`, you get a graph where **Actors** are connected to **Concepts**. The `stance` acts as the edge attribute. 
   *(e.g., "Forschungszentrum Jülich" --[SUPPORT]--> "Strategic Supply Chain Sovereignty")*

2. **Actor Congruence Network (Actor-Actor Network)** 
   The bipartite graph is projected into a one-mode network. Actors are connected to *each other* if they have the **same stance** on the **same concept**.
   *In SQL terms, this is roughly:*
   ```sql
   SELECT A.feedback_ref AS Actor1, B.feedback_ref AS Actor2, COUNT(*) as Agreement_Weight
   FROM classification_master_refined A
   JOIN classification_master_refined B ON A.concept_id = B.concept_id AND A.stance = B.stance
   WHERE A.feedback_ref != B.feedback_ref
   GROUP BY A.feedback_ref, B.feedback_ref;
   ```
   This resulting network is what algorithms like **Stochastic Block Modeling (SBM)** use to detect underlying "belief coalitions" or clusters of actors with similar policy preferences.
