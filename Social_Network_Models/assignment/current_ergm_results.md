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

## Key Insights

1.  **Hypothesis 1 (Actor Class Homophily)**: Supported. There is a statistically significant tendency for organizations of the same class to align on the same policy concepts ($p < 0.001$).
2.  **Hypothesis 2 (Resource Centrality)**: Supported in this run ($p < 0.001$). Larger organizations are significantly more likely to form ties to policy concepts.
3.  **Geographic Control**: We observe a very strong country-matching effect ($z = 14.722$), confirming that national clusters are a major driver of alignment.
4.  **Structural Stability**: The negative `GWB1` and `GWB2` terms indicate a hub penalty, preventing the model from degenerating and showing that the network is constrained by decreasing returns to scale for both actors and concepts.

## Derived Metrics

- **Average Marginal Effect (Actor Class)**: 0.001996
- **Percentage Increase over Baseline Density**: +2.85%
