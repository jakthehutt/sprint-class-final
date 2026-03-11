An Introduction to
Stochastic Actor Oriented Models
Tom A.B. Snijders and Johan H. Koskinen
ReMiSS, University of Oxford
Nufﬁeld College, Oxford
Statistical Models for Social Networks, June 2010
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
1
/ 157
Introduction
Where are we @?
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
2
/ 157


--- PAGE BREAK ---

Introduction
What type of data do we want to explain
Example: Studies Gerhard van de Bunt
Longitudinal study: panel design.
▶Study of 32 freshman university students,
7 waves in 1 year.
See van de Bunt, van Duijn, & Snijders,
Computational & Mathematical Organization Theory,
5 (1999), 167 – 192.
This data set can be pictured by the following graphs
(arrow stands for ‘best friends’).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
3
/ 157
Introduction
Friendship network time 1.
Average degree 0.0; missing fraction 0.0.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
4
/ 157


--- PAGE BREAK ---

Introduction
Friendship network time 2.
Average degree 0.7; missing fraction 0.06.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
5
/ 157
Introduction
Friendship network time 3.
Average degree 1.7; missing fraction 0.09.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
6
/ 157


--- PAGE BREAK ---

Introduction
Friendship network time 4.
Average degree 2.1; missing fraction 0.16.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
7
/ 157
Introduction
Friendship network time 5.
Average degree 2.5; missing fraction 0.19.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
8
/ 157


--- PAGE BREAK ---

Introduction
Friendship network time 6.
Average degree 2.9; missing fraction 0.04.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
9
/ 157
Introduction
Friendship network time 7.
Average degree 2.3; missing fraction 0.22.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
10
/ 157


--- PAGE BREAK ---

Introduction
What type of data do we want to explain
Data represented as adjacency matrices
where elements change
x(t0) =








.
0
0
0
1
1
.
0
0
0
1
1
.
0
0
0
0
0
.
0
0
0
1
1
.








t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
11
/ 157
Introduction
What type of data do we want to explain
Data represented as adjacency matrices
where elements change
x(t1) =








.
1
0
0
1
1
.
0
0
0
1
0
.
0
0
0
0
0
.
0
1
0
1
1
.








t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
12
/ 157


--- PAGE BREAK ---

Introduction
What type of data do we want to explain
Data represented as adjacency matrices
where elements change
x(t2) =








.
1
0
1
1
1
.
0
0
1
1
1
.
0
0
0
0
0
.
0
1
0
0
1
.








t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
13
/ 157
Introduction
What type of data do we want to explain
If an element xij has changed
from
xij(t0) = 0
to
xij(t1) = 1
something has changed inbetween t0 and t1
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
14
/ 157


--- PAGE BREAK ---

Introduction
1
0
1
xij(t0) = 0
xij(t1) = 1
t
t′
Change at t′
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
15
/ 157
Introduction
1
0
1
xij(t0) = 0
xij(t1) = 1
t
t′
Change at t′
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
16
/ 157


--- PAGE BREAK ---

Introduction
1
0
1
xij(t0) = 0
xij(t1) = 1
t
t′
Change at t′
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
17
/ 157
Introduction
1
0
1
xij(t0) = 0
xij(t1) = 1
t
t′
t′′
t′′′
Change at t′, t′′, and t′′
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
18
/ 157


--- PAGE BREAK ---

Introduction
1
0
1
xij(t0) = 0
xij(t1) = 1
t
1
0
1
xkj(t0) = 1
xkj(t1) = 0
t
i
j
k
i
j
k
i
j
k
i
j
k
i
j
k
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
19
/ 157
Introduction
1
0
1
xij(t0) = 0
xij(t1) = 1
t
1
0
1
xkj(t0) = 1
xkj(t1) = 0
t
i
j
k
i
j
k
i
j
k
i
j
k
i
j
k
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
20
/ 157


--- PAGE BREAK ---

Introduction
1. How model the change in ties?
As evolution is observed only at a few moments
we use a continuous-time model to
⊚represent feedback of the process,
where (unobserved) changes lead to new changes
We assume a Markov process formulated in terms of the
(unobserved) embedded chain. The model is composed of
⊚Ministeps (one-step change probabilities), and
⊚Holding times.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
21
/ 157
Introduction
Ministeps: moves between states in Walk on 2-cube
 
i
j
i
j
i
j
i
j
(0,0)
(xij,0) 
(0,1)
(1,0)
(1,1)
(xij,1) 
(0,xji) 
(1,xji) 
Nodes in 2-cube
Ties between neighbouring nodes correspond to difference
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
22
/ 157


--- PAGE BREAK ---

Introduction
Walk on 3-cube
 
i
j
xij
k
i
j
k
i
j
k
xjk
xik
i
j
k
i
j
k
i
j
k
i
j
k
i
j
k
Graphs on 3 vertices
Corresponding 3-cube
Note one-edge difference correspond to coordinate
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
23
/ 157
Introduction
How to model the change in ties?
The time between changes mostly a nuisance.
The central part of SAOM is modelling the Ministeps.
In SAOM the change of one tie-variable
is seen as the outcome of a decision of one actor
to make a change to one of her out-going ties .
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
24
/ 157


--- PAGE BREAK ---

Introduction
Opportunity for change
 
 
1
- 0 1 0
0 - 1 0
10 - 1
00 0 -
x =
1
2
3
4
1
2
3
4
1
3
4
1
2
3
4
1
2
3
4
- 1 1 0
0 - 1 0
1 0 - 1
0 0 0 -
x (1↝2)=
- 0 0 0
0 - 1 0
1 0 - 1
0 0 0 -
x (1↝3)=
- 0 1 1
0 - 1 0
1 0 - 1
0 0 0 -
x (1↝4)=
 
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
25
/ 157
Introduction
How model the change in ties?
Conditional on an actor having an opportunity for change the
probability for each outcome
⊚modelled like multinomial logistic regression
⊚reﬂects the ‘attractiveness’ of the outcome to actor who makes
change
⊚may be regarded as result of myopic optimization.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
26
/ 157


--- PAGE BREAK ---

Model
Purpose of statistical inference:
investigate network evolution (dependent var.) as function of
1. structural effects (reciprocity, transitivity, etc.)
2. explanatory actor variables (independent vars.)
3. explanatory dyadic variables (independent vars.)
simultaneously.
By controlling adequately for structural effects, it is possible
to test hypothesized effects of variables on network dynamics
(without such control these tests would be incomplete).
The structural effects imply that the presence of ties
is highly dependent on the presence of other ties.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
27
/ 157
Model
Principles for this approach
to analysis of network dynamics:
1. use simulation models as models for data
2. comprise a random inﬂuence in the simulation model
to account for ‘unexplained variability’
3. use methods of statistical inference
for probability models implemented as simulation models
4. for panel data: employ a continuous-time model
to represent unobserved endogenous network evolution
5. condition on the ﬁrst observation and do not model it:
no stationarity assumption.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
28
/ 157


--- PAGE BREAK ---

Model
Notation and assumptions
1. Actors i = 1, . . . , n (individuals in the network),
pattern X of ties between them : one binary network X;
Xij = 0, or 1 if there is no tie, or a tie, from i to j. Matrix X is
adjacency matrix of digraph.
Xij is a tie indicator or tie variable.
2. Exogenously determined independent variables:
actor-dependent covariates v, dyadic covariates w.
These can be constant or changing over time.
3. Continuous time parameter t,
observation moments t1, . . . , tM.
4. Current state of network X(t) is dynamic constraint for its own
change process: Markov process.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
29
/ 157
Model
Actor-based model:
5. The actors control their outgoing ties.
6. The ties have inertia: they are states rather than events.
At any single moment in time,
only one variable Xij(t) may change.
7. Changes are modeled as
choices by actors in their outgoing ties,
with probabilities depending on ‘objective function’
of the network state that would obtain after this change.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
30
/ 157


--- PAGE BREAK ---

Model
The change probabilities can (but need not)
be interpreted as arising from goal-directed behavior,
in the weak sense of myopic stochastic optimization.
Assessment of the situation is represented by
objective function, interpreted as
‘that which the actors seem to strive after in the short run’.
Next to actor-driven models,
also tie-driven models are possible.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
31
/ 157
Model
At any given moment, with a given current network structure,
the actors act independently, without coordination.
They also act one-at-a-time.
The subsequent changes (‘mini-steps’) generate
an endogenous dynamic context
which implies a dependence between the actors over time;
e.g., through reciprocation or transitive closure
one tie may lead to another one.
This implies strong dependence between what the actors do,
but it is completely generated by the time order:
the actors are dependent because they constitute
each other’s changing environment.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
32
/ 157


--- PAGE BREAK ---

Model
The change process is decomposed into two sub-models,
formulated on the basis of the idea that the actors i control
their outgoing ties (Xi1, . . . , Xin):
1. waiting times until the next opportunity
for a change made by actor i:
rate functions;
2. probabilities of changing (toggling) Xij,
conditional on such an opportunity for change:
objective functions.
The distinction between rate function and objective function
separates the model for how many changes are made
from the model for which changes are made.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
33
/ 157
Model
This decomposition between the timing model and the
model for change can be pictured as follows:
At randomly determined moments t,
actors i have opportunity to change a tie variable Xij:
mini step.
(Actors are also permitted to leave things unchanged.)
Frequency of mini steps is determined by rate functions.
When a mini step is taken,
the probability distribution of the result of this step
depends on the objective function :
higher probabilities of moving toward new states
that have higher values of the objective function.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
34
/ 157


--- PAGE BREAK ---

Model
Speciﬁcation: rate function
‘how fast is change / opportunity for change ?’
Rate of change of the network by actor i is denoted λi :
expected frequency of changes by actor i between observations.
Simple speciﬁcation: rate functions are constant within periods.
More generally, rate functions can depend on observation period
(tm−1, tm),
actor covariates, and network position (degrees etc.),
through an exponential link function.
Formally, for a certain short time interval (t, t + ϵ),
the probability that this actor randomly gets an opportunity
to change one of his/her outgoing ties, is given by ϵ λi .
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
35
/ 157
Model
Speciﬁcation: objective function
‘what is the direction of change?’
The objective function fi(β, x) indicates
preferred ‘directions’ of change.
β is a statistical parameter, i is the actor (node), x the network.
When actor i gets an opportunity for change,
he has the possibility to change one outgoing tie variable Xij,
or leave everything unchanged.
By x(i ; j) is denoted the network obtained
when xij is changed (‘toggled’) into 1 −xij .
Formally, x(i ; i) is deﬁned to be equal to x.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
36
/ 157


--- PAGE BREAK ---

Model
Conditional on actor i being allowed to make a change,
the probability that Xij changes into 1 −Xij is
pij(β, x) =
exp
 fi(β, x(i ; j))

n
X
h=1
exp
 fi(β, x(i ; h))

,
and pii is the probability of not changing anything.
Higher values of the objective function indicate
the preferred direction of changes.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
37
/ 157
Model
One way of obtaining this model speciﬁcation is to suppose
that actors make changes such as to optimize
the objective function fi(β, x)
plus a random disturbance that has a Gumbel distribution,
like in random utility models in econometrics:
myopic stochastic optimization,
multinomial logit models.
Actor i chooses the “best” j by maximizing
fi
 β, x(i ; j)

+
Ui(t, x, j) .
⇑
random component
(with the formal deﬁnition x(i ; i) = x).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
38
/ 157


--- PAGE BREAK ---

Model
For a convenient distributional assumption,
(U has type 1 extreme value = Gumbel distribution)
given that i is allowed to make a change,
the probability that i changes the tie variable to j,
or leaves the tie variables unchanged (denoted by j = i), is
pij(β, x) =
exp
 f(i, j)

n
X
h=1
exp
 f(i, h)

where
f(i, j) = fi
 β, x(i ; j)

and pii is the probability of not changing anything.
This is the multinomial logit form of a random utility model.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
39
/ 157
Model
Objective functions will be deﬁned as sum of:
1. evaluation function expressing satisfaction with network;
2. endowment function
expressing aspects of satisfaction with network
that are obtained ‘free’ but are lost at a value
(to allow asymmetry between creation and deletion of ties).
Evaluation function and endowment function modeled
as linear combinations of theoretically argued components
of preferred directions of change. The weights in the linear
combination are the statistical parameters.
The focus of modeling is ﬁrst on the evaluation function;
then on the rate and endowment functions.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
40
/ 157


--- PAGE BREAK ---

Model
The objective function does not reﬂect the eventual ’utility’
of the situation to the actor, but short-time goals
following from preferences, constraints, opportunities.
The evaluation and endowment functions express
how the dynamics of the network process
depends on its current state.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
41
/ 157
Model
Computer simulation algorithm
for arbitrary rate function λi(α, ρ, x)
1. Set t = 0 and x = X(0).
2. Generate S according to the
exponential distribution with mean 1/λ+(α, ρ, x) where
λ+(α, ρ, x) =
X
i
λi(α, ρ, x) .
3. Select i ∈{1, ..., n} using probabilities
λi(α, ρ, x)
λ+(α, ρ, x) .
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
42
/ 157


--- PAGE BREAK ---

Model
4. Select j ∈{1, ..., n}, j ̸= i using probabilities pij(β, x).
5. Set t = t + S and x = x(i ; j).
6. Go to step 2
(unless stopping criterion is satisﬁed).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
43
/ 157
Model
Model speciﬁcation :
Simple speciﬁcation: only evaluation function;
no endowment function, periodwise constant rate function.
Evaluation function fi reﬂects network effects
(endogenous) and covariate effects (exogenous).
Covariates can be actor-dependentor dyad-dependent.
Convenient deﬁnition of evaluation function is a weighted sum
fi(β, x) =
L
X
k=1
βk sik(x) ,
where the weights βk are statistical parameters
indicating strength of effect sik(x).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
44
/ 157


--- PAGE BREAK ---

Model
What goes into the evaluation function?
 
 
1
- 0 1 0
0 - 1 0
10 - 1
00 0 -
x =
1
2
3
4
1
2
3
4
1
3
4
1
2
3
4
1
2
3
4
- 1 1 0
0 - 1 0
1 0 - 1
0 0 0 -
x (1↝2)=
- 0 0 0
0 - 1 0
1 0 - 1
0 0 0 -
x (1↝3)=
- 0 1 1
0 - 1 0
1 0 - 1
0 0 0 -
x (1↝4)=
 
Satisfaction with structure of new state
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
45
/ 157
Model
Choose possible network effects for actor i, e.g.:
(others to whom actor i is tied are called here i’s ‘friends’)
1. out-degree effect, controlling the density / average degree,
si1(x) = xi+ = P
j xij
2. reciprocity effect, number of reciprocated ties
si2(x) = P
j xij xji
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
46
/ 157


--- PAGE BREAK ---

Model
Four potential effects representing network closure:
3. transitive triplets effect,
number of transitive patterns in i’s ties
(i →j, j →h, i →h)
si3(x) = P
j,h xij xjh xih
i
h
j
transitive triplet
4. transitive ties effect,
number of actors j to whom i is tied indirectly
(through at least one intermediary: xih = xhj = 1 )
and also directly xij = 1),
si4(x) = #{j | xij = 1, maxh(xih xhj) > 0}
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
47
/ 157
Model
5. indirect ties effect,
number of actors j to whom i is tied indirectly
(through at least one intermediary: xih = xhj = 1 )
but not directly xij = 0),
= number of geodesic distances equal to 2,
si5(x) = #{j | xij = 0, maxh(xih xhj) > 0}
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
48
/ 157


--- PAGE BREAK ---

Model
6. balance or structural equivalence,
similarity between outgoing ties of i
with outgoing ties of his friends,
si6(x) =
n
X
j=1
xij
g
X
h=1
h̸=i,j
 1 −|xih −xjh|

,
[note that
 1 −|xih −xjh|

= 1 if xih = xjh,
and 0 if xih ̸= xjh, so that
g
X
h=1
h̸=i,j
 1 −|xih −xjh|

measures agreement between i and j . ]
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
49
/ 157
Model
Differences between these three network closure effects:
▶transitive triplets effect: i more attracted to j
if there are more indirect ties i →h →j ;
▶transitive ties effect: i more attracted to j
if there is at least one such indirect connection ;
▶balance effect:
i prefers others j who make same choices as i.
Non-formalized theories usually do not distinguish
between these different closure effects.
It is possible to ’let the data speak for themselves’ and see
what is the best formal representation of closure effects.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
50
/ 157


--- PAGE BREAK ---

Model
7. in-degree related popularity effect, sum friends’ in-degrees
si7(x) = P
j xij √x+j = P
j xij
pP
h xhj
related to dispersion of in-degrees
(can also be deﬁned without the √sign);
8. out-degree related popularity effect,
sum friends’ out-degrees
si8(x) = P
j xij √xj+ = P
j xij
pP
h xjh
related to association in-degrees — out-degrees;
9. Outdegree-related activity effect ,
si9(x) = P
j xij
√xi+ = x1.5
i+
related to dispersion of out-degrees;
10. Indegree-related activity effect ,
si10(x) = P
j xij
√x+i = xi+
√x+i
related to association in-degrees — out-degrees;
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
51
/ 157
Model
11. three-cycle effect,
number of three-cycles in i’s ties
(i →j, j →h, h →i)
si11(x) = P
j,h xij xjh xhi
i
h
j
three-cycle
This represents a kind of generalized reciprocity,
and absence of hierarchy.
12. ... and potentially many others ...
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
52
/ 157


--- PAGE BREAK ---

Model
Assortativity effects:
Preferences of actors dependent on their degrees.
Depending on their own out- and in-degrees,
actors can have differential preferences for ties
to others with also high or low out- and in-degrees.
Together this yields 4 possibilities:
▶out ego - out alter degrees
▶out ego - in alter degrees
▶in ego - out alter degrees
▶in ego - in alter degrees
All these are product interactions between the two degrees.
Here also the degrees could be replaced by their square roots.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
53
/ 157
Model
Four kinds of evaluation function effect
associated with actor covariate vi.
This applies also to behavior variables Zh.
13. covariate-related popularity, ‘alter’
sum of covariate over all of i ’s friends
si13(x) = P
j xij vj;
14. covariate-related activity, ‘ego’
i’s out-degree weighted by covariate
si14(x) = vi xi+;
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
54
/ 157


--- PAGE BREAK ---

Model
15. covariate-related similarity,
sum of measure of covariate similarity
between i and his friends,
si15(x) = P
j xij sim(vi, vj)
where sim(vi, vj) is the similarity between vi and vj,
sim(vi, vj) = 1 −|vi −vj|
RV
,
RV being the range of V;
16. covariate-related interaction, ‘ego × alter’
si16(x) = vi
P
j xij vj;
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
55
/ 157
Model
Evaluation function effect for dyadic covariate wij :
17. covariate-related preference,
sum of covariate over all of i’s friends,
i.e., values of wij summed over all others to whom i is tied,
si17(x) = P
j xij wij .
If this has a positive effect, then the value of a tie i →j
becomes higher when wij becomes higher.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
56
/ 157


--- PAGE BREAK ---

Example
Example
Data collected by Gerhard van de Bunt:
group of 32 university freshmen,
24 female and 8 male students.
Three observations used here (t1, t2, t3) :
at 6, 9, and 12 weeks after the start of the university year.
The relation is deﬁned as a ‘friendly relation’.
Missing entries xij(tm) set to 0
and not used in calculations of statistics.
Densities increase from 0.15 at t1 via 0.18 to 0.22 at t3 .
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
57
/ 157
Example
Very simple model: only out-degree and reciprocity effects
Model 1
Effect
par.
(s.e.)
Rate t1 −t2
3.51
(0.54)
Rate t2 −t3
3.09
(0.49)
Out-degree
−1.10
(0.15)
Reciprocity
1.79
(0.27)
rate parameters:
per actor about 3 opportunities for change between observations;
out-degree parameter negative:
on average, cost of friendship ties higher than their beneﬁts;
reciprocity effect strong and highly signiﬁcant (t = 1.79/0.27 = 6.6).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
58
/ 157


--- PAGE BREAK ---

Example
Evaluation function is
fi(x) =
X
j

−1.10 xij + 1.79 xij xji

.
This expresses ‘how much actor i likes the network’.
Adding a reciprocated tie (i.e., for which xji = 1) gives
−1.10 + 1.79 = 0.69.
Adding a non-reciprocated tie (i.e., for which xji = 0) gives
−1.10,
i.e., this has negative beneﬁts.
Gumbel distributed disturbances are added:
these have variance π2/6 = 1.645 and s.d. 1.28.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
59
/ 157
Example
Conclusion: reciprocated ties are valued positively,
unreciprocated ties negatively;
actors will be reluctant to form unreciprocated ties;
by ‘chance’ (the random term),
such ties will be formed nevertheless
and these are the stuff on the basis of which
reciprocation by others can start.
(Incoming unreciprocated ties, xji = 1, xij = 0 do not play a role
because for the objective function
only those parts of the network are relevant
that are under control of the actor,
so terms not depending on the outgoing relations of the actor
are irrelevant.)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
60
/ 157


--- PAGE BREAK ---

Example
For an interpretation, consider the simple model
with only the transitive ties network closure effect. The estimates are:
Structural model with one network closure effect
Model 3
Effect
par.
(s.e.)
Rate t1 −t2
3.89
(0.60)
Rate t2 −t3
3.06
(0.47)
Out-degree
−2.14
(0.38)
Reciprocity
1.55
(0.28)
Transitive ties
1.30
(0.41)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
61
/ 157
Example
Example: Personal network of ego.
ego
A
B
C
D
E
F
G
for ego:
out-degree xi+ = 4
#{recipr. ties} = 2,
#{trans. ties } = 3.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
62
/ 157


--- PAGE BREAK ---

Example
The evaluation function is
fi(x) =
X
j

−2.14 xij + 1.55 xij xji + 1.30 xij max
h
 xih xhj


note: P
j xij maxh
 xih xhj

is #{trans. ties }

so its current value for this actor is
fi(x) = −2.14 × 4 + 1.55 × 2 + 1.30 × 3 = −1.56.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
63
/ 157
Example
Options when ‘ego’ has opportunity for change:
out-degr.
recipr.
trans. ties
gain
prob.
current
4
2
3
0.00
0.061
new tie to C
5
3
5
+2.01
0.455
new tie to D
5
2
4
+0.46
0.096
new tie to G
5
2
4
+0.46
0.096
drop tie to A
3
1
0
–3.31
0.002
drop tie to B
3
2
1
–0.46
0.038
drop tie to E
3
2
2
+0.84
0.141
drop tie to F
3
1
3
+0.59
0.110
The actor adds random inﬂuences to the gain (with s.d. 1.28),
and chooses the change with the highest total ‘value’.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
64
/ 157


--- PAGE BREAK ---

Example
Model with more structural effects
Model 3
Effect
par.
(s.e.)
Rate t1 −t2
4.64
(0.80)
Rate t2 −t3
3.53
(0.57)
Out-degree
–0.90
(0.58)
Reciprocity
2.27
(0.41)
Transitive triplets
0.35
(0.06)
Transitive ties
0.75
(0.45)
Three-cycles
–0.72
(0.21)
In-degree popularity (√)
–0.71
(0.27)
Conclusions:
Reciprocity, transitivity;
negative 3-cycle effect;
negative
popularity effect.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
65
/ 157
Example
Add effects of gender & program, smoking similarity
Model 4
Effect
par.
(s.e.)
Rate t1 −t2
4.71
(0.80)
Rate t2 −t3
3.54
(0.59)
Out-degree
–0.81
(0.61)
Reciprocity
2.14
(0.45)
Transitive triplets
0.33
(0.06)
Transitive ties
0.67
(0.46)
Three-cycles
–0.64
(0.22)
In-degree popularity (√)
–0.72
(0.28)
Sex (M) alter
0.52
(0.27)
Sex (M) ego
–0.15
(0.27)
Sex similarity
0.21
(0.22)
Program similarity
0.65
(0.26)
Smoking similarity
0.25
(0.18)
Conclusions:
Trans. ties now
not needed any more
to represent
transitivity;
men more popular;
program similarity.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
66
/ 157


--- PAGE BREAK ---

Example
To interpret the three effects of actor covariate gender,
it is more instructive to consider them simultaneously.
Gender was coded originally by with 1 for F and 2 for M.
This dummy variable was centered (mean was subtracted)
but this only adds a constant to the values presented next,
and does not affect the differences between them.
Therefore we may do the calculations with F = 0, M = 1.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
67
/ 157
Example
The joint effect of the gender-related effects
for the tie variable xij from i to j is
−0.15 zi + 0.52 zj + 0.21 I{zi = zj} .
i \
j
F
M
F
0.21
0.52
M
−0.15
0.58
Conclusion:
men seem not to like female friends...?
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
68
/ 157


--- PAGE BREAK ---

Example
Extended model speciﬁcation
1. Endowment effect gi(γ, x, j)
This represents the value of a tie
that is lost when the tie i →j is dissolved,
but that did not play a role when the tie was created.
This model component is used when certain effects
work differently for creation of ties (0 ⇒1)
than for termination of ties (1 ⇒0).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
69
/ 157
Example
With this extension, the relative log-probabilities are
fi
 β, x(i ; j)

−xij gi(γ, x, j) .
(Note that xij is the indicator of the current tie,
before the change.)
The endowment function again can be a weighted sum
gi(γ, x, j) =
H
X
h=1
γh rijh(x) .
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
70
/ 157


--- PAGE BREAK ---

Example
Examples of components of endowment function:
1. γ1 xji
γ1 extra beneﬁts of a reciprocated tie.
2. γ2 wij
effect of dyadic covariate wij
different for creating than for breaking a tie.
3. ... all other effects used also in the evaluation function.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
71
/ 157
Example
Add endowment effect of reciprocated tie
Model 5
Effect
par.
(s.e.)
Rate t1 −t2
5.45
(1.00)
Rate t2 −t3
4.05
(0.67)
Out-degree
–0.62
(0.59)
Reciprocity
1.39
(0.48)
Transitive triplets
0.38
(0.06)
Three-cycles
–0.60
(0.26)
In-degree popularity (√)
–0.70
(0.26)
Sex (M) alter
0.63
(0.26)
Sex (M) ego
–0.29
(0.30)
Sex similarity
0.29
(0.24)
Program similarity
0.78
(0.28)
Smoking similarity
0.34
(0.17)
Endowment reciprocated tie
2.18
(0.95)
Transitive ties
effect omitted.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
72
/ 157


--- PAGE BREAK ---

Example
Evaluation effect reciprocity: 1.39
Endowment reciprocated tie: 2.18
The overall (combined) reciprocity effect was 2.14.
With the split between the evaluation and endowment effects,
it appears now that the value of reciprocity
for creating a tie is 1.39,
and for withdrawing a tie 1.39 + 2.18 = 3.57.
Thus, there is a very strong barrier
against the dissolution of reciprocated ties.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
73
/ 157
Example
Extended model speciﬁcation
2. Non-constant rate function λi(α, x) .
This means that some actors change their ties
more quickly than others,
depending on covariates or network position.
Dependence on covariates:
λi(α, x) = ρm exp(
X
h
αh vhi) .
ρm is a period-dependent base rate.
(Rate function must be positive;
⇒exponential function.)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
74
/ 157


--- PAGE BREAK ---

Example
Dependence on network position:
e.g., dependence on out-degrees:
λi(α, x) = exp(α1 xi+) .
Also, in-degrees and ♯reciprocated ties of actor i
may be used.
Now the parameter is θ = (ρ, α, β, γ).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
75
/ 157
Example
Continuation example
Rate function depends on out-degree:
those with higher out-degrees
also change their tie patterns more quickly.
endowment function depends on tie reciprocation
gi(γ, x, j) = γ1 xji
Reciprocity operates differently
for tie initiation than for tie withdrawal.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
76
/ 157


--- PAGE BREAK ---

Example
Parameter estimates model with rate and endowment effects
Model 6
Effect
par.
(s.e.)
Rate (period 1)
3.99
(0.70)
Rate (period 2)
2.93
(0.48)
Out-degree effect on rate
0.041
(0.034)
Out-degree
-0.79
(0.57)
Reciprocity
1.51
(0.54)
Transitive triplets
0.35
(0.05)
Three-cycles
–0.57
(0.19)
In-degree popularity (√)
–0.59
(0.27)
Gender ego
-0.33
(0.31)
Gender alter
0.57
(0.27)
Gender similarity
0.30
(0.24)
Program similarity
0.80
(0.26)
Smoking similarity
0.36
(0.19)
Endowment recipr. tie
1.82
(0.97)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
77
/ 157
Example
Conclusion:
non-signiﬁcant tendency that actors with higher out-degrees
change their ties more often (t = 0.041/0.034 = 1.2),
value of reciprocation is larger for termination of ties
than for creation (t = 1.82/0.97 = 1.88).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
78
/ 157


--- PAGE BREAK ---

Example
Non-directed networks
Working paper available from:
http://www.stats.ox.ac.uk/˜snijders/PoliticalAnalysis_NetDyn.pdf
The actor-driven modeling is less straightforward
for non-directed relations,
because two actors are involved in deciding about a tie.
Various modeling options are possible:
1. Forcing model:
one actor takes the initiative and unilaterally imposes
that a tie is created or dissolved.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
79
/ 157
Example
2. Unilateral initiative with reciprocal conﬁrmation:
one actor takes the initiative and proposes a new tie
or dissolves an existing tie;
if the actor proposes a new tie, the other has to conﬁrm,
otherwise the tie is not created.
3. Pairwise conjunctive model:
a pair of actors is chosen and reconsider whether a tie
will exist between them; a new tie is formed if both agree.
4. Pairwise disjunctive (forcing) model:
a pair of actors is chosen and reconsider whether a tie
will exist between them;
a new tie is formed if at least one wishes this.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
80
/ 157


--- PAGE BREAK ---

Example
5. Pairwise compensatory (additive) model:
a pair of actors is chosen and reconsider whether a tie
will exist between them; this is based
on the sum of their utilities for the existence of this tie.
Option 1 is close to the actor-driven model for directed relations.
In options 3–5, the pair of actors (i, j) is chosen
depending on the product of the rate functions λi λj
(under the constraint that i ̸= j ).
The numerical interpretation of the ratio function
differs between options 1–2 compared to 3–5.
The decision about the tie is taken on the basis of the objective
functions fi fj of both actors.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
81
/ 157
Estimation
2. Estimation
Suppose that at least 2 observations on X(t) are available,
for observation moments t1, t2.
(Extension to more than 2 observations is straightforward.)
How to estimate θ?
Condition on X(t1) :
the ﬁrst observation is accepted as given,
contains in itself no observation about θ.
No assumption of a stationary network distribution.
Thus, simulations start with X(t1).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
82
/ 157


--- PAGE BREAK ---

Estimation
2A. Method of moments
Choose a suitable statistic Z = (Z1, . . . , ZK),
i.e., K variables which can be calculated from the network;
the statistic Z must be sensitive to the parameter θ
in the sense that higher values of θk
lead to higher values of the expected value Eθ(Zk) ;
determine value ˆθ of θ = (ρ, β) for which
observed and expected values of suitable Z statistic are equal:
Eˆθ {Z} = z .
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
83
/ 157
Estimation
Questions:
▶What is a suitable (K-dimensional) statistic?
Corresponds to objective function.
▶How to ﬁnd this value of θ?
By stochastic approximation (Robbins-Monro process)
based on repeated simulations of the dynamic process,
with parameter values
getting closer and closer to the moment estimates.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
84
/ 157


--- PAGE BREAK ---

Estimation
Suitable statistics for method of moments
Assume ﬁrst that λi(x) = ρ = θ1,
and 2 observation moments.
This parameter determines the expected “amount of change”.
A sensitive statistic for θ1 = ρ is
C =
g
X
i, j=1
i̸=j
| Xij(t2) −Xij(t1) | ,
the “observed total amount of change”.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
85
/ 157
Estimation
For the weights βk in the evaluation function
fi(β, x) =
L
X
k=1
βk sik(x) ,
a higher value of βk means that all actors
strive more strongly after a high value of sik(x),
so sik(x) will tend to be higher for all i, k.
This leads to the statistic
Sk =
n
X
i=1
sik(X(t2)) .
This statistic will be sensitive to βk :
a high βk will to lead to high values of Sk.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
86
/ 157


--- PAGE BREAK ---

Estimation
Moment estimation will be based on the
vector of statistics
Z = (C, S1, ..., SK−1) .
Denote by z the observed value for Z.
The moment estimate ˆθ is deﬁned as the parameter value
for which the expected value of the statistic
is equal to the observed value:
Eˆθ {Z} = z .
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
87
/ 157
Estimation
Robbins-Monro algorithm
The moment equation Eˆθ{Z} = z cannot be solved by
analytical or the usual numerical procedures, because
Eθ{Z}
cannot be calculated explicitly.
However, the solution can be approximated by the
Robbins-Monro (1951) method for stochastic approximation.
Iteration step:
ˆθN+1 = ˆθN −aN D−1(zN −z) ,
(1)
where zN is a simulation of Z with parameter ˆθN,
D is a suitable matrix, and aN →0 .
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
88
/ 157


--- PAGE BREAK ---

Estimation
Covariance matrix
The method of moments yields the covariance matrix
cov(ˆθ) ≈D−1
θ
Σθ D′
θ
−1
where
Σθ
=
cov{Z |X(t1) = x(t1)}
Dθ
=
∂
∂θE{Z |X(t1) = x(t1)} .
Matrices Σθ and Dθ can be estimated
from MC simulations with ﬁxed θ.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
89
/ 157
Estimation
After the presumed convergence of the algorithm
for approximately solving the moment equation,
extra simulations are carried out
(a) to check that indeed Eˆθ {Z} ≈z ,
(b) to estimate Σθ,
(c) and to estimate Dθ
using a score function algorithm
(earlier algorithm used
difference quotients and common random numbers).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
90
/ 157


--- PAGE BREAK ---

Estimation
Modiﬁed estimation method:
conditional estimation .
Condition on the observed numbers of
differences between successive observations,
cm =
X
i,j
| xij(tm+1) −xij(tm) | .
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
91
/ 157
Estimation
For continuing the simulations do not mind the values of
the time variable t,
but continue between tm and tm+1 until
the observed number of differences
X
i,j
| Xij(t) −xij(tm) |
is equal to the observed cm .
This is deﬁned as time moment tm+1 .
This procedure is a bit more stable;
requires modiﬁed estimator of ρm .
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
92
/ 157


--- PAGE BREAK ---

Estimation
Computer algorithm has 3 phases:
1. brief phase for preliminary estimation of ∂Eθ {Z}/∂θ
for deﬁning D;
2. estimation phase with Robbins-Monro updates,
where aN remains constant in subphases
and decreases between subphases;
3. ﬁnal phase where θ remains constant at estimated value;
this phase is for checking that
Eˆθ {Z} ≈z ,
and for estimating Dθ and Σθ to calculate standard errors.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
93
/ 157
Estimation
Extension: more periods
The estimation method can be extended
to more than 2 repeated observations:
observations x(t) for t = t1, ..., tM .
Parameters remain the same in periods between observations
except for the basic rate of change ρ
which now is given by ρm for tm ≤t < tm+1 .
For the simulations,
the simulated network X(t) is reset to the observation x(tm)
whenever the time parameter t passes the observation time tm .
The statistics for the method of moments are deﬁned as
sums of appropriate statistics calculated per period (tm, tm+1).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
94
/ 157


--- PAGE BREAK ---

Estimation
2B. ML Estimation
skipped
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
95
/ 157
Estimation
The Siena program (version 4) is available as an R package,
programmed by Ruth Ripley and Krists Boitmanis.
This is the package RSiena, which now
includes most of the functionality in the earlier
standalone version Siena 3.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
96
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
3. Networks as dependent and independent variables
Simultaneous endogenous dynamics of networks and behavior: e.g.,
▶individual humans & friendship relations:
attitudes, behavior (lifestyle, health, etc.)
▶individual humans & cooperation relations:
work performance
▶companies / organisations & alliances, cooperation:
performance, organisational success.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
97
/ 157
Dynamics of networks and behavior
Two-way inﬂuence between networks and behavior
Relational embeddedness is important
for well-being, opportunities, etc.
Actors are inﬂuenced in their behavior, attitudes, performance
by other actors to whom they are tied
e.g., network resources (social capital), social control.
(N. Friedkin, A Structural Theory of Social Inﬂuence, C.U.P., 1998).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
98
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
In return, many types of tie
(friendship, cooperation, liking, etc.)
are inﬂuenced positively by
similarity on relevant attributes: homophily
(e.g., McPherson, Smith-Lovin, & Cook, Ann. Rev. Soc., 2001.)
More generally, actors choose relation partners
on the basis of their behavior and other characteristics
(similarity, opportunities for future rewards, etc.).
Inﬂuence, network & behavior effects on behavior;
Selection, network & behavior effects on relations.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
99
/ 157
Dynamics of networks and behavior
Terminology
relation = network = pattern of ties in group of actors;
behavior = any individual-bound changeable attribute
(including attitudes, performance, etc.).
Relations and behaviors are endogenous variables
that develop in a simultaneous dynamics.
Thus, there is a feedback relation in the dynamics
of relational networks and actor behavior / performance:
macro ⇒mini ⇒macro · · · ·
(although network perhaps is meso rather than macro)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
100
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
The investigation of such social feedback processes is difﬁcult:
▶Both the network ⇒behavior
and the behavior ⇒network effects
lead ‘network autocorrelation’:
“friends of smokers are smokers”
“high-reputation ﬁrms don’t collaborate
with low-reputation ﬁrms”.
It is hard to ascertain the strengths
of the causal relations in the two directions.
▶For many phenomena
quasi-continuous longitudinal observation is infeasible.
Instead, it may be possible to observe
networks and behaviors at a few discrete time points.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
101
/ 157
Dynamics of networks and behavior
Data
One bounded set of actors
(e.g. school class, group of professionals, set of ﬁrms);
several discrete observation moments;
for each observation moment:
▶network: who is tied to whom
▶behavior of all actors
Aim: disentangle effects networks ⇒behavior
from effects behavior ⇒networks.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
102
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
Notation:
Integrate the inﬂuence (dep. var. = behavior)
and selection (dep. var. = network) processes.
In addition to the network X, associated to each actor i
there is a vector Zi(t) of actor characteristics
indexed by h = 1, . . . , H.
Assumption: ordered discrete
(simplest case: one dichotomous variable).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
103
/ 157
Dynamics of networks and behavior
Actor-driven models
Each actor “controls” not only his outgoing ties,
collected in the row vector
 Xi1(t), ..., Xin(t)

,
but also his behavior Zi(t) =
 Zi1(t), ..., ZiH(t)

(H is the number of dependent behavior variables).
Network change process and behavior change process
run simultaneously, and inﬂuence each other
being each other’s changing constraints.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
104
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
2
0
1
zi(t0) = 0
zi(t1) = 2
t
1
0
1
xij(t0) = 0
xij(t1) = 1
t
i
j
k
i
j
k
i
j
k
i
j
k
i
j
k
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
105
/ 157
Dynamics of networks and behavior
At stochastic times
(rate functions λX for changes in network,
λZ
h for changes in behavior h),
the actors may change a tie or a behavior.
Probabilities of change are increasing functions of
objective functions of the new state,
deﬁned speciﬁcally for network, f X,
and for behavior, f Z .
Again, only the smallest possible steps are allowed:
change one tie variable,
or move one step up or down on a behavior variable.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
106
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
For network change, change probabilities are as before.
For the behaviors, the formula of the change probabilities is
pihv(β, z) =
exp(f(i, h, v))
X
k,u
exp(f(i, k, u))
where f(i, h, v) is the objective function calculated for the potential new
situation after a behavior change,
f(i, h, v) = f Z
i (β, z(i, h ; v)) .
Again, multinomial logit form.
Again, a ‘maximizing’ interpretation is possible.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
107
/ 157
Dynamics of networks and behavior
mini-step for change in network:
At random moments occurring at a rate λX,
a random actor is designated
to make a change in one tie variable:
the mini-step (on ⇒off, or off ⇒on.)
mini-step for change in behavior:
At random moments occurring at a rate λZ
h,
a random actor is designated to make a change in behavior h
(one component of Zi, assumed to be ordinal):
the mini-step is a change to an adjacent category.
Again, many mini-steps can accumulate to big differences.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
108
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
Optimizing interpretation:
When actor i ‘may’ change an outgoing tie variable to some other actor
j, he/she chooses the ’best’ j by maximizing
the evaluation function f X
i (β, X, z) of the situation obtained
after the coming network change
plus a random component representing unexplained inﬂuences;
and when this actor ‘may’ change behavior h,
he/she chooses the “best” change (up, down, nothing)
by maximizing the evaluation function f Z
i (β, x, Z) of the situation
obtained after the coming behavior change
plus a random component representing unexplained inﬂuences.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
109
/ 157
Dynamics of networks and behavior
Optimal network change:
The new network is denoted by x(i ; j).
The attractiveness of the new situation
(evaluation function plus random term)
is expressed by the formula
f X
i (β, x(i ; j), z)
+
UX
i (t, x, j) .
⇑
random component
(Note that the network is also permitted to stay the same.)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
110
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
Optimal behavior change:
Whenever actor i may make a change in variable h of Z,
he changes only one behavior, say zih , to the new value v.
The new vector is denoted by z(i, h ; v).
Actor i chooses the “best” h, v by maximizing the objective function of
the situation obtained after the coming behavior change plus a random
component:
f Z
i (β, x, z(i, h ; v))
+
UZ
i (t, z, h, v) .
⇑
random component
(behavior is permitted to stay the same.)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
111
/ 157
Dynamics of networks and behavior
Speciﬁcation of the behavior model
Many different reasons why networks
are important for behavior:
1. imitation :
individuals imitate others
(basic drive; uncertainty reduction).
2. social capital :
individuals may use resources of others;
3. coordination :
individuals can achieve some goals
only by concerted behavior;
In this presentation, only imitation is considered,
but the other two reasons are also of eminent importance.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
112
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
Basic effects for dynamics of behavior f Z
i :
f Z
i (β, x, z) =
L
X
k=1
βk sik(x, z) ,
1. tendency ,
sZ
i1(x, z) = zih
2. quadratic tendency, ‘effect behavior on itself’,
sZ
i2(x, z) = z2
ih
Quadratic tendency effect important for model ﬁt.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
113
/ 157
Dynamics of networks and behavior
For a negative quadratic tendency parameter,
the model for behavior is a unimodal preference model.
zh
f
Zh
i (β, x, z)
1
2
3
4
For positive quadratic tendency parameters ,
the behavior objective function can be bimodal
(‘positive feedback’).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
114
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
3. behavior-related average similarity,
average of behavior similarities between i and friends
si3(x) =
1
xi+
P
j xij sim(zih, zjh)
where sim(zih, zjh) is the similarity between vi and vj,
sim(zih, zjh) = 1 −|zih −zjh|
RZ h
,
RZ h being the range of Z h;
4. average behavior alter — an alternative to similarity:
si4(x, z) = zih
1
xi+
P
j xijzjh
Effects 3 and 4 are alternatives for each other:
they express the same theoretical idea of inﬂuence
in mathematically different ways.
The data will have to differentiate between them.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
115
/ 157
Dynamics of networks and behavior
Network position can also have inﬂuence on behavior dynamics
e.g. through degrees rather than through behavior
of those to whom one is tied:
5. popularity-related tendency, (in-degree)
si5(x, z) = zih x+i
6. activity-related tendency, (out-degree)
si6(x, z) = zih xi+
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
116
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
7. dependence on other behaviors (h ̸= ℓ) ,
si7(x, z) = zih ziℓ
For both the network and the behavior dynamics,
extensions are possible depending on the network position.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
117
/ 157
Dynamics of networks and behavior
Now focus on the similarity effect in evaluation function :
sum of absolute behavior differences between i and his friends
si2(x, z) = P
j xij sim(zih, zjh) .
This is fundamental both
to network selection based on behavior,
and to behavior change based on network position.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
118
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
A positive coefﬁcient for this effect means that the actors
prefer friends with similar Zh values
(network autocorrelation).
Actors can attempt to attain this by changing their own
Zh value to the average value of their friends
(network inﬂuence, contagion),
or by becoming friends with those with similar Zh values
(selection on similarity).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
119
/ 157
Dynamics of networks and behavior
Statistical estimation: networks & behavior
Procedures for estimating parameters in this model are
similar to estimation procedures for network-only dynamics:
Methods of Moments & Stochastic Approximation,
conditioning on the ﬁrst observation X(t1), Z(t1) .
The two different effects,
networks ⇒behavior and behavior ⇒networks,
both lead to network autocorrelation of behavior;
but they can be (in principle)
distinguished empirically by the time order: respectively
association between ties at tm and behavior at tm+1;
and association between behavior at tm and ties at tm+1.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
120
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
Statistics for use in method of moments:
for estimating parameters in network dynamics:
M−1
X
m=1
n
X
i=1
sik(X(tm+1), Z(tm)) ,
and for the behavior dynamics:
M−1
X
m=1
n
X
i=1
sik(X(tm), Z(tm+1)) .
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
121
/ 157
Dynamics of networks and behavior
The data requirements for these models are strong:
few missing data; enough change on the behavioral variable.
Currently, work still is going on about good ways
for estimating parameters in these models.
Maximum likelihood estimation procedures
(currently even more time-consuming; under construction...)
are preferable for small data sets.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
122
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
Example :
Study of smoking initiation and friendship
(following up on earlier work by P. West, M. Pearson & others).
One school year group from a Scottish secondary school
starting at age 12-13 years, was monitored over 3 years;
total of 160 pupils, of which 129 pupils present at all 3 observations;
with sociometric & behavior questionnaires at three moments, at appr.
1 year intervals.
Smoking: values 1–3;
drinking: values 1–5;
covariates:
gender, smoking of parents and siblings (binary),
money available (range 0–40 pounds/week).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
123
/ 157
Dynamics of networks and behavior
wave 1
girls: circles
boys: squares
node size: pocket money
color: top = drinking
bottom = smoking
(orange = high)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
124
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
wave 2
girls: circles
boys: squares
node size: pocket money
color: top = drinking
bottom = smoking
(orange = high)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
125
/ 157
Dynamics of networks and behavior
wave 3
girls: circles
boys: squares
node size: pocket money
color: top = drinking
bottom = smoking
(orange = high)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
126
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
127
/ 157
Dynamics of networks and behavior
Simple model: friendship dynamics
Friendship dynamics
Rate 1
14.24
(1.52)
Rate 2
10.51
(1.04)
Outdegree
–2.95
(0.06)
Reciprocity
1.96
(0.10)
Popularity
0.35
(0.07)
Transitive triplets
0.27
(0.02)
Sex similarity
0.97
(0.10)
Drinking alter
0.01
(0.07)
Drinking ego
0.01
(0.08)
Drinking ego × drinking alter
0.17
(0.06)
Smoking alter
–0.04
(0.08)
Smoking ego
–0.03
(0.08)
Smoking ego × smoking alter
0.05
(0.09)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
128
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
Simple model: smoking and drinking dynamics
Smoking dynamics
Rate 1
5.16
(1.88)
Rate 2
3.59
(1.24)
Linear tendency
–3.43
(0.48)
Quadratic tendency
2.69
(0.40)
Ave. alter
1.89
(0.75)
Alcohol consumption dynamics
Rate 1
1.56
(0.34)
Rate 2
2.45
(0.44)
Linear tendency
0.47
(0.17)
Quadratic tendency
–0.70
(0.30)
Ave. alter
1.59
(0.83)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
129
/ 157
Dynamics of networks and behavior
Preliminary conclusion:
Signiﬁcant evidence for friendship selection
based on drinking behavior,
and for peer inﬂuence with respect to smoking.
Weak evidence (two-sided p < .10)
for peer inﬂuence with respect to drinking.
However, this model controls insufﬁciently
for other inﬂuences and for the
endogenous network dynamics.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
130
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
More realistic model
Friendship dynamics
Rate 1
18.67
(2.17)
Rate 2
12.42
(1.30)
Outdegree
–1.57
(0.27)
Reciprocity
2.04
(0.13)
Transitive triplets
0.35
(0.04)
Transitive ties
0.84
(0.09)
Three-cycles
–0.41
(0.10)
In-degree based popularity (√)
0.05
(0.07)
Out-degree based popularity (√)
–0.45
(0.16)
Out-degree based activity (√)
–0.39
(0.07)
Sex alter
–0.14
(0.08)
Sex ego
0.08
(0.10)
Sex similarity
0.66
(0.08)
Romantic exp. similarity
0.10
(0.06)
Money alter (unit: 10 pounds/w)
0.11
(0.05)
Money ego
–0.06
(0.06)
Money similarity
0.98
(0.27)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
131
/ 157
Dynamics of networks and behavior
More realistic model (continued)
Friendship dynamics
Drinking alter
–0.01
(0.07)
Drinking ego
0.09
(0.09)
Drinking ego × drinking alter
0.14
(0.06)
Smoking alter
–0.08
(0.08)
Smoking ego
–0.14
(0.09)
Smoking ego × smoking alter
0.03
(0.08)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
132
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
Smoking dynamics
Rate 1
4.74
(1.88)
Rate 2
3.41
(1.29)
Linear tendency
–3.39
(0.45)
Quadratic tendency
2.71
(0.40)
Ave. alter
2.00
(0.95)
Drinking
–0.11
(0.24)
Sex (F)
–0.12
(0.35)
Money
0.10
(0.20)
Smoking at home
–0.05
(0.29)
Romantic experience
0.09
(0.33)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
133
/ 157
Dynamics of networks and behavior
Alcohol consumption dynamics
Rate 1
1.60
(0.32)
Rate 2
2.50
(0.42)
Linear tendency
0.44
(0.17)
Quadratic tendency
–0.64
(0.22)
Ave. alter
1.34
(0.61)
Smoking
0.01
(0.21)
Sex (F)
0.04
(0.22)
Money
0.17
(0.16)
Romantic experience
–0.19
(0.27)
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
134
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
Conclusion:
In this case, the conclusions from a more elaborate model
– i.e., with better control for alternative explanations –
are similar to the conclusions from the simple model.
There is evidence for friendship selection based on drinking,
and for social inﬂuence with respect to smoking and drinking.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
135
/ 157
Dynamics of networks and behavior
Parameter interpretation for behavior change
Omitting the non-signiﬁcant parameters yields
the following objective functions.
For smoking
f
Z1
i (ˆβ, x, z) =
−3.39 (zi1 −¯z1) + 2.71 (zi1 −¯z1)2 + 2.00 (zi1 −¯z1) (¯zi1,fr −¯z1) ,
where zi1 is smoking of actor i: values 1–3, mean 1.4.
¯zi1,fr is the average smoking behavior of i’s friends.
Convex function – consonant with addictive behavior.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
136
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
−3.39 (zi1 −¯z1) + 2.71 (zi1 −¯z1)2 + 2.00 (zi1 −¯z1) (¯zi1,fr −¯z1)
zh
f
Z1
i ( ˆβ, x, z)
1
2
3
▲
▲
▲
¯zi1,fr = 1
■
■
■¯zi1,fr = 2
▼
▼
▼¯zi1,fr = 3
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
137
/ 157
Dynamics of networks and behavior
For drinking the objective function (signiﬁcant terms only) is
f
Z2
i (ˆβ, x, z) =
0.44 (zi2 −¯z2) −0.64 (zi2 −¯z2)2 + 1.34 (zi2 −¯z2) (¯zi2,fr −¯z2) ,
where zi2 is drinking of actor i: values 1–5, mean 3.0.
Unimodal function – consonant with non-addictive behavior.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
138
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
0.44 (zi2 −¯z2) −0.64 (zi2 −¯z2)2 + 1.34 (zi2 −¯z2) (¯zi2,fr −¯z2)
zh
f
Z2
i ( ˆβ, x, z)
1
2
3
4
5
▲
▲
▲
▲
▲¯zi2,fr = 1
•
•
•
•
• ¯zi2,fr = 2
■
■
■
■
■¯zi2,fr = 3
•
•
•
•
• ¯zi2,fr = 4
▼
▼
▼
▼
▼¯zi2,fr = 5
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
139
/ 157
Dynamics of networks and behavior
Discussion
▶These models represent network structure
as well as attributes / behavior.
▶Theoretically: they combine agency and structure.
▶Available in the open source program SIENA,
package RSiena in the statistical system R.
▶Assessing network effects is full of confounders.
Don’t expect results that are easy and reliable!
More research is needed for range of application,
interpretation, robustness.
▶More research is needed for mathematical properties
such as consistency, asymptotic normality, etc.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
140
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
Why follow a statistical modeling approach
to network analysis?
⇒Combination of networks and attributes
and: combination of structure and agency.
⇒Distinction dependent ⇔explanatory variables
⇒Hypothesis testing,
clearer support of theory development.
⇒Combination of multiple mechanisms: test theories
while controlling for alternative explanations.
⇒Assessment of uncertainties in inference.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
141
/ 157
Dynamics of networks and behavior
Other work (recent, current, near future)
1. Goodness of ﬁt, score tests (paper Schweinberger).
2. Bayesian estimation; Maximum Likelihood estimation
(Koskinen & Snijders, J.Stat.Plann.Inf. 2007; Snijders, Koskinen &
Schweinberger, Ann.Appl.Stat. 2010).
3. Explained variation (‘R2’) (Snijders, Math.Soc.Sci. 2004).
4. Estimation of derivatives
(Schweinberger & Snijders, Comp.Stat.Dat.An. 2006).
5. Non-directed relations.
6. Random actor effects ∼unobserved heterogeneity.
7. Multilevel network analysis (meta analysis approach)
(Snijders & Baerveldt, J.Math.Soc. 2003).
8. Random effects multilevel network models.
9. Valued relations; Multivariate relations.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
142
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
Some references about longitudinal models
▶Tom A.B. Snijders,
The Statistical Evaluation of Social Network Dynamics,
Sociological Methodology 2001, 361–395;
▶Tom A.B. Snijders, Models for Longitudinal Network Data, Ch. 11 in P.
Carrington, J. Scott, & S. Wasserman (Eds.), Models and methods in social
network analysis. New York: Cambridge University Press (2005).
▶Tom A.B. Snijders, Gerhard G. van de Bunt, Christian E.G. Steglich (2010),
Introduction to actor-based models for network dynamics. Social Networks, 32,
44–60.
▶See SIENA manual and homepage.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
143
/ 157
Dynamics of networks and behavior
Some references in various languages
▶Ainhoa de Federico de la Rúa, L’Analyse Longitudinale de Réseaux sociaux totaux avec
SIENA – Méthode, discussion et application.
BMS, Bulletin de Méthodologie Sociologique, 84, October 2004, 5–39.
▶Ainhoa de Federico de la Rúa, El análisis dinámico de redes sociales con SIENA. Método,
Discusión y Aplicación.
Empiria, 10, 151–181 (2005).
▶Mark Huisman and Tom A.B. Snijders, Een stochastisch model voor netwerkevolutie.
Nederlands Tijdschrift voor de Psychologie, 58 (2003), 182-194.
▶Laura Savoia (2007), L’analisi della dinamica del network con SIENA.
In: A. Salvini (a cura di), Analisi delle reti sociali. Teorie, metodi, applicazioni, Milano:
FrancoAngeli.
▶Christian Steglich and Andrea Knecht (2009), Die statistische Analyse dynamischer
Netzwerkdaten.
In: Christian Stegbauer and Roger Häußling (Hsrg.), Handbuch der Netzwerkforschung,
Wiesbaden (Verlag für Sozialwissenschaften).
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
144
/ 157


--- PAGE BREAK ---

Dynamics of networks and behavior
Some references for dynamics of networks and behavior
▶Tom Snijders, Christian Steglich, and Michael Schweinberger (2007),
Modeling the co-evolution of networks and behavior.
In: Longitudinal models in the behavioral and related sciences, eds.
Kees van Montfort, Han Oud and Albert Satorra; Lawrence Erlbaum, pp.
41–71.
▶Steglich, C.E.G., Snijders, T.A.B. and Pearson, M. (2010).
Dynamic Networks and Behavior: Separating Selection from Inﬂuence.
Sociological Methodology, 329–393.
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
145
/ 157
Dynamics of networks and behavior
A lot of material
– programs, manuals, papers, workshop announcements –
can be found at the Siena website:
http://www.stats.ox.ac.uk/siena/
There is also a user’s group:
http://groups.yahoo.com/groups/stocnet/
t and j (Oxford)
SAOM for network dynamics
Statistical Models for Social Networks, June 2010
146
/ 157


--- PAGE BREAK ---

