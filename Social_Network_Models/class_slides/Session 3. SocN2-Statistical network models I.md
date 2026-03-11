Social Network Analysis with 
Statistical Network Models
Session 3 – Statistical Network Models I
January 2025 | 8.50 am | B-216
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

Session 3 – Statistical network models I
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)
•
Model for cross-sectional data, 
exponential random graph models 
(ERGMs)
•
Methodological background of the 
models, discussion of link function, 
estimation procedures etc.


--- PAGE BREAK ---

Block models
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)
Finding blocks of structurally equivalent nodes:
White, H. C., Boorman, S. A., & Breiger, R. L. (1976). Social 
structure from multiple networks. I. Blockmodels of roles 
and positions. American journal of sociology, 81(4), 730-
780.
https://www.researchgate.net/figure/Stochastic-block-modeling-identifies-network-
communities-HVR-6-is-shown-in-two-forms_fig7_257839768


--- PAGE BREAK ---

Block models example 
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)
Doreian, P., Batagelj, V., & Ferligoj, A. (2005). Positional analyses of 
sociometric data. Models and methods in social network analysis, 77, 77-96.


--- PAGE BREAK ---

Statistical network models
•
What are the basic ideas behind statistical network models?
•
How are dependencies between ties treated in network models, what is the difference 
compared to (logistic) regressions?
•
What are differences of ERGMs in comparison to the methods we discussed last week 
or other methods you know from your studies?
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

ERGMs: model architecture
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

Intuition behind obtaining parameters
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)
Example: Intra-firm communication network


--- PAGE BREAK ---



--- PAGE BREAK ---

Model interpretation


--- PAGE BREAK ---



--- PAGE BREAK ---

Introduction to estimation of 
ERGM parameters 


--- PAGE BREAK ---

Overview
1. Define statistical model, relationship between 
dependent variable and a vector of independent variables
2. Derivation of estimates for coefficients and standard 
errors via estimation method, e.g., OLS, ML, MCMC, MoM, 
etc. à can be frequentist or Bayesian
3. Implementation of estimation procedure in statistical 
software
4. Estimation of models with empirical data
5. Postestimation: Goodness of fit (GOF), other model 
diagnostics, additional transformations for interpretation 
(e.g., average marginal effects)
e.g., 
Maximum 
likelihood
Joint form of 
the ERGM


--- PAGE BREAK ---

Maximum likelihood
First derivative 
according to theta gives 
us the score vector 
For details see: https://discdown.org/microeconometrics/maximum-likelihood-estimation-1.html


--- PAGE BREAK ---

Example: Bernoulli experiment 


--- PAGE BREAK ---

MLE for ERGMs
For details, see: https://arxiv.org/pdf/1708.02598


--- PAGE BREAK ---

Markov Chains 
Transition matrix
Transition probabilities
State of the system
For details, see Moore, W. H., & Siegel, D. A. (2013). A mathematics course for political and social research. Princeton 
University Press. Section IV, Part 14


--- PAGE BREAK ---

Monte Carlo Markov Chains (MCMC)
z1
z2
z3
z4
z5
z6


--- PAGE BREAK ---

Exapmle MCMC for edge count
For details see: Lusher, D., Koskinen, J., & Robins, G. (Eds.). (2013). Exponential random graph models for social 
networks: Theory, methods, and applications. Cambridge University Press. Chapter 12 &13


--- PAGE BREAK ---



--- PAGE BREAK ---

Model diagnostics: Goodness of fit (GOF) example 
For details see: Lusher, D., Koskinen, J., & Robins, G. (Eds.). (2013). Exponential random graph models for social 
networks: Theory, methods, and applications. Cambridge University Press. Chapter 12&13


--- PAGE BREAK ---

Summary
•
ERGMs allow to model tie formation processes producing the global structure of empirical 
networks
•
Interpretation of parameters similar to logOdds in logistic regression models
•
Typical way to obtain parameters is approximation of maximum likelihood via MCMC
•
Goodness of fit is assessed by simulating networks from an estimated ERGM and checking 
whether network properties of simulated networks are similar to empirical network
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

Organizational details
•
Next week will be half discussion, half lab session. Bring your laptops and pre-install R and 
R Studio
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

Readings for next week
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)
Wittek, M., Bartenhagen, C., & Berthold, F. (2023). The development of stratification and segregation 
in a new scientific field: A study of collaboration among scientists in neuroblastoma research 
between 1975 and 2016. Social Networks, 72, 80-107.
Optional but highly recommended: 
Luke, D. A. (2015). A user's guide to network analysis in R (Vol. 72, No. 10.1007, pp. 978-3). 
Cham: Springer.


--- PAGE BREAK ---

Thank you for your attention!
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

