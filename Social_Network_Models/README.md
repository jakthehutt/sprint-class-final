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
  * *High School Intuition:* Imagine taking a single photo of your entire school cafeteria. ERGMs help us guess the rules of why people are sitting together in that one photo—like figuring out if people prefer to sit with others in the same grade or on the same sports team.
  * *Good at:* Modeling the processes of tie formation and testing strict hypotheses about how a global structure of an empirical network was produced. Robustly implemented via packages like `statnet`/`ergm` in R.
  * *Bad at:* Examining explicit dynamic evolution over time. While temporal extensions (TERGMs) exist, recent literature (e.g., Block et al. 2018) argues they lack consistent interpretations on tie-level probabilities and true network change processes compared to continuous-time models.
  * *Examples of Use:* Analyzing static cross-sectional phenomena, for example, identifying whether homophily (like race or gender) structures friendship ties in a single-time snapshot of high-school teenagers.

* **Stochastic Actor-Oriented Models (SAOMs):**
  * *Intuition:* A process-based, continuous-time approach for longitudinal network analysis. SAOMs use an objective function and a rate function to model how networks evolve over time via "mini-steps" as consequence of actors continuously forming, maintaining, or deleting ties.
  * *High School Intuition:* Imagine watching a time-lapse video of a school year. SAOMs help us understand *how* friendships change over time—like figuring out if kids become friends because they both play video games, or if they start playing video games because they became friends.
  * *Good at:* Handling longitudinal panel data, explicit network evolution, and the co-evolution of networks alongside actor behavior (or multiplex and bi-partite networks). They offer consistent interpretation at the micro-level.
  * *Bad at:* Computationally intensive and complex to specify. They rely heavily on Simulation approximation via Method of Moments and Markov Chains, which can lead to convergence issues or very long estimation times. Typically requires rich multi-wave longitudinal panel data. 
  * *Examples of Use:* Investigating peer-influence versus selection over time, such as whether high school students become friends because they share similar drinking behaviors, or if they change their drinking behaviors because they became friends.

* **Stochastic Block Models (SBMs):** 
  * *Intuition:* A methodological approach for finding blocks of structurally equivalent nodes. Nodes in the same block share similar probabilities of connection to other nodes across the network. 
  * *High School Intuition:* Imagine looking at the cafeteria without knowing anyone's name or grade. SBMs are like an AI that magically groups students into hidden "cliques" or factions just by seeing who talks to whom, helping you spot the "cool kids" or the "theater kids" automatically.
  * *Good at:* Inductively identifying hidden community structures, cohesive subgroups, or latent social roles without prior knowledge of node attributes. 
  * *Bad at:* Not well-suited for modeling the granular micro-level behavioral mechanisms (like "does an actor close a triad?") compared to ERGM/SAOM frameworks, but rather focuses on partitioning the macro-level structure.
  * *Examples of Use:* Taking an unstructured, poorly understood, dense network (e.g., historical alliance networks) and inductively discovering latent factions (blocks) based solely on who connects to whom.

* **Relational Hyper Event Models (RHEMs):**
  * *Intuition:* Advanced modeling for analyzing specific sequences of interactions and communication between actors in continuous time.
  * *High School Intuition:* Imagine having the exact timestamps of every text message sent between students in a day. RHEMs act like a detective analyzing the exact rhythm and timing of these texts to see who sparked a viral rumor minute-by-minute.
  * *Good at:* Fine-grained temporal data where exact timing matters (e.g. timestamps of emails or interactions), examining rates and discrete events instead of static relationships.
  * *Examples of Use:* Parsing timestamped corporate email logs to see who influences communication rates and sequences minute-by-minute throughout a workday.

### Model Estimation and Diagnostics
* **Estimation Techniques:** Approximating parameters for complex models often relies on Markov Chain Monte Carlo Maximum Likelihood Estimation (MCMC-MLE) for ERGMs, or Method of Moments (MoM) for SAOMs.
* **Goodness of Fit (GOF):** A critical post-estimation step where networks are heavily simulated from the estimated parameters to verify if the properties of the simulated networks closely match the original empirical data.

### Key Theoretical Concepts
* **Formalist vs. Relationalist Theory:** The course balances structural formalisms (e.g. strict mathematical properties) with relational sociology (where ties themselves have cultural and social meaning).
* **Action Theory and Social Capital:** Perspectives focusing on how actors mobilize resources via network ties and occupy advantageous positions (such as brokers bridging structural holes).
* **Pragmatism and Interactionism:** Viewing networks not merely as static ties but as fluid and dynamic structures of subjective meaning, emphasizing the process of interactions.
* **Multi-Paradigmatic Perspectives:** Analyzing networks from cognitive, structural, and cultural viewpoints.
* **Macro vs. Micro Dynamics:** Understanding how aggregate structures emerge from individual decisions (homophily, transitivity) and how global structures constrain individual tie formation.

## 3. Practical Applications & Data Sources
* **Typical Datasets:** Employs widely available datasets for training and modeling, such as SocioPatterns, the Stanford Large Network Dataset Collection, or empirical subsets (e.g., Faux High School friendships).
* **Course Applications:** Practical coding labs investigate segregation behaviors in schools, intra-firm communication matrices, and shifts in scientific collaborations over time.

## 4. Course Structure & Deliverables
* **Lectures & Labs:** Dedicated mixed sessions mapping theoretical concepts into practical code implementations using the R `statnet` and `RSiena` libraries.
* **Research Output:** Comprehensive empirical investigation on real-world datasets forming the basis of a final research term paper and academic presentation.

---
*Note: The slide and literature sets have been processed via OCR for easier reading and full-text search.*
