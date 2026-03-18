# Walkthrough: Multivariate ERGM Results

I have successfully run the advanced multivariate ERGM specification. This model tests our core hypotheses while controlling for exogenous attributes (Country) and endogenous structural tendencies (GW-Degree).

## Results Table

The table below summarizes the parameter estimates from the model:

| Parameter                             | Estimate   | Std. Error | z value    | Pr(>\|z\|) | Significance |
| :------------------------------------ | :--------- | :--------- | :--------- | :--------- | :----------- |
| **Edges**                             | -4.0760    | 0.1405     | -29.008    | < 0.0001   | ***          |
| **Actor Class Homophily**             | 0.0248     | 0.0068     | 3.649      | 0.00026    | ***          |
| **Organization Size**                 | 0.5444     | 0.0619     | 8.789      | < 0.0001   | ***          |
| **Country Homophily**                 | 0.1840     | 0.0125     | 14.722     | < 0.0001   | ***          |
| **Actor Hub Penalty (GWB1)**          | -4.1940    | 0.1397     | -30.032    | < 0.0001   | ***          |
| **Concept Popularity Penalty (GWB2)** | -18340.0   | 1.0530     | -17407.6   | < 0.0001   | ***          |

> [!NOTE]
> Significance codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

### Top 15 Actors by Degree (Network Centrality)

| Organization | Degree | Size Category | Actor Class |
| :--- | :--- | :--- | :--- |
| Hungarian Academy of Engineering | 84 | Micro (1 to 9 employees) | Science |
| Maria Ksenia Witte, Arise Innovations | 67 | Micro (1 to 9 employees) | SME_Industry |
| EIT RawMaterials | 56 | Medium (50 to 249 employees) | SME_Industry |
| Leonardo SpA | 47 | Large (250 or more) | Big_Industry |
| ASD Europe | 38 | Small (10 to 49 employees) | Associations |
| Safran | 36 | Large (250 or more) | Big_Industry |
| Innovative Advanced Materials Initiative (IAM-I) | 36 | Large (250 or more) | Civil_Public |
| Nanotechnology Industries Association (NIA) | 36 | Micro (1 to 9 employees) | Associations |
| Centre Technique Industriel de la Plastugie et des Composites | 36 | Medium (50 to 249 employees) | Science |
| Eindhoven University of Technology | 35 | Large (250 or more) | Science |
| German Chemical Industry Association VCI | 35 | Medium (50 to 249 employees) | Associations |
| PIEP | 33 | Medium (50 to 249 employees) | Science |
| ECP4 - European Composites Plastics and Polymers Processing Platform | 33 | Micro (1 to 9 employees) | Science |
| EFCA - European Federation of Engineering Consultancy Associations | 31 | Micro (1 to 9 employees) | Associations |
| European Materials Informatics Network | 31 | Large (250 or more) | Civil_Public |


### Degree Statistics by Organization Size

| Size Category | Mean Degree | Max Degree | Count |
| :--- | :--- | :--- | :--- |
| Micro (1 to 9 employees) | 18.31 | 84 | 42 |
| Medium (50 to 249 employees) | 16.57 | 56 | 21 |
| Large (250 or more) | 15.46 | 47 | 69 |
| Small (10 to 49 employees) | 14.97 | 38 | 35 |

## Analysis of Discrepancies (Why Hypothesis 2 changed)

The results for **Hypothesis 2 (Resource Centrality)** shifted to a significant $p < 0.001$ because the model reached an unstable state (degeneracy):

1.  **Raw Data Contradiction**: As shown in the tables above, **Micro organizations actually have the highest mean degree (18.31)** and the highest individual degree (84). The ERGM estimate of **0.5444** (positive) incorrectly suggests that larger organizations are more connected.
2.  **Structural Penalty Blowout**: The `gwb2deg` (Concept Popularity Penalty) diverged to **-18340**. This extreme structural "block" forces other parameters to take on extreme, often counter-intuitive values to fit the remaining network density.
3.  **Conclusion**: Do not trust the Hypothesis 2 result from this run. The raw data and previous non-significant results are more reliable indicators of the actual network dynamics.

## Model Instability Comparison

To verify the reliability of these results, I ran the exact same script a second time. The results changed drastically, confirming **mathematical degeneracy**:

| Parameter | Run 1 Estimate | Run 2 Estimate | Change |
| :--- | :--- | :--- | :--- |
| **Actor Class Homophily** | 0.0248 | 0.0547 | +120% |
| **Organization Size** | 0.5444 | 0.2401 | -56% |
| **Actor Hub Penalty (GWB1)** | **-4.194** | **+32.96** | **SIGN FLIP** |
| **Concept Popularity (GWB2)** | **-18,340** | **+1,438,000** | **EXPLOSION** |

### Proof of Degeneracy
- **Sign Flipping**: The `gwb1deg` parameter flipped from negative (penalty) to positive (bias), which is a classic sign of an unstable model.
- **Coefficient Explosion**: `gwb2deg` moved from -18k to +1.4M. This indicates the model is "jumping" between extreme boundaries of the parameter space rather than converging to a stable solution.
- **Inference Warning**: Because the model is degenerate, **none of the p-values or estimates are reliable**. The significance observed for Hypothesis 2 (Organization Size) is a random byproduct of this mathematical instability.

> [!CAUTION]
> The ERGM has failed to converge to a stable solution. The results are mathematically unsound and should not be used in the final report. The previous non-significant results for Hypothesis 2 (where the model was stable) are the only reliable findings.
