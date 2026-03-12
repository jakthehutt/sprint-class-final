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

#### Filling in your Source Requests in the Introduction:

**A. "Explain how public affairs advocacy works (find source)"**
*   **Context for drafting**: Modern EU lobbying is not so much about secret backroom deals anymore. Instead, it is an "exchange relationship" (Klüver, 2013). The European Union institutions need highly technical information and expertise to draft good laws, and interest groups provide this information in exchange for influence. Also, advocacy is about "framing" (Mahoney, 2008), which means presenting an issue in a certain way so that it fits into the Commission's broader goals. Because nobody can reframe a huge policy all by themselves, organizations have to build broad coalitions that share the same information and frames. 
*   **Sources to Cite**:
    *   *Klüver, H. (2013). Lobbying in the European Union.* (Argues that lobbying is an information exchange process where groups form coalitions to provide a united front of expertise).
    *   *Mahoney, C. (2008). Brussels versus the Beltway.* (Highlights how EU advocacy relies heavily on framing issues to fit the Commission's broad goals, and how collective issue-definition is bounded by the community).

**B. "Connect it to the importance of STAKEHOLDER MAPPING (find source)"**
*   **Context for drafting**: Because winning in the EU means you have to show that many people agree with your frame and information, organizations must constantly map their environment. They need to find out who their allies are (organizations with overlapping interests) and who their opponents are. Mapping turns a very chaotic public consultation into a clear, strategic battlefield. If you know the landscape, you know who to team up with.
*   **Sources to Cite**:
    *   *Bunea, S. (2013). Issues, preferences and ties: Determinants of interest groups' network centrality in EU environmental policy.* (Applies mapping directly to EU policy networks to show how groups find their position).

**C. "Tribes are usually clustering (WHAT ARE THE ARGUMENTS IN LITERATURE HERE - make research and be detailed)"**
*   **Context for drafting**: Usually, researchers use methods like Discourse Network Analysis (DNA) to find "tribes" of actors. They take the data and project it into a simple actor-to-actor network, and then use clustering algorithms to see who groups up. But this has a big problem: it assumes these tribes are completely unified monoliths (big, solid blocks of actors who always agree). In reality, actors in a tribe might share some ideas but completely disagree on others. Also, by squishing the data down to just actors, we lose the actual *content*. We can see *that* two actors are connected, but we don't know *why* or over *what specific concepts*. As Erikson (2013) notes in sociological theory, treating groups as pre-existing monolithic entities misses the point that their interests actually emerge *through* their specific relationships. Clustering only describes what the network looks like, it doesn't test *why* it formed that way.
*   **Sources to Cite**:
    *   *Leifeld, P. (2017). Discourse Network Analysis.* (Details how bipartite discourse networks are typically squished down via projection for clustering).
    *   *Erikson, E. (2013). Formalist and Relationalist Theory in Social Network Analysis.* (Explains the flaw of essentialist/monolithic grouping, arguing that identity and interest derive from specific ties and meaning)..

---

## 2. Options for Analysis & Gap in the Literature


### Option 3: Bipartite ERGMs (DRUMROLL - The Best Option)
*   **What it is**: You keep the network in its true form as a two-mode graph (Actors on one side, Concepts on the other). As Lusher et al. (2013) explain, ERGMs are "tie-based models" that let us test the complex, competing reasons why ties form in a local social environment.
*   **The Gap**: Most public affairs literature today just stops at descriptive mapping - they just draw the clusters. The few researchers who do use ERGMs usually only apply them to one-mode networks looking at physical collaborations (like who works with whom). Using Bipartite ERGMs on *discourse* data (who says what policy concept) is extremely rare.
*   **How to Fill It**: By using Bipartite ERGMs, our study moves away from just drawing a map of AMA coalitions (descriptive). Instead, it creates statistical models that tell us the exact probability that an organization type X will support policy frame Y. This takes advocacy research from simple mapping to real, predictive modeling. We are literally answering the "why"! 

---

## 3. Extending the Theory & Hypothesis Generation

**"how can this be extended to the theory section; lets make some rigorous ideas"**

*   **Context for drafting**: If we look through the Relationalist lens (like Erikson, 2013, who argues meaning and interests come *from* our relationships, rather than existing before them) and Action Theory (like Fuhse, 2020, who sees networks as structures that create opportunities and constraints for individuals), we can build very strong hypotheses using our actual data (`actor_class`, `organization_size`, `concept_id`).

### The Theoretical Extension:

#### A. Institutional Isomorphism Theory (For Hypothesis 1 - Attribute Homophily)
*   **Theory**: DiMaggio and Powell's (1983) big idea is "Institutional Isomorphism." This means that organizations working in the same area (like Science institutes or small businesses) eventually start thinking and acting alike because they face the exact same pressures (like laws, social expectations, or just copying each other when unsure).
*   **Hypothesis A formulation**: Because organizations of the exact same `actor_class` face these identical isomorphic pressures, they are statistically much more likely to support the exact same specific policy concepts compared to organizations from different classes. (In ERGM terms, this is our test for attribute homophily).

#### B. Resource Dependence Theory (For Hypothesis 2 - Resource Centrality)
*   **Theory**: Pfeffer & Salancik (1978) created "Resource Dependence Theory" (RDT). They argue that organizations are not completely self-sufficient; to survive, they need resources from the outside world. This creates power struggles. Large organizations (with big budgets) have the legal and technical capacity to actively manage these dependencies across many different fronts. 
*   **Hypothesis B formulation**: Because bigger organizations have more resources to spend on managing their environment, we hypothesize that a larger `organization_size` positively predicts an actor's "out-degree centrality" – meaning they will have the power to engage with a much wider, more diverse array of policy concepts in the AMA.

#### C. Structural Equivalence / The "Echo Chamber" Mechanism (For Hypothesis 3)
*   **Theory**: In relational sociology (Fuhse, 2020), meaning is always connected. Concepts do not just float around by themselves; they are bundled together tightly into "ideological packages." If you aggressively support "Circularity," it naturally follows that you will also support "Recycling Grants."
*   **Hypothesis C formulation**: We hypothesize that actors who share one exact policy concept are disproportionately more likely to also share a second concept. This creates a structural "echo chamber" (or path closure) in the network, proving that policy frames are bundled together.

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
