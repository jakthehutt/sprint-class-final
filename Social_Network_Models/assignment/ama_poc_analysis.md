# AMA Consultation DNA PoC Analysis

## Overview
The `ama-consultation-dna-poc` repository is a Proof of Concept (PoC) pipeline designed to analyze the EU Advanced Materials Act (AMA) public consultation using Discourse Network Analysis (DNA). It covers a complete pipeline including data acquisition, taxonomy generation, LLM-based classification, network construction, coalition analysis, and an interactive dashboard.

## Data Used
* *Pending further investigation into `data/` directory and `documentation.md`.*

## Models Used
- The project utilizes LLM-based classification via **OpenRouter**. The `requirements.txt` specifies `openai`, `anthropic`, and `sentence-transformers`, indicating that models from OpenAI (like GPT-4), Anthropic (like Claude), or local/open-weight models accessed via OpenRouter are likely used for classification tasks.
- `sentence-transformers`, `scikit-learn`, and `torch` are used, likely for embedding generation and clustering/classification of text.

## Networks Used
- Mentions Stochastic Block Modeling (SBM) and Spectral clustering.
- Uses `networkx` for network construction and analysis.

---
*To be extended iteratively...*
