The Statistical Evaluation of Social Network
Dynamics
Tom A.B. Snijders
ICS, Department of Statistics and Measurement Theory
University of Groningen ∗
January 2001
To be published, Sociological Methodology
∗Tom A.B. Snijders, Grote Kruisstraat 2/1, 9712 TS Groningen, The Netherlands,
email <t.a.b.snijders@ppsw.rug.nl>.
1


--- PAGE BREAK ---

Abstract
A class of statistical models is proposed for longitudinal network data.
The dependent variable is the changing (or evolving) relation network,
represented by two or more observations of a directed graph with a
ﬁxed set of actors.
The network evolution is modeled as the con-
sequence of the actors making new choices, or withdrawing existing
choices, on the basis of functions, with ﬁxed and random components,
that the actors try to maximize.
Individual and dyadic exogenous
variables can be used as covariates.
The change in the network is
modeled as the stochastic result of network eﬀects (reciprocity, tran-
sitivity, etc.) and these covariates. The existing network structure
is a dynamic constraint for the evolution of the structure itself. The
models are continuous-time Markov chain models that can be imple-
mented as simulation models. The model parameters are estimated
from observed data. For estimating and testing these models, statis-
tical procedures are proposed which are based on the method of mo-
ments. The statistical procedures are implemented using a stochastic
approximation algorithm based on computer simulations of the net-
work evolution process.
1.
INTRODUCTION
Social networks represent relations (e.g., friendship, esteem, collaboration,
etc.) between actors (e.g., individuals, companies, etc.). This paper is con-
cerned with network data structures in which all relationships within a given
set of n actors are considered. Such a network can be represented by an n×n
matrix x = (xij), where xij represents the relation directed from actor i to
actor j (i, j = 1, ..., n) . Only dichotomous relations are considered here: the
relation from i to j either is present, denoted xij = 1, or absent, denoted
xij = 0. Self-relations are not considered, so that the diagonal values xii are
meaningless. They are formally deﬁned as xii = 0. This x is the adjacency
matrix of the directed graph by which the network can be represented, and
it is also called the sociomatrix.
More speciﬁcally, we consider longitudinal data on entire networks. It is
supposed that the data available is a time-series x(t), t ∈{t1, ..., tM} of social
networks for a constant set {1, ..., n} of actors. The observation times are
ordered, i.e., t1 < t2 < ... < tM. The number M of time points is at least 2.
The purpose of the statistical analysis is to obtain an insight in the evolution
of the network, where the initial state x(t1) is taken for granted.
Longitudinal social network data are a complex data structure, requir-
ing complex methods of data analysis for a satisfactory treatment. Holland
2


--- PAGE BREAK ---

and Leinhardt (1977a, 1977b) and Wasserman (1977) already proposed to
use continuous-time Markov chains as a model for longitudinal social net-
works. In a continuous-time model, time is assumed to ﬂow on continuously,
although observations are available only at the discrete time points t1 to tM,
and between the observations the network is assumed to change unobserved
at random moments as time progresses. Continuous-time models oﬀer, in
principle, greater ﬂexibility than the discrete-time Markov chain models elab-
orated, e.g., by Katz and Proctor (1959), Wasserman (1987), and Wasserman
and Iacobucci (1988).
A basic continuous-time Markov chain model for dichotomous social net-
works, the reciprocity model, was elaborated by Wasserman (1977, 1979,
1980) and further investigated by Leenders (1995a, 1995b) and Snijders
(1999).
This model is limited because it assumes dyad independence.
A
dyad is deﬁned as the pair (xij, xji) of relations between two actors i and j.
Dyad independence means that the dyads (Xij(t), Xji(t)) evolve as mutually
independent Markov chains. This assumption eﬀectively allows to change the
analysis from the level of the network to the level of the dyad. This is com-
putationally attractive, but does not leave much room for realistic statistical
modeling. Eﬀects related to dependence in the relations between sets of three
or more actors, e.g., transitivity (“a friend of my friend is my friend”), cannot
be represented by models with dyad independence. Other continuous-time
models for social network evolution were proposed by Wasserman (1980) and
Mayer (1984), but to allow parameter estimation these models also were very
restrictive.
Markov chain Monte Carlo (“MCMC”) methods can be used to develop
statistical procedures for quite general probability models for the evolution of
social networks, provided that these models can be implemented as stochas-
tic simulation models. This was proposed by Snijders (1996) for data deﬁned
by sociometric rankings. Snijders and Van Duijn (1997) sketched how this
approach can be used for dichotomous social network data. They also indi-
cated how such an actor-oriented model must be speciﬁed in order to obtain
the dyad-independent models of Wasserman and Leenders. Empirical appli-
cations of these stochastic actor-oriented models were presented in Van de
Bunt (1999) and Van de Bunt, Van Duijn, & Snijders (1999). The present
paper extends this method to data observed at more than two time points,
speciﬁes a more eﬃcient and simpler stochastic approximation algorithm,
and presents a wider array of eﬀects that can be included in the model.
The basic idea for our model for social network evolution is that the ac-
tors in the network may evaluate the network structure and try to obtain
a “pleasant” (more neutrally stated, “positively evaluated”) conﬁguration
3


--- PAGE BREAK ---

of relations. The actors base their choices in the network evolution on the
present state of the network, without using a memory of earlier states. How-
ever, they are assumed to have full knowledge of the present network. This
represents the idea that actors pursue their own goals under the constraints
of their environment, while they themselves constitute each others’ changing
environment (cf. Zeggelink, 1994). It is immaterial whether this “network
optimization” is the actors’ intentional behavior; the only assumption is that
the network can be modeled as if each actor strives after such a positively
evaluated conﬁguration. This evaluation is deﬁned as a function of the net-
work as regarded from the perspective of the focal actor, and depends on
parameters which are to be estimated from the data. This approach to net-
work evolution is in line with the theoretical sociological principle of method-
ological individualism, and was referred to by Snijders (1996) as a stochastic
actor-oriented model. The evaluation includes a random element to account
for the deviation between theoretical expectation and observed reality, which
leads to a kind of random utility model (cf. random utility models commonly
used in econometrics and treated, e.g., in Maddala, 1983). The models can
be implemented as stochastic simulation models, which is the basis for the
MCMC procedure for parameter estimation. This is a frequentist procedure,
using the method of moments. The MCMC implementation of the method
of moments uses a stochastic approximation algorithm which is a descendant
of the Robbins-Monro (1951) algorithm.
2.
CONTINUOUS-TIME MARKOV CHAINS
This section gives a brief introduction to continous-time Markov chains. Kar-
lin and Taylor (1975) and Norris (1997) give general treatments of this kind
of stochastic process models. More elaborate introductions to continuous-
time Markov chain models for social networks are given by Leenders (1995b)
and Wasserman (1979, 1980).
The available data are assumed to be two or more observations of social
networks; but the present section is phrased, more generally, in terms of an
arbitrary ﬁnite outcome space Y. The ﬁnitely many observation times t1 to
tM are embedded in a continuous set of time points T = [t1, tM] = {t ∈IR |
t1 ≤t ≤tM}. Thus it is assumed that changes can take place unobserved
between the observation moments. This is not unrealistic and allows a more
versatile and natural mathematical treatment.
Suppose that {Y (t) | t ∈T } is a stochastic process where the Y (t) have a
ﬁnite outcome space Y and the time parameter t assumes values in a bounded
or unbounded interval T ⊂IR. Such a stochastic process is a Markov process
4


--- PAGE BREAK ---

or Markov chain if for any time ta ∈T , the conditional distribution of the
future, {Y (t) | t > ta} given the present and the past, {Y (t) | t ≤ta}, is
a function only of the present, Y (ta).
This implies that for any possible
outcome x ∈Y, and for any pair of time points ta < tb,
P{Y (tb) = x | Y (t) = y(t) for all t ≤ta}
= P{Y (tb) = x | Y (ta) = y(ta)} .
(1)
The Markov chain is said to have a stationary transition distribution if the
probability (1) depends on the time points ta and tb only as a function of the
elapsed time in between, tb −ta . It can be proven that if {Y (t) | t ∈T } is a
continuous-time Markov chain with stationary transition distribution, then
there exists a function q : Y2 →IR such that
q(x, y)
=
lim
dt↓0
P{Y (t + dt) = y | Y (t) = x}
dt
for y ̸= x
q(x, x)
=
lim
dt↓0
1 −P{Y (t + dt) = x | Y (t) = x}
dt
.
(2)
This function q is called the intensity matrix or the inﬁnitesimal generator.
The element q(x, y) is referred to as the rate at which x tends to change into
y. More generally, an event is said to happen at a rate r, if the probability
that it happens in a very short time interval (t, t+dt) is approximately equal
to r dt.
The simultaneous distribution of the Markov chain {Y (t) | t ≥ta} with
stationary transition distribution is determined completely by the probability
distribution of the initial value Y (ta) together with the intensity matrix.
Speciﬁcally, the transition matrix
P(tb −ta) =

P{Y (tb) = y | Y (ta) = x}

x,y ∈Y
is deﬁned by
P(t) = eQt ,
where Q is the matrix with elements q(x, y) and the matrix exponential is
deﬁned by
eQt =
∞
X
h=0
Qhth
h!
.
The reasons for specializing the model to Markov processes with station-
ary transition distributions are that such models often are quite natural,
and that they lend themselves well for computer simulation. The resulting
dynamic computer simulation models can be regarded as a type of discrete
event simulation models as discussed by Fararo and Hummon (1994).
5


--- PAGE BREAK ---

3.
STOCHASTIC ACTOR-ORIENTED MODELS FOR NETWORK
EVOLUTION: SIMPLE SPECIFICATION
The speciﬁcation of the model developed in this paper has three ingredients:
the rate function, the objective function, and the gratiﬁcation function. A
simple speciﬁcation is determined by only the objective function, with a
constant rate function and a gratiﬁcation function equal to zero. The model
is explained ﬁrst for this simple speciﬁcation.
The rate and gratiﬁcation
functions are treated in a later section.
3.1.
Basic model ingredients
The class of all sociomatrices, i.e., of all n×n matrices of 0-1 elements with a
zero diagonal, is denoted by X. Note that X has 2n(n−1) elements, a number
which is so huge that analytical calculations based on the intensity matrix
will be out of the question for most purposes.
It is assumed that each actor “controls” his outgoing relations, which are
collected in the row vector (Xi1(t), ..., Xin(t)) of the sociomatrix. Each actor
has the opportunity to change his outgoing relations at stochastic times; in
the interval between the observation moments tm and tm+1 these opportuni-
ties occur at a rate ρm. When an actor changes his outgoing relations, he is
assumed to strive after a rewarding conﬁguration for himself in the network.
This goal is modeled in the so-called objective function f discussed below,
to which a random component is added, representing the actor’s drives that
are not explicitly modeled. The actors are assumed to have all information
required to calculate their own objective function. This information can be
extensive or limited, depending on the model.
At any single time point, at most one actor may change his outgoing
relations. Furthermore, he may change only one relation at the time. Of
course, many small changes between two observation times can result in a
big diﬀerence between the two observed networks. The fact that the model
speciﬁcation focuses on changes of single relations is the major reason why
continuous time modeling is relatively straightforward. (An example of a
continuous-time model for social networks where more than one relation can
change at one time point is given by Mayer, 1984.) It should be noted that
the fact that the actors take into account the present network structure which
is common to them all, introduces a high degree of interdependence between
them (when one marginalizes out, rather than conditions upon, the current
network structure).
6


--- PAGE BREAK ---

3.2.
Objective function
The objective function for actor i is denoted by
fi(β, x) ,
x ∈X ,
(3)
and indicates the degree of satisfaction for actor i inherent in the relational
situation represented by x. This function depends on a parameter vector
β. In the simple model speciﬁcation of this section, the parameter of the
statistical model is θ = (ρ, β), where ρ = (ρ1, ..., ρM−1) is the vector of
change rates during the time periods from tm to tm+1 (m = 1, ..., M −1).
Suppose that at some moment t, actor i has the opportunity to change
his outgoing relations. At this moment, actor i determines the other actor
j with whom he will change his relation xij. If immediately before time t
actor i does have a relation to actor j, then a change implies withdrawing
the relation; if immediately before time t actor i does not have a relation
to actor j, then a change implies initiating the relation. Given the present
state x of the network, the network that results when the single element
xij is changed into 1 −xij (i.e., from 0 to 1 or from 1 to 0), is denoted by
x(i ; j). Note that x(i ; j) refers to an entire adjacency matrix. When the
current network is x, actor i has the choice between x(i ; j) for all possible
j = 1, ..., n, j ̸= i. It is assumed that actor i chooses the j that maximizes
the value of his objective function fi(β, x(i ; j)) plus a random element,
fi(β, x(i ; j)) + Ui(t, x, j) .
(4)
The term Ui(t, x, j) is a random variable, indicating the part of the actor’s
preference that is not represented by the systematic component fi . It is
assumed that these random variables are independent and identically dis-
tributed for all i, t, x, j. The assumption that the actor tries to maximize
(4), which refers to the state obtained immediately after making this sin-
gle choice, can be regarded as an assumption of myopia: the actor does not
consider the longer-term, or indirect, eﬀects of his choices.
3.3.
Markov chain with random utility component
These functions are used in the following way to deﬁne a continuous-time
Markov chain X(t) with the ﬁnite outcome space X.
Events, i.e., changes of the network structure, take place at discrete time
points; in between these points, the network structure remains constant. The
process is modeled as being right-continuous: if a change takes place from
state x0 to state x1 at time t0, then there is an ϵ > 0 such that X(t) = x0
for t0 −ϵ < t < t0, while X(t) = x1 for t0 ≤t < t0 + ϵ.
7


--- PAGE BREAK ---

The actions of the n actors depend only on the current state of the net-
work, not on the history of how this network came into being. Each actor
changes his relations one-at-the-time at stochastic moments at a rate ρm.
This means that at each time point t ∈(tm, tm+1), the time until the next
change by any actor has the negative exponential distribution with parame-
ter nρm and the expected waiting time until the next change by any actor is
1/(nρm). When an event occurs, all actors have the same probability 1/n to
be the one to change one of his outgoing relations. Given that actor i may
change an outgoing relation, he chooses to change his relation to that actor
j (j ̸= i) for whom the value of (4) is highest.
It is convenient to let the Ui(t, x, j) have the type 1 extreme value distri-
bution (or Gumbel distribution) with mean 0 and scale parameter 1 (Mad-
dala, 1983). This assumption is commonly made in random utility modeling
in econometrics. When this distribution is used, the probability that the
given actor i chooses the other actor j for changing the relation xij, is the
multinomial logit expression, cf. Maddala (1983, p. 60),
pij(θ, x) =
exp(fi(β, x(i ; j)))
Pn
h=1,h̸=i exp(fi(β, x(i ; h)))
(j ̸= i).
(5)
3.4.
Intensity matrix
It was mentioned in Section 2 that stationary transition distributions of
continuous-time Markov chains are characterized by their intensity matrix.
In our case, where relations are allowed to change only one at a time, the
intensity matrix can be represented by functions qij(x), indicating the change
rates of x to x(i ; j) for j ̸= i. All other change rates are 0. These functions
are deﬁned for i, j = 1, ..., n, i ̸= j, as
qij(x) = lim
dt ↓0
P{X(t + dt) = x(i ; j) | X(t) = x}
dt
.
(6)
The intensity matrix q(x, y) deﬁned in (2) is related to qij(x) by
q(x, y) =





qij(x)
if y = x(i ; j)
0
if x and y diﬀer in more than one element
−P
i̸=j qij(x)
if x = y.
(7)
Note that directed graphs x and y diﬀer in exactly one element (i, j) if and
only if y = x(i ; j) and x = y(i ; j).
For the Markov chain in the simple model speciﬁcation of the present
section, qij(x) is given for time period (tm, tm+1) by
qij(x) = ρm pij(θ, x) .
(8)
8


--- PAGE BREAK ---

3.5.
Speciﬁcation of the model
The objective function must contain the substantive ingredients of the model,
including, e.g., actor attributes and structural properties of the directed
graph.
Since the actor has direct control only of his outgoing relations,
only the dependence of fi on row i of the adjacency matrix has an inﬂuence
on the behavior of the model.
A convenient choice for the objective function is to deﬁne it as a sum
fi(β, x) =
L
X
k=1
βk sik(x) ,
(9)
where the weights βk are statistical parameters indicating the strength of the
corresponding eﬀect sik(x), controlling for all other eﬀects in the model, and
the sik(x) are relevant functions of the digraph that are supposed to play a
role in its evolution. All formulae given below for possible components sik
refer to a contribution to the objective function of actor i, while the other
actors to whom i could be related are indicated by j.
Eﬀects can be distinguished according to whether they depend only on the
network x – in which case they can be regarded as endogenous network eﬀects
– or also on covariates, which are supposed to be determined exogenously.
Covariates can be of two kinds: actor-dependent covariates V with values
vi for actor i, or pair-dependent (dyadic) covariates W with values wij for
the ordered pair (i, j). Only constant (i.e., time-independent) covariates are
considered.
The following list is a collection of network eﬀects, as possibilities for the
functions sik in (9).
1. density eﬀect, deﬁned by the out-degree
si1(x) = xi+ = P
j xij ;
2. reciprocity eﬀect, deﬁned by the number of reciprocated relations
si2(x) = P
j xij xji ;
3. popularity eﬀect, deﬁned by the sum of the in-degrees of the others to
whom i is related,
si3(x) = P
j xij x+j = P
j xij
P
h xhj
4. activity eﬀect, deﬁned by the sum of the out-degrees of the others to
whom i is related,
si4(x) = P
j xij xj+ = P
j xij
P
h xjh
9


--- PAGE BREAK ---

5. transitivity eﬀect, deﬁned by the number of transitive patterns in i’s
relations (ordered pairs of actors (j, h) to both of whom i is related,
while also j is related to h),
si5(x) = P
j,h xij xih xjh ;
6. indirect relations eﬀect, deﬁned by the number of actors to whom i is
indirectly related (through one intermediary, i.e., at sociometric dis-
tance 2),
si6(x) = #{j | xij = 0, maxh(xih xhj) > 0};
7. balance, deﬁned by the likeness between the out-relations of actor i to
the out-relations of the other actors j to whom i is related,
si7(x) =
n
X
j=1
xij
n
X
h=1
h̸=i,j
(b0 −|xih −xjh|) ,
(10)
where b0 is a constant included for convenience. If the density eﬀect is
included in the model (which normally will be the case), the number
b0 can be chosen so as to obtain the clearest interpretation without
essentially changing the model speciﬁcation.
E.g., to have a balance eﬀect that is not too strongly correlated with
the density eﬀect, the number b0 in (10) can be chosen so that the
average of the second sum in this equation over all actors and over the
ﬁrst M −1 time points is 0, i.e.,
b0 =
1
(M −1)n(n −1)(n −2)
M−1
X
m=1
n
X
i,j=1
n
X
h=1
h̸=i,j
|xih(tm) −xjh(tm)| .
(11)
This list can be extended, in principle, indeﬁnitely. Potentially important
additional types of eﬀect are non-linear eﬀects, i.e., non-linear functions of
sik deﬁned above, the out-degree xi+ being the primary candidate for such
a non-linear transformation; and other subgraph counts in which actor i is
involved, of which the reciprocity and transitivity eﬀects are examples.
In practically all applications it will be advisable to include the density
eﬀect, because the other eﬀects listed above should be controlled for the
density eﬀect. The reciprocity eﬀect is so fundamental in social relations
that it is advisable also to include this eﬀect in most applications.
The transitivity and balance eﬀects, and the indirect relations eﬀect when
it has a negative weight, all are diﬀerent mathematical speciﬁcations of the
intuitive idea that actor i has a ‘closed’ or transitive personal network, i.e.,
10


--- PAGE BREAK ---

the others to whom i is related tend to have comparatively many relations
among themselves. Verbal theories will not often be detailed enough to dis-
tinguish between these eﬀects. It can be determined empirically if one or
some of these three eﬀects succeed better than the others in accounting for
the observed degree of closure, or transitivity, in the data.
For each actor-dependent covariate V there are the following three ba-
sic potential eﬀects. (The notation for the functions sik does not explicitly
indicate their dependence on the covariate values vj.)
8. covariate-related popularity, deﬁned by the sum of the covariate over
all actors to whom i has a relation,
si8(x) = P
j xij vj;
9. covariate-related activity, deﬁned by i’s out-degree weighted by his co-
variate value,
si9(x) = vi xi+;
10. covariate-related dissimilarity, deﬁned by the sum of absolute covariate
diﬀerences between i and the others to whom he is related,
si10(x) = P
j xij |vi −vj |.
Positive covariate-related popularity or activity eﬀects will lead to associ-
ations between the covariate and the in-degrees and out-degrees, respectively.
A negative covariate-related dissimilarity eﬀect will lead to relations being
formed especially between actors with similar values on the covariate.
This list can be extended, e.g., by including covariate values in the deﬁni-
tions of the network eﬀects listed above. This represents interactions between
the covariate and the network eﬀect.
The main eﬀect for a pair-dependent covariate is
11. covariate-related preference, deﬁned by the sum of the values of wij for
all others to whom i is related,
si11(x) =
P
j xij wij .
Here also, the list can be extended by including covariate values in the deﬁ-
nition of network eﬀects.
Theoretical insights in the relational process and experience with model-
ing this type of data have to determine the eﬀects that are included.
11


--- PAGE BREAK ---

4.
MOMENT ESTIMATORS
Let the objective function be given by (9), so that the parameter of the
statistical model is θ = (ρ, β). The dimensionality of β is denoted L and
the total number of dimensions for θ is K = M −1 + L.
Analogous to
what was proposed for a similar model by Snijders (1996), this parameter
can be estimated by the method of moments (explained for general statistical
models, e.g., by Bowman and Shenton, 1985). This means that a statistic
Z = (Z1, ..., ZK) is used, for which θ is determined as the solution of the
K-dimensional moment equation
EθZ = z ,
(12)
where z is the observed outcome. This moment equation will be speciﬁed fur-
ther by certain ways of conditioning on the initial and intermediate outcomes
x(t1) to x(tm−1).
First the choice of the statistic Z is discussed, and then a MCMC algo-
rithm that can be used to approximate the solution of the moment equation.
For the estimation, no assumptions whatsoever are made about the initial
state x(t1). Therefore, the estimation is carried out conditional on this initial
state, and this state is not used to obtain any information about the value
of the parameter.
In the absence of a formal method such as a reduction to suﬃcient statis-
tics, the statistics Zk should be chosen so that they are relevant for the
components of the parameter θ in the sense that the expected values of
Zk (k = 1, ..., K) are sensitive to changes in the components of θ. One way
to specify this is to require that
∂EθZk
∂θk
> 0 for all k.
A more stringent speciﬁcation is to require that this property hold not only
for all separate coordinates of the parameter vector, but also for all linear
combinations:
a′
 ∂EθZ
∂θ
!
a > 0 for all a ∈IRK , a ̸= 0,
(13)
where (∂EθZ/∂θ) is the matrix of partial derivatives. This requirement is
far from implying the statistical eﬃciency of the resulting estimator, but
it confers a basic credibility to the moment estimator and it ensures the
convergence of the stochastic approximation algorithm mentioned below.
12


--- PAGE BREAK ---

The components of θ = (ρ, β) are the rates of change ρm in the time
interval (tm, tm+1) and the weights βk in the objective function (9).
The
motivation for the statistics Zi, at this moment, is of a heuristic nature, based
on their obvious connection to the parameters and supported by suﬃciency
considerations in certain special cases.
For ρm , a relevant statistic is the total amount of change in the m’th
time period measured by the number of diﬀerences between two consecutive
observation moments,
Cm =
n
X
i,j=1
i̸=j
|Xij(tm+1) −Xij(tm)| .
(14)
This choice for the statistic relevant for ρm can be supported by noting that
if β = 0, which reduces the model to the trivial situation where the Xij(t)
are randomly changing 0-1 variables, Cm is a suﬃcient statistic for ρm.
For βk , a relevant statistic is the sum over all actors i of the digraph
statistics sik , observed at time tm+1 ,
Smk =
n
X
i=1
sik(X(tm+1)) .
(15)
This statistic has an immediate intuitive appeal: if βk is larger, then the
actors strive more strongly to have a high value of sik , so that it may be
expected that Smk will be higher for all m. The statistics Smk are combined
over the M −1 time intervals by an unweighted sum.
Combining all these proposals, the moment estimator for θ is deﬁned as
the solution of the system of equations
Eθ{Cm |X(tm) = x(tm)}
=
cm (m = 1, ..., M −1)
(16)
M−1
X
m=1
Eθ{Smk |X(tm) = x(tm)}
=
M−1
X
m=1
smk (k = 1, ..., L),
(17)
where cm and smk are the observed outcomes of the statistics Cm and Smk.
Although in our experience these equations mostly seem to have exactly
one solution, they do not always have a solution. This can be seen as follows.
For a ﬁxed value of β, the left-hand side of (16) is an increasing function of
ρm , tending to an asymptote which is lower than the maximum possible value
of cm, this maximum being n(n−1). This implies that the method proposed
here is not suitable for observations x(tm) and x(tm+1) which are too far
apart in the sense of the metric (14). For such observations the dependence
of x(tm+1) on the initial situation x(tm) is practically extinguished, and it
13


--- PAGE BREAK ---

may be more relevant to estimate the parameters of the process generating
x(tm+1) without taking this initial situation into account.
For the trivial submodel where all Xij(t) are independent, the existence
of maximum likelihood and moment estimators is discussed in Snijders and
Van Duijn (1997).
4.1.
Covariance matrix of the estimator
The delta method (see, e.g., Bishop, Fienberg, and Holland, 1973, section
14.6) can be used to derive an approximate covariance matrix for the moment
estimator ˆθ. (This holds generally for moment estimators, see Bowman and
Shenton, 1985, formula (5).) For a homogeneous notation for the parameters
ρm and β, denote Cmm = Cm and formally deﬁne Cmk = 0 for k ̸= m, and
denote
Zm = (Cm1, ..., Cm,M−1, Sm1, ..., SmL) .
Then the moment equations (16, 17) can be written as
M−1
X
m=1
Eθ{Zm |X(tm) = x(tm)} =
M−1
X
m=1
zm .
(18)
Further denote
Σθ
=
M−1
X
m=1
cov{Zm |X(tm) = x(tm)}
(19)
Dθ
=
∂
∂θ
M−1
X
m=1
E{Zm |X(tm) = x(tm)} .
(20)
Then it follows from the delta method, combined with the implicit function
theorem and the Markov property for the X(t) process, that the approximate
covariance matrix of ˆθ is
cov(ˆθ) ≈D−1
θ ΣθD′
θ
−1 .
(21)
It is plausible that these estimators have approximately normal distri-
butions, although a proof is not yet available.
Based on the assumption
of normally distributed estimates, the parameters can be tested using the
t-ratios deﬁned as the parameter estimate divided by its standard error, re-
ferred to a standard normal null distribution. (In other words, the test is
carried out as a t-test with inﬁnite degrees of freedom; this test should be
regarded as a rough approximation, since no deﬁnite results are yet available
on the distribution of this test statistic.)
14


--- PAGE BREAK ---

4.2.
Conditional moment estimation
The method of moments can be modiﬁed by conditioning on the outcomes cm
of Cm (m = 1, ..., M −1) rather than using moment equations involving these
statistics. This provides a more stable and eﬃcient algorithm and reduces
the parameter estimated by the method of moments to the L-dimensional β.
This can be helpful especially for larger values of M.
The modiﬁed method is based on the property that the distribution of a
continuous-time Markov chain X(t) remains invariant when the time param-
eter is divided by some constant value while the rate parameter is multiplied
by the same value. Speciﬁcally, when the rate parameter ρm obtains for all
t ≥tm , then the distribution of X(tm + t), conditional on X(tm) and for
t > 0, depends on ρm and t only through their product, tρm. The modiﬁed
method can be loosely described as follows. For each period m independently,
the Markov chain is started at time t = 0 with the initial value x[m] = x(tm)
and a rate parameter equal to 1. The process is stopped at the ﬁrst moment
t when P
ij | Xij(t) −x[m]
ij | = cm . This value of t is expected to be close to
the product ρm(tm+1 −tm) and the statistics observed at this moment are
compared with the statistics calculated from observation x(tm+1).
To explain this more formally, denote by X(1)(t) a Markov chain evolving
according to our model with a ﬁxed and constant rate parameter ρ = 1 and
a given value of β, and denote by S(1)
k (t) the corresponding statistics (15).
Independent replications of this stochastic process, starting at t = 0 with
X(1)(0) = x(tm), are used as models for the M −1 periods.
Deﬁne the
statistic
C(1)(t) =
n
X
i,j=1
i̸=j
|X(1)
ij (t) −X(1)
ij (0)|
(22)
and the stopping time
T ﬁn
m = min{t ≥0 | C(1)(t) ≥cm} .
(23)
The conditional moment estimator for β is deﬁned as the solution of
M−1
X
m=1
Eβ{S(1)
k (T ﬁn
m ) | X(1)(0) = x(tm)} =
M−1
X
m=1
smk
(k = 1, ..., L)
(24)
and, given the resulting estimate ˆβ, ρm is estimated by
ˆρm = (tm+1 −tm)−1 E ˆβ{T ﬁn
m | X(1)(0) = x(tm)} .
(25)
It follows from the general theory of Markov chains that for all possible
values of cm the stopping time T ﬁn
m is ﬁnite with probability 1, and even has
15


--- PAGE BREAK ---

a ﬁnite expected value. Therefore the diﬃculties with the deﬁnition of the
estimator for large values of cm , as discussed for the unconditional moment
estimator, do not arise here. However, this consolation is only theoretical,
because in practice, for large t the value of C(1)(t) ﬂuctuates randomly about
an asymptote lower than the maximum possible value of n(n −1), and the
stopping time T ﬁn
m is indeed ﬁnite but horribly large. The simulation-based
algorithm, explained below, is not practically feasible for values of cm larger
than this asymptote.
5.
STOCHASTIC APPROXIMATION
The moment equations for the two estimation methods are deﬁned by (18)
and (24), but the conditional expectations which are central in these equa-
tions cannot be calculated explicitly (except for some special and rather
trivial cases, as discussed in Snijders and Van Duijn, 1997). However, it is
rather straightforward to simulate random digraphs with the desired distribu-
tions. Therefore, stochastic approximation methods, in particular, versions
of the Robbins-Monro (1951) procedure, can be used to approximate the mo-
ment estimates. Introductions to stochastic approximation and the Robbins-
Monro algorithm are given, e.g., by Ruppert (1991) and Pﬂug (1996).
The algorithm to solve the equation (12) is based on a sequence ˆθN gen-
erated according to the iteration step
ˆθN+1 = ˆθN −aN D−1
0 (ZN −z) ,
(26)
where ZN is generated according to the probability distribution deﬁned by
the parameter value ˆθN . For aN, a sequence is used that converges slowly
to 0. D0 is a positive diagonal matrix. In principle, the optimal choice of
D0 might be non-diagonal. However, Polyak (1990), Ruppert (1988), and
Yin (1991) (as discussed also by Pﬂug, 1996, Section 5.1.3, and Kushner and
Yin, 1997) showed that if all eigenvalues of the matrix of partial derivatives,
(∂EθZ/∂θ), have positive real parts and certain regularity conditions are
satisﬁed, then convergence at an optimal rate can be achieved when D0 is
the identity matrix, with aN a sequence of positive numbers converging to 0
at the rate N −c, where 0.5 < c < 1. To obtain this optimal convergence rate,
the solution of (12) must be estimated not by the last value ˆθN itself, but
by the average of the consecutively generated ˆθN values. This algorithm is a
Markov chain Monte Carlo algorithm because the iteration rule (26) indeed
deﬁnes a Markov chain.
The convergence properties of this algorithm hold asymptotically for
N →∞. To have good properties already for relatively low values of N
16


--- PAGE BREAK ---

it is important to specify the algorithm in such a way that it quickly comes
close to the target value. This can be achieved by applying a result due to
Pﬂug (1990), who showed that the limiting ﬁrst order autocorrelation of the
sequence (ZN −z) generated by (26) is negative. This means that as long
as the partial sums of successive values of the product (ZN −z)′(ZN−1 −z)
are positive, it must be assumed that the sequence ˆθN still is drifting toward
the limit point rather than wandering around the limit point, so that it is
not desirable to decrease the step sizes aN . Therefore aN remains constant
as long as there still seems to be such a drift going on, except that when N
gets too large aN is decreased anyway, in order to retain the convergence rate
N −c for the sequence aN .
These ideas are combined in the speciﬁcation of the algorithm as given in
the appendix. The algorithm provides an arbitrarily accurate approximation
to the solution of (12) as well as an estimate of the covariance matrix (21). It
is available in the freeware PC program SIENA (see the discussion section).
6.
AN EVOLVING NETWORK OF UNIVERSITY FRESHMEN
As an illustration, data are used of a study by Van De Bunt (1999) which
were analyzed also by Van De Bunt, Van Duijn, and Snijders (1999). For a
more extensive description of this data set we refer to these publications. In
the present paper, this data set is used only as an illustration without paying
much attention to the theoretical interpretations.
The actors in this network are a group of 32 university freshmen who
were following a common study program in a Dutch university. This group
comprised 24 female and 8 male students. The number of observations used
here is M = 3. The data used here are those for the time points labeled
t2, t3, and t4 in Van De Bunt, Van Duijn, and Snijders (1999). There are
3 weeks between time points t2 and t3, and also between t3 and t4. For the
purpose of this illustration, the time points are relabeled t1, t2, and t3. The
relation studied is deﬁned as ‘at least a friendly relationship’, referred to here
as a positive relation (xij = 1). The absence of a positive relation is referred
to as a null relation (xij = 0).
There is missing data due to non-response, increasing from 9% at t1 to
19% at t3. This incompleteness of data is treated in the estimation procedure
in the following ad hoc fashion. (It will be important to conduct further
studies to evaluate this way of dealing with incomplete data, and compare it
with potential alternatives.)
Missing data are treated in a simple way, trying to minimize their in-
ﬂuence on the estimation results. The simulations are carried out over all
17


--- PAGE BREAK ---

n = 32 actors. In the initial observation x(tm) for each period, missing entries
xij(tm) are set to 0. In the course of the simulations, however, these values
are allowed to become 1 like any other values xij(t). For the calculation of
the statistics Smk and Cm , the values of xij(tm) as well as of Xij(tm+1) are
set to 0 whenever at least one of the two observations xij(tm) and xij(tm+1)
is missing.
To get a basic impression of the data, it may be noted that densities
(calculated over the available data) at the three observation moments increase
from 0.15 via 0.18 to 0.22. The number of observed changes between the
observations at t1 and t2 was 60 (out of 744 directed pairs (i, j) for which the
value of xij was observed at observations t1 and t2); between t2 and t3 this
was 51 (out of 679 observations).
The ﬁrst model estimated includes the basic eﬀects of density and reci-
procity, together with the three basic triadic eﬀects: transitivity, indirect
relations, and balance. The purpose of this stage in the analysis is to investi-
gate which of these triadic eﬀects are empirically supported by these network
evolution data. The number b0 in (10) is deﬁned by (11). The conditional
moment estimator was used and the algorithm was speciﬁed as described
in the appendix, except that to increase precision 5 subphases were carried
out in phase 2 and n3 = 1000 steps were made in phase 3. The results are
displayed as Model 1 in Table 1.
Table 1: Parameters for models estimated using observations at t1, t2, t3.
Model 1
Model 2
Model 3
Eﬀect
par.
(s.e.)
par.
(s.e.)
par.
(s.e.)
Rate (period 1)
3.87
3.78
3.91
Rate (period 2)
3.10
3.14
3.07
Density
-1.48
(0.30)
-1.05
(0.19)
-1.13
(0.22)
Reciprocity
1.98
(0.31)
2.44
(0.40)
2.52
(0.37)
Transitivity
0.21
(0.11)
–
–
Balance
-0.33
(0.66)
–
–
Indirect relations
-0.347
(0.074)
-0.557
(0.083)
-0.502
(0.084)
Gender activity
–
–
-0.60
(0.28)
Gender popularity
–
–
0.64
(0.24)
Gender dissimilarity
–
–
-0.42
(0.24)
The estimated rate parameters, ˆρ1 = 3.87 and ˆρ2 = 3.10, indicate that
on average the actors made 3.87 changes of relationships between the ﬁrst
two observations, and 3.10 changes between the last two observations. (This
18


--- PAGE BREAK ---

includes two-way changes between two observations which remained unob-
served because they canceled each other.)
As suggested in Section 4.1, the eﬀects are tested by t-statistics deﬁned
by the ratio of parameter estimate to standard error, referred to a stan-
dard normal distribution. There is a strongly signiﬁcant reciprocity eﬀect
(t = 1.98/0.31 = 6.39). Of the three triadic eﬀects, the indirect relations
eﬀect is signiﬁcant (t = −0.347/0.074 = −4.69), but the other two are not
signiﬁcant at the 5% level, although the transitivity eﬀect comes close. When
the balance eﬀect was deleted from the model, the t-value for the transitivity
eﬀect became 1.94 (results not shown here), just short of signiﬁcance at the
5% level. The results obtained when deleting the two non-signiﬁcant eﬀects
from the model are shown as Model 2 in Table 1. The indirect relations eﬀect
becomes larger, and the density and reciprocity eﬀects change, because these
eﬀects now also must represent the eﬀects represented by transitivity and
balance in Model 1. It can be concluded that there is evidence of a tendency
to have closed networks in the sense of a relatively low number of indirect
relations; controlling for this eﬀect and for reciprocity, there is no signiﬁcant
tendency toward a high number of transitive triplets or toward balanced re-
lationships. No signiﬁcant evidence was found for other structural network
eﬀects (estimation results not shown here).
As a next step, the three basic eﬀects of gender were included in the
model. In the original dataset gender was represented by a dummy variable
equal to 0 for women and 1 for men. The means were subtracted from this
variable as well as from the dissimilarity variable | vi −vj |. Given that the
proportion of women was 75%, this leads to the variable vi being -0.25 for
women and +0.75 for men, and the dissimilarity variable being -0.387 for
equal-gender pairs and 0.613 for unequal-gender pairs. The results for the
model including the structural eﬀects of reciprocity and indirect relations as
well as the three covariate eﬀects of gender are presented in Table 1 as Model
3. It can be concluded that women are more active in creating positive rela-
tions than men (t = −0.60/0.28 = −2.14), while men receive more positive
choices (t = 0.64/0.24 = 2.67), but there are no signiﬁcant (dis)similarity
eﬀects associated with gender.
The control for gender does not have an
important inﬂuence on the reciprocity or indirect relations eﬀects.
The results based on the observations at these three moments can be
compared to results based on only two of these observations. This can be
used to check the model assumption that the parameter values βk are in the
time interval between t1 and t2 the same as between t2 and t3. Further, for
the analysis of the evolution of the network from t1 to t3 this illustrates the
greater precision obtainable by including the information about the network
at t2. The comparison is made only for Model 3, and reported in Table 2.
19


--- PAGE BREAK ---

Table 2: Parameter estimates for Model 3, estimated from two observations.
Observations
t1, t2
t2, t3
t1, t3
Eﬀect
par.
(s.e.)
par.
(s.e.)
par.
(s.e.)
Rate
3.64
3.21
5.29
Density
-0.99
(0.32)
-1.30
(0.28)
-0.78
(0.31)
Reciprocity
2.36
(0.52)
2.89
(0.67)
2.40
(0.48)
Indirect relations
-0.432
(0.113)
-0.653
(0.140)
-0.536
(0.146)
Gender activity
-0.75
(0.40)
-0.39
(0.42)
-0.77
(0.36)
Gender popularity
0.40
(0.31)
1.03
(0.44)
0.36
(0.26)
Gender dissimilarity
-0.35
(0.35)
-0.58
(0.43)
-0.22
(0.31)
None of the estimates are signiﬁcantly diﬀerent between the periods t1–t2
and t2–t3. This supports the use of a common model for the entire period
t1–t3.
To compare the ‘Model 3’ column of Table 1 with the ‘t1, t3’ column of
Table 2, the estimates in the former column are called ‘three-observation’
and those in the latter column ‘two-observation’ estimates. It appears that
the corresponding estimates diﬀer at most by about one ‘two-observation’
standard error; for all parameters but one, the ‘three-observation’ estimates
are closer than the ‘two-observation’ estimates to the mean of the sepa-
rate estimates for the t1–t2 and t2–t3 periods. The ‘three-observation’ stan-
dard errors all are clearly smaller than the ‘two-observation’ standard errors.
This provides some support for the expected greater reliability of the ‘three-
observation’ as compared to the ‘two-observation’ estimates.
20


--- PAGE BREAK ---

7.
EXTENDED MODEL SPECIFICATION
The general model speciﬁcation contains, in addition to the objective func-
tion, two other elements: the rate function, representing that actors may
diﬀer in the rate at which they change their relations; and the gratiﬁcation
function, representing that various eﬀects may operate diﬀerently for the cre-
ation of a relation (where xij goes from 0 to 1) than for its dissolution (xij
changing from 1 to 0).
7.1.
Rate function
The rate function for actor i is denoted
λi(ρ, α, x, m)
for x ∈X ,
(27)
and indicates the rate at which actor i is allowed to change something in
his outgoing relations in the time period tm ≤t < tm+1.
In the simple
speciﬁcation given above, this rate function depended only on m and not on
i or x, and was deﬁned as λi(ρ, α, x, m) = ρm. The roles of the statistical
parameters ρ and α are discussed below.
These rate functions and the conditional independence of the actors imply
that at each time point t, the time until the next change by any actor has
the negative exponential distribution with parameter
λ+(ρ, α, x, m) =
n
X
i=1
λi(ρ, α, x, m) , for x = x(t), tm ≤t < tm+1
(28)
(provided that this next change still is before time tm+1). The parameter of
the negative exponential distribution is taken here as the reciprocal of the
expectation, so the expected waiting time until the next change after time t
is 1/λ+(ρ, α, x(t), m) (where a possible change to the following time interval
is not taken into account). Given that a change occurs, the probability that
it is actor i who may change his out-relations is
λi(ρ, α, x, m)
λ+(ρ, α, x, m) .
(29)
Non-constant rate functions can depend, e.g., on actor-speciﬁc covariates
or on network statistics expressing the degree to which the actor is satisﬁed
with the present network structure. Of course the rate function must be
restricted to positive values. In order not to burden the speciﬁcation with
too many complications, it is proposed to deﬁne the rate function as a product
λi(ρ, α, x, m) = λi1λi2λi3
21


--- PAGE BREAK ---

of factors depending, respectively, on period m, actor covariates, and the
actor’s personal network. The corresponding factors in the rate function are
the following:
1. The dependence on the period can be represented by a simple factor
λi1 = ρm
for m = 1, ..., M −1.
2. The eﬀect of actor covariates with values vhi can be represented by the
factor
λi2 = exp(
X
h
αh vhi) .
(30)
3. The dependence on the network can be modeled, e.g., as a function of
the actor’s out-degree, in-degree, and number of reciprocated relations.
Deﬁne these by
xi+ =
X
j
xij, x+i =
X
j
xji, xi(r) =
X
j
xijxji
(recalling that xii = 0 for all i).
Snijders and Van Duijn (1997) investigated how the rate function should
be speciﬁed in order to obtain Wasserman’s (1979) reciprocity model
as a special case. Denoting the corresponding parameter by α1, for the
dependence on the out-degree this led to the factor
λi3 =
xi+
n −1 exp(α1) + (1 −xi+
n −1) exp(−α1).
(31)
This deﬁnes a linear function of the out-degree, parametrized in such
a way that it is necessarily positive.
For a general dependence on the out-degree, in-degree, and number of
reciprocated relations, one can use an average of such terms, the second
and third one depending on x+i and xi(r), respectively.
It would be interesting to explore other speciﬁcations of the rate function,
expressing in a theoretically more satisfactory way the circumstances and
characteristics upon which it depends how quickly actors change their rela-
tions.
22


--- PAGE BREAK ---

7.2.
Gratiﬁcation function
The basic motivation for the third model ingredient, the gratiﬁcation func-
tion, is that a given eﬀect may operate more strongly, or less strongly, for
the creation than for the dissolution of relations. E.g., it is conceivable that
although actors prefer to establish reciprocated relations, they are quite will-
ing to initiate as yet unreciprocated relations; but that, once they have a
reciprocated relationship, they are very reluctant to let it go, e.g., because
of the investments accumulated in this relation, cf. Van De Bunt (1999).
This would mean that the reciprocity eﬀect is greater for dissolution than
for creation of ties. Such a diﬀerence cannot be represented by the objective
function alone. Therefore the model includes also a gratiﬁcation function
gi(γ, x, j) ,
deﬁned for i, j = 1, ..., n, i ̸= j, x ∈X ,
(32)
which indicates the instantaneous gratiﬁcation experienced by actor i when,
from the given network conﬁguration x, element xij is changed into its op-
posite, 1 −xij .
When a gratiﬁcation function is included in the model, expression (4) for
the momentary objective function maximized by i is replaced by the sum of
the actor’s preference for the new state, the gratiﬁcation experienced as a
result of the change, and a random element:
fi(β, x(i ; j)) + gi(γ, x, j) + Ui(t, x, j) .
(33)
Using the same assumptions for the random term Ui(t, x, j) as above, the
probabilities of the various possible new states x(i ; j) now are given by
pij(θ, x) =
exp(r(θ, i, j, x))
Pn
h=1,h̸=i exp(r(θ, i, h, x))
(j ̸= i).
(34)
where
r(θ, i, j, x) = fi(β, x(i ; j)) + gi(γ, x, j) .
These probabilities do not change when to r(θ, i, j, x) a term is added that
does not depend on j. It is often more convenient to work with
r(θ, i, j, x) = fi(β, x(i ; j)) −fi(β, x) + gi(γ, x, j) .
(35)
The instantaneous eﬀect gi is a more general model component than the
objective function fi , because the objective function depends only on the
new state x(i ; j), whereas the gratiﬁcation function depends arbitrarily on
the new state as well as the old state x. The reason for not working with just
the gratiﬁcation function is that the objective function, attaching a value to
23


--- PAGE BREAK ---

each network conﬁguration, often is conceptually more attractive and better
interpretable than the instantaneous gratiﬁcation eﬀect.
The gratiﬁcation function can be speciﬁed by a weighted sum,
gi(γ, x, j) =
H
X
h=1
γh rijh(x)
(36)
for certain statistics rijh(x), each containing either a factor xij (if it reﬂects
the gratiﬁcation involved in withdrawing a relation, i.e., changing xij from 1
to 0) or a factor (1 −xij) (if the eﬀect is about the gratiﬁcation involved in
creating a relation). Some examples of such terms are the following.
1. γ1 xij xji : indicator of a reciprocated relation; a negative value of γ1
reﬂects the costs associated with breaking oﬀa reciprocated relation.
2. γ2 (1−xij) P
h xihxhj : the number of actors through whom i is indirectly
related to j; a positive value of γ2 reﬂects that it is easier to establish
a new relation to another actor j if i has many indirect relations to j
via others who can serve as an introduction;
3. γ3 xij wij : the value wij for another actor to whom i has a relation; e.g.,
a negative value of γ3 reﬂects the costs for i associated with breaking
oﬀan existing relation to other actors j with a high value for wij .
7.3.
Intensity matrix and simulation
The model that includes an arbitrary rate function λi(ρ, α, x, m), an objective
function, and a gratiﬁcation function, still is a continuous time Markov chain.
The intensity matrix q(x, y) still is given by (7), now with
qij(x) = λi(ρ, α, x, m) pij(θ, x) ,
(37)
where pij now is given by (34).
Note that it is straightforward to deﬁne an algorithm that simulates this
stochastic process. Schematically, this can be done as follows. Suppose that
the present time point is t ∈[tm, tm+1). The time until the next change by
any actor is generated by a negative exponential distribution with parameter
(28), provided that the moment so determined is before time tm+1. The actor
who is to change a relation (i.e., the row of the adjacency matrix in which
a change will occur) is actor i with probability (29). The other actor with
whom actor i will change the relation (column of the adjacency matrix) is
j with probability (34). When j is chosen, element xij is changed into its
opposite, 1 −xij.
24


--- PAGE BREAK ---

7.4.
Choice of statistics for estimation
The use of the method of moments requires also the selection of statistics
that are relevant for the parameters included in the rate and gratiﬁcation
functions.
A tentative choice for statistics to estimate the parameters αh in (30) is
provided by the total amounts of change weighted by vhi ,
CM+h−1 =
M
X
m=1
n
X
i,j=1
i̸=j
| Xij(tm+1) −xij(tm) | vhi .
(38)
To estimate the parameter α1 in (31) for the eﬀect of out-degree on rate of
change, the statistic
CM+H =
M
X
m=1
n
X
i,j=1
i̸=j
| Xij(tm+1) −xij(tm) | xi+(tm)
(39)
can be used (where H is the total number of covariates used for modeling the
rate function), and similarly for the eﬀects of the in-degree and the number
of reciprocated relations. These choices are intuitively plausible and have led
to reasonable estimates in some trial data sets, but more research is required.
For the parameters γh included in the gratiﬁcation function (36), a rele-
vant statistic is
Rh =
M−1
X
m=1
n
X
i,j=1
i̸=j
| Xij(tm+1) −xij(tm) | rijh(x(tm)) ,
(40)
which is the sum of the rijh values of newly formed relations if rijh contains
a factor (1 −xij), and the sum of rijh values of disappeared relations if rijh
contains a factor xij.
These statistics CM+h and Rh are used in the method of moments in the
same way as
P
m Smk in (17) and (25).
25


--- PAGE BREAK ---

8.
CONTINUATION OF THE EXAMPLE
Continuing the example of the network of university freshmen, the eﬀect (31)
of the out-degrees on the rate of change is included, and the gratiﬁcation
function is deﬁned as the sum of the eﬀect of breaking reciprocated relations
and the eﬀect of gender diﬀerence on breaking a relation,
gi(γ, x, j) = γ1 xij xji + γ2 xij | vi −vj |
where vi indicates the gender of actor i.
Table 3: Parameter estimates for model with rate and gratiﬁcation eﬀects
Model 4
Eﬀect
par.
(s.e.)
Rate (period 1)
5.05
Rate (period 2)
3.95
Out-degree eﬀect on rate
0.90
(0.47)
Density
-0.99
(0.20)
Reciprocity
2.82
(0.56)
Indirect relations
-0.508
(0.091)
Gender activity
-0.52
(0.31)
Gender popularity
0.55
(0.30)
Gender dissimilarity
0.08
(0.37)
Breaking reciprocated relation
-0.58
(1.06)
Breaking relation with diﬀerent-gender other
1.64
(0.62)
The results are given as Model 4 in Table 3. It can be concluded that the
tendency of actors with higher out-degrees to change their relations more
often is close to signiﬁcance at the 5% level (t = 0.90/0.47 = 1.91), and
that relations with other actors of the other sex are terminated more quickly
than those with others of the same sex (t = 1.64/0.62 = 2.65). The eﬀect of
reciprocity on breaking a relation is not diﬀerent from what may be expected
from the main reciprocity eﬀect (t = −0.58/1.06 = −0.55). Comparing these
results to those for Model 3 in Table 1, it can be concluded that the activity
and popularity eﬀect for gender now are somewhat weaker (having lost their
signiﬁcance at the 5% level), and the main gender dissimilarity eﬀect has
vanished due to the inclusion of the eﬀect of gender dissimilarity on breaking
a relation.
Thus Model 4 suggests that friendly relations with others of
the other sex are less stable, and that there is no evidence (as one might
erroneously conclude from Model 3) that friendly relations are initiated less
with others of the diﬀerent than with those of the same sex.
26


--- PAGE BREAK ---

9.
ASYMPTOTIC DISTRIBUTION AND RELATION
WITH THE p∗MODEL
If it is possible to reach every state from every given initial state in a ﬁnite
number of steps (as is the case here), the distribution of a Markov chain
with stationary intensity matrix on a ﬁnite outcome space tends to a unique
limiting distribution as t →∞, independent of the initial distribution. For a
certain speciﬁcation of our model, this limiting distribution is the p∗model
for social networks proposed by Wasserman and Pattison (1996), generalizing
the Markov graph distribution proposed by Frank and Strauss (1986). The
p∗model is a family of probability distributions for a single observation x on
a stochastic directed graph X. The probability distribution for the p∗model
is deﬁned by
P{X = x} = exp(β′z(x))
κ(β)
(41)
where z(x) is a vector of statistics of the digraph and κ(β) is a normaliza-
tion factor. The following proposition indicates a speciﬁcation for the actor-
oriented model that yields the p∗distribution as the limiting distribution.
Proposition 1. Deﬁne for all i the objective function by
fi(β, x) = β′z(x)
(42)
and the gratiﬁcation function by gi = 0. Furthermore, deﬁne the rate func-
tion by
λi(x) =
n
X
h=1
h̸=i
exp(β′z(x(i ; h))) .
(43)
Then the limiting probability distribution of X(t) for t →∞is the p∗distri-
bution with probability function (41).
Proof.
It follows from (34), (37), and (43) that
qij(x) = exp(β′z(x(i ; j))) .
Note that the symbol x(i ; j) can be understood as the result of taking
matrix x and applying the operation of changing xij into 1 −xij. Applying
this operation twice returns the original matrix x, which can be represented
as (x(i ; j))(i ; j) = x. Therefore,
qij(x(i ; j)) = exp(β′z(x))
27


--- PAGE BREAK ---

which implies
exp(β′z(x))qij(x) = exp(β′z(x(i ; j)))qij(x(i ; j))
and, for Q deﬁned by (7), that
exp(β′z(x))q(x, y) = exp(β′z(y))q(y, x)
for all x, y. In terms of the theory of Markov chains (e.g., Norris, 1997, p. 124–
125), this means that the intensity matrix Q and the distribution (41) are in
detailed balance, which implies that (41) is the stationary distribution for Q.
Since all states communicate with one another, the stationary distribution is
unique and (41) also is the limiting distribution. Q.E.D.
An interpretation of the rate function (43) is that actors for whom changed
relations have a higher value, will indeed change their relations more quickly.
10.
DISCUSSION
The procedure proposed in this paper provides a method for the analysis of
two or more repeated observations on a social network, in which network as
well as covariate eﬀects are taken into account. In view of processes in the
real-life evolution of social networks, in which endogenous network eﬀects
cumulate continuously over time, the continuous-time nature of this model
will be attractive in many applications. The procedure is available in the PC
program SIENA (“Simulation Investigation for Empirical Network Analysis”,
available free of charge from http://stat.gamma.rug.nl/snijders/siena.html),
which runs under Windows, and is comprised in the StOCNET package
(http://stat.gamma.rug.nl/stocnet).
The present article provides the basic procedure, but this methodology
could beneﬁt from further elaborations and improvements, e.g., along the fol-
lowing lines. The algorithm has proven to work well in various applications,
but it is rather time-consuming and improvements may be possible. A proof
of the suﬃcient condition for its convergence (see the appendix: the eigen-
values of (D−1
0 ∂EθZ/∂θ) should have positive real parts) still is lacking. The
frequency properties of the standard errors and the hypothesis tests are based
on large sample approximations and should be investigated. The robustness
of the proposed estimates and tests to deviations from the model assumptions
is an interesting point for further study. The method of moments was chosen
because of its feasibility, but it may be possible to develop other estimation
methods for this model. As additions to the toolbox, it would be useful to
have measures for goodness of ﬁt and some kind of standardized eﬀect sizes.
28


--- PAGE BREAK ---

The present implementation contains an ad hoc way of dealing with missing
data which merits further investigation.
Although the model is presented as an actor-oriented model, it uses an
extremely simple and myopic behavioral model for the actors. This simplicity
is a strength because more complicated models for the behavior of actors in a
relational network would be more restrictive and less general in their domain
of applicability.
On the other hand, for speciﬁc applications it could be
interesting to develop statistical network evolution models incorporating a
sociologically more interesting behavioral model.
Further extensions are possible. An extension to relations with ordered
outcome categories would increase the scope of the model. One could also
think of extending the model to include unobserved heterogeneity by means
of random eﬀects, but this would lead the model outside of the realm of
complete observations of the state of a Markov process, and therefore require
more complex estimation methods.
APPENDIX: STOCHASTIC APPROXIMATION ALGORITHM
The purpose of the algorithm is to approximate the solution of the moment
equation (12). In this appendix, the solution is denoted by θ0. As mentioned
in the text above, the algorithm uses the idea of Polyak (1990) and Ruppert
(1988) to employ a diagonal matrix D0 in the iteration step (26) and estimate
the solution by partial averages of ˆθN rather than the last value; and it uses
the idea of Pﬂug (1990) to let the values of aN remain constant if the average
products of successive values (ZN −z)(ZN−1 −z) are positive, since this
suggests that the process still is drifting toward its limit value. However, the
speciﬁcation used here deviates from Pﬂug’s proposal by requiring, for the
premature decrease of aN , that for each coordinate the partial sum of the
product of successive values be negative, rather than requiring this only for
the sum over the coordinates. Further, the number of steps for which aN is
constant is bounded between a lower and an upper limit to ensure that aN
is of order N −c.
A crucial condition for the Polyak-Ruppert result about the optimal con-
vergence rate of the partial sums of ˆθN to the solution of (12), is the assump-
tion that all eigenvalues of the matrix of partial derivatives, (D−1
0 ∂EθZ/∂θ),
have positive real parts; see Yin (1991), Pﬂug (1996), or Kushner and Yin
(1997).
This condition is implied by condition (13) if D0 is the identity
matrix. For our model and the proposed statistics used in the moment es-
timators we conjecture that this condition is satisﬁed, but the proof still is
a matter of further research. Whether the algorithm yields an estimate that
29


--- PAGE BREAK ---

indeed solves the moment equation (12) to a satisfactory degree of precision
is checked in the ‘third phase’ of the algorithm below. The practical expe-
rience with the convergence of the algorithm is, for most models applied to
most data sets, quite favorable.
The reason for incorporating the matrix D0 is to achieve better compat-
ibility between the scales of Z and of θ. The diagonal elements of D0 are
deﬁned as the estimated values of the derivatives ∂Eθ(Zk)/∂θk where θ is at
its initial value. To see that this leads to compatibility of the scales of Z and
θ note that in the extreme case where var(Zk) = 0 and the diagonal elements
of D0 are equal to ∂Eθ(Zk)/∂θk, (26) for aN = 1 is just the iteration step of
the Newton-Raphson algorithm applied to each coordinate of Z separately.
Thus, beginning the algorithm with aN in the order of magnitude of 1 will
imply that the initial steps have an approximately right order of magnitude.
The algorithm consists of three phases, which can be sketched as follows.
The number of dimensions of θ and of Z is denoted by p and the initial value
is denoted θ1.
Phase 1. In this phase a small number n1 of steps are made to estimate D(θ1) =
(∂Eθ(Z)/∂θ) |θ=θ1, using common random numbers; the diagonal ele-
ments of this estimate are used to deﬁne D0.
This is described formally as follows. Denote by ej the j′th unit vector
in p dimensions. In step N, generate ZN0 ∼θ1 and ZNj ∼θ1 + ϵjej,
where all the p + 1 random vectors use a common random number
stream to make them strongly positively dependent and where ϵj are
suitable constants. For diﬀerent N, the random vectors are generated
independently. Compute the diﬀerence quotients
dNj = ϵ−1
j (ZNj −ZN0) ;
for small values of ϵj the expected value of the matrix dN = (dN1, ..., dNp)
approximates D(θ1). However, ϵj must be chosen not too small because
otherwise the variances of the dNj become too large.
At the end of this phase, estimate Eθ1Z and D(θ1) by
¯z = 1
n1
n1
X
N=1
ZN0 and ˆD = 1
n1
n1
X
N=1
dN ,
respectively, make one estimated Newton-Raphson step,
ˆθn1 = θ1 −ˆD−1 (¯z −z) ,
and use the diagonal matrix ˜D = diag( ˆD) in phase 2.
30


--- PAGE BREAK ---

Phase 2. This is the main phase. It consists of several subphases. The number
of iteration steps per subphase is determined by a stopping rule, but
bounded for subphase k by a minimum value n−
2k and a maximum value
n+
2k . In each subphase, aN is constant. The only diﬀerence between
the subphases is the value of aN.
The subphase is ended after less
than n+
2k steps as soon as the number of steps in this subphase exceeds
n−
2k while, for each coordinate Zk, the sum within this subphase of
successive products (ZNk −zk)(ZN−1,k −zk) is negative. If the upper
bound n+
2k is reached, then the subphase is terminated anyway.
In each iteration step within each subphase, ZN is generated according
to the the current parameter value ˆθN and after each step this value is
updated according to the formula
ˆθN+1 = ˆθN −aN ˜D−1 (ZN −z) .
(44)
At the end of each subphase, the average of ˆθN over this subphase is
used as the new value for ˆθN .
The value of aN is divided by 2 when a new subphase is entered. The
bounds n−
2k and n+
2k are determined so that N 3/4aN tends to a ﬁnite
positive limit.
The average of ˆθN over the last subphase is the eventual estimate ˆθ.
Phase 3. Phase 3 is used only for the estimation of D(θ) and Σ(θ), using common
random numbers for the estimation of the derivatives; and as a check
for the (approximate) validity of (12). Therefore the value of ˆθN is
left unchanged in this phase and is equal to the value obtained after
last subphase of phase 2. The procedure further is as in phase 1. The
covariance matrix of Z, required for the calculation of (21), is estimated
in the usual way.
This algorithm contains various constants that can be adapted so as to
achieve favorable convergence properties. Experience with various data sets
led to the following values. The number of steps in phase 1 is n1 = 7+3p. The
values of ϵi are chosen at least 0.1, in most cases 1.0, because the variability
obtained by the use of small values of ϵi is more serious than the bias obtained
by the use of this large value. The minimum number of steps in subphase
2.k is n−
2k = 24(k−1)/3(7 + p) and the maximum number is n+
2k = n−
2k + 200.
The initial value of aN in phase 2 is 0.2. The default number of subphases is
4; more or less subphases can be used to obtain smaller or larger precision.
The default number of steps in phase 3 is n3 = 500. Phase 3 takes much
time because each step requires p + 1 simulations; but the variance estimate
is rather unstable if the number of steps is much smaller.
31


--- PAGE BREAK ---

REFERENCES
Bishop, Y.M.M., Fienberg, S.E., and Holland, P.W. (1975), Discrete multi-
variate analysis, Cambridge, MA: MIT Press.
Bowman, K.O., and L.R. Shenton. 1985. Method of moments. Pp. 467 –
473 in Encyclopedia of Statistical Sciences, vol. 5, edited by S. Kotz, N.L.
Johnson, and C.B. Read. New York: Wiley.
Doreian, P., and F.N. Stokman (eds.). 1997. Evolution of Social Networks.
Amsterdam etc.: Gordon and Breach.
Fararo, T.J., and N.P. Hummon. 1994. Discrete event simulation and theo-
retical models in sociology. Advances in Group Processes, 11: 25 – 66.
Frank, O., and D. Strauss. 1986. Markov graphs. Journal of the American
Statistical Association, 81: 832 – 842.
Holland, P., and S. Leinhardt. 1977a. A dynamic model for social networks.
Journal of Mathematical Sociology 5: 5 – 20.
Holland, P., and S. Leinhardt. 1977b. Social structure as a network process.
Zeitschrift f¨ur Soziologie 6: 386 – 402.
Karlin, S., and H.M. Taylor. 1975. A ﬁrst course in stochastic processes.
New York: Academic Press.
Katz, L., and C.H. Proctor. 1959. The conﬁguration of interpersonal rela-
tions in a group as a time-dependent stochastic process. Psychometrika
24: 317 – 327.
Kushner, H.J. and G.G. Yin. 1997. Stochastic Approximation: Algorithms
and Applications. New York: Springer.
Leenders, R.Th.A.J. 1995a.
Models for network dynamics: a Markovian
framework. Journal of Mathematical Sociology 20: 1 – 21.
Leenders, R.Th.A.J. 1995b. Structure and inﬂuence. Statistical models for
the dynamics of actor attributes, network structure and their interdepen-
dence.
Amsterdam: Thesis Publishers.
Maddala, G.S. 1983. Limited-dependent and qualitative variables in econo-
metrics. Cambridge: Cambridge University Press.
Mayer, T.F. 1984. Parties and networks: stochastic models for relationship
networks. Journal of Mathematical Sociology 10: 51 – 103.
Norris, J.R. 1997. Markov Chains. Cambridge: Cambridge University Press.
Pﬂug, G.Ch. 1990. Non-asymptotic conﬁdence bounds for stochastic approx-
imation algorithms with constant step size. Monatshefte f¨ur Mathematik
110: 297 – 314.
Pﬂug, G.Ch. 1996. Optimization of Stochastic Models. Boston: Kluwer.
Polyak, B.T. 1990. New method of stochastic approximation type. Automa-
tion and Remote Control 51: 937 – 946.
32


--- PAGE BREAK ---

Robbins, H., and S. Monro.
1951.
A stochastic approximation method.
Annals of Mathematical Statistics 22: 400 – 407.
Ruppert, D. 1988. Eﬃcient estimation from a slowly convergent Robbins-
Monro process. Technical Report no. 781, School of Operations Research
and Industrial Engineering, Cornell University.
Ruppert, D. 1991.
Stochastic approximation.
In Handbook of Sequential
Analysis edited by Gosh, B.K., and P.K. Sen. New York: Marcel Dekker.
Snijders, T.A.B. 1996. Stochastic actor-oriented models for network change.
Journal of Mathematical Sociology, 21: 149 – 172.
Also published in
Doreian and Stokman (1997).
Snijders, T.A.B. 1999. The transition probabilities of the reciprocity model.
Journal of Mathematical Sociology 23: 241 – 253.
Snijders, T.A.B., and M.A.J. Van Duijn. 1997. Simulation for statistical
inference in dynamic network models. Pp. 493 – 512 in Simulating Social
Phenomena, edited by Conte, R., R. Hegselmann, and P. Terna. Berlin:
Springer.
Van de Bunt, G.G. 1999. Friends by choice. An actor-oriented statistical
network model for friendship networks through time. Amsterdam: Thesis
Publishers, 1999.
Van de Bunt, G.G., M.A.J. Van Duijn, and T.A.B. Snijders. 1999. Friend-
ship networks through time: An actor-oriented statistical network model.
Computational and Mathematical Organization Theory 5: 167 – 192.
Wasserman, S. 1977. Stochastic models for directed graphs. Ph.D. disserta-
tion. University of Harvard, Dept. of Statistics.
Wasserman, S. 1979. A stochastic model for directed graphs with transition
rates determined by reciprocity. Pp. 392 – 412 in Sociological Methodology
1980, edited by K.F. Schuessler. San Francisco: Jossey-Bass.
Wasserman, S. 1980.
Analyzing social networks as stochastic processes.
Journal of the American Statistical Association 75: 280 – 294.
Wasserman, S., and K. Faust. 1994. Social Network Analysis: Methods and
Applications. New York and Cambridge: Cambridge University Press.
Wasserman, S., and D. Iacobucci.
1988.
Sequential social network data.
Psychometrika, 53, 261–282.
Wasserman, S., and P. Pattison. 1996. Logit models and logistic regres-
sion for social networks: I. An introduction to Markov graphs and p∗.
Psychometrika 61: 401 – 425.
Yin, G. 1991. On extensions of Polyak’s averaging approach to stochastic
approximation. Stochastics 36: 245 – 264.
Zeggelink, E.P.H. 1994. Dynamics of structure: an individual oriented ap-
proach. Social Networks 16: 295 – 333.
33


--- PAGE BREAK ---

