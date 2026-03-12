# Brainstorm and Ideas: Introduction and Literature Background

use this documetn as a blupirng for writing;
wirte in ahigh school student fro austria kidna english; avid we tho, its only one author

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

**"how can this be extended to the theory section; lets make some rigorous ideas"**

If you are using the Relationalist view (meaning derives from relationships) and Action Theory (networks are opportunity structures), you can extend the theory section to build richer hypotheses based on your actual variables (`actor_class`, `organization_size`, `concept_id`).



### The Theoretical Extension:

#### A. Institutional Isomorphism Theory (For Hypothesis 1 - Attribute Homophily)
*   **Theory**: DiMaggio and Powell's (1983) Institutional Isomorphism suggests organizations in the same "field" (e.g., Science, SMEs) face the same regulatory and environmental pressures, causing them to adopt the same language and strategies.
*   **Hypothesis A formulation**: Because organizations of the same `actor_class` face isomorphic pressures, they are more likely to endorse the same set of specific policy concepts. 

#### B. Resource Dependence Theory (For Hypothesis 2 - Resource Centrality)
*   **Theory**: Pfeffer & Salancik (1978). Power in advocacy is derived from resources. Large organizations have the capacity (legal, technical, financial) to engage comprehensively across the *entire* text of the AMA.
*   **Hypothesis B formulation**: We hypothesize that `organization_size` (or `total_budget`) positively predicts an actor's out-degree centrality (the number of outgoing ties to diverse concepts). 

#### C. Structural Equivalence / The "Echo Chamber" Mechanism (For Hypothesis 3)
*   **Theory**: In relational sociology, meaning is bundled. If you believe in "Circularity," you likely also believe in "Recycling Grants."
*   **Hypothesis C formulation**: Concepts do not exist in isolation; they are bundled into ideological packages. We hypothesize that actors who share one policy concept are disproportionately likely to share a second, controlling for density. 

---

## 4. Operationalization: Detailed Implementation Code

**Data Ingestion Strategy:**
This project completely bypasses the Python pipeline from the `ama-consultation-dna-poc` repository for analysis, utilizing only its raw data output (`classification_master_refined.csv` and `actor_metadata_refined.csv`). Instead, we will repurpose the R scripts provided in the class resources (`Social_Network_Models/code`). 

### 1. Generating the Bipartite Network
Using the structure of `generate_network_function (1).R`, we will import our data and construct the `network` object. Because our data is bipartite (Actors $\rightarrow$ Concepts), we must explicitly set `bipartite = TRUE` when initializing the network.

```R
library(statnet)
library(readr)

# 1. Load the exported CSVs
edges_df <- read_csv("data/classification_master_refined.csv")
nodes_df <- read_csv("data/actor_metadata_refined.csv")

# 2. Filter edges to only include 'SUPPORT' stances
edges_support <- subset(edges_df, stance == "SUPPORT")
bipartite_edgelist <- edges_support[, c("feedback_ref", "concept_id")]

# 3. Use the class function (adapted for bipartite)
# We must ensure the 'node' column in nodes_df contains all Actors AND Concepts
net <- network::network(bipartite_edgelist, directed = FALSE, bipartite = length(unique(edges_support$feedback_ref)))

# Add attributes (conceptually similar to the class generate_network_function)
index_match <- match(network::network.vertex.names(net), nodes_df$feedback_ref)
network::set.vertex.attribute(net, "actor_class", as.character(nodes_df$user_type[index_match]))
network::set.vertex.attribute(net, "organization_size", as.numeric(nodes_df$total_budget[index_match]))
```

### 2. Testing the Hypotheses (`ergm` Syntax)
Borrowing the exact syntax structure from `Homework Social Networks 2_ERGMs_example_solution.R` (specifically Tasks 3, 4, and 5), we will fit exponential random graph models.

#### Testing Hypothesis A (Attribute Homophily)
*Are actors of the same `actor_class` statistically more likely to share ties to the same core policy concepts?*
*   **The Code:** To test homophily in a bipartite network, we use a bipartite-specific node match term `b1nodematch`.
```R
# Testing Attribute Homophily
m_homophily <- ergm(net ~ edges + b1nodematch("actor_class"),
                    control = control.ergm(main.method = "Stochastic"),
                    verbose = TRUE)
summary(m_homophily)
```
*   **How to robustly confirm Hypothesis A (Multiple Ways):**
    1.  **Coefficient Significance (The Standard Check):** The summary output will provide a p-value for the `b1nodematch.actor_class` term. If the coefficient is positive and $p < 0.05$, the hypothesis is supported at a statistically significant level.
    2.  **Average Marginal Effects (The Practical Reality Check):** Statistical significance doesn't always guarantee *practical* relevance in large datasets. By using `ergm.AME(m_homophily, "b1nodematch.actor_class")`, we calculate the exact percentage change in probability. If the probability of a tie increases robustly (e.g., +15% over baseline density), we confirm the theory has high real-world explanatory power.
    3.  **Cross-Model Stability (The Confounder Check):** Are we sure this is true homophily and not just because big organizations happen to be associations? We verify this by running a multivariate ERGM adding `b1cov("organization_size")` into the same model. If `b1nodematch` remains significant even when controlling for size, we can confidently claim the effect is robust and not a spurious correlation.

#### Testing Hypothesis B (Resource Centrality)
*Do actors with a larger `organization_size` (budget) exhibit higher degree centrality (support more concepts)?*
*   **The Code:** We test the main effect of a continuous nodal covariate for Mode 1 (Actors) using `b1cov`.
```R
# Testing Resource Centrality
m_resources <- ergm(net ~ edges + b1cov("organization_size"),
                    control = control.ergm(main.method = "Stochastic"),
                    verbose = TRUE)
summary(m_resources)
```
*   **How to robustly confirm Hypothesis B (Multiple Ways):**
    1.  **Main ERGM Effect:** A significantly positive parameter for `b1cov.organization_size` confirms that log-odds of tie formation scale predictably with an actor's budget.
    2.  **Goodness of Fit on Degree Distributions (The Structural Quality Check):** The ERGM might show statistical significance, but does the model actually capture the massive inequality we see in the network? By running `plot(gof(m_resources))`, we check if the simulated bipartite degree distribution matches the actual network's heavy-tailed degree distribution. If the simulated model lines tightly track the observed black line, we are highly confident the model is structurally sound.
    3.  **External Bivariate Correlation (The Baseline Check):** Beyond ERGMs, we can compute the correlation exactly via `cor.test()`. By comparing an actor's raw network out-degree stringently with their budget using a Spearman rank-correlation test outside the ERGM framework, we can double-verify. If both ERGMs and non-ERGM rank tests are positive, the finding is bulletproof.

#### Testing Hypothesis C (Structural Equivalence / Echo Chambers)
*If actors share one concept, do they disproportionately share a second concept, creating ideological echo chambers?*
*   **The Code:** We look for closure in the form of 4-cycles (squares/echo chambers) using `b4cycle`.
```R
# Testing Structural Equivalence
m_closure <- ergm(net ~ edges + b4cycle,
                  control = control.ergm(main.method = "Stochastic"),
                  verbose = TRUE)
summary(m_closure)
```
*   **How to robustly confirm Hypothesis C (Multiple Ways):**
    1.  **Endogenous Effect Significance:** If `b4cycle` is positive and significant, it proves that ties tend to cluster more tightly than a completely random network, indicating endogenous ideological bundling.
    2.  **Alternative Structural Terms (`gwb2degree`) to prevent Degeneracy:** Sometimes pure 4-cycles (`b4cycle`) cause ERGMs to mathematically fail to converge (a phenomenon known as "degeneracy"). A robust way to confirm the echo chamber hypothesis without crashing the model is substituting `b4cycle` with Geometrically Weighted Bipartite Degree (`gwb2degree` or `gwb1degree`). If the Geometrically Weighted term is significant, the structural closure hypothesis is confirmed in an alternate robust specification.
    3.  **Model Deviance & AIC Comparison (The Optimization Check):** We can use an ANOVA test specifically for ERGMs (`anova(model_without_closure, m_closure)`). If adding the `b4cycle` term significantly decreases the Residual Deviance and AIC score compared to a basic edges-only model, we are mathematically sure the closure mechanism drastically improves our global understanding of the network.

### 3. Calculating Marginal Effects
As demonstrated in Task 7 and 8 of the class solution:
```R
library(ergMargins)
# Calculate Average Marginal Effects (AME)
ergm.AME(model = m_homophily, var1 = "b1nodematch.actor_class")

# Scale at baseline probability
(ergm.AME(model = m_homophily, var1 = "b1nodematch.actor_class")[[1]] / network.density(net)) * 100
```
This final step translates the abstract log-odds coefficients into easily interpretable percentage increases in tie probability, which is crucial for the Results and Discussion sections of the paper.
