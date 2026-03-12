# Brainstorm and Ideas: Introduction and Literature Background

This document provides a highly detailed brainstorm, offering multiple options, literature references, and structural ideas for the Introduction, Literature Review, and Theory sections of your paper. 

---

## 1. Introduction Ideas and Structuring

### The Flow of the Introduction:
1. **The Hook**: Start with the European Union's Advanced Materials Act (AMA) as a critical, emerging policy arena requiring massive industrial and scientific transition.
2. **The Advocacy Mechanism**: Introduce how public affairs and advocacy work in this context (information provision, framing).
3. **The Importance of Stakeholder Mapping**: Explain that to win, you must know who is in the arena (the macro-view).
4. **The Literature Gap**: Point out that current mapping relies on clustering (putting actors into monolithic tribes) which describes *what* the landscape looks like, but not *why* the ties form.
5. **The Contribution**: We use Bipartite ERGMs to uncover the *micro-mechanisms* (the *why*) driving shared policy concepts.

### Filling in your Source Requests in the Introduction:

**A. "Explain how public affairs advocacy works (find source)"**
*   **Idea**: Modern EU public affairs is less about "backroom deals" and more about "information provision" and "framing." Stakeholders exchange technical expertise and policy frames for access to policymakers.
*   **Source Options to Cite**:
    *   *Klüver, H. (2013). Lobbying in the European Union.* (Argues that lobbying is essentially an information exchange process where coalitions form to provide a united front of expertise).
    *   *Mahoney, C. (2008). Brussels versus the Beltway.* (Highlights how EU advocacy relies heavily on framing issues to fit the Commission's broad goals).
    *   *Bouwen, P. (2002). Corporate lobbying in the European Union: the logic of access.* (Focuses on the "access goods" like expert knowledge that organizations trade for influence).

**B. "Connect it to the importance of STAKEHOLDER MAPPING (find source)"**
*   **Idea**: Because advocacy requires signaling broad consensus, organizations must map the policy subsystem to find allies with overlapping interests and identify opponents. Mapping turns a chaotic consultation into a navigable strategic landscape.
*   **Source Options to Cite**:
    *   *Mitchell, R. K. et al. (1997). Toward a theory of stakeholder identification and salience.* (The classic "power, legitimacy, urgency" mapping framework).
    *   *Bunea, S. (2013). Issues, preferences and ties: Determinants of interest groups' network centrality in EU environmental policy.* (Applies mapping directly to EU policy networks).

**C. "Tribes are usually clustering (WHAT ARE THE ARGUMENTS IN LITERATURE HERE - make research and be detailed)"**
*   **Idea**: The conventional approach in Discourse Network Analysis (DNA) and the Advocacy Coalition Framework (ACF) is to project bipartite networks (actors + concepts) into one-mode actor networks, and then run clustering algorithms (like Louvain, Modularity, or Spectral clustering, as done in your PoC) to find "tribes".
*   **Arguments in Literature (The Critique)**:
    *   *The Monolith Assumption*: Clustering assumes that coalitions are tightly bound, homogeneous monoliths. However, actors in a "tribe" often disagree on sub-issues.
    *   *Loss of Information*: By projecting to a one-mode network, you lose the bipartite structure. You know Actor A and Actor B are in a tribe, but you lose mathematical visibility into *which specific concepts* bind them together.
    *   *Descriptive vs. Inferential*: Clustering is *descriptive* (it maps the topology). It cannot test *why* a tie exists (e.g., "they are in the same tribe because they are both SMEs").
*   **Source Options to Cite**:
    *   *Leifeld, P. (2017). Discourse Network Analysis.* (Details how bipartite discourse networks are typically reduced via projection for modularity clustering).
    *   *Sabatier, P. A., & Weible, C. M. (2007). The Advocacy Coalition Framework.* (The foundational text defining policy "tribes").

---

## 2. Options for Analysis & Gap in the Literature

**"NEXT I WANT you to do rigorous online research... to outline the options of analysis HERE; then find what are the best options for analysis and hypothesis available; where is the gap in the literature and how we can fill that"**

### Option 1: One-Mode Actor Network ERGMs (Sub-optimal)
*   **What it is**: You project your Bipartite matrix into an Actor-Actor similarity matrix, threshold it, and run a standard one-mode ERGM to see why actors connect.
*   **Why it's flawed**: It obscures the policy concepts. Ties represent "shared concepts," but the model can't tell the difference between two actors sharing the concept "R&D funding" vs. "Bans on PFAS".

### Option 2: Latent Space Models / Stochastic Block Models (Alternative)
*   **What it is**: Using Bipartite Stochastic Block Models (like your PoC tried).
*   **Why it's flawed**: SBMs are great for finding blocks/clusters, but they don't allow you to easily add nodal covariates (like `organization_size`) to explicitly test explicit hypothesis regarding attribute homophily.

### Option 3: Bipartite ERGMs (The Best Option - Your approach)
*   **What it is**: You keep the network as a two-mode graph (Actors on one side, Concepts on the other).
*   **The Gap**: Most public affairs literature stops at descriptive mapping (clustering). Those that do use ERGMs almost exclusively use one-mode ERGMs on physical collaboration ties (e.g., who works with whom). Bipartite ERGMs on *discourse* data (who says what) are exceptionally rare.
*   **How to Fill It**: By utilizing Bipartite ERGMs, your study shifts from "Here is a map of the AMA coalitions" to "Here are the statistical probabilities that an organization type X will adopt policy frame Y". This moves advocacy research from descriptive mapping to predictive modeling. 

---

## 3. Extending the Theory & Hypothesis Generation

**"how can this be extended to the theory section; lets make some rigorous ideas and write a new file"**

If you are using the Relationalist view (meaning derives from relationships) and Action Theory (networks are opportunity structures), you can extend the theory section to build richer hypotheses based on your actual variables (`actor_class`, `organization_size`, `concept_id`).

### The Theoretical Extension Options:

#### A. Institutional Isomorphism Theory (For Hypothesis 1 - Attribute Homophily)
*   **Theory**: DiMaggio and Powell's (1983) Institutional Isomorphism suggests organizations in the same "field" (e.g., Science, SMEs) face the same regulatory and environmental pressures, causing them to adopt the same language and strategies.
*   **Extended H1 formulation**: Because organizations of the same `actor_class` face isomorphic pressures, they are more likely to endorse the same set of specific policy concepts. In the Bipartite ERGM, this is tested using a **bipartite nodal mix / homophily** term.

#### B. Resource Dependence Theory (For Hypothesis 2 - Resource Centrality)
*   **Theory**: Pfeffer & Salancik (1978). Power in advocacy is derived from resources. Large organizations have the capacity (legal, technical, financial) to engage comprehensively across the *entire* text of the AMA.
*   **Extended H2 formulation**: Let's pivot from Fuhse's Action Theory to a more concrete advocacy theory: *Resource Capacity*. We hypothesize that `organization_size` positively predicts the number of outbound ties to various concepts. In Bipartite ERGMs, this is tested using **actor-level degree effects moderated by an attribute (b1cov)**.

#### C. Structural Equivalence / The "Echo Chamber" Mechanism (New Hypothesis 3)
*   **Theory**: In relational sociology, meaning is bundled. If you believe in "Circularity," you likely also believe in "Recycling Grants."
*   **Extended H3 formulation**: Concepts do not exist in isolation; they are bundled into ideological packages. We hypothesize that actors who share one policy concept are disproportionately likely to share a second, controlling for density. In the ERGM, this is tested using the **bipartite 4-cycle term (b4cycle or gwb2degree)**, which indicates closure and the emergent formation of "echo chambers."

#### D. Concept "Mainstreaming" (New Hypothesis 4)
*   **Theory**: In public affairs, certain buzzwords become so mainstream that it is politically costly to ignore them (e.g., "Sustainability").
*   **Extended H4 formulation**: Policy concepts with a broader, less restrictive definition will exhibit significantly higher intrinsic popularity (indegree) than niche, technical concepts, acting as universal bridging nodes. Test using **concept-level degree effects (b2cov or indegree)**.

---

## Summary of Next Steps for the LaTeX File
1.  **Add the new citations** (Klüver, Mahoney, Mitchell, Leifeld) to your `references.bib` file.
2.  Paste chunks of Section 1 into your `main.tex` introduction framing.
3.  Rewrite your H1 and H2 under the "Theory" section utilizing the Institutional Isomorphism and Resource Dependence framings above to give them much more theoretical "heft."
4.  Optionally add H3 (Four-cycles/Echo Chambers) to really show off the power of Bipartite ERGMs over simple regression.
