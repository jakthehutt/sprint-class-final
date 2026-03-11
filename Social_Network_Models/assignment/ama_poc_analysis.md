# AMA Consultation DNA PoC Analysis

## Overview
The `ama-consultation-dna-poc` repository is a Proof of Concept (PoC) pipeline designed to analyze the EU Advanced Materials Act (AMA) public consultation using Discourse Network Analysis (DNA). It covers a complete pipeline including data acquisition, taxonomy generation, LLM-based classification, network construction, coalition analysis, and an interactive dashboard.

## Data

### Raw Data Source
- **EU Advanced Materials Act (AMA) Call for Evidence**: Includes feedback from 192 stakeholders.
- **Data Collection Method**: A custom web scraper built with Playwright (`scripts/download_all.py`) bypassed a defunct API to download descriptions and PDF/DOCX attachments.
- **Transparency Register (TR) Data**: Scraped (`scripts/scrape_tr_data.py`) to enrich stakeholder profiles with attributes like `Total budget`, `Goals`, `Fields of interest`, and `EU grants` for 73 unique organizations.

### Preprocessing & Text Chunking
- **Text Extraction**: Processed using `PyMuPDF` (fitz) for reliable layout preservation of complex PDFs.
- **Chunking Strategy**: Sliding window of **400 words** with a **50-word overlap** to preserve context without bisecting policy arguments. Produced a dataset of **856** text chunks.
- **"Context Injection"**: Chunks mathematically flagged as `DEPENDENT` (e.g., "Yes, we agree") triggered fetching of the preceding 30k characters to re-contextualize ambiguous responses before classification.

### Taxonomy Generation Framework (TaxoAdapt)
- **Three Orthogonal Dimensions**:
  1. **Problem Definitions** (The "what" - Issues/Violated Values). Derived from anchored agenda topics. (40 nodes)
  2. **Policy Instruments** (The "how" - Proposed Solutions). (54 nodes)
  3. **Evidence Type** (The "basis" - Epistemic Source). Emergent flat hierarchy. (14 nodes)
- **Latent Frames**: *Normative Frames* and *Causal Beliefs* were explicitly dropped as separate extraction tasks and are instead being inferred topologically from the network structure.
- **Seed Taxonomies (`seed_taxonomies.json`)**: Provided top-down "anchors" directly from the European Commission's Call for Evidence. Allowed bounded emergent nodes to capture non-Commission stakeholder views.
  - *Problem Anchors*: Inefficient R&I, Insufficient Production, Circularity Gaps, Reg/Admin Barriers.
  - *Instrument Anchors*: R&I Support, Production Measures, Circularity Instruments, Regulatory Simplification.
- **Data Dictionary (`DATA_DICTIONARY.md`)**: Defines categorical data mapping. Translates varied `user_type` into 5 coherent Actor Classes (`Big_Industry`, `SME_Industry`, `Science`, `Associations`, `Civil_Public`).
- **Density-Driven Mitosis**: Text chunks were vectorized via `BAAI/bge-m3` embeddings to find their nearest L1 taxonomy node. If a node grew too dense ("fat node"), a clustering split using `gpt-4o-mini` and `Gemini-3-Flash` iteratively generated Sub-level 2 topics.

## Models Used

- **BAAI/bge-m3**: Used for generating high-quality vector embeddings to route text chunks to semantic bins during the Density-Driven Mitosis taxonomy generation.
- **GPT-4o-mini**: Used as a fast extraction model to propose potential sub-topic labels during taxonomy splitting.
- **Gemini-1.5-Flash (or similar Reasoning Models via OpenRouter)**: 
  - **The Scanner**: Scans 400-word chunks against the 100+ concept taxonomy to identify the *presence* of relevant concepts. This stage utilized prompt caching to handle massive contexts cheaply.
  - **The Classifier**: Evaluates the *stance* (`SUPPORT`, `OPPOSE`, `NEUTRAL`, `DETECTED`) of a given chunk against a specific concept. It explicitly outputs a `reasoning` trace and extracted quote for full analytical auditability.
- **Network Models**: NetworkX, Scipy (for spectral decomposition), and Degree-Corrected Stochastic Block Models (DC-SBM).

## Networks Used

The analysis hinges on converting textual discourse into a mathematical network topology to identify political coalitions.

### Network Construction
- **Bipartite Multiplex Graph**: Maps "Actors" (stakeholders) to "Concepts" (policy arguments).
- **Edges**: Weighted links represent stance (`SUPPORT` mapping functionally to +1). Neutral edges were pruned to isolate political alignment vectors. Every edge stores the LLM's `reasoning` trace.

### The "Consensus Trap" and Filtering
- Initial construction created a "hairball" graph (Density: 0.90) because almost all actors universally agreed on *Problem Definitions* and utilized similar *Evidence Types*.
- **Discriminant Dimension Pivot**: The graph was mathematically filtered down to a **Policy Instrument Network** only (163 Actors x 62 Concepts, 1,713 edges). Stances on *solutions* proved to be the true proxy for political division.
- **Inverse Frequency Weighting (IFW)**: A metric $\phi(c) = 1 - \frac{N_{connected}}{N_{total\_actors}}$ was applied to penalize "cheap talk" consensus terms (e.g., "Sustainability") and heighten the signal of discriminatory policy concepts.

### Coalitional Analysis (The 3-Way Bake-Off)
Algorithms tested:
1. **Leiden (One-Mode Projection)**: Failed (found a single giant consensus component).
2. **Stochastic Block Models (SBM)**: Failed (identified 15 meaningless blocks driven by density/chattiness rather than ideology).
3. **Spectral Clustering**: **Successful**. Using Eigenvector decomposition of the Normalized Laplacian on the actor-projection matrix (specifically the Fiedler Vector), the algorithm identified 8 statistical blocks based on *gradients of alignment* rather than uniform density.

### Final Outputs and `coalition_profiles.json`
The analysis generated 8 structural clusters, mapped to "Tribes". Profiles include actor class composition and concept "lifts" (how heavily a community over-indexes on a concept vs. the average).
- **Cluster 1 (The Manufacturing Core / Heavy Industry)**: 43 actors. Dominated by Associations (30%) and Science (28%). High lift on SME Support, Defense-Specific Material Applications, Harmonized Certification.
- **Cluster 7 (The R&D Ecosystem / Deep Tech)**: 41 actors. Heavily dominated by Science (54%). High lift on Data Infrastructure, Shared Research Infrastructure, Digital Twins.
- **Cluster 3 (The Governance Guards / Civil Society)**: 12 actors. Civil/Public (67%). High lift on Stakeholder Engagement, Testing Protocols, Regulatory Harmonization.
- **Cluster 0 (The Green Market Builders / Bio-Economy)**: 18 actors. Civil/Public (33%) and Big Industry. High lift on Bio-based Innovation, Market Access, VC Finance.
- **Cluster 5 (The Regulation Pragmatists / Bureaucracy Busters)**: 30 actors. Associations (43%), Big Industry and SME Industry. High lift on Fast-Track Approvals, Administrative Streamlining, Local Content Targets.
- Minor clusters (2, 4, 6) capture highly specialized niches (e.g. Cluster 2 - Environmental risks, entirely Associations).

---
## Source Code & Architecture Deep Dive
- **`scripts/build_network.py`**: This script constructs the Master Multiplex Graph. It processes the text classifications into edge weights (SUPPORT = 1, OPPOSE = -1, and discards NEUTRAL). Crucially, Evidence types are automatically attributed a functionally equal +1 weight for "DETECTED" since evidence cannot be "supported" or "opposed". It also integrates the scraped Transparency Register financial metrics directly into the NetworkX actor nodes.
- **`scripts/analyze_dna_spectral.py`**: Handles the math for the "Bake-Off" winner. First applies the $\phi$ weighting algorithm to the bipartite matrix (Actors $\times$ Concepts). Then it computes a One-Mode Projection ($P = B \times B^T$) resulting in a square Actor-Actor similarity matrix. `sklearn.cluster.SpectralClustering(n_clusters=5)` is executed on this matrix to assign the `coalition_id` to each stakeholder. The Fiedler vector embedding is simultaneously extracted to place concepts on the same topological grid.

## Potential Areas for Future Improvement
1. **Deeper Semantic Modeling for "Neutral" Positions**: Currently, neutral edges are dropped to isolate political vectors. However, "Neutrality" might signal nuanced hesitation or specific conditional support that is currently lost.
2. **Dynamic Evidence Tracking**: Integrating a system to mathematically differentiate between "Methodological Assertions" vs. "Empirical Measurements" could yield more nuanced epistemic networks.
3. **Continuous Data Ingestion**: The pipeline relies on a batch-scraped static dataset. Evolving this into an automated, streaming data intake mechanism via native APIs for continuous monitoring would improve utility.
