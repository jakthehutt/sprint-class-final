 
 
 
University of Groningen
Applying SIENA
Steglich, Christian; Snijders, Tom A.B.; West, Patrick
Published in:
Methodology
DOI:
10.1027/1614-2241.2.1.48
IMPORTANT NOTE: You are advised to consult the publisher's version (publisher's PDF) if you wish to cite from
it. Please check the document version below.
Document Version
Publisher's PDF, also known as Version of record
Publication date:
2006
Link to publication in University of Groningen/UMCG research database
Citation for published version (APA):
Steglich, C., Snijders, T. A. B., & West, P. (2006). Applying SIENA: An illustrative analysis of the
coevolution of adolescents' friendship networks, taste in music, and alcohol consumption. Methodology,
2(1), 48-56. https://doi.org/10.1027/1614-2241.2.1.48
Copyright
Other than for strictly personal use, it is not permitted to download or to forward/distribute the text or part of it without the consent of the
author(s) and/or copyright holder(s), unless the work is under an open content license (like Creative Commons).
The publication may also be distributed here under the terms of Article 25fa of the Dutch Copyright Act, indicated by the “Taverne” license.
More information can be found on the University of Groningen website: https://www.rug.nl/library/open-access/self-archiving-pure/taverne-
amendment.
Take-down policy
If you believe that this document breaches copyright please contact us providing details, and we will remove access to the work immediately
and investigate your claim.
Downloaded from the University of Groningen/UMCG research database (Pure): http://www.rug.nl/research/portal. For technical reasons the
number of authors shown on this cover page is limited to 10 maximum.
Download date: 09-03-2025


--- PAGE BREAK ---

Methodology 2006; Vol. 2(1):48–56
 2006 Hogrefe & Huber Publishers
DOI 10.1027/1614-1881.2.1.48
Applying SIENA
An Illustrative Analysis of the Coevolution of
Adolescents’ Friendship Networks, Taste in Music, and
Alcohol Consumption
Christian Steglich,1 Tom A. B. Snijders,1 and Patrick West2
1University of Groningen, the Netherlands
2University of Glasgow, Scotland
Abstract. We give a nontechnical introduction into recently developed methods for analyzing the coevolution of social networks and behavior(s)
of the network actors. This coevolution is crucial for a variety of research topics that currently receive a lot of attention, such as the role of peer
groups in adolescent development. A family of dynamic actor-driven models for the coevolution process is sketched, and it is shown how to
use the SIENA software for estimating these models. We illustrate the method by analyzing the coevolution of friendship networks, taste in
music, and alcohol consumption of teenagers.
Keywords: network dynamics, longitudinal, social networks, stochastic modeling
Introduction
Social network analysis is concerned with how actors are
related to each other (see Carrington, Scott, & Wasserman,
2005). The actors can be individual persons, but also or-
ganizations, countries, and so on, and the relations studied
can be asymmetric (like investments of one company in
another’s stocks) or inherently symmetric (like two em-
ployees sharing an ofﬁce). The basic data structure is the
graph, which can be directed (for modeling potentially
asymmetric relations) or undirected (for modeling sym-
metric relations). In a majority of applications of social
network analysis, there is a natural interdependence be-
tween network structure and the individual characteristics
of the network actors. The best-known pattern of this type
may be network autocorrelation, that is, the empirical ﬁnd-
ing that social ties occur more frequently among demo-
graphically or behaviorally similar actors than among dis-
similar actors (Doreian, 1990). For explaining such
patterns, it is necessary to uncover the processes by which
the interdependencies come into existence. In general,
there will be competing theories. Concerning the example
of network autocorrelation, one prominent explanation is
the homophily principle, shorthand for the argument that it
is easier or more rewarding for an actor to interact with a
similar other than with a dissimilar other (McPherson,
Smith-Lovin, & Cook, 2001). When this is the case, net-
work ties tend to form according to similarity on some
actor attribute, and network autocorrelation emerges as a
consequence of tie selection over time. An alternative ex-
planation of the same phenomenon is the assimilation prin-
ciple, according to which network actors adapt their own
individual characteristics to match those of their social
neighborhood (Friedkin, 1998). Again, network autocor-
relation emerges over time, but now due to processes of
social inﬂuence.
Implicit in such explanatory approaches is often an as-
sumption about change over time. It is obvious that selec-
tion according to the homophily principle requires the so-
cial network to be dynamic (i.e., changeable over time),
while actor characteristics can be dynamic or static. The
converse holds for social inﬂuence according to the assim-
ilation principle. Here, the actor characteristics are required
to be dynamic, while there is no requirement on the social
network part. When, in an application, the social network
as well as the individual characteristic of interest are dy-
namic, both paradigms could occur. In such situations, it
becomes an issue of empirical investigation to determine
which of the two can better explain the observed patterns
of network autocorrelation, by assessing the relative im-
portance of either mechanism.
In this article, an outline is provided of how such ques-
tions can be answered. We cover the case of an evolving
“complete” network and coevolving behavioral dimen-
sions, for which panel data have been collected. Complete-
ness of the network here refers to the boundaries of the set
of actors on which the social network is studied. In general,
the dynamic processes involved are hardly limited to a con-
veniently bounded group of actors, but we require that a
meaningful approximation of the relevant carrier group be
made, by focusing on groups that contain within them a
large part of the social processes relevant to the phenom-
enon that is investigated.
Some interesting models for the coevolution of networks
and actor characteristics can be found in the literature (Car-
ley, 1991; Dorogovtsev, Goltsev, & Mendes, 2002; Latane´
This document is copyrighted by the American Psychological Association or one of its allied publishers.  
This article is intended solely for the personal use of the individual user and is not to be disseminated broadly.


--- PAGE BREAK ---

C. Steglich et al.: Applying SIENA
49
 2006 Hogrefe & Huber Publishers
Methodology 2006; Vol. 2(1):48–56
1
The size of the network state space is 2n(n-1) for the case of directed, binary networks that we treat in this article.
2
For the implications that these assumptions have on the research topics that can be studied, as well as the possibilities to relax these
assumptions, we refer to the pertinent discussions in the works cited in this section.
& Nowak, 1997; Macy, Kitts, Flache, & Benard, 2003;
Mark, 1998). The models presented in this article differ
from these strands of literature in their explicit gearing to-
ward statistical inference. This imposes requirements of
ﬂexibility and a modicum of empirical realism, as the mod-
els must be useful for parameter estimation, hypothesis
testing, ﬁt assessment, and the improvement of ﬁt by ex-
tending the model with additional components.
In the example discussed, the models are applied for
investigating the joint dynamics of taste in music, alcohol
consumption, and friendship ties among adolescents. As an
approximation of the social space in which these dynamics
take place, we focus on a school cohort for which three
waves of network-behavioral panel data were collected
(Pearson & West, 2003). The SIENA software (Snijders,
Steglich, Schweinberger, & Huisman, 2005) is used for
assessing the strength of homophily and assimilation pro-
cesses. A transfer of the sketched method to other research
domains involving interdependence between a social net-
work and individual actor characteristics is easily possible.
The article is structured as follows. In the next section,
a family of stochastic, actor-driven models for the coevo-
lution of social networks and individual behavior is
sketched. These models build on earlier models for “pure”
network dynamics that were recently extended to account
for the joint dynamics of networks and behavior. This mod-
eling approach is applied, in the third section, to an em-
pirical study of the joint dynamics of friendship networks,
taste in music, and alcohol consumption among teenagers.
For this purpose, we make use of the SIENA software. We
conclude with a brief recapitulation of our main messages.
A Family of Actor-Driven Models for
the Coevolution of Social Networks
and Behavior
Snijders (1996, 2001, 2005) introduced a family of sto-
chastic, actor-driven models for the evolution of social net-
works “alone” (i.e., not yet allowing for coevolving indi-
vidual dimensions). The basic idea is to take the totality of
all possible network conﬁgurations (directed graphs) on a
given set of actors as the state space of a stochastic process,
and to model observed network dynamics by specifying
parametric models for the transition probabilities between
these states. For the simplest case of two actors A and B,
the state space would consist of the four possible dyad
conﬁgurations (1) A and B unconnected (empty dyad), the
two asymmetric dyads (2) ArB and (3) ARB, and the
mutual dyad (4) A}B. When increasing the number n of
network actors, the number of states rises at a squared ex-
ponential rate1, such that for a set of six actors, the state
space already contains more than a million possible net-
work conﬁgurations.
When analyzing network panel data, each measurement
of the network corresponds to one state in this (very large)
state space. The explanation of the observed network dy-
namics (i.e., the “jumping” from one observed state to the
next) is formulated in terms of transition probabilities be-
tween the states, with the ﬁrst observation being condi-
tioned upon, that is, taken as the (exogenously given) start-
ing value of the stochastic process. Because the set of
possible transitions between the states also is very large, a
series of simplifying assumptions are made in order to re-
duce the complexity of the modeling task.2 It is assumed
that
• the transitions between panel measurements are mani-
festations of an underlying process that takes place in
continuous time.
• actors do not coordinate their actions but act condition-
ally independent of each other, given the current state of
the network.
• actors change at most one tie variable at a time, that is,
create one new link or dissolve one existing link.
By these assumptions, the complex modeling task is re-
duced to the two smaller tasks of (a) modeling the change
of one tie variable by one actor at a time, a so-called net-
work micro step, and (b) modeling the occurrence of these
micro steps over time. Task (a) is solved by specifying a
multinomial logit distribution that instantiates the maxi-
mization of a random utility function (the so-called objec-
tive function), while task (b) is solved by specifying a dis-
tribution for the actors’ individual waiting times (with the
parameter given by the so-called rate function). By this
approach, the time dependence of the network evolution
process is implicitly modeled as an emergent consequence
of the model-inherent progression of time, and need not be
modeled explicitly. Both model parts allow for dependence
on state (i.e., network structure), time, and actor, but not
on the history of the process (a Markov assumption). For
more details, we refer to the speciﬁc model analyzed in the
next section, and to the other works cited in the beginning
of this section.
So far, the model sketch covered only the dynamics of
network evolution. The addition of coevolving behavioral
dimensions is done in a straightforward manner, by ﬁrst
transferring the modeling framework to behavioral evolu-
tion and then integrating the two models. For each behav-
ioral variable, a separate behavioral state space is handled,
consisting of all possible distributions of individual behav-
ior scores (behavior is required to have discrete outcomes),
and the observed transitions on each behavioral dimension
are modeled by decomposition into behavioral micro steps,
which consist of one actor adjusting his or her score on the
behavioral dimension by moving at most one category up-
ward or downward at a time. These micro steps again are
modeled by a multinomial logit distribution based on a
random utility objective function, and their occurrence by
an exponential distribution based on a rate function.
Integration of the separate models for network evolution
and the evolution of the separate behavioral dimensions is
This document is copyrighted by the American Psychological Association or one of its allied publishers.  
This article is intended solely for the personal use of the individual user and is not to be disseminated broadly.


--- PAGE BREAK ---

C. Steglich et al.: Applying SIENA
50
Methodology 2006; Vol. 2(1):48–56
 2006 Hogrefe & Huber Publishers
done by (a) specifying the Cartesian product of the separate
state spaces as the joint state space, (b) assuming condi-
tional independence of the occurrence of the different types
of micro steps, and (c) extending the separate objective
functions and rate functions to allow for dependence on the
respective other dimensions of the state space. It is in step
(c) that the interdependence between network dynamics
and behavioral dynamics is introduced into the model. The
resulting model for the coevolution process of the network
and the behavioral dimensions inherits its Markov property
from the separate processes it is constructed from. The ac-
tor-driven nature of the model family is reﬂected in the
locus of action. It is the actors who get an opportunity to
change what they have under control (their outgoing ties
and their own behavior), the relative frequencies of these
opportunities being modeled by rate functions. And these
actors base their decisions on evaluations of the expected
immediate consequences of their decision, the evaluations
being modeled by objective functions.
The Markov property implies that for each set of model
parameters, there exists a stationary (equilibrium) distri-
bution of probabilities over the state space of all possible
network-behavior conﬁgurations. In general, the conﬁgu-
ration observed in the ﬁrst wave of the panel will not be
in the center of this equilibrium distribution. Because of
this, the model deﬁnes a nonstationary process of network-
behavioral dynamics, starting at the ﬁrst observation, and
then drifting toward those states that have a relatively high
probability under the equilibrium distribution. As can be
guessed from the complexity of the model, neither the equi-
librium distribution nor the likelihood of a data set under
a given model parametrization can be calculated in closed
form, except for some trivial special cases (Snijders & van
Duijn, 1997). However, simulations of the model-speciﬁc
evolution process are possible, and by way of simulation-
based inference, parameter estimates can be obtained. The
SIENA software instantiates simulation-based method of
moments estimation of these models (Snijders, Steglich, &
Schweinberger, in press) and also allows for simulation-
based maximum likelihood and Bayesian estimation of
models for pure network evolution (Koskinen, 2004). Ex-
tension of the likelihood-based estimation methods to the
coevolution with behavioral dimensions is pending.
An Empirical Study Using SIENA
A domain in which the dynamics of social networks and
individual behavior are likely to be strongly interrelated is
the domain of fads and fashions. The particular fashion
phenomenon studied in this section is the development of
taste in music over time. We investigate to what degree
and how the social network context mediates the listening
behavior of adolescents, and whether and how, in turn,
their taste in music affects the social relations among them.
It is a characteristic of fashion phenomena that the tan-
gible shape of a fashion signal (i.e., exactly which clothes
to wear or which music to listen to) is not so important
compared to its use as an identity signal for communication
among actors in the same social structure. “Sameness qua
fashion” matters in the social context, while the individual
fashion attribute has no inherent value to the actor (“fash-
ions come and go”). It has been argued that fashion signals
serve at the same time for the creation of social identity
(Bryson, 1996) and for the manifestation of a status hier-
archy (Bourdieu, 1984). Classic descriptions of fashion
emphasize differentiation and imitation as driving forces
underlying fashion dynamics (1899, Simmel, 1904; Veb-
len, 1899). According to these theories, actors at the top of
the hierarchy attempt to differentiate themselves from
those below by acting as trendsetters, while actors lower
in the hierarchy attempt to imitate those above them (Su-
zuki & Best, 2003).
In our application, we can reasonably expect that the
trendsetters in the ﬁrst place are the musicians listened to,
who are themselves not part of the group of adolescent
listeners studied. We accordingly hypothesize that the dif-
ferentiation aspect of fashion dynamics (which takes place
at the top of the postulated status hierarchy) plays a sec-
ondary role in the population studied, and that imitation
will be the major determinant of the dynamics of adoles-
cents’ music-listening behavior. Hence, we expect to ﬁnd
a strong tendency toward behavioral conformity among
friends (the assimilation hypothesis).
Moving down in the postulated status hierarchy, school-
mates with a prominent music taste may also act as a kind
of localized trendsetter (the literature on product innova-
tion here speaks of early adopters). Assuming that it is not
the individuality of these adolescents that causes them to
act as proxy trendsetters, but the music taste they exhibit,
we can expect adolescents who listen to more trendy music
to be more popular as friends than those who listen to less
trendy music. So, if taste in music indeed is an indicator
for a status hierarchy, it should be possible to reveal this
hierarchy by assessing the effects of the adolescents’ taste
in music on their popularity (the popularity-ranking hy-
pothesis). Further, we expect an asymmetry of adaptation
patterns: Adolescents with lower-ranked taste in music
should more easily start listening to higher-ranked music
than vice versa (the adoption asymmetry hypothesis). The
hypotheses about assimilation and adoption asymmetry re-
fer to the behavioral part (dynamics of taste in music),
while the hypothesis about the popularity ranking refers to
the network part (dynamics of friendship). For testing
them, we make use of the SIENA software (Snijders et al.,
2005). SIENA (an acronym for Simulation Investigation
for Empirical Network Analysis) is a computer program
that carries out the statistical estimation of the dynamic
actor-driven models introduced above. The best way to run
SIENA is as part of the StOCNET program collection
(Boer, Huisman, Snijders, & Zeggelink, 2003).
Data and Operationalization
We study the social network data collected in the Teenage
Friends and Lifestyle Study (Michell & Amos, 1997; Mich-
ell & West, 1996; Pearson & West, 2003). It covers a co-
hort of pupils at a school in the West of Scotland for which
friendship network data, substance use, and several life-
style variables (including music consumption) were re-
This document is copyrighted by the American Psychological Association or one of its allied publishers.  
This article is intended solely for the personal use of the individual user and is not to be disseminated broadly.


--- PAGE BREAK ---

C. Steglich et al.: Applying SIENA
51
 2006 Hogrefe & Huber Publishers
Methodology 2006; Vol. 2(1):48–56
3
Running SIENA with strongly correlated variables is prone to lead to convergence problems of the stochastic approximation algorithm.
corded in three yearly waves, starting in 1995 with pupils
aged 13 and ending in 1997. The number of participating
respondents was 150 in the ﬁrst wave, 146 in the second,
and 137 in the third. More than two thirds of the changes
in participation are due to pupils leaving or joining the
school; the rest are occasional missings (for a detailed over-
view, see Bush, West, & Michell, 1997). In total, 160 pu-
pils took part in the study, of which 129 were present at
all measurement points. While in principle SIENA allows
for special treatment of joiners and leavers (Huisman &
Snijders, 2003), we decided to include only the complete
cases in our analyses. The main reason for this was the
resulting reduction of expected estimation time by about
one third, combined with results of exploratory analyses
that did not reveal any qualitative differences between the
full sample and the complete cases subsample.
The friendship networks were assessed by a name gen-
erator that allowed for mentioning up to six friends. The
restriction to a ﬁxed maximum number of network neigh-
bors can be problematic when one is interested in assessing
local or global network structure (Holland & Leinhardt,
1973). On the one hand, in our data, the restricted format
seems not to have cut off much. The median number of
reported friends is four, and 88% of the respondents named
less than the maximum number of six. On the other hand,
the modeling approach we take relies on measures of local
network structure that are, in principle, affected by an up-
per bound on the number of friends. To what degree this
has an impact on the results of our analyses currently re-
mains an open question.
Music taste was recorded by a 16-item inventory of mu-
sic genres. Pupils were asked which type of music they
liked listening to, with the options being rock, indie, chart
music, jazz, reggae, classical, dance, 60s/70s, heavy metal,
house, techno, grunge, folk/traditional, rap, rave, and hip-
hop. It may be argued that the fashion aspect of listening
to music refers more to the particular musicians and songs
that are popular than to the music style pupils listen to.
However, we think that this is much more the case for later
phases in life, when an “own taste” has been acquired, than
for the early phase of adolescence we investigate here,
where experimenting plays a stronger role. Although cer-
tainly not the ideal operationalization, it seems acceptable
to assume that among 13–15-year-old pupils, preference
for whole styles of music may (still) be treated as a fashion
phenomenon.
As is common in lifestyle research (e.g., Katz-Gerro,
1999), the original items had to be reduced to a manageable
number of dimensions. We applied the following proce-
dure: ﬁrst, factor analyses were run, per measurement and
on the pooled data. These suggested a three- or four-factor
solution. Figure 1 shows a positioning of the items in three-
dimensional space according to a principal-components
analysis of the pooled data. The solutions differ in the role
of the items rap, reggae, house, and hip-hop, which ap-
parently form a weak scale on their own. Due to the com-
paratively little amount of independent information on this
fourth dimension, we decided to exclude these items.3 Fur-
ther, the item 60s/70s, which in Figure 1 lies in between
the rock and the classical groups, was special in the sense
that in separate factor analyses per measurement point, it
moved out of the classical group (in wave 1) into the rock
group (in wave 3). This item was also excluded. The ﬁnal
scales were obtained by a nonparametric Mokken scale
analysis with MSP (Molenaar, Sijtsma, & Boer, 2000) on
the pooled data, which gave the three-scales solution as
indicated in the ﬁgure. Although scale characteristics are
weak for all the scales, with H-coefﬁcients ranging from
0.35 (classical) to 0.40 (techno) and Cronbach’s  ranging
from 0.56 (rock) to 0.66 (techno), we continue to work
with them because of their intuitive appeal and the illus-
trative character of the application. Scale averages over all
three waves are 2.27 for techno (sum score of four dichot-
omous items), 0.83 for rock (four items), and 0.11 for clas-
sical (three items). The mainstream taste thus seems to be
captured in the techno scale, followed at a distance by the
rock scale. Listening to the music summarized in the clas-
sical scale is conﬁned to a rather small minority.
Earlier analyses on the same data set revealed that al-
cohol consumption was highly related to social network
structure, both in terms of alcohol-based homophilous se-
lection of friends and in terms of assimilation of alcohol
consumption to the friends (Steglich, Snijders, & Pearson,
2004). In order to control for this major determinant of the
friendship dynamics, we include the alcohol dimension as
a coevolving behavioral dimension into our study, next to
the music-consumption variables we are primarily inter-
ested in. Also, alcohol consumption is an element of ado-
lescent lifestyle that may well be differentially associated
with the three music styles we distinguish, and it seems
desirable to assess its relation to taste in music. Alcohol is
coded on a 5-point frequency scale ranging from 1 (“I don’t
drink”) to 5 (“more than once a week”).
Model Speciﬁcation
As indicated above, the speciﬁcation of an actor-driven
model is done by deﬁning, for each of the dimensions that
coevolve, a rate function and an objective function. The
rate function indicates the speed at which the network ac-
tors get an opportunity to change their behavior on the
respective dimension, while the objective function indi-
cates what such changes look like. In our application, this
amounts to the speciﬁcation of rate and objective functions
for the network evolution part, for the three music dimen-
sions identiﬁed, and for the alcohol dimension—a total of
10 functions. In order to keep things simple, we assume
that the ﬁve rate functions are periodwise constant for each
of the coevolving dimensions, that is, we estimate one ba-
sic rate parameter for each period and each dynamic di-
mension.
The objective functions are speciﬁed as follows. For net-
work evolution, we assume that actors express some basic
tendencies that are well known to play a role in friendship
networks (Snijders, 2001; van de Bunt, van Duijn, &
Snijders, 1999):
This document is copyrighted by the American Psychological Association or one of its allied publishers.  
This article is intended solely for the personal use of the individual user and is not to be disseminated broadly.


--- PAGE BREAK ---

C. Steglich et al.: Applying SIENA
52
Methodology 2006; Vol. 2(1):48–56
 2006 Hogrefe & Huber Publishers
Figure 1. Music items in rotated three-dimensional principal-components space.
• Outdegree effect. Negative effect: Actors tend not to es-
tablish friendship with unspeciﬁc others.
• Reciprocity effect. Actors tend to reciprocate friendship.
• Distance-2 effect. Negative effect: Actors tend to avoid
indirect relations via third parties.
• Gender homophily effect. Actors tend to prefer same-
gender friendships.
• Gender ego effect. Boys and girls may differ in their
preferred number of friends.
• Gender alter effect. Boys and girls may differ in popu-
larity.
• Behavior homophily effect. Actors may prefer friendship
to others with the same music taste and/or alcohol-con-
sumption level.
• Behavior ego effect. Music taste and/or alcohol con-
sumption may determine social activity.
• Behavior alter effect. Music taste and/or alcohol con-
sumption may determine popularity.
The ﬁrst three components of this network objective func-
tion depend only on the network itself, while the others
depend on characteristics of ego (the actor sending the net-
work tie), alter (the actor receiving the tie), or both (simi-
larity between ego and alter). The homophily effects, ex-
pressing a preference for similar friends compared to
dissimilar ones, may equivalently be characterized as het-
erophobia effects—a point that can be helpful for inter-
preting parameter estimates. For behavioral evolution (and
this concerns all four behavioral dimensions, listening to
techno / rock / classical and alcohol consumption), we as-
sume that actors are affected by the following determi-
nants:
• Tendency effect. Captures the overall preference for the
three music dimensions and alcohol consumption.
• Assimilation effect. Actors tend to adapt to the music
taste and/or alcohol consumption of their friends.
• Gender effect. Boys and girls may differ in music taste
and/or alcohol consumption.
• Other behaviors’ effects. Alcohol consumption and the
preference for the three music dimensions may affect
each other.
The homophily and assimilation effects are deﬁned by a
dyadic measure of similarity on actor characteristics. It
may sufﬁce here to say that this similarity measure is stan-
dardized to the unit interval, with a score of 0 indicating
that two friends are maximally dissimilar on the actor char-
acteristic (i.e., one of them has the minimum score and the
other the maximum score), and a score of 1 indicating that
they have identical scores (of whatever scale value). A
broader catalogue of possible effects than the one chosen
for the present analysis is given by Steglich et al. (2004).
For each of the effects included, a parameter is esti-
mated, and some of these can be used for testing the hy-
potheses derived above. The assimilation hypothesis refer-
ring to the three dimensions of music taste can be tested
directly by looking at the signiﬁcance of the parameters
estimated for the assimilation effect in the respective be-
havioral objective function. The popularity-ranking hy-
pothesis can be tested indirectly by looking at the signiﬁ-
cance of the parameters estimated for the effects techno
alter, rock alter, and classical alter. If there is a popularity
hierarchy revealed by music listening, the listening behav-
ior of the friend (alter) should be linked to the pupil’s pref-
erence for keeping or establishing the respective friendship
tie. If such a hierarchy can be uncovered, the adoption
asymmetry hypothesis, ﬁnally, can be tested by looking at
the signiﬁcance of the main effects of the different music
styles on each other. Here, we expect listening to the lower-
ranked music style to have a stronger effect on listening to
the higher-ranked music style than vice versa.
The model was estimated under the standard options of
SIENA, which means that estimation of the parameters is
This document is copyrighted by the American Psychological Association or one of its allied publishers.  
This article is intended solely for the personal use of the individual user and is not to be disseminated broadly.


--- PAGE BREAK ---

C. Steglich et al.: Applying SIENA
53
 2006 Hogrefe & Huber Publishers
Methodology 2006; Vol. 2(1):48–56
4
In the software version used for the reported analyses, computation time is roughly quadratic in the number of actors and in the number
of parameters. A reduction to subquadratic dependence on the number of actors and to linear dependence on the number of parameters
has meanwhile been achieved. These options will be available from SIENA release 3.0 onward.
based on four consecutive and increasingly accurate sub-
phases of the Robbins-Monro moments estimation algo-
rithm, and standard errors are calculated based on 500 ad-
ditional simulation runs (Snijders et al., 2005). A total of
52 parameters were estimated with the SIENA software
(version 2.0), which on a 3.0 GHz Pentium 4 machine took
39 hours of estimation time.4
Results
The results of our analysis are given in Table 1. We ﬁrst
address the results for the network part of the model, and
then those for the behavioral dimensions.
In the friendship part of the model, a negative outdegree
parameter indicates that friendship tends to be avoided, un-
less there are additional desirable properties to the friend-
ship tie—for example reciprocation (positive reciprocity
parameter), transitive embeddedness (negative distance-2
parameter), or a same-gender friendship (positive gender
homophily parameter). Furthermore, girls tend to be more
active in the friendship network than boys, that is, tend to
have more friends than boys, as indicated by the parameter
of gender ego. Concerning the impact of music taste on
friendship dynamics, one can say that there is a positive
effect of listening to rock on popularity (parameter rock
alter), homophily according to classical listening habits,
and a positive effect of classical listening on activity (pa-
rameter classical ego). In Table 2, an overview calculation
is given of the impact the different possible music taste
conﬁgurations in a pair of actors have on the friendship
value between these actors (note that the table refers to
situations in which each actor listens to only one music
style). For the popularity-ranking hypothesis, this means
that if there is a status hierarchy based on music listening,
it is the rock listeners that are highest in this hierarchy
(parameter rock alter) while classical listeners are lowest
(because they are equally shunned by techno as well as
rock listeners, as expressed in the classical homophily-het-
erophobia parameter). As expected, alcohol consumption
(the fourth behavioral dimension) has a strong impact on
friendship dynamics in terms of homophily.
When looking at the music-listening parts of the model,
we see that the assimilation hypothesis can be conﬁrmed
only on the dimensions rock and techno, where the assim-
ilation parameter is signiﬁcant, but not on the classical di-
mension. The adoption asymmetry hypothesis, when ap-
plied to the diagnosed hierarchy, states that rock listeners
(as the highest-ranked status group) should least easily
adopt other music listening habits, and that classical listen-
ers (as the lowest-ranked status group) should most easily
adopt them, with techno listeners being located in between
these groups. Table 3 shows how changes on one music
dimension affect the other music dimensions. What should
be expected according to the adoption asymmetry hypoth-
esis is a higher impact of lower-status music on the odds
of listening to higher-status music than in the opposite di-
rection. When conﬁning our discussion to the parameters
that are signiﬁcant at 0.05, the only statement we can
make here is the comparison between the mutual effects of
techno and rock on each other (all other main effects are
insigniﬁcant). An increase of the rock score by one reduces
the odds of increasing the techno score versus decreasing
it by 50% (parameter rock on techno). Vice versa, an in-
crease of the techno score by 1 reduces the respective odds
for increasing the rock score by just 40%. This means that
comparatively less rock listeners tend to also listen to
techno than techno listeners tend to also listen to rock, and
can be counted as (weak) support of the adoption asym-
metry hypothesis. Similarly, the comparison between
techno and classical is in the predicted direction.
However, the most striking asymmetry in Table 3 con-
cerns the comparison of rock and classical. Here, the hi-
erarchy seems to be reversed: in contradiction to the adop-
tion asymmetry hypothesis, a higher score on the rock scale
increases the odds of listening more to the styles captured
in the classical scale, while a higher score on the classical
scale decreases the odds of listening more to the styles
summarized in the rock scale.
Apparently, the classical dimension is special in several
ways: there is no assimilation occurring on this dimension,
but there is homophilous social selection. Both stand in
diametrical contrast to the other music dimensions, which
seem to be more socially acquired and less socially steering
than the classical taste. The other dimensions also are not
gender speciﬁc, while there is a marginal positive effect of
being female on classical (see also Roe, 1985). The social
hierarchy derived from the friendship dynamics puts clas-
sical at the lower end of the hierarchy, but this position is
not conﬁrmed by the music listening dynamics. Finally,
classical is the only music-taste associated to our control-
ling behavioral variable, alcohol consumption: They tend
to be incompatible.
As a result of our analyses, what emerges is a picture of
a majority of pupils listening to music as summarized in
the techno and rock scales, for whom the hypotheses are
conﬁrmed and where a preference for rock items seems to
coincide with higher social status. And there is a small
exceptional group of mainly (but not exclusively) girls,
listening to music styles in the classical scale because of
reasons exogenous to their school environment, barely
drinking alcohol, and being avoided by most of their
schoolmates. Their taste in music, though, seems to have
appeal to the rock listeners, which makes it difﬁcult to
position these pupils on the social hierarchy. The ﬁndings
are in line, though, with previous research showing that
tastes in music move during adolescence from mainstream
“chart” music (included in our techno scale) to more spe-
ciﬁc genres later on (Roe, 1985, 1996).
Conclusion
We showed how panel data on the dynamics of social net-
works and behavioral dimensions can be analyzed by mak-
This document is copyrighted by the American Psychological Association or one of its allied publishers.  
This article is intended solely for the personal use of the individual user and is not to be disseminated broadly.


--- PAGE BREAK ---

C. Steglich et al.: Applying SIENA
54
Methodology 2006; Vol. 2(1):48–56
 2006 Hogrefe & Huber Publishers
Table 1. SIENA estimation results for the full model. Ef-
fects labeled in italics indicate signiﬁcance at   0.05
(two-sided approximate t test).
Submodel
Parameter
Estimate
SE
p value
Network
outdegree
1.89
0.29
 0.001
reciprocity
2.34
0.12
 0.001
distance-2
1.09
0.07
 0.001
gender homophily
0.80
0.12
 0.001
gender ego
0.24
0.11
0.030
gender alter
0.21
0.12
0.083
techno homophily
0.08
0.33
0.798
techno ego
0.10
0.05
0.053
techno alter
0.07
0.05
0.194
rock homophily
0.11
0.41
0.791
rock ego
0.07
0.08
0.357
rock alter
0.19
0.07
0.006
classical homophily
1.44
0.69
0.039
classical ego
0.40
0.17
0.015
classical alter
0.15
0.17
0.362
alcohol homophily
0.83
0.27
0.002
alcohol ego
0.03
0.03
0.397
alcohol alter
0.03
0.04
0.456
rate period 1
12.45
1.54
 0.001
rate period 2
9.56
1.08
 0.001
Techno
tendency
0.01
0.25
0.960
assimilation
0.45
0.18
0.014
gender
0.25
0.12
0.035
rock
0.34
0.10
 0.001
classical
0.13
0.23
0.577
alcohol
0.07
0.10
0.500
rate period 1
3.40
0.79
 0.001
rate period 2
3.46
0.78
 0.001
Rock
tendency
0.59
0.25
0.016
assimilation
0.63
0.28
0.024
gender
0.01
0.19
0.966
techno
0.25
0.09
0.003
classical
0.34
0.30
0.260
alcohol
0.11
0.07
0.116
rate period 1
2.04
0.42
 0.001
rate period 2
2.24
0.47
 0.001
Classical
tendency
0.67
1.30
0.606
assimilation
0.42
1.17
0.716
gender
1.57
0.83
0.057
techno
0.46
0.40
0.250
rock
0.64
0.39
0.106
alcohol
1.03
0.34
0.002
rate period 1
0.63
0.38
0.096
rate period 2
1.43
0.55
0.010
Alcohol
tendency
0.30
0.37
0.420
assimilation
0.94
0.27
 0.001
gender
0.06
0.19
0.745
techno
0.23
0.16
0.145
rock
0.16
0.16
0.318
classical
0.59
0.32
0.067
rate period 1
1.54
0.36
 0.001
rate period 2
2.50
0.54
 0.001
Table 2. Contributions of music taste conﬁgurations to the
network objective function, as derived from the estimates
in Table 1 (calculations refer to highest possible scores and
mutually exclusive music tastes).
Alter
Techno
Rock
Classical
Techno
0.06
0.25
1.39
Ego
Rock
0.15
0.54
1.31
Classical
0.02
0.50
1.73
Table 3. Impact of increasing the score on one music di-
mension on the odds of increasing versus decreasing the
score on the other music dimensions, as derived from the
estimates in Table 1.
Impact on odds
Techno
Rock
Classical
Techno
—
40%
60%
Increase
Rock
50%
—
256%
Classical
29%
49%
—
ing use of actor-driven models. Interdependent dynamics
of this sort are characteristic for several active research
topics, such as the spread of health-related behaviors in a
network, the effects of communication networks on the
individual, or the beneﬁt that ﬁrms have from forming al-
liances. The particular application studied in the empirical
part concerned the mutual effects of music listening and
friendship on each other, which was investigated in a co-
hort of adolescents. It was shown how relatively complex
hypotheses about status hierarchies underlying the dynam-
ics of music listening could be tested in a straightforward
way. The data were estimated with help of the SIENA soft-
ware (Snijders et al., 2005). Model estimates suggested a
social hierarchy of music-listening habits, in which the
rock dimension dominated the techno dimension. Listening
habits on the classical dimension were shown to be related
to a special group of pupils, and could not be positioned
in this hierarchy.
The limitations of the particular application we pre-
sented largely pertain to the operationalization of taste in
music. On the one hand, while fashion waves in music are
known to refer in the ﬁrst place to the popularity of indi-
vidual artists, our data was available only for whole music
genres. On the other hand, the scales we constructed, while
having intuitive appeal, showed relatively little internal
consistency. This renders our results exploratory rather
than conclusive. Further, the study was limited to straight-
forward tests of model parameters, which express micro
behavior, that is, the actions of individuals. An area still
underexplored is the empirical relationship of such micro
behavior of network actors to macro phenomena like seg-
regation or segmentation of a social network (Baerveldt &
Snijders, 1994). In the study of fashion phenomena, this is
of particular interest. According to Bourdieu (1984), fads
and fashions serve for social differentiation and identity
This document is copyrighted by the American Psychological Association or one of its allied publishers.  
This article is intended solely for the personal use of the individual user and is not to be disseminated broadly.


--- PAGE BREAK ---

C. Steglich et al.: Applying SIENA
55
 2006 Hogrefe & Huber Publishers
Methodology 2006; Vol. 2(1):48–56
creation, that is, for the creation of social boundaries. Such
segregation phenomena have in the ﬁrst place been studied
in small-group experiments in the context of social identity
theory (Hogg, Abrams, Otten, & Hinkle, 2004) or on the
macro level (Bourdieu, 1984), but it is not clear to what
degree the macro phenomena charted by the latter type of
research can be explained by the individual-level processes
identiﬁed by the former type of research.
A network study, which becomes possible with the ac-
tor-oriented approach sketched in this article, may be able
to bridge the gap between the more cognitively oriented
small-group research and the segregation phenomena ob-
served on the macro level. In the SIENA framework, it is
easily possible to run simulations according to a given
model parametrization. Usually, with the help of such
simulation runs, model parameters are estimated from em-
pirical data. However, once such realistic model parame-
ters have been obtained, they can also be used for running
more simulations for generating artiﬁcial data sets on the
coevolution of friendship and music taste. The statistical
analysis of such empirically informed simulations can be
of help for assessing the impact of particular micro phe-
nomena related to social identity (and expressed in model
parameters) on properties of the emerging global dynamics
(segregation on the macro level).
Acknowledgments
We thank the Chief Scientist’s Ofﬁce of the Scottish Home
and Health Department for funding data collection. The
ﬁrst author was funded by the Netherlands Organization
for Scientiﬁc Research (NWO) under Grant 401-01-550.
An earlier version of this article was presented at the XXV
Sunbelt Social Network Conference, Redondo Beach, Feb-
ruary 16–20, 2005.
References
Baerveldt, C., & Snijders, T. A. B. (1994). Inﬂuences on and from
the segmentation of networks: Hypotheses and tests. Social
Networks, 16, 213–232.
Boer, P., Huisman, M. E., Snijders, T. A. B., & Zeggelink, E. P.
H. (2003). StOCNET: An Open Software System for the Ad-
vanced Statistical Analysis of Social Networks (Version 1.4)
[Computer
software].
Groningen, the Netherlands: Pro-
GAMMA/ICS, University of Groningen. Retrieved November
05, 2005, from http://stat.gamma.rug.nl/stocnet/
Bourdieu, P. (1984). Distinction: A social critique of the judge-
ment of taste. London: Routledge & Kegan.
Bryson, B. (1996). Anything but heavy metal: Symbolic exclu-
sion and musical dislikes. American Sociological Review, 61,
884–899.
Bush, H., West, P., & Michell, L. (1997). The role of friendship
groups in the uptake and maintenance of smoking amongst pre-
adolescent and adolescent children: Distribution of frequen-
cies (Working Paper No. 62 of the Medical Sociology Unit).
Glasgow, Scotland: Medical Research Council.
Carley, K. (1991). A theory of group stability. American Socio-
logical Review, 56, 331–354.
Carrington, P., Scott, J., & Wasserman, S. (Eds.). (2005). Models
and methods in social network analysis. New York: Cambridge
University Press.
Doreian, P. (1990). Network autocorrelation models: Problems
and prospects. In D. A. Grifﬁth (Ed.), Spatial statistics: Past,
present, future (pp. 369–389). Ann Arbor: Michigan Document
Services.
Dorogovtsev, S. N., Goltsev, A. V., & Mendes, J. F. F. (2002).
Ising model on networks with an arbitrary distribution of con-
nections. Physical Review E, 66, 016104l, 1–5.
Friedkin, N. (1998). A structural theory of social inﬂuence. Cam-
bridge: Cambridge University Press.
Hogg, M. A., Abrams, D., Otten, S., & Hinkle, S. (2004). The
social identity perspective. Intergroup relations, self-conception,
and small groups. Small Group Research, 35, 246–276.
Holland, P. W., & Leinhardt, S. (1973). The structural implica-
tions of measurement error in sociometry. Journal of Mathe-
matical Sociology, 3, 85–111.
Huisman, M. E., & Snijders, T. A. B. (2003). Statistical analysis
of longitudinal network data with changing composition. So-
ciological Methods & Research, 32, 253-287.
Katz-Gerro, T. (1999). Cultural consumption and social stratiﬁ-
cation: Leisure activities, musical tastes, and social location.
Sociological Perspectives, 42, 627–646.
Koskinen, J. (2004). Essays on Bayesian inference for social net-
works. Unpublished doctoral dissertation, Stockholm Univer-
sity, Stockholm, Sweden.
Latane´, B., & Nowak, A. (1997). Self-organizing social systems:
Necessary and sufﬁcient conditions for the emergence of clus-
tering, consolidation and continuing diversity. Progress in
Communication Science, 13, 43–74.
Macy, M. W., Kitts, J., Flache, A., & Benard, S. (2003). Polari-
zation in dynamic networks: A Hopﬁeld model of emergent
structure. In R. Breiger, K. Carley, & P. Pattison (Eds.), Dy-
namic social network modelling and analysis: Workshop sum-
mary and papers (pp. 162-173). Washington, DC: National
Academies Press.
Mark, N. (1998). Beyond individual differences: Social differ-
entiation from ﬁrst principles. American Sociological Review,
63, 309–330.
McPherson, J. M., Smith-Lovin, L., & Cook, J. M. (2001). Birds
of a feather: Homophily in social networks. Annual Review of
Sociology, 27, 415–444.
Michell, L., & Amos, A. (1997). Girls, pecking order and smok-
ing. Social Science & Medicine, 44, 1861–1869.
Michell, L., & West, P. (1996). Peer pressure to smoke: The
meaning depends on the method. Health Education Research
Theory & Practice, 11, 39–49.
Molenaar, I. M., Sijtsma, K., & Boer, P. (2000). MSP5 for Win-
dows. A Program for Mokken Scale Analysis for Polytomous
Items (Version 5.0) [Computer software]. Groningen, the Neth-
erlands: iec ProGAMMA.
Pearson, M., & West, P. (2003). Social network analysis and
Markov processes in a longitudinal study of friendship groups
and risk-taking. Connections, 25, 59–76.
Roe, K. (1985). Swedish youth and music: Listening patterns and
motivations. Communication Research, 12, 353–362.
Roe, K. (1996). Music and identity among European youth: Mu-
sic as communication. In P. Rutten (Ed.), Music in Europe:
Part 2. Music, culture and society in Europe (pp. 85–97). Brus-
sels, Belgium: European Music Ofﬁce.
Simmel, G. (1904). Fashion. International Quarterly, 10, 130–
155.
Snijders, T. A. B. (1996). Stochastic actor-oriented models for
network change. Journal of Mathematical Sociology, 21, 149–
176.
This document is copyrighted by the American Psychological Association or one of its allied publishers.  
This article is intended solely for the personal use of the individual user and is not to be disseminated broadly.


--- PAGE BREAK ---

C. Steglich et al.: Applying SIENA
56
Methodology 2006; Vol. 2(1):48–56
 2006 Hogrefe & Huber Publishers
Snijders, T. A. B. (2001). The statistical evaluation of social net-
work dynamics. In M. E. Sobel & M. P. Becker (Eds.), Socio-
logical methodology—2001 (pp. 361–395). Boston and Lon-
don: Basil Blackwell.
Snijders, T. A. B. (2005). Models for longitudinal network data.
In P. Carrington, J. Scott, & S. Wasserman (Eds.), Models and
methods in social network analysis (pp. 215–247). New York:
Cambridge University Press.
Snijders, T. A. B., Steglich, C., & Schweinberger, M. (in press).
Modeling the co-evolution of networks and behavior. In K. van
Montfort, H. Oud, & A. Satorra (Eds.), Longitudinal models
in the behavioral and related sciences. Mahwah, NJ: Lawrence
Erlbaum.
Snijders, T. A. B., Steglich, C., Schweinberger, M., & Huisman,
M. (2005). SIENA version 2.1 [Computer software and man-
ual]. Groningen, the Netherlands: ICS / Department of Soci-
ology, University of Groningen. Retrieved February 21, 2005,
from http://stat.gamma.rug.nl/stocnet.
Snijders, T. A. B., & van Duijn, M. A. J. (1997). Simulation for
statistical inference in dynamic network models. In R. Conte,
R. Hegselmann, & P. Terna (Eds.), Simulating social phenom-
ena (pp. 493-512). Berlin: Springer.
Steglich, C., Snijders, T. A. B., & Pearson, M. (2004). Dynamic
networks and behavior: Separating selection from inﬂuence.
Manuscript submitted for publication.
Suzuki, T., & Best, J. (2003). The emergence of trendsetters for
fashions and fads: Kogaru in 1990s Japan. Sociological Quar-
terly, 44, 61–79.
van de Bunt, G. G., van Duijn, M. A. J., & Snijders, T. A. B.
(1999). Friendship networks through time: An actor-oriented
statistical network model. Computational & Mathematical Or-
ganization Theory, 5, 167–192.
Veblen, T. (1899). The theory of the leisure class. New York:
Macmillan.
Christian Steglich
ICS/Department of Sociology
Grote Rozenstraat 31
9712 TG Groningen
The Netherlands
Tel. 31 50 363 6189
Fax 31 50 363 6304
E-mail c.e.g.steglich@rug.nl
This document is copyrighted by the American Psychological Association or one of its allied publishers.  
This article is intended solely for the personal use of the individual user and is not to be disseminated broadly.


--- PAGE BREAK ---

