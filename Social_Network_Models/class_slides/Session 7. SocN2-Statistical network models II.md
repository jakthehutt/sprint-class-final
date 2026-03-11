Social Networks 2—Social Networks in 
Cultural and Scientific Fields
Session 7 – Statistical Network Models II
February 2026 | 1.30 pm | A-103
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

Session 7 – Statistical network models II
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)
•
Models for longitudinal data, stochastic actor-oriented models (SAOMs)
•
Methodological background of the models, discussion of link function, 
estimation procedures etc.


--- PAGE BREAK ---

Stochastic actor-oriented models (SAOMs)
•
What are the basic ideas behind SAOMs?
•
Can you provide an intuition how the models arrive at the parameters? 
•
What are differences of SAOMs in comparison to ERGMs or other methods you know 
from your studies?
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

SAOMs: model architecture
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)
Objective function:
Parameters aka. 
weights
State of the 
network
Effects, i.e., network structures focal 
actor i can choose from, for instance:
Focal actor aka. 
ego
Sum over all effects 


--- PAGE BREAK ---

Intuition behind obtaining parameters
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)
Pink, S., Kretschmer, D., & Leszczensky, L. (2020). Choice modelling in social networks using stochastic actor-oriented models. Journal of choice modelling, 34,


--- PAGE BREAK ---

DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)
Example: Selection and Influence Processes in School


--- PAGE BREAK ---



--- PAGE BREAK ---



--- PAGE BREAK ---

Additional examples from Snijders 2010


--- PAGE BREAK ---

Introduction to estimation of 
SAOM parameters 


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
(e.g., relative importance of parameters)
e.g., Maximum 
likelihood
Rate function and 
objective function


--- PAGE BREAK ---

Example selection of a focal actor who can change 
the network structure
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

Model architecture of SAOMs in detail: 
opportunities for change
For details see: Snijders, T. A. (2017). Stochastic actor-oriented models for network dynamics. Annual review of statistics and its application, 4(1), 343-363.
Rate function lambda ist summarizing the 
parameters in alpha for each actor in the 
network and determines the opportunities for 
change (i.e., the waiting time for each actor in 
the mini-step process); Pi is giving us the 
probability of actor i to be the focal actor that 
can make a change
We can make the rate function dependent 
on positional characteristics of actors, 
expressed by uik between arbitrary 
timesteps captured by rho


--- PAGE BREAK ---

DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)
Example for a focal actor i determining which 
options to choose in a mini-step


--- PAGE BREAK ---

For details see: Snijders, T. A. (2017). Stochastic actor-oriented models for network dynamics. Annual review of statistics and its application, 4(1), 343-363.
Objective function given parameters 
betak for network effects sik
The conditional probability that the
next digraph is x, given that the current digraph 
is x0 and actor i gets the opportunity to make a
change, is assumed to be given by the 
multinomial model
Model architechture of SAOMs in detail: 
options for change
A small selection of potential effects that can be 
included in the objective function à analysts 
choice: theory + data-driven assessment which 
effects work and matter


--- PAGE BREAK ---

For details see: Snijders, T. A. (2017). Stochastic actor-oriented models for network dynamics. Annual review of statistics and its application, 4(1), 343-363.
We want to estimate this 
vector of parameters theta:
For each type of parameters we define an one-dimensional statistic that is senstive to the respective parameters:
1. For rho (the total amount of change) we use the Hamming distance between network states.
2. For alpha (determining how strongly the rate of change for actor i is influenced by ui k (X )), we use the second statistic.
3. For beta (network effects), the third statistic is used, which is sensitive to sik
Methods of moments estimation for SAOMs I


--- PAGE BREAK ---

For details see: Snijders, T. A. (2017). Stochastic actor-oriented models for network dynamics. Annual review of statistics and its application, 4(1), 343-363.
Can be solved with Robbins-Monro algorithm, see 
Snijders, T. A. (2001). The statistical evaluation of social network 
dynamics. Sociological methodology, 31(1), 361-395.
Methods of moments estimation for SAOMs II


--- PAGE BREAK ---

Model diagnostics: Goodness of fit (GOF) example 


--- PAGE BREAK ---

Some model extensions
•
SAOMs for co-evolution of networks and behavior
•
Multiplex SAOMs for co-evolution of multiple types of ties
•
Bi-partite SAOMs
•
Bayesian SAOMs, especially for pooling many networks in one model, increasing 
usage over the last decade
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

Summary
•
SAOMs allow to model the evolution of networks by considering how focal actors form, 
delete, or maintain ties
•
Interpretation of parameters similar to logOdds in logistic regression models
•
Typical way to obtain parameters is method of moments or maximum likelihood
•
Goodness of fit is assessed by simulating networks from an estimated SAOM and checking 
whether network properties of simulated networks are similar to empirical network
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

Organizational details
•
Last two weeks of the term will be dedicated to student presentations, each group should prepare a 
~15 minutes presentation, slots will be distributed next week before we start the workshop part.  
•
Next week will be half discussion, half lab session. Bring your laptops and pre-install Rsiena
•
If you want to dive deeper into SAOMs, see the slides from Koskinen and Snijders that I uploaded in 
Moodle and read the additional texts on technical foundation of the models
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

Readings for next week
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)
Lewis, K., & Kaufman, J. (2018). The conversion of cultural tastes into social 
network ties. American journal of sociology, 123(6), 1684-1742.
Try to get the basic Rsiena script running on your laptop: 
https://www.stats.ox.ac.uk/~snijders/siena/


--- PAGE BREAK ---

Thank you for your attention!
DEPARTMENT OF NETWORK AND DATA SCIENCE (DNDS)


--- PAGE BREAK ---

