Stochastic Actor-Oriented
Models for Network Dynamics
Tom A.B. Snijders1,2
1Department of Sociology, University of Groningen, 9712 TG Groningen, Netherlands
2Department of Statistics, University of Oxford, OX1 3LB Oxford, United Kingdom;
email: tom.snijders@nufﬁeld.ox.ac.uk
Annu. Rev. Stat. Appl. 2017. 4:343–63
First published online as a Review in Advance on
January 6, 2017
The Annual Review of Statistics and Its Application is
online at statistics.annualreviews.org
This article’s doi:
10.1146/annurev-statistics-060116-054035
Copyright c⃝2017 by Annual Reviews.
All rights reserved
Keywords
social networks, statistical modeling, inference
Abstract
This article discusses the stochastic actor-oriented model for analyzing panel
data of networks. The model is deﬁned as a continuous-time Markov chain,
observed at two or more discrete time moments. It can be regarded as a gen-
eralized linear model with a large amount of missing data. Several estimation
methods are discussed. After presenting the model for evolution of networks,
attention is given to coevolution models. These use the same approach of a
continuous-time Markov chain observed at a small number of time points,
but now with an extended state space. The state space can be, for example, the
combination of a network and nodal variables, or a combination of several
networks. This leads to models for the dynamics of multivariate networks.
The article emphasizes the approach to modeling and algorithmic issues for
estimation; some attention is given to comparison with other models.
343
Click here to view this article's
online features:
 
• Download ﬁgures as PPT slides
• Navigate linked references
• Download citations
• Explore related articles
• Search keywords
ANNUAL 
REVIEWS
 
Further


--- PAGE BREAK ---

1. INTRODUCTION
Social phenomena are increasingly viewed from a network perspective, and social networks accord-
ingly receive more and more attention in various domains of science. Graphs and their dynamics
have been studied in probability theory for more than half a century (Erd˝os & R´enyi 1960, Bolloba`s
1985). Network analysis has long been an interdisciplinary empirical ﬁeld rooted in sociology, an-
thropology, discrete mathematics, and visualization; one signiﬁcant date in its early development
was the creation of its own journal in 1978 (Freeman 2004). From around the turn of the millen-
nium, there has been growing interest in networks from physicists and computer scientists also
(Watts & Strogatz 1998). This widened interdisciplinary ﬁeld became further established in 2013
with the creation of the journal Network Science (Brandes et al. 2013).
Statistical modeling of networks has played an important role in these developments, and has
grown in scope as networks have received increasing scientiﬁc attention (Goldenberg et al. 2009,
Kolaczyk 2009). This review presents a statistical methodology for the analysis of longitudinal
network data collected in a panel design, in which repeated observations are available of a network
on a constant node set. Development of this model was inspired by applications in sociology and
other social sciences (e.g., Snijders & Doreian 2010, 2012), and therefore the terminology will
have a social science ﬂavor. For example, the nodes of the network will be referred to as social
actors—which could be humans, but also organizations, et cetera.
2. MODEL DEFINITION
We assume that repeated observations x(t1), . . . , x(tM ) on a directed graph (digraph), referred to
as a network, are available for some M ≥2. The node set N = {1, . . . , n} is constant, whereas the
ties are variable. The network x is identiﬁed with its n ×n adjacency matrix x = (xi j), of which the
elements denote whether there is a tie from node i to node j (xi j = 1) or not (xi j = 0). Self-ties are
not allowed, so that the diagonal is structurally zero. Random variables are denoted by capitals.
Various models have been proposed for network dynamics, most of them being Markov pro-
cesses of some kind. The basic heuristic idea of actor-oriented models (Snijders 2001) is that the
nodes of the graph are social actors having the potential to change their outgoing ties, and the
observed network dynamics is the result of the sequences of choices by these actors. The digraph
develops as a continuous-time Markov process X(t) even though it is observed only at M discrete
time points. The stochastic process X(t) is modeled as being right-continuous. The constraints are
that ties may change only one by one, and actors do not coordinate their changes of ties. Thus, at
any given moment, at most one tie variable Xi j can be changed. This constraint was proposed by
Holland & Leinhardt (1977), and it has the virtue of splitting the change process into its smallest
possible constituents, reducing the model deﬁnition to the speciﬁcation of rates of creating and
terminating single ties.
The actor-oriented model is speciﬁed as follows; further discussion and motivation are given
by Snijders (2001).
2.1. Opportunities for Change
Each actor i gets, at stochastically determined moments, the opportunity to change one of the
outgoing tie variables Xi j(t) ( j ∈N, j ̸= i). Because the process is assumed to be Markovian,
waiting times between opportunities have exponential distributions. Each of the actors i has a
rate function λi(α, x) which deﬁnes how quickly this actor gets an opportunity to change a tie
variable, when the current value of the digraph is x, where α is a parameter. At any time point t
344
Snijders


--- PAGE BREAK ---

with X(t) = x, the waiting time until the next opportunity for change by any actor is exponentially
distributed with parameter
λ(α, x) =

i
λi(α, x).
(1)
Given that an opportunity for change occurs, the probability that it is actor i who gets the oppor-
tunity is given by
πi(α, x) = λi(α, x)
λ(α, x) .
(2)
The rate functions can be constant between observation moments, or they can depend on functions
uik(x), which may be covariates or positional characteristics of the actors, such as outdegrees

j xi j. The time points of observation are arbitrary, not necessarily equidistant, and observation
is assumed not to affect the random process. Arbitrary time spans between observations can be
represented by multiplicative parameters ρm. Actor-dependent rate functions can be modeled, for
example, by an exponential link function,
λi(ρ, α, x) = ρm exp

k
αkuik(x)

,
(3)
valid between the moments of observing x(tm) and x(tm+1).
2.2. Options for Change
When actor i gets the opportunity to make a change, this actor has a permitted set Ai(x0) of values
to which the digraph may be changed, where x0 is the current value of the digraph. The idea that
actors may change their outgoing ties, but only one tie variable at the time, is reﬂected by
Ai(x0) ⊂{x0} ∪Ar
i(x0),
(4a)
where Ar
i(x0) is the set of adjacency matrices differing from x in exactly one element,
Ar
i(x0) = {x | xi j = 1 −x0
i j for one j ̸= i, and x j′k = x0
j′k for all other ( j ′, k)}.
(4b)
Including x0 in Ai(x0) can be important for expressing the property that actors who are satisﬁed
with the current network will prefer to keep it unchanged. Therefore, the usual model is Ai(x0) =
{x0} ∪Ar
i(x0).
It is assumed that the network dynamics is driven by a so-called objective function fi(β, x0, x)
that can be interpreted as the relative attractiveness for actor i of moving from the network
represented by x0 to the network x, where β is a parameter. The conditional probability that the
next digraph is x, given that the current digraph is x0 and actor i gets the opportunity to make a
change, is assumed to be given by the multinomial model
pi(β, x0, x) =
⎧
⎨
⎩
exp( fi(β, x0, x))

˜x exp( fi(β, x0, ˜x))
x ∈Ai(x0)
0
x ̸∈Ai(x0),
(5)
where the summation extends over ˜x ∈Ai(x0). This formula can be motivated by a random utility
argument as used in econometrics (e.g., Maddala 1983), where it is assumed that the actor maxi-
mizes fi(β, x0, x) plus a random disturbance with a standard Gumbel distribution. Expressions 4a,b
imply that instead of pi(β, x0, x) we can also write pi j(β, x0) where the correspondence between
x and j is deﬁned as follows: If x ̸= x0, j is the unique element of N for which xi j ̸= x0
i j; the
arbitrary deﬁnition is made that j = i if x = x0. This less redundant notation will be used in the
www.annualreviews.org • Actor-Oriented Models for Network Dynamics
345


--- PAGE BREAK ---

following. Thus, for j ̸= i, pi j(β, x0) is the probability that, under the condition that actor i has the
opportunity to make a change and the current digraph is x0, the change will be to xi j = 1−x0
i j with
the rest unchanged, and pii(β, x0) is the probability that, under the same condition, the digraph
will not be changed.
The most usual models are based on objective functions that depend on x only. This has the
possible interpretation that actors wish to maximize a function fi(β, x) (plus a random residual)
that itself is independent of the previous state, although the previous state does determine the
set of possible next states. The greater generality of Equation 5, where the objective function can
depend also on the previous state x0, makes it possible to model path dependencies, or hysteresis,
where the loss suffered from withdrawing a given tie differs from the gain from creating this tie,
even if the rest of the network has remained unchanged. When the objective function does not
depend on the previous state, it is also called an evaluation function.
Various ingredients for specifying the objective function were proposed by Snijders (2001). A
linear form is convenient,
fi(β, x0, x) =
L

k=1
βk sik(x0, x),
(6)
where the functions sik(x0, x), called effects, are determined by subject-matter knowledge, available
scientiﬁc theory, and formulation of research questions. The effects should represent essential
aspects of the network structure, assessed from the point of view of actor i, such as
sik(x0, x) =

j
xi j
(outdegree),
(7)

j
xi j x ji
(reciprocated ties),
(8)

j,k
xi j x jk xik
(transitive triplets), and
(9)

j
x0
i j x0
ji xi j x ji
(persistent reciprocity).
(10)
They can also depend on covariates—such as resources and preferences of the actors, or costs
of exchange between pairs of actors—or combinations of network structure and covariates. The
reader is directed to Snijders et al. (2010b) for a basic list of effects and Ripley et al. (2016) for an
extensive list.
2.3. Intensity Matrix and Time Homogeneity
The model description given above deﬁnes X(t) as a continuous-time Markov process with a
Q-matrix or intensity matrix (e.g., Norris 1997) for x ̸= x0 given by
q(x0, x) =
	λi(α, x0) pi(β, x0, x)
if x ∈Ai(x0), i ∈N
0
if x ̸∈∪iAi(x0).
(11)
The assumptions do not imply that the distribution of X(t) is stationary. The transition distri-
bution, however, is time-homogeneous, except for time dependence reﬂected by time-varying
components in the functions sik(x0, x), and except for multiplicative constants as explained in the
next paragraph.
346
Snijders


--- PAGE BREAK ---

The time points t1, . . . , tM of the observations can be used for marking time-heterogeneity of
the transition distribution. For example, covariates may be included with values that are allowed
to change at the observation moments. A special role is played here by the time durations tm −tm−1
between successive observations. Standard theory for continuous-time Markov chains (e.g., Norris
1997) shows that the matrix of transition probabilities from X(tm) to X(tm−1) is e(tm−tm−1)Q, where
Q is the matrix with elements as given in Equation 11. Thus, changing the duration tm −tm−1 can
be compensated for by multiplication of the rate function λi(α, x) by a constant. The connection
between an externally deﬁned real-valued time variable tm and the rapidity of network change is
tenuous at best, and the parameter ρm in Equation 3 absorbs the effects of the durations tm −tm−1.
This makes the numerical values tm unimportant.
2.4. Simulation Algorithm
The following steps can be used for simulating the process for the time period from tm to tm+1.
1. Set t = tm and x = x(tm).
2. Generate T according to the exponential distribution with parameter λ(α, x).
3. If t + T > tm+1, set t = tm+1 and stop.
4. Randomly select i ∈{1, . . . , n} using probabilities
λi(α, x)
λ(α, x) .
5. Randomly select x′ ∈Ai(x) using probabilities pi(β, x, x′) (see Equation 5).
6. Set t = t + T .
7. Set x = x′.
8. Return to step 2.
If the continuous-time stochastic process X(t) were observed for t1 ≤t ≤tM including all the
time increments T generated in the above simulation steps, the model would be a generalized
linear model with two parts, Equations 3 and 6. Given that the stochastic process X(t) is observed
only for t = t1, t2, . . . , tM , the model can be regarded as a generalized linear model with a large
amount of missing data.
3. ESTIMATION
Exact calculations for this model are infeasible, except for uninterestingly simple special cases.
Because the model can be simulated in a straightforward manner, it lends itself to simulation-
based estimation procedures.
3.1. Method of Moments
TheestimationmethodthatisusedmostinpracticeistheMethodofMomentsprocedureproposed
by Snijders (2001). Denote the estimated parameter by θ = (ρ, α, β). The statistics used for
estimation are heuristically derived as follows. For each element of θ there is a one-dimensional
statistic that is sensitive to this parameter. For ρm, inﬂuencing the total amount of change, the
statistic used is the Hamming distance,
D(X (tm+1), X(tm)) =

i, j
| X i j(tm + 1) −X i j(tm) |.
(12)
www.annualreviews.org • Actor-Oriented Models for Network Dynamics
347


--- PAGE BREAK ---

For parameter αk, determining how strongly the rate of change for actor i is inﬂuenced by uik(X ),
a sensitive statistic is
Ak(X (tm+1), X(tm)) =

i, j
uik(X(tm)) | X i j(tm + 1) −X i j(tm) |.
(13)
For linear predictors (Equation 6) where sik(x0, x) does not depend on x0, higher values of βk will
tend to lead to networks x for which the value of sik(x) is higher, for all i. Therefore, for estimating
βk, sensitive statistics are given by
sk(X(tm)) =

i
sik(X(tm)).
(14)
Combining these statistics and employing the Markov chain assumption for the observed data
x(t1), . . . , x(tM ), the estimating equations are
D(x(tm+1), x(tm)) = Eθ{D(X (tm+1), x(tm)) | X (tm) = x(tm)}
(m = 1, . . . , M −1),
(15a)
M −1

m=1
Ak(x(tm+1), x(tm)) =
M −1

m=1
Eθ{Ak(X (tm+1), x(tm)) | X (tm) = x(tm)}
(k = 1, . . . , Kα),
(15b)
M −1

m=1
sk(x(tm+1)) =
M −1

m=1
Eθ{sk(X (tm+1)) | X (tm) = x(tm)}
(k = 1, . . . , Kβ),
(15c)
where Kα and Kβ are the number of elements of α and β.
To ﬁnd the solution of the set of Equations 15a–c, stochastic optimization can be used. Snijders
(2001) uses a multivariate version of the Robbins-Monro algorithm (Robbins & Monro 1951,
Ruppert 1991, Kushner & Yin 2003) with the improvements proposed by Polyak (1990) and
Ruppert (1988). The double averaging technique of Bather (1989) and Schwabe & Walk (1996)
turns out to give further improvement. The R package RSiena (Ripley et al. 2016, Snijders 2016a)
implements this in a three-phase algorithm, where the ﬁrst phase is for roughly determining
the sensitivity of expected statistics to parameters, the second phase conducts Robbins-Monro
parameter updates based on simulations of the network dynamics for the current parameter value,
and the third is for determining how well the set of Equations 15a–c is indeed approximated, and
for determining standard errors. For the latter purpose the derivatives of the expected values with
respect to the parameters are needed, and these can be estimated by the score function method
(Rubinstein 1986, Schweinberger & Snijders 2007); this is elaborated on below. This algorithm
is quite robust, although rather time consuming.
3.2. Generalized Method of Moments
The statistics (Equation 14) used for the Method of Moments depend only on the networks
observed at the end of each period (tm−1, tm]. It might be possible to obtain greater efﬁciency by
utilizing more statistics, for instance, the function of the networks observed at both the beginning
and the end of each period. For example, for estimating the parameter βk for the reciprocity effect
348
Snijders


--- PAGE BREAK ---

sk(x) = 
j xi jx ji, Equation 14 leads to

i, j
Xi j(tm) X ji(tm),
a measure for the amount of reciprocity observed at tm. Another relevant statistic would be

i, j
(1 −Xi j(tm−1))X ji(tm−1) Xi j(tm) X ji(tm),
measuring the amount of observed reciprocation from tm−1 to tm. Utilizing more statistics than
parameters is possible with the generalized Method of Moments (Burguete et al. 1982, Hansen
1982). The principle is, for a q-dimensional statistic S with an outcome denoted s and a p-
dimensional parameter θ with q > p, to estimate θ such that
(s −Eθ S)′W (s −Eθ S)
(16)
is minimal as a function of θ. When W−1 = covθ(S) this estimator will be at least as efﬁcient as
the Method of Moments estimator for any subvector of S. The further elaboration and numerical
implementation of a simulated generalized Method of Moments for this model are presented by
Amati et al. (2015).
3.3. Likelihood-Based Methods
Bayesian and frequentist likelihood-based estimators were developed by Koskinen & Snijders
(2007) and Snijders et al. (2010a). These estimators use data augmentation (Tanner & Wong 1987).
The procedure is explained here only for the case of constant rate functions, that is, λi(α, x) ≡ρm
between tm and tm+1.
The observed data x(t1), . . . , x(tM ) are augmented by the chain of all choosing actors i and
intermediate states x′ in the simulation algorithm; the time delays T can be integrated out.
The intermediate states are the results of the choices by the actors described above; recall that
the outcome of the choice may be that the state stays the same. The formulae are given for
M = 2 waves; generalization to more waves is obtained by concatenating the chains from wave
to wave. Denote the sequence of subsequent intermediate states, resulting from these choices, by
x1 = x(t1), x2, . . . , xR = x(t2), the actor making the choice for xh by ih, and the time delay between
xh and xh+1 by Th. Then R is determined by the requirement
R−1

h=1
Th < t2 −t1 ≤
R

h=1
Th.
(17)
The model assumptions imply that
P{Xh = xh, ih = i | Xh−1 = xh−1} =
exp


k βksik(xh)

n 
x∈Ai (xh−1) exp


k βksik(x)
,
(18)
provided that the sequences (ih) and (xh) are compatible in the sense that for each h the difference
(if any) between xh−1 and xh is in row ih of the adjacency matrix. Further, the continuous Markov
chain assumption implies that the number R −1 of choices made between t1 and t2 has a Poisson
distribution
P
	R−1

h=1
Th < t2 −t1 ≤
R

h=1
Th

= e−nρ(t2−t1) (nρ(t2 −t1))R−1
(R −1)!
.
(19)
www.annualreviews.org • Actor-Oriented Models for Network Dynamics
349


--- PAGE BREAK ---

Using the Markov assumption, the likelihood of the augmented data therefore is given by
P{R = r, X2 = x2, . . . , XR−1 = xr−1, I2 = i2, . . . , IR = ir | X (t1) = x1, X (t2) = xR}
= exp(−nρ(t2 −t1))(ρ(t2 −t1))r−1
(r −1)!
×
r
h=2
exp(
k βksihk(xh))

x∈Ai (xh−1) exp(
k βksihk(x))
(20)
provided that sequences (ih) and (xh) are compatible. In the data augmentation method, be it
frequentist or Bayesian, the crucial step is to obtain a sample from the conditional distribution
of the augmented data, here X2, . . . , XR−1, I2, . . . , IR, given the observed data, here (x(t1), x(t2)).
This is done in Snijders et al. (2010a) by a Metropolis-Hastings scheme consisting of a mix of the
following proposals. The proposals are formulated in terms of toggles, because effectively each
change in the network dynamics is a change of some Xi j to (1 −Xi j), called a toggle of (i, j).
1. Paired deletions: Two toggles of the same element (i, j) are randomly selected and both
deleted
2. Paired insertions: For a random pair (i, j) (i ̸= j), two toggles are inserted at random
positions in the chain
3. Single insertions: For a random node i, a choice by i resulting in a nonchange is inserted at
a random position
4. Single deletions: A random choice resulting in a nonchange is deleted from the chain
5. Permutations: A section of the chain is randomly permuted
This collection of proposals leads to a communicating random process on the space of all possible
chains connecting x(t1) to x(t2). Using acceptance ratios determined by the proposal probabilities
and the likelihood (Equation 20), the Metropolis-Hastings procedure converges to the conditional
distribution given the observations.
This is used to estimate the posterior distribution in a Bayesian approach by Koskinen &
Snijders (2007). To ﬁnd the maximum likelihood (ML) estimate, Snijders et al. (2010a) employ the
missing data principle of Orchard & Woodbury (1972) and Louis (1982). Denoting the parameter
by θ, observed data by X , and augmented data by V, let the observed data score function be
JX (θ; x) and the total data score function be JX V (θ; x, v). Then
Eθ{JX V (θ; x, V ) | X = x} = JX (θ; x),
(21)
so that the likelihood equation can be expressed as
Eθ{JX V (θ; x, V ) | X = x} = 0.
(22)
Snijders et al. (2010a) presented a method for solving this equation by a Robbins-Monro stochastic
approximation procedure, similar to the one sketched above for the Method of Moments.
3.3.1. Data augmentation and the score function. For the calculation of standard errors by
the delta method, derivatives of the type
∂Eθ S(X )
∂θ
are needed for various statistics S(X ) (see Schweinberger & Snijders 2007). Under regularity
conditions satisﬁed here, this is equal to
∂Eθ S(X )
∂θ
= EθJX (θ; X ) S(X ) = EθJX V (θ; X , V ) S(X )
(23)
for any data augmentation V. This is a very convenient equation, because in our case X is easily
simulated but JX (θ; X ) is incalculable; this equation allows us to choose a data augmentation by
350
Snijders


--- PAGE BREAK ---

unobserved statistics V
that is computed anyway for the simulation of V and for which
JX V (θ; X , V ) is easy to calculate.
This is used for the standard errors of the Method of Moments estimates (regular as well
as generalized), with the data augmentation being the i and x′ of each step of the simulation
algorithm for the process described in Section 2.4. These are the same statistics as in the data
augmentation for the ML estimation, but computed in a different process. This is elaborated on
by Schweinberger & Snijders (2007), who also discuss the fact that the derivatives can also be
approximated by ratios of ﬁnite differences, but this has various disadvantages.
4. COEVOLUTION MODELS
The principle of a continuous-time discrete-state Markov chain can be extended from a changing
network to a more complicated outcome space consisting of the Cartesian product of several
spaces.
4.1. Networks and Behavior
The interest in networks is based in large part on their important consequences for nodal vari-
ables of actors—behavioral tendencies, attitudes, performance, et cetera. These will often not
only be inﬂuenced by networks, but also themselves exert inﬂuence on networks. This leads to
scientiﬁc interest in the interdependent dynamics of networks and actor variables, for example,
friendships and health-related lifestyle behaviors of adolescents, or collaboration and performance
of organizations.
Let X(t) be a changing network (directed graph) on n nodes, as above, and let Z(t) =
(Z1(t), . . . , Zn(t)) be a vector of nodal variables for the same nodes. To keep the treatment in
the discrete realm, assume that Zi(t) is an ordinal discrete variable with values 1, 2, . . . , K for some
integer K ≥2. The model presented above can then be duplicated for these two as joint dependent
variables: For X and also for Z, there are rate functions λX
i
and λZ
i , and objective functions f X
i
and f Z
i . Parameters in f X
i
are denoted β X , and those in f Z
i
are β Z. It is assumed that at any
moment t, not more than one variable Xi j(t) or Zi(t) can change, so that opportunities for change
are for either the network, X , or the behavior, Z. Network changes are modeled as above, except
that now the objective function f X can also depend on the current state of the behavior. Given
that actor i has an opportunity for change in behavior, for the current value zi(t) = z0 the options
for the next possible state are z0 −1, z0, z0 + 1. The probabilities are
p Z
i (β, x, z0, z) =
⎧
⎪⎨
⎪⎩
exp( f Z
i (β, x, z0, z))
1
δ=−1 exp( f Z
i (β, x, z0, z0 + δ))
if z = z0 + δ; δ ∈{−1, 0, 1}
0
otherwise.
(24)
If this would mean an excursion out of the permitted range {1, . . . , K}, z stays the same.
The network-and-behavior dynamics can be simulated from tm to tm+1 by the following steps.
1. Set t = tm, x = x(tm), z = z(tm).
2. Generate T according to the exponential distribution with parameter
λ+ = 
i(λX
i (α, x, z) + λZ
i (α, x, z)).
3. If t + T ≥tm+1, set t = tm+1 and stop.
4. Select variable V ∈{X , Z} with probabilities
P{V } = 
i λV
i (α, x, z)/λ+.
www.annualreviews.org • Actor-Oriented Models for Network Dynamics
351


--- PAGE BREAK ---

5. Randomly select i ∈{1, . . . , n} using probabilities
λV
i (α, x, z)

i′ λV
i′ (α, x, z).
6. If V = X, randomly select x′ ∈Ai(x) using probabilities pi(β, x, x′) (see Equation 5); set
x = x′.
If V = Z, randomly select z′ ∈{z −1, z, z + 1} using probabilities p Z
i (β, x, z, z′) (see
Equation 24); if 1 ≤z′ ≤K, set z = z′.
7. Set t = t + T .
8. Return to step 2.
By letting the objective function f X
i
for the network depend on the network x as well as the
behavior z, and doing the same for the objective function f Z
i
for the behavior, a dynamic
interdependence between the network and the behavior can be modeled, so that the model
represents social selection (where network changes depend on network as well as behavior)
together with social inﬂuence (where behavior changes depend on behavior as well as network).
The possibilities for jointly analyzing social selection and social inﬂuence are discussed extensively
by Steglich et al. (2010).
Estimation of these models by the Method of Moments was discussed by Snijders et al. (2007).
We limit ourselves here to the case that the objective functions can be expressed without a depen-
dence on the previous state; the mentioned reference also treats the general case. The objective
function for the network then has the form
f X
i (x, z) =

k
βX
k s X
ik(x, z)
(25)
and the objective function for behavior
f Z
i (x, z) =

k
β Z
k s Z
ik(x, z).
(26)
Estimation by the Method of Moments works as explained above, but the statistics still have to be
speciﬁed. For the dependencies across the two variables, cross-lagged statistics are used, expressing
the causal arrow pointing from the earlier, explanatory variable to the later, dependent variable.
Deﬁne the functions
s X
k (x, z) =

i
s X
ik(x, z)
and
s Z
k (x, z) =

i
s Z
ik(x, z).
For parameters β X and βZ, respectively, the moment equations are
M −1

m=1
Eθ{s X
k (X (tm+1), z(tm)) | X (tm) = x(tm), Z(tm) = z(tm)}
=
M −1

m=1
s X
k (x(tm+1), z(tm))
(k = 1, . . . , Kβ),
(27)
M −1

m=1
Eθ{s Z
k (x(tm), Z(tm+1)) | X (tm) = x(tm), Z(tm) = z(tm)}
=
M −1

m=1
s Z
k (x(tm), z(tm+1))
(k = 1, . . . , Kβ).
(28)
352
Snijders


--- PAGE BREAK ---

These estimators perform quite well, but improved performance is expected from the generalized
Method of Moments. This is the basis of current work, extending that of Amati et al. (2015).
An algorithm for maximum likelihood is also implemented in the R package RSiena and
explained by Snijders (2016a). The principles are the same as for the networks-only model, but
there are more details because the changes have more aspects.
4.2. Multivariate Networks
A quite similar approach can be used to model coevolution of several networks. Examples
are friendship and advice in task-oriented environments, or like and dislike. Multivariate
actor-oriented network models were proposed by Snijders et al. (2013). Each network is a de-
pendent variable with its own rate function, objective function, and parameter vector; the objec-
tive functions for each will depend on all networks to represent their dynamic interdependence.
Denote the networks by X1 = (X1i j) and X2 = (X2i j). Here the dependence has a multilevel as-
pect (see Snijders 2016b). We give here several dependencies at different levels with illustrative
components of the objective function for X2.
■
The level of ties or dyads
– Direct entrainment: 
j x1i j x2i j
– Mixed reciprocity: 
j x1 ji x2i j
■
The level of actors: Degrees in one network affect degrees in the other network
– Outdegree associations: (
j x1i j)(
j x2i j)
– Indegree associations: (
j X1 ji) (
j x2 ji)
■
The level of triads, which is also related to composition of relations and algebraic network
models. Two examples are, with an interpretation for X1 = friendship, X2 = advice,
– Mixed closure, composition X1 ◦X1 ⇒X2 : 
j,h x1ih x1hj x2i j;
friends of friends tend to become advisors
– Mixed closure, composition X1 ◦X2 ⇒X2 : 
j,h x1ih x2hj x2i j
advisors of friends tend to become advisors
4.3. Other Extensions
The use of a simulation model as a model for data, with simulation-based estimates and tests,
gives considerable freedom to deﬁne details of the model and extend or adapt it for particular data
structures. This section gives some of these extensions.
4.3.1. Changing composition. In many situations it may occur that the actor set is not constant
throughout, but changes between the start and end of the observation period. Students may leave
or enter school, companies can go broke, organizations may be established. Provided such changes
are exogenous, this can be straightforwardly speciﬁed in the simulation design, as discussed by
Huisman & Snijders (2003). The researcher will have to specify the initial ties and what happens
to the ties after an actor leaves the network.
4.3.2. Structurally determined values. Some ties may be impossible. For example, in the net-
work of advice between judges in Tubaro et al. (2017) some of the actors were available as advisors
but could not make any advice choices themselves. It is also possible that some ties are prescribed,
www.annualreviews.org • Actor-Oriented Models for Network Dynamics
353


--- PAGE BREAK ---

such as advice from a superior to a direct subordinate. This implies that some tie variables Xi j may
be structural zeros or structural ones. Such restrictions can be implemented as speciﬁcations of
the set Ai(x) of permitted values of the adjacency matrix for the next step in the simulations.
4.3.3. Ordered tie values. Networks with ordinal discrete tie values can be represented by
multivariate networks, using transformation to the level networks, deﬁned as follows. Let x = (xi j)
be the adjacency matrix of a network with possible tie values xi j = 0 for no tie, and xi j = 1, . . . , K
for some K ≥2, for increasingly stronger ties. This can be represented by K level networks
x(1), . . . , x(K) deﬁned by
x(k)
i j
=
	
0
xi j < k
1
xi j ≥k.
(29)
Often an acceptable requirement for the underlying continuous-time process is that at any given
time point t, xi j(t) = k can change to the values k −1 or k + 1—to the extent that these are
within the range [0, K]—but not make larger instantaneous jumps. An example with K = 2 is
for weak (k = 1) and strong (k = 2) ties, and the requirement means that to go from no tie to a
strong tie, or vice versa, it is necessary to pass through the intermediate state of a weak tie. This
can be implemented by modeling the multivariate network (X (1)(t), . . . , x(K)(t)) with restrictions
(depending on x, t and k) to the sets A(k)
i (x), enforcing this requirement. This is elaborated on by
Snijders & Steglich (2017b).
4.3.4. Duration analysis. Analysis of survival times dependent on a network where the network
itself evolves in dependence on the set of survivors can be applied, for example, to diffusion of
innovations coevolving with a network. This can be represented, by the model of Section 4.1, with
a binary behavior variable that cannot decrease, implemented as a restriction on the permitted set
of z′ in the simulation model in that section. Such a model was proposed by Greenan (2015). Her
model represents the dependence of survival on the network and the covariates in the rate function,
not in the objective function. This leads to a network coevolution version of the proportional
hazards model.
4.3.5. Nondirected networks. A larger difference is the modeling of nondirected networks,
deﬁned by the restriction that xi j = x ji. Here the actor-oriented framework requires us to express
the coordination between actors i and j in the choice of the tie value xi j(t). Several models for
this coordination are presented by Snijders & Pickup (2017).
5. SOME EXAMPLES
The actor-oriented model has been used in various publications, many of which are listed at
http://www.stats.ox.ac.uk/∼snijders/siena/.
The example presented here is based on social network data collected in the Teenage Friends
and Lifestyle Study (Pearson & Michell 2000, West & Sweeting 1996). This data set was also used
in the article explaining the joint analysis of social selection and social inﬂuence (Steglich et al.
2010), but here only results for the network dynamics are given.
Friendship network data were collected for a cohort of pupils in a school in western Scotland.
The panel data were recorded over a three-year period starting in 1995, when the pupils were aged
13, and ending in 1997. A total of 160 pupils took part in the study, 129 of whom were present at
354
Snijders


--- PAGE BREAK ---

Figure 1
Second wave of the western Scotland friendship network from the Teenage Friends and Lifestyle Study
(Pearson & Michell 2000, West & Sweeting 1996). Boys are represented as squares, and girls are circles.
Color/shading represents smoking (bottom) and drinking (top); orange/light is high, blue/dark is low. Gray
arrows are asymmetric directed friendships, and black lines are reciprocated friendships. Vertices are
numbered 1, . . . , 129 as in the data set. Picture provided by Krists Boitmanis.
all three measurement points. The friendship networks analyzed here were observed by allowing
the pupils to name up to six closest friends. A picture of the second wave is in Figure 1.
The data set analyzed here consists of the pupils present at all three waves. Based on sociological
theories about friendship combined with earlier studies, the model included the following set of
effects:
1. The outdegree effect (7)
2. The reciprocity effect (8)
3. The so-called geometrically weighted edgewise shared partners (GWESP) effect (Snijders
et al. 2006, Hunter 2007): to account for transitive closure, that is, the tendency for friends
of friends to be friends. This differs from the transitive triplets effect (Equation 9) in that
the number of indirect connections does not have a linear effect on the log-probability for
the creation of a direct tie, but rather a concave increasing effect:
GWESP(i, α, x) =

j
xi j eα 
1 −(1 −e−α)

h xihxhj 
.
(30)
Here α is a tuning parameter, which is chosen at the usual ﬁxed value of α = ln(2). The
GWESP effect ﬁts better than the transitive triplets effect for this and many other data
sets.
www.annualreviews.org • Actor-Oriented Models for Network Dynamics
355


--- PAGE BREAK ---

4. Four degree-related effects, useful for a good representation of the indegree and outdegree
distributions:
sIPi(x) =

j
xi j x+ j
indegree popularity
sOAi(x) =

j
xi j xi+
outdegree activity
sIAi(x) =

j
xi j x+i
indegree activity
sRAi(x) =

j
xi j

h
xihxhi

reciprocated degree activity.
Here the + denotes summation over the index.
5. Having the same gender,
sSGi =

j
xi j I{gender i = gender j},
where I{A} is the indicator function of the event A
6. The distance between the dwelling places. This was operationalized as the centered loga-
rithm of the distance between the centroids of the postcode regions:
sLDi =

j
xi j ln(di j).
Estimation was done with the Method of Moments as in Snijders (2001), using the R package
RSiena version 1.1-294. To account for the restriction that outdegrees were not larger than 6,
the permitted set Ar
i(x0) in Section 2 was the set of all digraphs with outdegrees not larger than 6,
and differing in no more than one tie variable from x0.
The results are in Table 1, and the interpretation is the following. For the rate parameters,
actors have on average 13 and 10 opportunities for change, respectively, in periods 1 (wave 1 –
wave 2) and 2 (wave 2 – wave 3). Recall that an opportunity for change does not need to lead to
a change, and changes can be canceled before being observed; these estimated rate parameters
Table 1
Estimation results of actor-oriented model for western Scotland data: parameter
estimates and standard errors
Effect
Parameter
(Standard error)
Rate period 1
ˆρ1 = 12.853
(1.375)
Rate period 2
ˆρ2 = 10.217
(1.020)
Outdegree
ˆβOD = −3.092
(0.224)
Reciprocity
ˆβR = 3.297
(0.271)
GWESP
ˆβGWESP = 1.856
(0.083)
Indegree-popularity
ˆβIP = −0.055
(0.020)
Outdegree-activity
ˆβOA = 0.101
(0.035)
Reciprocated degree-activity
ˆβRA = −0.244
(0.065)
Indegree-activity
ˆβIA = −0.115
(0.051)
Log distance (centered)
ˆβLD = −0.180
(0.040)
Same gender
ˆβSG = 0.636
(0.083)
356
Snijders


--- PAGE BREAK ---

are therefore higher than the observed average number of changes. The parameters in the ob-
jective function can be tested by referring the t-ratio of estimate divided by standard error to an
approximating standard normal distribution. No proof is available for this, but it is supported by
extensive simulation studies. Because all effects in this model operate for creation of new ties as
well as for maintenance of existing ties, positive parameters have the interpretation that the effect
works for both these aspects of the dynamics. The outdegree effect balances between creation and
termination of ties, given all other effects in the model, and usually is taken for granted in the
interpretation; it is negative, reﬂecting that the probability of befriending arbitrary others is low.
There is a strong tendency toward reciprocity ( ˆβR = 3.297) as well as transitive closure as repre-
sented by the GWESP effect ( ˆβGWESP = 1.856). This is generally seen for friendship networks.
Friendship ties become less likely as the distance between dwellings increases ( ˆβLD = −0.18), and
are more likely between same-gender pairs ( ˆβSG = 0.636). High indegrees have a negative effect
on receiving and keeping incoming friendships ( ˆβIP = −0.055) and also on creating and main-
taining outgoing friendships ( ˆβIA = −0.115). High current outdegrees have a positive effect on
creating and maintaining outgoing friendships ( ˆβOA = 0.101). However, all these degree effects
should be considered in light of all other effects, in particular the reciprocated degree-activity
effect ( ˆβRA = −0.244). An interpretation is that those who have many reciprocated friendships
are satisﬁed with their network position, this negative parameter showing that they are less active
in creating new ties; the strongly positive reciprocity effect implies they keep their existing ties
with a high probability; contrasting with this, those with few reciprocated friendships will try
to establish more friendships. Note that the maximum outdegree of 6 is a bound that is used as
a constraint in the simulation model; this should be taken into account in the interpretation of
parameter estimates.
5.1. Coevolution of Networks and Behavior
The models for coevolution of networks and behavior have been used in various studies of how
adolescent lifestyles and health behaviors are inﬂuenced by friends’ behaviors, and how important
they are for making and losing friends. An overview is the special issue “Network and Behavior
Dynamics in Adolescence” of the Journal of Research on Adolescence (see Veenstra et al. 2013).
5.2. Multivariate Dependent Networks
A multivariate application was presented by Huitsing et al. (2014). Two interdependent networks
of bullying and defending were studied in three elementary schools with a total of 354 children
over three waves. The children could nominate others in the school who bullied them and also
others who defended them. Note that bullies can also be defended themselves, which points
to cooperation in bullying. Of special interest was how bullying and defending inﬂuenced each
other, with distinct attention for effects at the dyadic, actor, and triadic levels. At the dyadic level,
unexpectedly, no signiﬁcant effects were found; also, at the actor level, where effects of in- and
outdegrees were tested, results were not strong and differed somewhat between the three schools.
Clear patterns did emerge, however, at the triadic level. For example, in these three groups, if i
bullies j and k defends j, then the probability is higher that, later, i will also bully k: Defending
others leads to being victimized, in turn, by their bullies. Another pattern is that if i defends j
and j bullies k, the probability will be higher that, later, i will also bully k. Here the defending
is interpreted not as defense against bullies, but as defending bullies against others who try to
intervene. Such patterns can be called mixed triadic closure, generalizing the more well-known
pattern of transitive network closure.
www.annualreviews.org • Actor-Oriented Models for Network Dynamics
357


--- PAGE BREAK ---

6. SOME OTHER RELATED MODELS
There are a variety of nonstatistical models for network dynamics, designed for theoretical or other
purposes—too many to even start reviewing here. Surveys of statistical models for networks were
given by Goldenberg et al. (2009) and Kolaczyk (2009). Reviews from an economics, statistical
physics, and sociological point of view, respectively, can be found in Jackson (2008) and Graham
(2015), Newman (2010), and Snijders (2011). An overview of dynamic network models from a
background of statistical mechanics, but with quite general applications, was given by Holme &
Saram¨aki (2012). In the following, we brieﬂy mention some statistical longitudinal network models
for networks observed at two or more discrete time points.
Some of these are longitudinal versions of the exponential random graph model (ERGM) of
Wasserman & Pattison (1996) and Lusher et al. (2013). Of these, the longitudinal tie-oriented
model of Koskinen & Snijders (2013) is closest to the stochastic actor-oriented models presented
here. This model is called the longitudinal ERGM in Koskinen et al. (2015). It is a continuous time
model, with changes restricted to sequences of changes of single tie variables. The opportunities
for change occur randomly for pairs of nodes, and the probability of tie changes, given that some
pair of nodes was selected, is deﬁned by a logistic regression model conditional on the rest of the
graph just like in the basic ERGM. The model speciﬁcation can be done in a similar way to the
actor-oriented model proposed in this article, except that an analogue of the rate function is not
straightforward to deﬁne and is not implemented in current software.
Hanneke et al. (2010) proposed the temporal ERGM (TERGM). This is a discrete time network
model for a network time series X (t1), . . . , X (tM ) where the conditional distribution of X(tm)
given X (tm−1) has an ERGM distribution. They elaborated on the case where the Xi j(tm) for
i, j = 1, . . . , n are conditionally independent given X (tm−1). This avoids the so-called near-
degeneracy problems discussed by Snijders et al. (2006) and Schweinberger (2011), but Lerner
et al. (2013) concluded that the restriction to models with conditional independence given the
preceding observation does not give a good representation of network dependencies, unless inter-
observation times are relatively short. A different presentation of basically the same model was
given by Paul & O’Malley (2013).
The TERGM was extended by Krivitsky & Handcock (2014) to the separable temporal ERGM,
which is a TERGM for which the newly created ties are conditionally independent of the ter-
minated ties. This assumption will not always be tenable, but it may facilitate interpretation of
parameters. Their article contains an application implementing triadic network dependence.
Other longitudinal models build on the latent space network models of Hoff et al. (2002).
These models postulate a low-dimensional Euclidean space in which the nodes are positioned,
with the log-odds of a tie being a linear function of covariates and the distance between the nodes.
Durante & Dunson (2014) proposed a longitudinal latent space model, using the inner product
instead of the distance; whether this is easily interpretable and provides a good ﬁt will depend on
the application. In their model the positions of the nodes evolve in continuous time according to
a Gaussian process.
A different approach is taken by Westveld & Hoff (2011). Because the tie xi j = 1 is interpreted
as a connection going from i to j, it is customary to call i the sender and j the receiver of the
tie. Westveld and Hoff specify a mixed effects model, with sender and receiver effects, which are
correlated over time. In a sense this is a longitudinal version of the p2 model of van Duijn et al.
(2004), but with a less detailed representation of reciprocity.
For the stochastic actor-oriented model as well as all these other models, estimation procedures
have been developed, but up to now no mathematical proofs have been available of properties such
as unbiasedness or consistency. The relevant asymptotics here would be that, with a ﬁxed number
358
Snijders


--- PAGE BREAK ---

of waves M, the number of nodes n tends to inﬁnity, and the average degree remains bounded in
probability. The network dependence is so difﬁcult that so far these models have resisted attempts
at constructing such proofs, although various simulations have led to conjectures that indeed
some consistency and asymptotic normality properties should hold. Graham (2015) reviewed
some identiﬁcation properties.
7. DISCUSSION
The crucial issue for network modeling is how to represent dependence structures between net-
work ties. For single (cross-sectional) observations of one network this is very hard, but for lon-
gitudinal network data there is at least the arrow of time. The stochastic actor-oriented model
is designed for longitudinal network data collected in a panel design, with two or more panel
waves. It is a Markov chain model, consisting of a combination of two generalized linear models
for the unobserved continuous-time process, but observed only at the times of the panel waves.
If change between subsequent waves is not too large, then a strong dependence between the re-
peated observations may be presumed. A rule of thumb was proposed (Snijders et al. 2010b) that
Jaccard measures of similarity between successive waves preferably should be 0.3 or more. This
means that the number of remaining ties is not much fewer than the average of the number of
newly created ties and the number of terminated ties. Experience with applications has shown,
however, that data sets with larger turnover, and Jaccard similarities between successive waves
lower even than 0.2, may also be meaningfully analyzed with this model. When the amount of
change is somewhat limited in this way, and when it is reasonable to assume that, as an approxima-
tion, network change took place as an unobserved sequence of dyadic (as opposed to groupwise)
changes, the stochastic actor-oriented model may be a good representation of network dynamics.
As with other generalized linear models, there is a wide ﬂexibility to adapt the model speciﬁcation
to the domain of application, research question, and subject-matter knowledge. How to specify
the model is discussed at length in Snijders & Steglich (2017a), and some examples are given in
Snijders & Steglich (2017b). The model is available in the R package RSiena. Its manual (Ripley
et al. 2016) presents many speciﬁcation possibilities. Published applications can be found at the
website http://www.stats.ox.ac.uk/∼snijders/siena/.
The choice between models, comparing the stochastic actor-oriented model to other models
such as those mentioned in Section 6, should be based on considerations such as goodness of ﬁt,
conceptual validity, speciﬁcation possibilities, interpretability, and practicality. This choice will
also depend on the purposes of the data analysis: for example, studying network dependencies
themselves, versus controlling for network structure in tests of effects of actor or dyadic variables.
Goodness of ﬁt, in the sense of a good representation of dependence structures, can be assessed
by comparing simulated data to observed data in the way discussed for cross-sectional network
models by Hunter et al. (2008). Methods for doing this were developed by Lospinoso (2012) and
are presented in Snijders & Steglich (2017a). The network effects that can be speciﬁed in the
stochastic actor-oriented model and in the various longitudinal variants of the ERGM give more
ﬂexible possibilities to explicitly specify and investigate the details of the network dependence than
the latent space or the mixed effect models.
The stochastic actor-oriented model is based on a continuous-time probability model, whereas
the data are assumed to be collected at discrete time points, possibly as few as two. With the
free multiplicative parameter ρm in the rate function (Equation 3), this implies that as long as
observation does not interfere with the process, the timing of the observations does not affect the
validity of the model. The model refers to a process unfolding in continuous time with a stationary
transition distribution (unless some of the parameters are time-dependent) of which the marginal
www.annualreviews.org • Actor-Oriented Models for Network Dynamics
359


--- PAGE BREAK ---

distribution is not necessarily stationary; the meaning and values of parameters other than ρm are
unrelated to the observation times. This may be an advantage over discrete-time models when
modeling processes for which time elapsed between observations is irregular or does not have a
regular consequence on the network changes.
For modeling cross-sectional network data, the ERGM (Wasserman & Pattison 1996, Lusher
et al. 2013) is much used. This model is known to be plagued by the problem of near-degeneracy,
which appears as the property that for many quite usual observed data sets, the ML estimate is
obtained for a distribution concentrating almost all of its probability mass on a few networks, some
complete or very dense and some empty or very sparse, for which the expected value of the sufﬁcient
statistics is indeed equal to the observed value, but such that all these networks are quite distant from
the observed network. This problem is discussed, for example, by Snijders et al. (2006), Rinaldo
et al. (2009), and Schweinberger (2011), and the ﬁrst reference proposes speciﬁcations that avoid
near-degeneracy. Because of its longitudinal nature, this problem does not affect the stochastic
actor-oriented model; depending on the model speciﬁcation, it may, however, apply to its limiting
stationary distribution. For practical application, this is of no direct concern. There is a relation
with model speciﬁcation, however, because the speciﬁcations for which the limiting distribution
could be near-degenerate might also be prone to having a worse ﬁt when applied to panel data. As
an example, transitivity for cross-sectional networks cannot be modeled well by the ERGM with
the count of transitive triplets among the sufﬁcient statistics; this statistic leads to near-degenerate
models. For the purpose of modeling transitivity, it can be replaced by the GWESP effect, which is
analogous to Equation 30 (see Hunter 2007). The count of transitive triplets deﬁnes a linear effect
of the number of indirect connections on the log-odds for the existence of a direct tie; the GWESP
statistic deﬁnes a concave increasing effect, and its sublinearity counters the near-degeneracy. For
the longitudinal stochastic actor-oriented model, the transitive triplets effect is Equation 9; this
effect can be used mostly without a problem, but often a better ﬁtting representation of transitivity
is given by the GWESP effect (Equation 30).
Modeling network dynamics is quite demanding in many respects, and the area is itself highly
dynamic. More models will have to be developed in response to the needs of empirical researchers.
New procedures should be constructed that may be more efﬁcient statistically and/or computa-
tionally, and implemented in software. Mathematical results should be proved for properties of
the statistical procedures. A major open question is the robustness of estimation results for mis-
speciﬁcation, and the role played in this respect by the goodness of ﬁt of a model.
DISCLOSURE STATEMENT
The author is not aware of any afﬁliations, memberships, funding, or ﬁnancial holdings that might
be perceived as affecting the objectivity of this review.
ACKNOWLEDGMENTS
I am grateful to Christian Steglich for many years of collaboration on the development of this
model. Thanks to Ruth Ripley, Krists Boitmanis, and Felix Sch¨onenberger for programming the
RSiena package, and to Krists, once more, for making Figure 1. Thanks to Patrick West and the
Medical Research Council/Medical Sociology Unit, University of Glasgow, for permission to use
the data.
LITERATURE CITED
Amati V, Sch¨onenberger F, Snijders T. 2015. Estimation of stochastic actor-oriented models for the evolution
of networks by generalized method of moments. J. Soc. Fr. Stat. 156:140–65
360
Snijders


--- PAGE BREAK ---

Bather J. 1989. Stochastic approximation: a generalisation of the Robbins-Monro procedure. Proc. 4th Prague
Symp. Asympt. Stat., ed. P Mandl, M Huˇskov´a, pp. 13–27. Prague: Charles Univ.
Bolloba`s B. 1985. Random Graphs. London: Academic Press
Brandes U, Robins G, McCranie A, Wasserman S. 2013. What is network science? Netw. Sci. 1:1–15
Burguete J, Gallant AR, Souza G. 1982. On uniﬁcation of the asymptotic theory of nonlinear econometric
models. Econom. Rev. 1:151–90
Durante D, Dunson DB. 2014. Nonparametric Bayes dynamic modelling of relational data. Biometrika
101:883–98
Erd˝os P, R´enyi A. 1960. On the evolution of random graphs. Mat. Kut. Int´ezet K˝ozlem´enyei 5:17–61
Freeman LC. 2004. The Development of Social Network Analysis: A Study in the Sociology of Science. Vancouver,
BC: Empirical Press
Goldenberg A, Zheng AX, Fienberg SE, Airoldi EM. 2009. A survey of statistical network models. Found.
Trends Mach. Learn. 2:129–233
Graham BS. 2015. Methods of identiﬁcation in social networks. Annu. Rev. Econ. 7:465–85
Greenan CC. 2015. Diffusion of innovations in dynamic networks. J. R. Stat. Soc. A 178:147–66
Hanneke S, Fu W, Xing EP. 2010. Discrete temporal models for social networks. Electron. J. Stat. 4:585–605
Hansen L. 1982. Large sample properties of generalized method of moments estimators. Econometrica 50:1029–
54
Hoff PD, Raftery AE, Handcock MS. 2002. Latent space approaches to social network analysis. J. Am. Stat.
Assoc. 97:1090–98
Holland PW, Leinhardt S. 1977. A dynamic model for social networks. J. Math. Sociol. 5:5–20
Holme P, Saram¨aki J. 2012. Temporal networks. Phys. Rep. 519:97–125
Huisman ME, Snijders TAB. 2003. Statistical analysis of longitudinal network data with changing composition.
Sociol. Methods Res. 32:253–87
Huitsing G, Snijders TAB, Van Duijn MA, Veenstra R. 2014. Victims, bullies, and their defenders: a longi-
tudinal study of the coevolution of positive and negative networks. Dev. Psychopathol. 26:645–59
Hunter DR. 2007. Curved exponential family models for social networks. Soc. Netw. 29:216–30
Hunter DR, Goodreau SM, Handcock MS. 2008. Goodness of ﬁt of social network models. J. Am. Stat. Assoc.
103:248–58
Jackson MO. 2008. Social and Economic Networks. Princeton, NJ: Princeton Univ. Press
Kolaczyk ED. 2009. Statistical Analysis of Network Data: Methods and Models. New York: Springer
Koskinen JH, Snijders TAB. 2007. Bayesian inference for dynamic social network data. J. Stat. Plan. Inference
13:3930–38
Koskinen J, Snijders TAB. 2013. Longitudinal models. In Exponential Random Graph Models, ed. D Lusher,
J Koskinen, G Robins, pp. 130–40. Cambridge, UK: Cambridge Univ. Press
Koskinen JH, Caimo A, Lomi A. 2015. Simultaneous modelling of initial conditions and time heterogeneity
in dynamic networks: an application to foreign direct investments. Netw. Sci. 3:58–77
Krivitsky PN, Handcock MS. 2014. A separable model for dynamic networks. J. R. Stat. Soc. B 76:29–46
Kushner HJ, Yin GG. 2003. Stochastic Approximation and Recursive Algorithms and Applications. New York:
Springer. 2nd ed.
Lerner J, Indlekofer N, Nick B, Brandes U. 2013. Conditional independence in dynamic networks. J. Math.
Psychol. 57:275–83
Lospinoso JA. 2012. Statistical Models for Social Network Dynamics. PhD Thesis, Univ. Oxford, Oxford, UK
Louis T. 1982. Finding observed information when using the EM algorithm. J. R. Stat. Soc. B 44:226–33
Lusher D, Koskinen J, Robins G. 2013. Exponential Random Graph Models. Cambridge, UK: Cambridge Univ.
Press
Maddala G. 1983. Limited-Dependent and Qualitative Variables in Econometrics. Cambridge, UK: Cambridge
Univ. Press. 3rd ed.
Newman M. 2010. Networks: An Introduction. Oxford, UK: Oxford Univ. Press
Norris JR. 1997. Markov Chains. Cambridge, UK: Cambridge Univ. Press
Orchard T, Woodbury M. 1972. A missing information principle: theory and applications. Proc. 6th Berkeley
Symp. Math. Stat. Probab., Vol. 1, pp. 697–715. Berkeley: Univ. Calif. Press
www.annualreviews.org • Actor-Oriented Models for Network Dynamics
361


--- PAGE BREAK ---

Paul S, O’Malley AJ. 2013. Hierarchical longitudinal models of relationships in social networks. Appl. Stat.
62:705–22
Pearson MA, Michell L. 2000. Smoke rings: social network analysis of friendship groups, smoking and drug-
taking. Drugs: Educ. Prev. Policy 7(1):21–37
Polyak BT. 1990. New method of stochastic approximation type. Autom. Remote Control 51:937–46
Rinaldo A, Fienberg SE, Zhou Y. 2009. On the geometry of discrete exponential families with application to
exponential random graph models. Electron. J. Stat. 3:446–84
Ripley RM, Snijders TAB, B´oda Z, V¨or¨os A, Preciado P. 2016. Manual for Siena version 4.0. Tech. Rep.,
Univ. Oxford, Dep. Stat., Nufﬁeld College. https://www.stats.ox.ac.uk/∼snijders/siena/RSiena_
Manual.pdf
Robbins H, Monro S. 1951. A stochastic approximation method. Ann. Math. Stat. 22:400–7
Rubinstein R. 1986. The score function approach for sensitivity analysis of computer simulation models. Math.
Comput. Simul. 28:351–79
Ruppert D. 1988. Efﬁcient estimation from a slowly convergent Robbins-Monro process. Tech. Rep. 781,
Sch. Oper. Res. Ind. Eng., Cornell Univ.
Ruppert D. 1991. Stochastic approximation. In Handbook of Sequential Analysis, ed. BK Ghosh, PK Sen,
pp. 503–29. New York: Marcel Dekker
Schwabe R, Walk H. 1996. On a stochastic approximation procedure based on averaging. Metrika 44:165–80
Schweinberger M. 2011. Instability, sensitivity, and degeneracy of discrete exponential families. J. Am. Stat.
Assoc. 106:1361–70
Schweinberger M, Snijders TAB. 2007. Markov models for digraph panel data: Monte Carlo–based derivative
estimation. Comput. Stat. Data Anal. 51(9):4465–83
Snijders TAB. 2001. The statistical evaluation of social network dynamics. Sociol. Methodol. 31:361–95
Snijders TAB. 2011. Statistical models for social networks. Annu. Rev. Sociol. 37:131–53
Snijders TAB. 2016a. Siena algorithms. Tech. Rep., Univ. Groningen and Univ. Oxford. https://www.stats.ox.
ac.uk/∼snijders/siena/Siena_algorithms.pdf
Snijders TAB. 2016b. The multiple ﬂavours of multilevel issues for networks. In Multilevel Network Analysis
for the Social Sciences: Theory, Methods and Applications, ed. E Lazega, TAB Snijders, pp. 15–46. New York:
Springer
Snijders TAB, Doreian P. 2010. Introduction to the special issue on network dynamics. Soc. Netw. 32:1–3
Snijders TAB, Doreian P. 2012. Introduction to the special issue on network dynamics (part 2). Soc. Netw.
34:289–90
Snijders TAB, Koskinen JH, Schweinberger M. 2010a. Maximum likelihood estimation for social network
dynamics. Ann. Appl. Stat. 4:567–88
Snijders TAB, Lomi A, Torl`o V. 2013. A model for the multiplex dynamics of two-mode and one-mode
networks, with an application to employment preference, friendship, and advice. Soc. Netw. 35:265–76
Snijders TAB, Pattison PE, Robins GL, Handcock MS. 2006. New speciﬁcations for exponential random
graph models. Sociol. Methodol. 36:99–153
Snijders TAB, Pickup M. 2017. Stochastic actor-oriented models for network dynamics. In Oxford Handbook
of Political Networks, ed. JN Victor, M Lubell, AH Montgomery. Oxford: Oxford Univ. Press. In press
Snijders TAB, Steglich CEG. 2017a. Actor-Based Models for Analyzing Network Dynamics. Cambridge, UK:
Cambridge Univ. Press
Snijders TAB, Steglich CEG, eds. 2017b. Social Network Dynamics by Examples. Cambridge, UK: Cambridge
Univ. Press
Snijders TAB, Steglich CEG, Schweinberger M. 2007. Modeling the co-evolution of networks and behavior.
In Longitudinal Models in the Behavioral and Related Sciences, ed. K van Montfort, H Oud, A Satorra,
pp. 41–71. Mahwah, NJ: Lawrence Erlbaum
Snijders TAB, van de Bunt GG, Steglich C. 2010b. Introduction to actor-based models for network dynamics.
Soc. Netw. 32:44–60
Steglich CEG, Snijders TAB, Pearson MA. 2010. Dynamic networks and behavior: separating selection from
inﬂuence. Sociol. Methodol. 40:329–93
Tanner M, Wong W. 1987. The calculation of posterior distributions by data augmentation (with discussion).
J. Am. Stat. Assoc. 82:528–50
362
Snijders


--- PAGE BREAK ---

Tubaro P, Mounier L, Lazega E, Snijders T. 2017. Dynamics of advice-seeking networks among judges at the
commercial court of Paris. In Social Network Dynamics by Examples, ed. T Snijders, C Steglich. Cambridge,
UK: Cambridge Univ. Press. In press
van Duijn MA, Snijders TAB, Zijlstra BH. 2004. p2: A random effects model with covariates for directed
graphs. Stat. Neerl. 58:234–54
Veenstra R, Dijkstra JK, Steglich C, Van Zalk MH. 2013. Network–behavior dynamics. J. Res. Adolesc.
23(3):399–412
Wasserman S, Pattison P. 1996. Logit models and logistic regression for social networks: I. An introduction
to Markov graphs and p∗. Psychometrika 61:401–25
Watts DJ, Strogatz SH. 1998. Collective dynamics of ‘small-world’ networks. Nature 393(6684):440–42
West P, Sweeting H. 1996. Background, rationale and design of the West of Scotland 11 to 16 Study. Work. Pap. 52,
MRC Med. Sociol. Unit
Westveld AH, Hoff PD. 2011. A mixed effects model for longitudinal relational and network data, with
applications to international trade and conﬂict. Ann. Appl. Stat. 5:843–72
www.annualreviews.org • Actor-Oriented Models for Network Dynamics
363


--- PAGE BREAK ---

