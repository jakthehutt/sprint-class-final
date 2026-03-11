1
Introduction
Dean Lusher, Johan Koskinen, and Garry Robins
Exponential random graph models1 (ERGMs) are a class of statistical
model for social networks. They account for the presence (and absence)
of network ties, and so provide a model for network structure. An ERGM
models a given network in terms of small local tie-based structures, such
as reciprocated ties and triangles. A social network can be thought of
as being built of these local patterns of ties, called “network conﬁgu-
rations,” which correspond to the parameters in the model. Moreover,
these conﬁgurations can be considered to arise from local social pro-
cesses, whereby actors in the network form connections in response to
other ties in their social environment. ERGMs are a principled statistical
approach to modeling social networks. They are theory driven in that
their use requires the researcher to consider the complex, intersecting,
and, indeed, potentially competing theoretical reasons why the social ties
in the observed network have arisen. For instance, does a given network
structure occur due to processes of homophily, reciprocity, transitivity,
or a combination of these? By including such parameters together in the
one model, a researcher can test these effects one against the other, and so
infer the social processes that have built the network. Being a statistical
model, an ERGM permits inferences about whether, in our network of
interest, there are signiﬁcantly more (or less) reciprocated ties, or triangles
(for instance), than we would expect.
ERGMs are fast becoming recognized as one of the central approaches
in analyzing social networks. In this short introductory chapter, we
describe the intent of this book, how it is structured, how it may be
read, the software resources available, and the knowledge that we expect
readers to have before following our text.
1
Throughout this book, we use this now-established convenient term instead of the more
correct (but cumbersome) “exponential family random graph models.”
1


--- PAGE BREAK ---

2
Exponential Random Graph Models for Social Networks
1.1
Intent of This Book
In this book, we aim to introduce ERGMs in a way that takes the reader
from the basic theoretical assumptions underlying the models, through
the technical speciﬁcations and statistical detail, to applied examples illus-
trating how various substantive research questions may be investigated
and tested empirically. The goals of this book are twofold: to describe
ERGMs and to demonstrate how recent methodological developments
allow us to address social network research questions in new and pow-
erful ways. A speciﬁc target audience is the growing number of social
scientists who are interested in statistical models for social networks and
network-based social processes. We aim to provide an intuitive under-
standing of these models for those readers who may be unfamiliar with
ERGMs. We also focus on delivering sufﬁcient technical detail for those
with a social network methodological background and who are interested
in a deeper understanding of the modeling and estimation. We hope to
lay bare the value of a statistical modeling approach in answering core
questions about interactive social processes.
1.2
Software and Data
The book includes references to data and software that can be down-
loaded so that readers can reproduce some of the applications in a
“hands-on” fashion. Some parts of this book make explicit use of the
PNet suite of programs for ERGMs (Wang, Robins, & Pattison, 2009),
and we tend to use PNet terminology for parameters and the like,
but the exposition is in no way contingent on the software used (as
long as the software does deal with ERGMs, naturally). The estimation
algorithms used in PNet and in the R package statnet (Handcock
et al., 2003; Handcock et al., 2008) are both described in Chapter 12,
as is the principle of Bergm (Caimo & Friel, 2011). SIENA 3 can be
used for ﬁtting ERGMs to cross-sectional data (indeed, the main parts of
PNet draw heavily on SIENA) and longitudinal models can be analyzed
in RSIENA (or SIENA 4). Models for multiple networks, longitudinal
networks, and bipartite networks can be estimated from the PNet suite
of programs, XPNet, LPNet, and BPNet, respectively. The autologistic
actor attribute models require iPNet. PNet and the example data used in
this book can be downloaded to help you work through the chapters in a
practical, hands-on fashion (http://www.sna.unimelb.edu.au). The pack-
age statnet is an ERGM estimation program in the R environment and
can be installed from CRAN in standard R fashion. A useful introduction
to the statnet package is given in a special issue of Journal of Statistical


--- PAGE BREAK ---

Introduction
3
Software (Hunter et al., 2008), and the worked-through examples of
Goodreau et al. (2008) are particularly helpful.
1.3
Structure of the Book
This book is divided into four main sections that broadly map onto the
rationale and theory, method, and application of ERGMs, with a fourth
overview section discussing future directions. We consider that theory,
method, and empirical work are fundamentally intertwined and interde-
pendent. Thus, you will note that the ﬁrst section, despite its ﬂavor of
conceptual discussion, still addresses methodological issues and provides
empirical examples, whereas theoretical concepts permeate the methods
section.
1.3.1
Section I: Rationale
Section I of this book provides an intuitive introduction to ERGMs by
connecting to various aspects of social network (and social science) the-
ory, the thinking behind the methods, and the empirical examination of
research questions. Chapter 2 provides a very general initial description
of ERGMs, including some broad deﬁnitions and a discussion of some
central elements of the ERGM approach. Chapter 3 introduces some
important network ideas about the formation of social ties and social
structure more generally, and explains how these relate to an ERGM
analysis. Chapter 4 introduces some central methodological details of
ERGMs in intuitive terms for readers unfamiliar with the models, with
more technical details delayed until Section II on methods. Finally, in this
section, Chapter 5 provides an early and simple example of applying an
ERGM to network data (an example we explore in greater detail in Chap-
ter 13). In this way, we illustrate the type of inferences and interpretations
that can be made about network structure using ERGMs. Our aims in
this ﬁrst section are not only to describe theoretical issues important to
ERGMs but also to build intuitions for those coming to this modeling
approach for the ﬁrst time, before they encounter the more technical
detail in Section II.
1.3.2
Section II: Methods
Section II of this book presents the basic statistical framework of ERGMs.
Throughout the book, the case of a single observation on a (binary,
unipartite) network is taken as a standard point of reference, and the
technical details of ERGMs are introduced in the context of such a case


--- PAGE BREAK ---

4
Exponential Random Graph Models for Social Networks
in Chapter 6. Chapter 7 seeks to give a deeper understanding of ERGMs
by way of the notion of the dependence graph. From here, a range of
more speciﬁc ERGMs are presented, beginning with models that include
social selection, dyadic covariate, and geospatial effects in Chapter 8.
Chapter 9 covers autologistic actor attribute models (ALAAMs), which
are a version of social inﬂuence models, for the attributes of the actors.
The next chapters describe models for multiple networks and bipartite
networks (Chapter 10) as well as longitudinal network data (Chapter 11).
The section concludes with descriptions of simulation, estimation, and
goodness-of-ﬁt procedures (Chapter 12), together with some illustrations
(Chapter 13).
1.3.3
Section III: Applications
Section III of this book demonstrates how ERGMs can be applied empir-
ically to answer social network research questions. In this section, we
present an application for each of the different types of ERGMs presented
previously. The chapters illustrate to the reader the range of possibilities,
issues, and general frame of reference a researcher engages in when using
ERGMs. The chapters are presented as separate self-contained case stud-
ies, but together they cover a set of network theoretical issues and features
of the modeling framework.
In these chapters, we seek to show why and how the models can
be used to answer novel and theoretically important questions, formu-
lated in a relational framework. The range of issues covered gives some
indication of the breadth of approach that ERGMs offer. For instance,
Lusher and Robins (Chapter 14) note how the individual perceptions
of attitudes held by others in the network have an independent associ-
ation on the formation of network ties in two different contexts. They
draw on theory from social psychology in their exposition. Lomi and
Pallotti (Chapter 15) examine various path closure effects and, ulti-
mately, show the importance of structural equivalence–type patterns in
the transfer of patients among hospitals. Zhao and Rank (Chapter 16)
examine how multiple types of relations within the one organization
relate to each other. Drawing on various leadership theories, Kalish
and Luria (Chapter 17) construe leadership as a relational phenomenon
and show how leadership networks differ from many other types of
social networks. Daraganova and Pattison (Chapter 18) test compet-
ing hypotheses about the impact of spatial factors and social ties on
unemployment. Igarashi (Chapter 19) demonstrates the importance of
homophily in a longitudinal analysis of networks involving different
methods of communication. Using bipartite network models, Harrigan
and Bond (Chapter 20) show how different forms of capital lead to differ-
ent types of linking behavior. In the ﬁnal applications chapter, Quintane


--- PAGE BREAK ---

Introduction
5
(Chapter 21) examines differences in self-reported ties and observed rela-
tional behaviors.
1.3.4
Section IV: Future
There is ongoing methodological development: this book is by no means
the last word on ERGMs. To conclude this book, Pattison and Snijders
look to future directions for ERGM research and methods.
1.4
How To Read This Book
We suggest that a cover-to-cover reading may not be the best way to
approach the book for all readers. Readers with less statistical knowledge
might begin with all four chapters in Section I: Rationale, which pro-
vides the general basis of ERGMs. Following this, the introductory meth-
ods chapter on the fundamentals of ERGMs (Chapter 6) is important,
although it could be tackled later if need be. At the very least, the social
selection models (Chapter 8) and the illustrations chapter (Chapter 13)
in Section II: Methods should be read before moving to relevant chapters
of Section III: Applications, and Section IV: Future.
Some readers, however, may want to understand ERGMs from the
point of view of the statistical model. Thus, they may want to jump
straight to the methods section, especially Chapters 6 and 7, and then
work their way through Chapter 12 before returning to the conceptual
issues of Section I.
For some readers whose interests are principally directed to ﬁtting
models empirically, the chapter on dependency (Chapter 7), which details
important conceptual issues with regard to ERGMs, may be skipped
at the ﬁrst or ﬁrst few readings. For those interested in the theoretical
underpinning of the statistical model, however, this chapter is important.
For readers with some familiarity with the ERGM framework and an
interest in a speciﬁc type of model, it is probably good to have skimmed
through Section I ﬁrst (and perhaps the ﬁrst chapter of Section II). From
there, the reader may go on to the applications chapter of choice, and
then work him- or herself back to the relevant chapters in Section II, for
clariﬁcation of details. You may, for example, have a particular interest in
social inﬂuence–type models, in which case you might want to start with
Chapter 18 and refer back to Chapter 9 in Section II, when necessary.
If you intend to ﬁt your own ERGMs, it is necessary to understand
how the models are ﬁtted, whether as introduced in Chapters 4 and 5 of
Section I and then Chapter 13, or more in-depth as in Chapter 12 (simu-
lation, estimation, and goodness of ﬁt). Speciﬁc applications chapters in
Section III may also prove quite useful as a guide. Finally, once you have


--- PAGE BREAK ---

6
Exponential Random Graph Models for Social Networks
ﬁtted a model, or several, you may want to delve deeper into the details
of Section II.
1.5
Assumed Knowledge of Social Network Analysis
We assume basic familiarity with social network analysis and that the
reader understand the general concepts and terminology used in network
and graph theory. For this purpose, we refer the reader to one of the
many introductory texts, including Wasserman and Faust (1994), Prell
(2011), Knoke and Yang (2008), Scott (2000), de Nooy, Mrvar and
Batageli (2005), van Duijn and Vermunt (2006), and Hanneman and
Riddle (2005), for a more detailed introduction. We assume that the
reader is familiar with standard statistical techniques such as regression
analysis and logistic regression. Kolaczyk (2009) and Knoke and Yang
(2008) both have sections introducing ERGMs. The former provides a
good technical and comprehensive treatment of statistical models for
networks, which might be useful as further reading for the purposes of
introducing alternative models. Reference is occasionally made to more
advanced issues in statistics that the interested reader can follow-up on if
a more comprehensive picture is desired.


--- PAGE BREAK ---

Section I
Rationale


--- PAGE BREAK ---



--- PAGE BREAK ---

2
What Are Exponential Random Graph Models?
Garry Robins and Dean Lusher
2.1
Exponential Random Graph Models:
A Short Deﬁnition
Exponential random graph models (ERGMs) are statistical models for
network structure, permitting inferences about how network ties are pat-
terned. Put another way, ERGMs are tie-based models for understanding
how and why social network ties arise. This focus aligns ERGMs with
a principal goal of much empirical social network research, which is to
understand a given “observed” network structure (i.e., a network on
which a researcher has collected data), and so to obtain insight into the
underlying processes that create and sustain the network-based social
system.
Much of social network analysis has been concerned with representing
the network, a graph G, through various summary measures. From the
literature, the reader may be familiar with summary measures z(G) such
as the number of edges in G, the number of mutual ties, centrality mea-
sures, triad census, and so on. We call these summary measures “network
statistics,” and in mathematical terms, the ERGM assigns probability to
graphs according to these statistics:
Pλ(G) = ceλ1z1(G)+λ2z2(G)+···+λpzp(G).
The probability of a given network G is given by a sum of network
statistics (the zs in this expression) weighted, just as in a regression, by
parameters (the λs) inside an exponential (and where c is a normalizing
constant). The network statistics are counts of the number of network
conﬁgurations in the given network G, or some function of those counts.
These conﬁgurations are small, local subgraphs in the network. In short,
the probability of the network depends on how many of those conﬁgu-
rations are present, and the parameters inform us of the importance of
each conﬁguration.
9


--- PAGE BREAK ---

10
Exponential Random Graph Models for Social Networks
This expression is explained in much more detail in Section II. However,
because the mathematical features are not important for our purposes
here, we hope to explain ERGMs in a relatively intuitive way in this
introductory section.
To put it as simply as possible, a researcher speciﬁes an ERGM by
choosing a set of conﬁgurations of theoretical interest. As we will see,
there are many sets of plausible conﬁgurations that can be used. Then,
by applying this particular model to an observed social network, param-
eters are estimated. This permits inferences about the conﬁgurations –
the network patterns – in the data, and this in turn allows inferences
about the type of social processes that are important in creating and sus-
taining the network. Thus, ERGMs provide a methodology to investigate
network structures and processes empirically.
Note that there is not just one ERGM – there are whole classes of them.
The researcher has to choose the speciﬁcation of an ERGM for the data
(just as a researcher has to choose the variables to include in a regression).
For an ERGM, the speciﬁcations involve choices of conﬁgurations that
the researcher believes are relevant to the network structure. Although
there are some standard ways to do this, the choices are ultimately based
on theories about how ties come into being and appear in regular pat-
terns. We discuss some of these theories in greater length in Chapter 3.
However, an ERGM itself carries some metatheory about networks, a
conceptualization of a social network, and how it is created.
2.2
ERGM Theory
The use of an ERGM is consistent with some basic theoretical assump-
tions about social networks:
r Social networks are locally emergent.
r Network ties not only self-organize (i.e., there are dependencies
between ties), but they are also inﬂuenced by actor attributes and
other exogenous factors.
r The patterns within networks can be seen as evidence for ongoing
structural processes.
r Multiple processes can operate simultaneously.
r Social networks are structured, yet stochastic.
Each idea is discussed more extensively in the following chapters. What
is evident is that ERGMs are not “theory free.” The preceding list details
certain claims consistent with the use of ERGMs that may shape the sort
of social network questions that can be asked. Yet many of these claims
are not exclusive to ERGMs and overlap with other thinking about social
networks. For instance, an ERGM views social tie formation as locally


--- PAGE BREAK ---

What Are Exponential Random Graph Models?
11
constructed, and much social network theory refers to local processes
(e.g., reciprocity, transitivity, homophily – see Chapter 3). On the issue of
multiple processes, Monge and Contractor (2003) argued that network
research should be multitheoretical – that is, research should examine
multiple theoretical perspectives at the same time, and, indeed, ERGMs
can do this (see Section 3.1.5).
An explicit and particularly important feature of ERGMs is that net-
work ties depend on one another (i.e., there is network self-organization);
thus, the presence of one tie may affect the presence of others (see Sec-
tions 3.1.4 and 3.2.1 for general details, and Chapters 6 and 7 for more
speciﬁc details). Of course, it is well understood that within a social
network, individuals are by deﬁnition interdependent. In a seminal social
networks article, White, Boorman, and Breiger (1976) famously lamented
the divergence of theoretical and methodological perspectives on social
interaction. On the one hand, they argued, theories are largely concerned
with interaction; however, on the other hand, in empirical practice,
researchers revert to aggregating individuals by categories. Thus, it is
insufﬁcient when we analyze such networks to consider individuals as
unrelated “units of analysis” and instead more realistic to consider them
as “actors in social relations” (Abbott, 1997, 1152). ERGMs take inter-
dependency one step further by supposing that there is interdependence
between network ties. It is in this way that network ties are construed
as forming important patterns – the “conﬁgurations” parameterized in
an ERGM. It is a theoretical and empirical task to delineate the various
forms of dependence that are exhibited in actual social structures. We
regard this as social network theory at a fundamental level.1 Dependency
among network ties is discussed at many stages of this book, particularly
in Chapter 7.
Although there are certain assumptions that one engages when using
ERGMs, there is also considerable freedom available to the researcher.
As noted previously, there is not just one ERGM, but many. A researcher
chooses which model to use by selecting which network structures are
important. The utility, as well as the challenge, of ERGMs is the speci-
ﬁcation of a particular theory (or theories) into social network terms –
speciﬁcally, in articulating network conﬁgurations that, in isolation or
combination, reﬂect a relevant theoretical concept. We hope it is clear
1
We are referring here to the particular way in which dependence is modeled for cross-
sectional data. There are a number of other cross-sectional statistical models that also
cater to dependency-related issues such as the random effects p2 model (van Duijn, Sni-
jders, & Zijlstra, 2004) and latent social space/variable models (Airoldi et al., 2008;
Handcock, Raftery, & Tantrum, 2007; Hoff, Raftery, & Handcock, 2002; Schwein-
berger & Snijders, 2007). The ERGM approach to dependency, however, is arguably the
ﬁrst and most explicit. See Snijders (2011) for an overview of statistical approaches to
network analysis.


--- PAGE BREAK ---

12
Exponential Random Graph Models for Social Networks
from Section III how this might be done. The process of theory transla-
tion requires the alignment of theoretical concepts with network conﬁg-
urations. As examples of how this is done, Chapters 14 and 17 focus on
the actor attributes that are associated with receiving many network ties,
whereas Chapter 15 considers endogenous network processes – specif-
ically, on different closure mechanisms. Yet the attribute-network tie
associations in Chapters 14 and 17 are modeled while controlling for
endogenous (i.e., self-organizing) network processes, including closure.
Likewise, Chapter 15 models endogenous network processes while con-
trolling for network effects related to actor attributes. There are com-
monalities in the network structures examined in all three chapters (e.g.,
reciprocity and in-degree effects), demonstrating that many theoretical
concepts relating to social tie formation are being analyzed simultane-
ously in different studies and highlighting that multiple theories need
to be considered simultaneously. However, the analyses across the three
chapters by no means engage with identical theories. Many theories may
be examined in an ERGM, but some may be more important to the partic-
ular question in which a researcher is interested. In summary, an ERGM
is a relatively open framework that is amenable to the testing of a range
of network theories, depending on the interest of the researcher. Once
a researcher has translated social theory into hypotheses in relational,
quantitative terms, the ERGM provides a framework within which these
hypotheses can be statistically examined.
2.3
Brief History of ERGMs
Moreno and Jennings (1938) introduced statistical network approaches
by comparing observed network data to that expected under a null dis-
tribution. Although their method was simple enough, it did provide the
insight that structural effects introduce “bias” into randomness. Some
years later, this was picked up quite explicitly in the biased net theory
of Rapoport (1953, 1957). Models for randomness itself were provided
by the Erd¨os-R´enyi graph (Erd¨os & R´enyi, 1959) or, equivalently, the
uniform Bernoulli graph distribution (Frank, 1981). (A number of reﬁne-
ments of null distributions have since been proposed in the literature –
see Pattison et al., 2000.)
Holland and Leinhardt (1981) introduced a dyadic independence sta-
tistical model called the “p1 model,” which was the ﬁrst ERGM to extend
these simple random graph distributions. Although they set the grounds
for future work, they did not go beyond dyads. Their simple model could
be estimated using standard log-linear models; however, once triadic
formations came into play, the independence assumptions necessary
for log-linear models were expressly undermined. (More sophisticated


--- PAGE BREAK ---

What Are Exponential Random Graph Models?
13
dyadic-based models, with extradyadic dependence, have since been pro-
posed by van Duijn et al. (2004).)
The crucial work from which all else ﬂows, including this book, was
that of Frank and Strauss (1986). They decided that rather than search-
ing for new clever methods based on independence, a proper approach
to network dependence was required. Translating and extending spatial
statistical approaches into a network context, they proposed Markov ran-
dom graph models that became the mainstay of ERGMs for nearly two
decades. This was indeed a landmark paper in the history of ERGMs.
Yet the Markov random graph approach was slow to be adopted
by network researchers. It was not until the 1990s that an inﬂuential
article by Wasserman and Pattison (1996) popularized this type of net-
work modeling as p* models (with the nomenclature p* following p1 –
see also Rennolls, 1995). The emphasis put on the log-linear form of
the p* facilitated extensions of the basic Markov graph framework that
resulted in models for multivariate (Pattison & Wasserman, 1999), val-
ued (Robins, Pattison, & Wasserman, 1999), and bipartite (Skvoretz &
Faust, 1999) network data. Actor attributes were incorporated in social
selection (Robins, Elliott, & Pattison, 2001) and social inﬂuence (Robins,
Pattison, & Elliott, 2001) models. ERGMs were proposed as an effective
vehicle for investigating theories in network social science (Contractor,
Wasserman, & Faust, 2006; Monge & Contractor, 2003).
These developments, however, were limited by the estimation proce-
dure (maximum pseudolikelihood estimation) that did not properly deal
with the assumed dependencies in data. In the past decade, nevertheless,
the pace of new development for, and the popularity of, ERGMs has
grown dramatically. Various groups worked on algorithms to calculate
(or, more precisely, approximate) maximum likelihood estimates, all
being based on computer-intensive simulation (Corander, Dahmstr¨om,
& Dahmstr¨om, 1998, 2002; Crouch, Wasserman, & Trachtenberg,
1998; Handcock, 2002, 2003; Snijders, 2002). What at ﬁrst seemed to be
algorithmic difﬁculties were suspected by Handcock (2002) and Snijders
(2002) to be deﬁciencies of the Markov speciﬁcation of the ERGM, which
up to then was considered the natural default speciﬁcation capturing ten-
dencies toward transitivity, as proposed by Frank and Strauss (1986) (for
model deﬁciencies, see Section 6.6.3 on the Markov model and Section
12.6 on degeneracy and near-degeneracy). As a remedy to these deﬁcien-
cies, and building on the realization-dependent conditional independence
assumptions developed by Pattison and Robins (2002), the Markov
speciﬁcation was generalized to speciﬁcations satisfying the social circuit
model in Snijders et al. (2006). This proposal was a breakthrough in
improving the capacity of ERGMs to ﬁt real data (Robins et al., 2007).
A number of simulation-based algorithms for approximating the maxi-
mum likelihood estimate were implemented in software. This led to three


--- PAGE BREAK ---

14
Exponential Random Graph Models for Social Networks
publicly available computer programs: SIENA (Snijders et al., 2005), in
which the ERGM estimation was included as an extension and algorith-
mic analogue of the previously available estimation methods for longi-
tudinal actor-oriented models; the statnet software suite (Handcock
et al., 2008), which used a different algorithm to produce the same esti-
mates; and the PNet package (Wang, Robins, & Pattison, 2005), which
used the same algorithm as SIENA.
There were ensuing steps in model formulation and estimation (Hunter
& Handcock, 2006) and in novel goodness-of-ﬁt approaches (Hunter,
2007; Hunter, Goodreau, & Handcock, 2008; Robins et al., 2007). As
described later in this book, new developments have since begun to pro-
liferate. These include approaches to estimation under varying circum-
stances – such as Bayesian inference and models for missing data and
snowball sampling – as well as new models for directed, bipartite, multi-
variate, longitudinal, selection, and inﬂuence data. These extensions are
described in Section II of this book.
2.4
Network Data Amenable to ERGMs
An ERGM is designed to be used with empirical network data. As we will
see, it is possible to simulate networks using ERGMs (see Chapters 12
and 13), but the strength of the method comes to the fore with observed
network data, the data that researchers have collected and are keen to
understand.
Section III of this book highlights a number of different types of net-
works that are amenable to analysis using ERGMs. Networks can be
directed or undirected,2 and all networks used with ERGMs are binary.
Valued network ties are typically not used except as covariate, exogenous
networks to predict the binary network. ERGMs have been formulated
for ordinal ties (e.g., strong/weak – Robins et al., 1999), but this has yet
to be implemented in current estimation software.
An ERGM is typically used with completely observed networks; how-
ever, this is not to say that it could not be used with ego or personal
networks. As noted in Chapter 12, network data derived from snowball
sampling can also be estimated with ERGMs, and estimation can proceed
even when some network data are missing.
The number of nodes is an important consideration because estimation
processes can be computationally intensive (and assumptions of homo-
geneity may be tenuous in large networks). With current computing
capability, estimation of networks of more than 1,000 to 2,000 nodes
2
Throughout the book, we use the terms “undirected” and “nondirected” interchange-
ably.


--- PAGE BREAK ---

What Are Exponential Random Graph Models?
15
is possible (Goodreau, 2007). The new snowball sampling techniques,
however, open future possibilities of estimating very large networks.
Most ERGMs to date have been applied to cross-sectional data, but
longitudinal ERGMs are available as described in Chapter 11. Typically,
ERGMs examine one type of network tie, although multiple networks
can be estimated simultaneously (Chapter 10), and models can include
other networks as exogenous covariates (Chapter 8). ERGMs are also
available for bipartite network data (Chapter 10) and, in principle, can
be developed for any sort of relational data.
Multilevel analyses can be performed with ERGMs (Lubbers &
Snijders, 2007), whereby ERGMs can be estimated for a number of sim-
ilar networks (e.g., networks in several school classrooms), and then
multilevel post hoc analyses conducted to assess signiﬁcant parameters
across the entire data set.
It is possible to focus solely on the examination of network ties (and
thus to disregard actor attributes) with ERGM models. However, ERGMs
can also incorporate any number of binary, categorical, and continuous
actor attributes to determine whether actor attributes are associated with
the formation of network ties (Chapter 8), and geospatial variables can
also be included in an ERGM (Chapter 8). Finally, it is possible to use the
general ERGM approach for models that predict the presence of binary
actor attributes given the presence of network ties. These autologistic
actor attribute models (ALAAM) can be used to examine a variety of
social inﬂuence and related effects (Chapter 9).


--- PAGE BREAK ---

3
Formation of Social Network Structure
Dean Lusher and Garry Robins
3.1
Tie Formation: Emergence of Structure
It is not always recognized that an exponential random graph model
(ERGM) carries theory in the form of assumptions about networks, net-
work processes, and social structures. We can think of “ERGM theory”
as network metatheory because it is not speciﬁc to a particular network
process. It is a theoretical perspective within which more speciﬁc net-
work theories may be investigated. The essence of ERGM theory is the
formation of social structure through the accumulation of small local
substructures and, ultimately, through the formation of individual ties
into the patterns of those substructures.
3.1.1
Formation of Social Ties
ERGMs are ﬁrst and foremost concerned with explaining the patterns
of ties in a social network. This tie-based approach of ERGMs permits
answers to some questions but not others. A standard ERGM is not a
model focused on predicting outcomes for individuals in the network (so
called diffusion or social inﬂuence models1); instead, it is about revealing
patterns that may enable inferences on tie formation processes, includ-
ing social selection processes where network ties are predicted from the
attributes of the network actors.
Of course, there are many network theories about tie formation or
tie patterning that can be drawn on in specifying an ERGM for a given
network. For instance, reciprocity or exchange is seen as a basic and uni-
versal human activity (Blau, 1964), so that, generally, in human social
networks we expect ties to be reciprocated. Beyond dyads, the importance
1
An ERGM-type approach can be used for social inﬂuence models, however (see
Chapter 9).
16


--- PAGE BREAK ---

Formation of Social Network Structure
17
of triadic relations was proposed by Simmel (1950). Following Heider
(1958), Cartwright and Harary (1956) introduced structural balance the-
ory, providing a graph theoretical approach to triangulation among social
network ties, otherwise known as “path closure” or “network closure.”
Since then, network closure has become a central theme in social net-
work research. Granovetter (1973) contrasted closure of strong ties with
nonclosure of weak ties. Burt (1992) examined network brokerage and
structural holes, suggesting that the person in the center of a nonclosed
structure is advantaged. In contrast to closure, theories of prominence in
networks also suggest that people who are socially well connected may
be advantaged or have distinctive status (Bavelas, 1950; Freeman, 1977,
1979). Preferential attachment describes how network popularity may
induce further popularity (Barab´asi & Albert, 1999; Merton, 1968; Yule,
1925), resulting in some high-degree actors in the network. In regard to
actor attributes, the importance of homophily has been well documented
(McPherson, Smith-Lovin, & Cook, 2001) as a means to explain the
presence of network ties. For multiple networks with different types of
tie, Nadel (1952) and White (2008) suggested one social network could
provide a context for another, so that there may be interdependencies
across different networks, whereby ties in one network might encourage
the formation of ties in another.
3.1.2
Network Conﬁgurations: Consequential Network
Patterns and Related Processes
These theories and ideas provide explanations as to why ties might be
present in a network, how ties might come to form particular local net-
work patterns, and how ties might be associated with actor attributes. In
terms of an ERGM, we call such local network patterns “network conﬁg-
urations.” A network conﬁguration is a possible small subgraph that may
represent a local regularity in social network structure. It is an empirical
question whether a particular conﬁguration is present in a given net-
work, but conﬁgurations embody some ideas about how networks may
be patterned locally.
Some illustrative examples of network conﬁgurations for directed
graphs are given in Figure 3.1. In the ﬁrst example on the left, the double-
headed arrow between two nodes represents the reciprocation of ties
between two actors. The next conﬁguration represents transitive clo-
sure in the form of a particular triadic structure (note that there are
other directed triadic forms depending on the direction of the arrows and
whether some of the ties in the triad might also be reciprocated). The next
conﬁguration (labeled “Activity”) is termed an “out-2-star”: it is a starlike
structure with two outgoing ties from the central node. Outgoing starlike
structures are often used to represent activity-based conﬁgurations, where


--- PAGE BREAK ---

18
Exponential Random Graph Models for Social Networks
Popularity 
Activity 
Transitive closure 
Reciprocity 
Homophily 
Figure 3.1. Some network conﬁgurations and their underlying social
processes.
an actor directs ties to many network partners. These conﬁgurations obvi-
ously relate to the out-degree distribution of the graph. There are also
in-star conﬁgurations, often described in terms of network “popularity,”
that relate to the in-degree distribution. Finally, the ﬁfth conﬁguration is
a structure where two actors with the same attribute (e.g., gender – hence
the similar coloring on the nodes) have a reciprocated tie. This is often
used to represent reciprocated homophily, whereby ties are associated
with similar actor attributes.
Social networks are often seen as emerging from various social pro-
cesses or mechanisms (Hedstr¨om & Swedberg, 1998), in which case the
patterns of network ties can be revealing about the processes that give
rise to them. The idea of process invokes the dynamics of the system, per-
haps suggesting that we need longitudinal observations (as discussed in
Chapter 11). Yet, structural processes will result in network patterns that
are evident even in cross-sectional data. The presence of these conﬁgura-
tions (such as in Figure 3.1) might be thought of as akin to archeological
traces that are etched into network structure by social mechanisms oper-
ating across time. For instance, suppose that people tend to collaborate
more if they share (say) the same profession, the well-known network
process of “homophily”. If we observed the system at multiple time
points, we would see a series of collaborations forming between pairs
of individuals who share professions. At the last (cross-sectional) obser-
vation point, we will see more of these same-profession collaboration
links than we expect to see by chance, regardless of whether we take heed
of the earlier observational points. The ﬁnal cross-sectional observation
in itself provides evidence for homophily because we will see more of
the homophily conﬁguration of Figure 3.1 than we would expect just
by chance. So, even using cross-sectional network data, by examining
appropriate network patterns we can obtain insight about the social
mechanisms that drive the structure of the network.
The importance of a network conﬁguration is that it is a conse-
quential pattern that may represent an underlying social process.2 This
2
Of course, there are some networks for which this statement is not applicable, especially
those that are not social networks. ERGMs can still be applied to these networks, but
the interpretation of network conﬁgurations will then differ.


--- PAGE BREAK ---

Formation of Social Network Structure
19
explanation maintains a distinction argued by Harrison White (2008)
between a network structure and the process by which it has arisen,
implying that “a network structure is the consequence of a dynamic
process”.3 Of course, this distinction between pattern and process is not
limited to ERGMs, but relating static structures to social processes is
particularly important to ERGMs even though it is often cross-sectional
data that are modeled. (Mathematically, it can indeed be shown that the
ERGM is the end product of a process of tie formation and deletion – see
Section 11.3.4.)
3.1.3
Local Network Processes
In ERGMs, the conﬁgurations we study are local. A network tie is between
a pair of individuals. If we ask how network ties come into being, we need
to focus on pairs, not on individuals one at a time. So, an ERGM is a
“tie-based” model for social networks.4 A tie comes into place in response
to the existing local social environment within which the two individuals
operate. This social neighborhood contains other pairs of actors and their
ties. Thus, we are not concentrating only on pairs of individuals, even if
that is our starting point. We may have quite complex local network
structures involving several ties in the local social environment. The pat-
terning of these other ties, in addition to the properties of actors in the
local neighborhood, may inﬂuence the presence of a new tie. In this way,
network conﬁgurations can come into being.
3.1.4
Dependency (and Theories of Network Dependence)
A fundamental concept underpinning an ERGM is of the dependency
between network ties. Without some form of dependence among ties, it
is impossible to argue for tendencies for certain patterns of ties to form.
So, to postulate conﬁgurations as consequential network patterns is to
postulate dependence among network ties. If ties do not depend on each
other – in the sense that the presence of some ties inﬂuences the presence
of others – then there is no impetus for them to form conﬁgurations.
Importantly, to make the local conﬁguration approach work, we need
a theory of what counts as “local” and what speciﬁc conﬁgurations to
look for. Perhaps surprisingly, it turns out that the answer to these two
questions is one and the same. To formulate an ERGM, we need a theory
3
It is also true that process can be constrained by structure.
4
Although an ERGM is not an “actor-based” model where decisions of individual actors
are modeled explicitly in terms of preferences and constraints, as in the stochastic actor –
oriented models for longitudinal networks of Snijders (2002), an ERGM is not incon-
sistent with an actor-based theory. In Chapter 7, we see also how ties depend on each
other through individual actors. For explicit links between actor-oriented and edge-based
processes, see Section 11.4.2 and Snijders (2006, 2010).


--- PAGE BREAK ---

20
Exponential Random Graph Models for Social Networks
of “dependence,” and fortunately, there are now several available for a
researcher to consider. Once we adopt a theory of dependence, it turns
out that we automatically have a deﬁnition of “local,” and the types of
patterns to consider are then constrained. However, if we believe that
certain network patterns are important based on more speciﬁc social
science/social network theory, we are adopting (implicitly or explicitly) a
particular dependence hypothesis and a consequent deﬁnition of “local.”
There are a number of possible dependence assumptions that are set
out more fully in Chapters 6 and 7. Each has a different deﬁnition of what
counts as a local social neighborhood, and so implies a different family of
ERGMs. Recent work on how to understand these different deﬁnitions,
as well as the relationships among them, is described in Chapter 22 of
this book.
As a simple example, suppose someone in your workplace often con-
ﬁdes in you about important issues. This is likely to increase your ten-
dency to communicate with that person. We know this as reciprocity,
an important feature of social life. Reciprocity is a form of dependency,
whereby the two possible directed ties within a dyad are dependent on
each other. In other words, the presence of tie from Fred to Mary increases
the chances of a tie from Mary to Fred (and vice versa). This is known
as “dyadic dependence.” The reciprocal tie conﬁguration was presented
in Figure 3.1. Here, a dependence hypothesis (dyadic dependence) nat-
urally leads to a decision about a conﬁguration to apply in an ERGM
(reciprocity).
Previously, we described dependence in terms of local social neighbor-
hoods that affect the presence of network ties. If dyadic dependence is the
only applicable dependence assumption, then the deﬁnition of “local” is
simply the dyad. There are no other effects outside the dyad that affect
the presence of ties (hence, it is sometimes referred to as “dyadic inde-
pendence” because the dyads are independent of each other).
Of course, there can be more complex dependencies instead of, or in
addition to, dyadic dependence. As a second example, the chances of
any one individual being a friend of President Barack Obama are small.
However, if you are friends with Michelle Obama, then your chances of
striking up a friendship with Barack substantially increase. We know of
this as transitivity or path closure, or “a friend of a friend is a friend.”
In later chapters, we see how this conﬁguration (along with others) arises
from “Markov dependence,” where ties are assumed dependent if they
share a node.
Still other dependency assumptions are possible. Consider, for exam-
ple, the presence of two couples at a party. Because one partner from
each couple may be friends and start talking away, their previously unac-
quainted partners may strike up a conversation with one another and
over time become friends. The presence of existing relationships creates


--- PAGE BREAK ---

Formation of Social Network Structure
21
the conditions whereby an old friendship tie affects the chances of a new
friendship. We know this pattern of relations as a “4-cycle,” and it can
be an important conﬁguration arising from “social circuit dependence.”
In addition, there are particular types of dependence assumptions relat-
ing to actor attributes and dyadic and extradyadic covariates of network
ties.
In these cases, we see how dependency among social ties can give rise
to network conﬁgurations. Reciprocity, transitive closure, and four-cycles
can come about because the formation of a tie depends on the presence
of other ties in certain ways. Dependence helps us deﬁne what is local,
but it also gives us an implied explanation of dynamics.
However, standard statistical approaches assume independence of
observations. From an independence perspective, if someone commu-
nicates with you, this will have no bearing on whether you communicate
back. From an independence of observations perspective, you assume
that being friends with Michelle Obama does not affect your chances of
being friends with Barack, and previously unacquainted husbands have
no greater chance of coming to know each other, even if their wives
are already friends. These do not seem reasonable descriptions of social
life. So, if we are to understand systems based on some form of depen-
dence between ties, we cannot rely on standard statistical methods such
as t-tests, analysis of variances (ANOVAs), and regressions that assume
independence. Because an ERGM can incorporate dependence, it is a
more principled approach to understand the patterning of network ties.
3.1.5
Complex Combination of Multiple and Nested
Social Processes
It is important to note that the tie-based approach of ERGMs permits
an understanding of the “complex combination” of social processes by
which network ties are formed. We point to multiple and nested processes.
Multiple Origins of Social Network Structure. Previously in this chapter,
we presented a number of theories about the formation of network ties,
without attempting a complete list. However, it would be a brave person
who would suggest that one and only one of these processes explains all
there is to know about the organization of a social network. The totality
of ties in a network is not likely to be explained only by homophily, or
only by reciprocity, but it is certainly feasible that both processes may
be at play at the same time within the one network. By incorporating a
number of conﬁgurations simultaneously into a model (such as one for
homophily and one for reciprocity), an ERGM can test the evidence as
to which processes contribute to the formation of the network structure
(Monge & Contractor, 2003).


--- PAGE BREAK ---

22
Exponential Random Graph Models for Social Networks
Transitive triad
out-2-star
in-2-star
Arc
2-path
Figure 3.2. Nested conﬁgurations for a transitive triad.
In the one social network, there is no a priori reason why multiple social
processes should not be present. Because humans are intentional beings
with multiple motivations for and multiple expressions of social action,
it is especially in human social networks that we expect that multiple
processes will occur simultaneously. Of course, we do need to be guided
by theory, and we certainly need to be empirical, but expecting a simple
explanation for a complex human social system is naive.
Nested Conﬁgurations. It is important to realize that conﬁgurations are
often nested within one another. The simplest network conﬁguration is
a single network tie. Every other conﬁguration obviously contains this
conﬁguration, and possibly others. Consider a transitive triad. This con-
ﬁguration includes within it three single arcs: one 2-path, one out-2-star,
and one in-2-star (see Figure 3.2 for a depiction of these conﬁgurations).
Because conﬁgurations are nested in one another, it is not enough,
for instance, to observe many triangles to infer an effect for network
closure. There may be many triangles because there are many ties (i.e., the
network is dense), or because there are many 2-paths or 2-stars (i.e., in-
and out-2-stars for directed networks). To have solid evidence of network
closure, we need to observe more than expected triangles given (i.e., taking
into consideration) the number of 2-paths (and arcs and 2-stars) in the
data.
Given an average baseline propensity to form arcs, if that propensity
is strong enough, we will see some transitive triads simply by chance.
The stronger the baseline effect, the more transitive triads. The same
applies if there are propensities to form 2-stars and 2-paths. Thus, we
can only infer a speciﬁc process of transitive closure by considering the
propensities for the four lower-order conﬁgurations and a transitivity
effect simultaneously. We ask, do we see more transitive triads in the


--- PAGE BREAK ---

Formation of Social Network Structure
23
network data than we expect to see given the average tendency to form
arcs, 2-stars, and 2-paths? If so, we have evidence for a transitive closure
effect. If not, then the presence of transitive triads in the network can be
explained more simply by the presence of the lower-order conﬁgurations,
and we do not need to postulate a closure effect to explain this network
structure.
In summary, when we talk of multiple processes, it is not just that there
are many choices. Rather, local, multiple, and nested network effects
combine into a complex combination of processes. ERGMs are about
understanding the complexity of a social system – its multiplicity, its
interconnectedness, and its dependencies.
3.2
Framework for Explanations of Tie Formation
In this book, we discuss three broad categories of tie formation processes,
represented in Figure 3.3: self-organizing network processes, attribute-
based processes, and exogenous dyadic covariates. More speciﬁc effects
can be identiﬁed under each of these three broad categories. Figure 3.3
does not claim to be exhaustive or exclusive because, of course, there are
many possible tie formation processes. For instance, exogenous contex-
tual factors could include categories for culture or settings and so on.
Rather, Figure 3.3 is a schematic that focuses on topics of interest in
the ensuing chapters. Each process here, however, has a well-established
basis in social network or social science theory. Each results in networks
with particular types of conﬁgurations.
3.2.1
Network Self-Organization
Network ties can organize themselves into patterns because the presence
of some ties encourages others to come into existence. We often refer
to these as “purely structural” effects because they do not involve actor
attributes or other exogenous factors. They are “endogenous” effects in
that the network patterns arise solely from the internal processes of the
system of network ties.
Network self-organization can arise through degree-based effects. For
instance, individuals – by being popular – may attract even more popular-
ity. In that case, we expect diversity in popularity across the actors, which
translates into higher dispersion in the degree distribution, or equiva-
lently, into greater network centralization with network ties directed to
a few highly central nodes. In social network theory, such processes are
often referred to as “preferential attachment” (Barab´asi & Albert, 1999)
or the “Matthew effect” (de Solla Price, 1976). There are several differ-
ent versions of degree-based processes: for instance, in directed networks,


--- PAGE BREAK ---

How & why
social ties 
form?
Network Self-
organization
Activity/
Populairity
Reciprocity
Closure
Brokerage
Actor 
attributes
Effects of 
sender
Effects of 
receiver
Effects of
sender & 
receiver
Exogenous 
contextual 
factors
Other 
networks
Spatial factors
Figure 3.3. Conceptual framework for processes of social tie formation discussed in this book.
24


--- PAGE BREAK ---

Formation of Social Network Structure
25
it is possible to have effects related to both in-degree (“popularity”) and
out-degree (“activity”). An example conﬁguration relating to in- and out-
degrees are the in- and out-2-stars depicted in Figure 3.2. A node with
high out-degree is centered on many out-2-stars, so networks that are
highly centralized in terms of out-degrees (activity) will have a high num-
ber of out-2-stars; similarly for in-2-stars and in-degrees (popularity) (the
number of 2-stars is directly related to degree variance and centralization
(Hagberg, 2004; Snijders, 1981a, 1981b). A “2-path” or “mixed-2-star”
is also possible where a node has one network tie directed toward it and
one directed away from it (Figure 3.2), reﬂecting correlations between in-
and out-degrees (e.g., good listeners who do not talk too much). These
variations are possible in directed networks; in undirected networks, we
have only the 2-star conﬁguration because the difference between the
three types of directed 2-stars disappears. Of course, it is also possible to
have higher-order star conﬁgurations – 3-stars, 4-stars, and so on – with
three or more ties centered on the one node (these are, in fact, moments
of the degree distribution and reﬂect skewness and kurtosis, respectively).
A third important self-organizing effect involves network closure. Espe-
cially in networks invoking some form of positive affect or collaboration,
as we discussed previously, there are often tendencies for 2-paths of actors
to “close the path” by forming a third tie that produces a triangle (Davis,
1970). This is also referred to as “network clustering,” or in directed net-
works, “transitivity” (when the tendency is for the formation of transitive
triads).
Triangulation reﬂects the human social propensity to operate in group-
like structures. A network triangle involving three ties can be viewed as a
simple archetypal expression of a small group, in the sense that a group
is likely to appear as a subset of actors with many ties among them. In
that case, we will see many triangles among that subset. Thus, over and
above the formation of individual triangles, there is often a process of
“multiple triangulation,” where triangles occur together among larger
subsets of actors in clique-like structures rather than as separated fea-
tures spread evenly across the network (akin to community structure –
see Newman and Park (2003) – or other long-standing deﬁnitions of
cohesive subgroups – see Wasserman and Faust (1994)).
There are several different versions of triangulation and network
closure. A “transitive triad” conﬁguration for directed networks is in
Figure 3.2. A transitive triad represents network closure of a particular
type because it implies a local hierarchy, with one node receiving two
ties and sending none, one node receiving no ties and sending two, and
one node receiving and sending a tie. Depending on the content of the
network relationship, in the right circumstances this may be interpreted
as the receiving node being the most popular within the group-like trian-
gular structure. If instead we have a “cyclic triad,” where the direction


--- PAGE BREAK ---

26
Exponential Random Graph Models for Social Networks
of all ties is consistent so that they form a “3-cycle,” then none of the
three nodes would be singled out. Of course, in undirected networks,
there is no distinction between a transitive triad and a cyclic triad: only
an undirected triangle is possible.
Under network self-organization, Figure 3.3 also includes provision for
“network brokerage,” which has been a major theme in social network
research in recent years (e.g., Burt, 1992). This has been the topic of recent
ongoing work in the speciﬁcation of ERGMs and is presented brieﬂy in
Chapter 6 (see Section 6.7).
3.2.2
Individual Attributes
Individuals bring their own capacities, capabilities, and predispositions
to a social system. The qualities of individuals in networks can be very
important to the formation of network ties (Emirbayer & Goodwin,
1994; Kilduff & Krackhardt, 2008; Parkhe, Wasserman, & Ralston,
2006). Depending on the domain of research, many types of individual-
level variables – basic demographics such as age or gender, expertise or
profession, and psychological motivations and attitudes – may be rel-
evant. In network terms, these individual measures are termed “actor
attributes.” For ERGMs, we often use the terminology of “actor-relation
effects,” which refers to “the association of a particular attribute with
a social tie,” representing the propensity of actor attributes to affect tie
formation.
An actor attribute may operate by affecting the involvement of the
actor in the network. For instance, in directed networks, an attribute
might encourage that individual to be more active (i.e., express more
ties) or make that actor more popular (i.e., receive more ties). We call
these the “sender effect” and the “receiver effect,” respectively. Impor-
tantly, these effects are different to preferential attachment mentioned
previously. Preferential attachment suggests that new ties occur because
of the presence of other ties. A sender or receiver effect suggests, however,
that actors send or receive more ties because of their attributes. So, in an
ERGM, we can delineate popularity (and/or activity) as resulting from
network self-organization or actor attributes.
Because ties involve pairs of actors, attributes of both parties can also
come into play in the formation of network ties. For instance, an individ-
ual might select a partner because their attributes match. This process of
homophily arises when people tend to be connected to others who are in
some way similar to themselves.
Thus, there are several distinct processes whereby attributes may affect
network ties, operating at the level of a single actor or across two actors.
There is a need to consider processes together to make the right inference
from the data. Suppose that, in a school, girls tend to be more active


--- PAGE BREAK ---

Formation of Social Network Structure
27
Sender
Homophily
Receiver
Figure 3.4. Examples of network conﬁgurations for actor-relation
effects.
than boys in having friends. Then, simply by chance, there will be a
higher proportion of friendship ties between pairs of girls because girls
are implicated in more ties anyway. If all we do is to observe the many
ties between girls, we cannot conclusively infer that there is a tendency
for homophily over and above a simpler activity or popularity effect.
It is only by considering effects simultaneously that we can disentangle
whether there is a predisposition for girls speciﬁcally to select other girls
as friends.
In an ERGM, actor attributes are treated as exogenous or explanatory
variables that affect the presence of social ties. These are discussed as
social selection models in Chapter 8. (It is also possible to have models
that predict attribute status, with network ties as exogenous predictors –
see Chapter 9.) Network self-organization, in contrast, is treated as an
endogenous process. The distinction between endogenous and exogenous
explanations for the presence of social ties is important. We need to
account for purely structural tendencies for tie formation in order to
make the right inferences about actor attribute effects. If, for instance, we
predict the presence of a network tie from actor attributes and assume
that ties arise only through those individual qualities, we are not taking
into account possible dependencies among network ties, and so we are
ignoring network self-organization. As such, we may overestimate (or
underestimate) the importance of attributes in the network.
Examples of network conﬁgurations for actor-relation effects are pre-
sented in Figure 3.4. Here, a colored node represents an actor with a
particular attribute status (e.g., “female”). Thus, in this example, the
sender conﬁguration represents a female expressing ties to other actors
(irrespective of whether these other actors are male or female), the receiver
conﬁguration represents a female actor receiving ties from other actors,
and the homophily conﬁguration represents a tie between two females.
Although this example presents conﬁgurations for a binary attribute vari-
able, as explained in Chapter 8, there are counterparts for continuous or
categorical attributes.
Whether one speciﬁcally examines networks for actor-relation effects
(as in Chapter 14) or uses them as controls when looking for network
self-organization (as in Chapter 15), such effects are nonetheless impor-
tant, and their addition to ERGMs is a signiﬁcant advantage for testing
network theory.


--- PAGE BREAK ---

28
Exponential Random Graph Models for Social Networks
Entrainment
Figure 3.5. Example of network conﬁgurations for dyadic covariates.
3.2.3
Exogenous Contextual Factors: Dyadic Covariates
Finally, other exogenous contextual factors may be important to tie
formation. In this book, we often treat these as dyadic tie covariates,
although they do not necessarily have to be in only dyadic form. An
instance of a dyadic covariate may be another social network considered
to be ﬁxed and exogenous to the model. An ERGM can then investigate
whether the presence of the covariate tie predicts the corresponding tie
in our network of interest (see Chapter 8). A good example is the impor-
tance of the formal organizational hierarchy on the presence of actual
communication ties within an organization. Ties from the two types of
network may co-occur (or be entrained), in which case, for instance, a
worker may communicate with his or her boss. In that sense, an ERGM
may help understand the extent to which top-down, centrally decreed
structures relate to bottom-up informal networks.
A network conﬁguration representing the dyadic covariate effect of
entrainment is presented in Figure 3.5. Here, the dotted arc represents the
covariate network. The presence of these conﬁgurations in the network
indicates the extent to which the network ties of interest co-occur with
the covariate network ties. More elaborate dependencies on covariate
networks may also be formulated, such as the multiplex conﬁgurations of
Chapter 10. As explained further in Chapter 8, other covariates may also
be relevant, including geospatial factors, shared afﬁliations, and contexts,
and they can enter the models in distinctive ways.
In summary, the framework of Figure 3.3 takes into account some
of the many network ideas about tie formation and presents them to
permit their understanding in terms of network conﬁgurations. This is
the general structure whereby we formulate speciﬁc ERGMs to answer
precise research questions about the origins of social network structure.


--- PAGE BREAK ---

4
Simpliﬁed Account of an Exponential Random
Graph Model as a Statistical Model
Garry Robins and Dean Lusher
This chapter provides a simpliﬁed overview of some methodological
aspects of exponential random graph models (ERGMs), with the tech-
nical detail presented in Section II, speciﬁcally in Chapters 6 and 7. To
begin, it is worthwhile to consider the value of a statistical model in
understanding social network structure.
Harrison White made the important observation that “sociology has
to account for chaos and normality together” (2008, 1). Social life is
stochastic, and social networks are not predetermined or invariant. We do
not expect that in a human social network, reciprocity will apply (strictly)
in all situations; rather, there may be a tendency toward reciprocity in
the sense that more reciprocation will be present than otherwise expected
over and above what would result from other processes. In a sense, if
we do not allow for “tendencies” with some variation, in the extreme, a
nonstochastic model requires one unique explanation for each tie, present
or absent.
Accordingly, it makes sense to use a statistical model such as an ERGM
to investigate network structure. By incorporating randomness, statistical
models deal with expected values, so we are then able to draw inferences
about whether observed data are consistent with expectations.
The balance between randomness and order is an important issue in
much social network research. For instance, in considering the “small
world” nature of many social networks, Watts (1999) showed that adding
a small amount of randomness to a highly structured graph could dra-
matically shorten path lengths. In an ERGM context, a conﬁguration
represents the ordered nature of local structure. If effects for conﬁgura-
tions in a model are minimal (e.g., a tendency for reciprocity might be
weak), then the resulting networks will be close to purely random. In
contrast, if an effect is strong (e.g., a strong tendency for reciprocity),
then the resulting networks will appear as highly structured (e.g., most
ties will be reciprocated). Because an ERGM is stochastic, the model does
29


--- PAGE BREAK ---

30
Exponential Random Graph Models for Social Networks
(a)
(b)
Figure 4.1. (a) Simple random network and (b) empirical communica-
tion network.
not imply just one network. The result is a “probability distribution of
graphs,” which we discuss in more detail later in this chapter.
4.1
Random Graphs
We noted in Chapter 3 that a given dependence assumption picks out
certain conﬁgurations as important to the structure of the network. We
have also noted that some conﬁgurations will occur just by chance, even
in a network where ties are formed independently of one another (i.e.,
no dependence). Figure 4.1a presents a random graph of 38 nodes and
146 arcs generated by scattering the 146 arcs purely randomly among
the nodes (to be precise, the graph comes from a uniform random graph
distribution conditional on the presence of 146 arcs – see Section 4.2). The
number of nodes and arcs has been chosen to match those of an empirical
communication network in Figure 4.1b. (This communication network
is presented in more detail later in this chapter.) From the visualization,
it seems that the random network is quite different from the empirical
network. This also seems apparent from the selected network statistics
for both networks in Table 4.1.
From Table 4.1, however, some network conﬁgurations still occur,
even in the random network. When the 146 ties are distributed among
the nodes by chance, there are still some reciprocated ties and some
transitive triads but not nearly as many as in the communication network
(although the in- and out-stars are not so different between the two
networks). Nevertheless, although there are undoubtedly less reciprocated
ties and transitive triads in the random network, how do we judge whether


--- PAGE BREAK ---

Simpliﬁed Account of an Exponential Random Graph
31
Table 4.1. Selected network statistics for networks in
Figure 4.1
Random network
Communication network
Actors
38
38
Arcs
146
146
Reciprocated arcs
6
44
Transitive triads
53
212
In-2-stars
292
313
Out-2-stars
254
283
there are signiﬁcantly more in the communication network than we might
expect?
4.2
Distributions of Graphs
A statistical (nonparametric) technique to address whether there are sig-
niﬁcantly more particular network structures than expected by chance is
to simulate a large sample of random (directed) graphs of 146 arcs on 38
nodes. This can be considered a sample of graphs from a “graph distri-
bution” where every (di)graph is equally probable if it has 146 arcs (and
has 0 probability otherwise). A graph distribution is simply the set of all
possible graphs (in this case, on 38 nodes), with a probability assigned
to each graph. The graph distribution we just described is called the U|L
distribution (the uniform distribution of digraphs on 38 nodes given the
number of arcs L = 146). (For further discussion of U|L, see Wasserman
and Faust (1994).) It is a uniform distribution because each graph of 146
arcs has equal probability. Such approaches reﬂect the early history of
statistical network methods, which was dominated by techniques relying
on testing a hypothesis using a simplistic null distribution, going back to
Moreno and Jennings (1938).
Having produced a large sample of graphs, we can then calculate the
number of reciprocated arcs and transitive triads for each sampled graph.
We did this for 1,000 simple random graphs with the results for recipro-
cated arcs presented in Figure 4.2. The mean of this sampled distribution
is 7.5, and the number of reciprocated arcs ranges from around 0 to 15
across the 1,000 graphs. Accordingly, based on this information, if we
had a network from this random graph distribution, we would expect
to see around 7 to 8 reciprocated ties just by chance, and it would be
very unusual to see more than 15 reciprocated ties. The communication
network, however, has 44 reciprocated ties (represented in Figure 4.2
by the dotted vertical line), many more than expected by chance from a
distribution of simple random graphs. This is evidence for a number of


--- PAGE BREAK ---

32
Exponential Random Graph Models for Social Networks
0
0
50
100
150
200
10
20
Reciprocated arcs
Frequency
30
40
50
Figure 4.2. Distribution of reciprocated arcs from sample of 1,000 ran-
dom graphs.
conclusions: (1) the observed network is not just a random graph (2) there
is dependence among network ties, and (3) there are reciprocity processes
active in this network.
To put the results more succinctly, the probability of observing 44
reciprocated ties in a random network is very close to 0. This is less
than 5% (if we choose that as an alpha level); thus, in accord with
standard null hypothesis signiﬁcance testing, we can say that the number
of observed reciprocated arcs is signiﬁcantly above what is expected from
the null distribution (U|L), and so there is signiﬁcant reciprocation in this
network.
We can draw a similar conclusion about transitive triads. From the
sample of 1,000 simple random graphs, the mean number of transitive


--- PAGE BREAK ---

Simpliﬁed Account of an Exponential Random Graph
33
triads is 55, with a standard deviation of 7.8. The observed number in
the data of 212 is signiﬁcantly greater.
However, there are two (related) limitations to this type of inference.
First, our comparison is only to a distribution of random graphs (i.e.,
those with 146 arcs). Perhaps if we had another type of graph distribution
(e.g., graphs with 146 arcs and 44 reciprocated ties), the number of
transitive triads in the observed data would not be extreme. Second, in
a related fashion, we only consider each effect one at a time, and we
ignore the nesting of conﬁgurations. For instance, we can say that there
are signiﬁcantly more transitive triads, but we do not know whether
that arises because there are an increased number of stars or because of
a triangulation process. When we say that there are signiﬁcantly more
reciprocated ties and transitive ties than in the U|L distribution, we are
rejecting the null hypothesis (the observed graph was generated by a U|L
model), but we are not saying anything about the alternative – whether
reciprocation or transitivity are signiﬁcant processes.
What an ERGM tries to do, however, is to model the effects of interest
(e.g., reciprocated ties, transitive triads) and, in relation to an observed
network, to ﬁnd a distribution of graphs where the observed data are cen-
tral in that distribution. (More technically, we ﬁt the model by estimating
parameters.) In fact, for the communication network, an ERGM tries to
ﬁnd a distribution of graphs on 38 nodes, which have an average of 146
arcs, 44 reciprocated ties, and 212 transitive triads (and, indeed, also
313 in-2-stars and 283 out-2-stars to cater for nested effects). This might
seem like a complex task and indeed it is. Fortunately for researchers,
there is software for this purpose, so we do not necessarily need to know
precisely how the algorithms work (although Chapter 12 enlightens those
who want to know). Later in this chapter, we demonstrate how to ﬁnd
this distribution of graphs for this particular network. In doing so, we
discover which conﬁgurations are important in the network, which effects
have independent explanatory value, and which can be explained by other
effects.
In one sense, what an ERGM does is compare an observed network
to the other possible ways it could be arranged. In all networks, there
are a ﬁnite number of ways that ties can be arranged. This is called the
“sample space,” and in large networks, this number of possible arrange-
ments can be incredibly large. For a directed network, the number of
possible network states is 2n(n⃝1), where n is the number of nodes: this
is a (very) large number for even a 38-node graph.1 Then, for a distri-
bution of graphs, we have to assign a probability to each of this really
1
In fact, already for n = 17, the number of possible directed graphs exceeds what
has frequently been quoted as the number of atoms in the observable universe, as
217(17–1) −1080 (Wikipedia, 2012).


--- PAGE BREAK ---

34
Exponential Random Graph Models for Social Networks
large number of graphs. Model estimation assigns probabilities so that
an observed network is central, not extreme, in terms of the effects being
modeled.
4.3
Some Basic Ideas about Statistical Modeling
It is important to understand why we model a network. Models represent
theories we may have about observed data, and ﬁtting a model permits
us to see if our theoretical conception about the data can be validated.
A desirable goal of a model is to best represent our observed data –
to reproduce the structures we witness in our observed network. In an
ERGM, our model represents the combination of structures of which our
observed network is composed, permitting inferences about the processes
of network tie formation. As noted, when applying an ERGM to observed
data we are in fact estimating a model for that data, just as we do when
we apply a regression model to non-network data.
Outdated (and unreliable) methods of estimating an ERGM used stan-
dard logistic regression procedures. Any comparison with logistic regres-
sion breaks down decidedly once network dependencies are introduced
because logistic regression assumes independent observations. However,
there are some analogies that may be helpful to readers who are new to
ERGMs. In a logistic regression, we predict a binary variable from a num-
ber of predictor variables, with model parameters (regression coefﬁcients)
indicating how important a predictor variable is in that prediction. Simi-
larly, with an ERGM, we predict the presence of a network tie (a binary
variable) from several predictor variables (the types of network conﬁgu-
rations in which that tie is involved), with model parameters indicating
the importance of a conﬁguration to the presence of a tie.
By predicting individual ties in this way, however, the ERGM assigns
a probability to each graph in the sample space and hence produces a
graph distribution. The following are some terms to understand:
Statistic: An ERGM statistic always relates to a particular conﬁgura-
tion. The statistic is typically the count of conﬁgurations of different types
in the network (e.g., the number of reciprocated ties), although in some
cases it may be complex combination of counts or other functions of the
conﬁgurations.
Parameter: The parameter is the weight applied to the statistic (just as in
a logistic regression with predictor variables and regression coefﬁcients).
In that sense, it indicates the importance of a statistic, and thereby the
importance of a conﬁguration in the network.
An ERGM then assigns a probability to a graph by a (function of
a) sum of statistics weighted by parameters, as described at the begin-
ning of Chapter 2. For the moment, it sufﬁces to understand that in


--- PAGE BREAK ---

Simpliﬁed Account of an Exponential Random Graph
35
the graph distribution, a positive parameter assigns higher probability
to those graphs with many of the relevant conﬁgurations. For instance, if
a transitive triad parameter is large and positive, then graphs with many
transitive triads are more probable (in the graph distribution for that
model). If our model is a good explanation for real networks, then the
observed graph has more transitivity than a random graph. This ﬁts in
nicely with a graph distribution where highly transitive graphs are more
probable. However, if a transitive triad parameter is large and negative,
then graphs with fewer transitive triads become more probable under
our model. Throughout, we are assuming that the data we see are very
likely, not unlikely (and so the method of estimation is called “maximum
likelihood”).
Simulation: One can formulate an ERGM and then simply select some
parameter values to simulate the model to see the type of graphs produced.
In Figure 4.2, we learned from a simulation that graphs generated by U|L
with 38 nodes and 146 arcs tend to have less than 15 reciprocated arcs.
Thus, a simulation tells us what to expect from a particular model with
parameter values that we choose. We can study any graph feature of
interest in this way, not just reciprocated arcs.
Estimation: However, we also know that for the purposes of under-
standing reciprocity, the communication network in Figure 4.1, with 44
reciprocated arcs, has signiﬁcantly more reciprocity. So, for observed
data, instead of merely choosing values for the parameters in an ad hoc
way, we can systematically search through possible parameter values until
we ﬁnd the right estimates so that observed statistics are not extreme,
but are central, in the distribution of graph statistics from the resulting
ERGM.
Standard error (SE): Each parameter estimate has a SE, which is a
measure of the precision, or how certain we are, of the parameter estimate.
A small SE indicates greater precision and certainty, whereas a large SE
indicates less certainty. We know that a large and positive parameter
estimate indicates that more of the associated conﬁgurations are likely
to be seen in the network. The SE can give us an indication of what
to consider as “large.” In this book, we typically use the rule that a
signiﬁcant parameter is one with an absolute value more than twice its
SE (see Section 12.5.1 for more detail).
4.4
Homogeneity
When considering reciprocation in the communication network in
Figure 4.1b, we are not interested in knowing speciﬁcally if there is a
reciprocated tie for each pair of actors. Rather, we are interested in the
overall tendency for reciprocity in the network. Typically, an ERGM


--- PAGE BREAK ---

36
Exponential Random Graph Models for Social Networks
produces one estimate of reciprocity for all pairs of actors across the net-
work. Of course, some individuals may be more inclined than others to
reciprocate network ties, but we can consider the estimate as indicative
of an average effect across the network. Inherent here is the assump-
tion that local network conﬁgurations occur homogeneously across
the observed network.2 The use of actor attributes is one way to relax
homogeneity. Boys and girls in a school may have different levels of aver-
age reciprocity, and so we could have different reciprocity parameters for
each.
With a basic understanding of the methodological details of ERGMs
in hand, we now proceed to show a simple example application of an
ERGM to a social network of interest. In doing so, we demonstrate how
competing explanations about how network ties arise can be statistically
compared within a single model.
2
Homogeneity assumptions are not something particular to ERGM. All general linear
model techniques assume homogeneity. For instance, in a regression, a case is only
identiﬁed up to the values of the variables that represent it.


--- PAGE BREAK ---

5
Example Exponential Random Graph
Model Analysis
Dean Lusher and Garry Robins
Exponential random graph models (ERGMs) permit us to examine com-
peting theories regarding the formation of network ties, all within a single
analysis. This means that a researcher can test one network theoretical
concept for tie formation against another (e.g., Does homophily explain
this network, or is it reciprocity?) for their network of interest.
This chapter aims to make the ERGM framework clearer through a
simple illustrative example. We only use the terminology introduced in
the previous chapters, and leave a full description of the parameters and
so on to later chapters in Section II. A more detailed analysis of this
example is found in Chapter 13.
5.1
Applied ERGM Example: Communication
in “The Corporation”
As a practical example of the issues facing social network researchers, we
now present the application of ERGMs to the following organizational
case study. This example network draws together a number of issues pre-
sented so far. The organization of interest is called “The Corporation,”
a ﬁctitious name for a real organization in the entertainment industry,
which consists of thirty-eight executives. The network under investiga-
tion (our “observed network” on which we have collected data) is the
“communication network,” which is binary and directed. A tie here rep-
resents a response from an actor to a survey item about other executives
with whom it was important to communicate to get work completed
effectively. The network is depicted in Figure 4.1b. Some basic statistics
of the network were presented in Table 4.1.
The Corporation is in competition with other organizations for market
dominance. We are interested in understanding the structure of informal
communication ties. We also have information on the executives
37


--- PAGE BREAK ---

38
Exponential Random Graph Models for Social Networks
13
20
31
32
35
26
24
16
38
25
23
12
33
30
17
18
37
36
29
19
15
27
22
11
28
10
34
1
9
5
14
7
21
2
6
4
3
8
Figure 5.1. Communication network of The Corporation (n = 38
actors).
themselves, such as the number of projects they have been involved
with, their level of seniority in The Corporation, and their ofﬁce
membership. Finally, we also have information about advice relations
within the organization, a binary, directed network of relations with ties
pointing toward executives from whom advice is received. The following
visualizations display the structure of communication ties within The
Corporation in isolation and also in relation to both actor attributes and
the covariate network.
This data set can be downloaded in its entirety from MelNet (http:
//www.sna.unimelb.edu.au/) so that readers can ﬁt the models themselves
and gain experience in how ERGMs can be applied to real data. The
models here are ﬁt with PNet which can be downloaded from the same
website.
Network self-organization may be responsible for communication ties.
What is evident from Figure 5.1 is the number of triads in the network.
With the exception of a few individuals, most employees are within some
form of triadic structure. In fact, some regions of the network are very
densely clustered. Furthermore, it appears that some nodes (e.g., twenty-
four and thirty-four) act as hubs and receive more ties than others in the
network.


--- PAGE BREAK ---

Example Exponential Random Graph Model Analysis
39
Figure 5.2. Mutual ties only (asymmetric ties removed) in communica-
tion network.
Figure 5.2 presents the mutual ties in the network (i.e., undirected ties
derived from reciprocated ties in the original data), of which there are
many, so it is possible that communication is at least partially explained
by reciprocity.
Actor attributes may be important to network structure. For instance,
Figure 5.3 depicts node sizes as varying according to the number of
projects completed by the executives, with larger nodes indicating more
projects. It suggests that there may be a homophily effect based on number
of projects (experience).
Figures 5.4 and 5.5 represent seniority of the executives and the
branch ofﬁce of each executive, respectively. It seems that there could
be homophily due to seniority, but branch ofﬁce effects are not so clear
from the visualization.
Communication ties may be affected by the presence of advice relations
among these executives. Figure 5.6 presents those ties that align (i.e.,
are entrained) between communication and advice networks. There are
twenty-four aligned ties between these networks, although it is difﬁcult to
say from the visualization whether this is due to mere chance or whether
there is a distinct entrainment effect.


--- PAGE BREAK ---

Figure 5.3. Communication network with employee experience repre-
sented by size (larger = more experience).
Figure 5.4. Communication network with seniority (black = senior,
white = other).


--- PAGE BREAK ---

Example Exponential Random Graph Model Analysis
41
Figure 5.5. Communication network with ofﬁce membership repre-
sented by shape.
So, there are many possible competing explanations for the network
structure of communication ties. If we examine only one process at a
time, then we may overestimate its worth. With an ERGM, we can infer
whether there are independent tendencies for a particular conﬁguration
to occur in the network, or whether the presence of that conﬁguration
can be more parsimoniously explained by the combined presence of other
effects in the model.
5.2
ERGM Model and Interpretation
The model produces parameter estimates that indicate the strength and
direction of network patterns. The parameter estimates (and standard
errors) for one model of the communication network are presented in
Table 5.1. Signiﬁcant parameters1 are designated by an asterisk (*). A
positive (negative) estimate indicates more (less) of the conﬁguration in
the network than expected (given the other effects in the model). We
1
See Section 12.5.1 for an explanation of signiﬁcant effects.


--- PAGE BREAK ---

42
Exponential Random Graph Models for Social Networks
Figure 5.6. Multiplex communication and advice ties (all other ties
removed).
include visualizations of each network effect for clarity. The magnitudes
of parameter estimates are not directly comparable across different effects
because the scaling of the statistics is different. In presenting this model,
we have used simpliﬁed parameter names based on the general terminol-
ogy used in this chapter. This model, as well as comparative models for
this data, are presented in much more detail in Chapter 13.
Arc: First, we have a negative arc effect. The arc effect is like an inter-
cept effect in a linear regression and can be interpreted as the baseline
propensity for the occurrence of ties.2
Reciprocity: The reciprocity estimate is positive and signiﬁcant.
Employees are likely to reciprocate communication.
Popularity and activity (in- and out-degree effects): These effects repre-
sent tendencies for centralization in the in- and out-degree distributions,
respectively. The in-degree parameter estimate is negative but nonsignif-
icant, suggesting no distinctively popular employees in this company,
net of other effects in the model. The out-degree effect is negative and
signiﬁcant, indicating an absence of centralization in network activity,
2
The arc parameter is not a direct measure of network density.


--- PAGE BREAK ---

Example Exponential Random Graph Model Analysis
43
Table 5.1. ERGM parameter estimates (and standard errors) for
communication relations in The Corporation
Network effect
Estimate (SE)
Purely structural effects (endogenous)
Arc
⃝1.96 (0.73)*
Reciprocity
2.88 (0.46)*
Popularity (in-degree)
⃝0.27 (0.32)
Activity (out-degree)
⃝0.34 (0.34)
Simple 2-path3
⃝0.06 (0.08)
Multiple 2-paths
⃝0.06 (0.09)
Transitivity
(transitive path closure of multiple
2-paths)
1.22 (0.19)*
Cyclic closure
(cyclic closure of
multiple 2-paths)
⃝0.37 (0.17)*
Actor relation effects (exogenous)
(black nodes indicates actor with
attribute)
Sender (seniority)
⃝0.56 (0.29)
Sender (projects)
0.01 (0.02)
Receiver (seniority)
0.08 (0.23)
Receiver (projects)
⃝0.02 (0.02)
4 Homophily (seniority)
0.64 (0.26)*
Heterophily (projects)
⃝0.08 (0.02)*
Homophily (ofﬁce)
⃝0.01 (0.17)
Covariate network (exogenous)
Advice entrainment (covariate arc)
1.76 (0.30)*
* = parameter estimate is greater than two times the standard error in absolute value, indicating the effect is
signiﬁcant (see Section 12.5.1 for details).
3
The term “simple 2-path” is used to contrast the single 2-path (simple connectivity) with
the multiple 2-paths (multiple connectivity) noted in Table 5.1. To be clear, a simple
2-path parameter is also known as a 2-path or mixed 2-star parameter.
4
Homophily (and heterophily, its logical opposite) works differently for binary, continu-
ous, and categorical variables. This is taken up in detail in Chapter 8, and explained again
in Section III. For binary and categorical variables, we measure homophily – that is the
choice of similar others. For continuous variables, we measure the difference between the
attributes of actors. As such, a positive parameter estimate would indicate heterophily
(i.e., large differences in scores), and a negative estimate would indicate homophily (i.e.,
small differences in scores).


--- PAGE BREAK ---

44
Exponential Random Graph Models for Social Networks
so that people tend to be rather uniform in the number of choices of
communication partners.
Simple 2-path: This parameter is not signiﬁcant, indicating that we
see neither more nor less 2-paths than we might expect given the other
effects in the model. That is, there is no evidence that people who send
more ties also receive them. If this parameter were signiﬁcantly positive,
for instance, it would suggest that actors who were the most popular
were also the most active (i.e., a positive correlation between the in- and
out-degree distributions).
Multiple 2-paths: In addition to the single 2-path, it is often desirable to
have a multiple 2-paths parameter in the model to indicate the “depth” of
local connectivity between pairs of nodes. Notice our contrasting inter-
pretations: the simple 2-path interpretation focuses on the node at the
center of the two path (with both an incoming and outgoing tie), whereas
the multiple 2-path parameter is best considered as explaining connectiv-
ity between pairs of nodes at the end of the paths. Here, this parameter is
not signiﬁcant, indicating that local connectivity is neither stronger nor
weaker than we expect given the other effects in the model.
Transitivity: There is a signiﬁcant and positive effect for transitivity,
indicating a tendency for hierarchical path closure in this network. Notice
from the diagram that we do not use single triangles to model this effect,
but multiple transitive triads based on multiple 2-paths. As is seen later,
there are important technical reasons why single triangle parameters are
problematic for ERGMs and typically do not result in coherent models.5
This reﬂects an important feature of many empirical social networks:
triangles tend to occur together in denser regions of the network. Mul-
tiple 2-paths are nested within multiple triangles, so the combination of
the two parameter estimates provides an important elaboration of our
previous interpretation of the multiple 2-path parameter. When multiple
2-paths occur, they tend to be closed in transitive form (positive transi-
tivity estimate).
Cyclic closure: There is a signiﬁcant and negative effect for cyclic clo-
sure, indicating a lack of nonhierarchical (or generalized exchange) net-
work closure in this network. Again, the cyclic closure form is associated
with multiple 2-paths, so we can further elaborate our interpretation of
the parameters together. When multiple 2-paths occur, they tend to be
closed in transitive form and tend not to be closed in cyclic form; once
these two closure processes are taken into account, there are no other
evident tendencies for multiple 2-paths to be present or absent. In other
words, local connectivity is explained by tendencies for transitive closure
and tendencies against cyclic closure.
5
Technically, models with single triangle parameters very often do not converge. This is
discussed in Chapter 6.


--- PAGE BREAK ---

Example Exponential Random Graph Model Analysis
45
Sender effects: The sender effect measures the degree to which actors
with a speciﬁc attribute send more ties compared to others in the network.
The negative but not quite signiﬁcant sender effect for the binary attribute
seniority means that managers who are not senior (i.e., those who have
a score of zero) have a tendency to send ties. In contrast, the number of
projects was measured as a continuous attribute variable. However, there
were no sender effects for number of projects completed, so there is no
evidence here that experience in projects affects tendency to communicate.
Finally, note that there is no sender effect (or receiver effect) for the
variable “ofﬁce” because it is a categorical variable.
Receiver effects: The receiver effect measures the degree to which actors
with a speciﬁc attribute have the propensity to receive ties. There were
no signiﬁcant receiver effects for the variables of seniority and number of
projects.
Homophily: There is a signiﬁcant and positive estimate for homophily
for seniority and the number of projects. Actors tend to communicate
with others of the same seniority and with others of similar experience in
terms of the number of projects. We note that the effect is negative for
projects, here measured as the (absolute) difference, and thus a negative
value indicates small differences. The estimate for the categorical variable
ofﬁce homophily was not signiﬁcant.
Covariate advice network: The covariate advice network has been
treated as exogenous to the communication network, and so is ﬁxed
in the modeling process. Theoretically, this means that we assume advice
may have an effect on communication (the network we are modeling)
but that communication has no effect on advice (for an extended discus-
sion on this, see Chapter 21). More to the point, we seek to understand
how advice ties might explain communication ties but not the other way
around. The signiﬁcant and positive parameter of the covariate network
indicates that advice and communication ties co-occur, or are entrained.
5.2.1
Multiple Explanations for Network Structure
First and foremost, when examining the estimates in Table 5.1, we high-
light the fact that there are signiﬁcant effects for purely structural, actor-
relation, and covariate network effects. That is, each subtype of network
effects has an independent explanatory capacity for the presence of ties
in the communication network. This emphasizes a number of points.
If we were to believe that social network ties were not dependent on
the individual characteristics of actors, we would miss important infor-
mation, speciﬁcally, how communication occurs around similarity on a
number of characteristics in The Corporation. Furthermore, exogenous
relational structures (i.e., advice) also have a unique impact on communi-
cation ties. The purely structural effects by themselves do not wipe out the


--- PAGE BREAK ---

46
Exponential Random Graph Models for Social Networks
actor-relation effects, and thus this highlights the importance of exam-
ining the qualities of actors in the network. Conversely, the inclusion of
attributes does not erase the purely structural effects found for the net-
work, indicating that attributes alone are insufﬁcient for explaining the
formation of network ties.
We hope that the example in this chapter gives an early illustration of
how an ERGM may be applied to understand network structure. With
this motivation behind us, we now turn to more precise methodological
details about how ERGMs are formulated and implemented in Section II.


--- PAGE BREAK ---

Section II
Methods


--- PAGE BREAK ---



--- PAGE BREAK ---

6
Exponential Random Graph Model Fundamentals
Johan Koskinen and Galina Daraganova
6.1
Chapter Outline
This chapter provides a more detailed description of exponential random
graph models and aims at answering the following questions:
r What do the different notions of independence and interdepen-
dence imply for the modeling of tie-variables?
r What are exponential random graph models? What can they tell
us?
r Why and when should we use exponential random graph models?
r What different model speciﬁcations are available? How may
these be interpreted?
After presenting some necessary notation, we revisit the concept of sta-
tistical independence in order to move to an understanding of interde-
pendence. A network approach implies some level of dependence among
the observations. We then explain the exponential random graph model
(ERGM) framework akin to more familiar generalized linear models,
emphasizing that we now have dependence, not independence, of obser-
vations. Next, the exact nature of these departures from independence
is explained, and the implications for model speciﬁcations are presented.
We begin by explaining individual ties because this illustrates the snug
ﬁt between individual ties, endogenous dependencies, and the model
expressed in terms of the entire graph.
6.2
Network Tie-Variables
For a given undirected graph, a set of n nodes is represented as N = {1, . . . ,
n}, and i ≈N means that “i belongs to the set N.” This set is assumed
to be ﬁxed and predetermined. Let J be the set of all possible relational
49


--- PAGE BREAK ---

50
Exponential Random Graph Models for Social Networks
2
1
4
3
X23
X24
X13
X14
X34
X12
2
1
4
3
x23 = 1
x24 = 0
x13 = 1
x14 = 1
x34 = 0
x12 = 1
(a)
(b)
Figure 6.1. (a) Network variables of X and (b) a realization x for net-
work on four vertices.
ties for the node set N, J = {(i, j) : i, j ≈N, i ∈= j}. This set excludes pairs
(i, i) because self-ties are disallowed. The number of elements1 in J is
! n
2
"
= n(n⃝1)
2
. For any observed network, some edges in J may be present
and some absent. For a stochastic model, the set of ties E that are present
is a random subset of J. If (i, j) ≈E, then the edge between i and j is
present. For any element (i, j) ≈J , a random variable Xij can be deﬁned
where Xij = 1 if (i, j) ≈E and Xij = 0 if (i, j) /≈E. This description is
for an undirected graph: the same ideas applies to a directed graph with
some slight variation in details (e.g., the number of elements in J is then
n(n ⃝1)).
These variables are called “tie-variables.” The tie-variables can be col-
lected in a stochastic adjacency matrix X = [Xij], where the entry in row
i and column j pertains to the tie from i to j. The space of all possible
adjacency matrices is denoted by X. A realization of the stochastic adja-
cency matrix X is denoted by x = [xij], a realization being a particular
instance of the stochastic adjacency matrix – here, a matrix of actual
zeros and ones rather than variables. Any observed network, then, is a
realization.
The collection of network tie-variables and a particular realization for
a network on four nodes is represented in Figure 6.1. The left panel of
Figure 6.1 schematically represents the collection of six tie-variables that
constitute a random graph on four vertices. The dotted line between nodes
2 and 3, for example, represents the tie-variable X23. One realization
of the random graph is depicted in the right-hand panel. Here, the tie
between 2 and 3 is present, indicated by a solid line, but the tie between
1
In general, the number of ways in which one may choose k-subsets out of n elements is
given by
#
n
k
$
=
n(n ⃝1) · · · (2)(1)
k(k ⃝1) · · · (2)(1)(n ⃝k)(n ⃝k ⃝1) · · · (2)(1) = n(n ⃝1) · · · (n ⃝k + 2)(n ⃝k + 1)
k(k ⃝1) · · · (2)(1)


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
51
Table 6.1. Two independent tie-variables
Tie (i, j)
Prob absent: .5
Prob present: .5
Tie (h,m)
Prob absent: .5
Prob (h,m),(i, j)/≈E: .25
Prob (h,m)/≈E,(i, j)≈E: .25
Prob present: .5
Prob (h,m)≈E,(i, j)/≈E: .25
Prob (h,m),(i, j)≈E: .25
vertices 2 and 4 is absent – the realizations of the corresponding tie-
variables are x23 = 1 and x24 = 0, respectively.
The main focus is on modeling a process of network tie formation. As
mentioned in Chapter 3, the presence of a tie between any two individuals
may be explained by a combination of actor attribute variables and by
patterns of ties among other members of the network. In other words, the
likelihood of a tie may not only be a function of individual characteristics
of actors who share the tie, but also a function of presence or absence
of other network ties in the network. This possible dependence between
tie-variables creates the main difﬁculty in formulating a stochastic model
for a network.
6.3
Notion of Independence
To understand statistical dependence, let us begin with the idea of inde-
pendence (see, e.g., Newbold, Carlson, and Thorne (2007) for an intro-
duction to statistical concepts). The assumed independence of two tie-
variables, Xi j and Xhm, may be compared to coin tosses. If we assume
that the ties (h,m) and (i, j) are equally likely to be present and absent,
we may think of a model for these ties as two coins, coins I and II, so that
when we ﬂip them separately, each has the probability of .5 of coming
up heads and tails. If a coin is heads, we deem the corresponding tie to
be present, and if it is tails, we deem the tie absent.
If the coinﬂips are independent, this means that the probability that they
will both come up heads is just the product of the individual probabilities
of coming up heads, as in Table 6.1. This is a statistical model for a
network where the density is expected to be .5.
Suppose instead that the tie-variables behaved as in Table 6.2, where
multiplying the probabilities of “heads” does not produce the joint prob-
abilities. In this case, the variables are not independent. The marginal
probabilities are the same as in Table 6.1; the probability of (h,m) being
present is still .5 (= .1 + .4).
An equivalent deﬁnition of independence of two variables, Xij and Xhm,
is that the information that Xhm = xhm does not alter the probability that
Xi j = xi j. In other words, information regarding the realization of one
variable does not help us predict the value of the other variable – the


--- PAGE BREAK ---

52
Exponential Random Graph Models for Social Networks
Table 6.2. Two dependent tie-variables
Tie (i, j)
Prob absent: .5
Prob present: .5
Tie (h,m)
Prob absent: .5
Prob (h,m),(i, j)/≈E: .4
Prob (h,m)/≈E,(i, j)≈E: .1
Prob present: .5
Prob (h,m)≈E,(i, j)/≈E: .1
Prob (h,m),(i, j)≈E: .4
unconditional (or marginal) probability is still our best guess for the
second variable.
Most standard statistical approaches such as logistic regression require
independence, as in Table 6.1, whereas for networks we generally expect
dependence of some sort, as in Table 6.2. For instance, if we know that
Mary talks to John and that John talks to Peter, we expect that the chance
of Mary talking to Peter is greater than just the marginal probability of
two randomly selected people in the whole world talking to each other
(which is very small indeed). In a directed network, it does not seem
plausible that a coin ﬂip for Xij is independent of a coin ﬂip for Xji
because these variables relate to the same dyad. Thus, if John invites Jack
to dinner, the chances of Jack inviting John to dinner are likely to increase.
Furthermore, for a directed or undirected graph, it does not seem plausible
that a coin ﬂip for Xij is independent of a coin ﬂip for Xih because both
tie-variables pertain to the same actor, i (this is the reasoning underlying
the Markov dependence assumption explained later in this chapter).
In these cases, there is dependence among tie-variables, and the pres-
ence of some ties affects the probability that other ties may be observed.
Ignoring dependence among observations has major consequences for the
statistical conclusions we draw, and this is well documented in related
ﬁelds (Snijders & Bosker, 1999). Exponential random graph models have
the explicit aim to relax the assumption of independence between net-
work tie-variables and to incorporate possible dependencies among tie-
variables. Conditioning – “knowing that Mary knows John” – is a central
part of model formulation, interpretation, and simulation. ERGMs do not
aim at predicting the probability of a tie in a social vacuum, as in the case
of a logistic regression, but rather the “conditional probability” of a tie,
given what is observed in the rest of the network.
6.4
ERGMs from Generalized Linear
Model Perspective
Although ERGMs have some similarities to generalized linear models
(GLMs), especially standard log-linear models and logistic regressions,


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
53
an ERGM does not (except in trivial cases) reduce to logistic regres-
sion. Yet, because some fundamental concepts are common to GLMs
and ERGMs, it is instructive to illustrate these in the familiar language of
logistic regression. This also serves to emphasize how the main depar-
ture of ERGMs from logistic regression, namely, the assumptions of
dependence between observations, play out. Although logistic regression
assumes independence of observations as in Table 6.1, ERGMs do not
make this assumption, rather the opposite.
Suppose that we are primarily interested in explaining observed ties
as a function of a collection of covariates, or predictor variables. The
covariates for the tie-variable Xij could, for example, relate to the indi-
vidual characteristics of the two actors i and j, such as the difference in
age between i and j, and a variable indicating whether i and j have the
same gender. Denote these dyadic covariates by wi j,1, wi j,2, . . . , wi j,p, for
p covariates. For a GLM, we would try to ﬁnd a function θ of w and
unknown parameters λ1, λ2, . . . , λp that best describe the expected value
E(Xi j) = θ(w, λ) (the probability that Xij = 1). For dichotomous response
variables such as Xij, a logistic regression estimates a set λ of unknown
parameters λ1, λ2, . . . λp (logistic regression coefﬁcients) that best predict
the probability that the tie is present. The logistic regression function is
Pr(Xi j = 1|λ) = θ(w, λ)
=
exp{λ1wi j,1 + λ2wi j,2 + · · · λpwi j,p}
1 + exp{λ1wi j,1 + λ2wi j,2 + · · · λpwi j,p}.
If a covariate, say, wi j,2, indicated whether i and j were of the same
gender, a positive value of the corresponding parameter λ2 indicates a
higher probability of a tie between people of the same gender. It is usually
easier to interpret the model in terms of the logit or log-odds, which is
the natural logarithm of Pr(Xi j = 1|λ)/ Pr(Xi j = 0|λ):
logit Pr(Xi j = 1|λ) = log Pr(Xi j = 1|λ)
Pr(Xi j = 0|λ) = λ1wi j,1 + λ2wi j,2 + · · ·
+ λpwi j,p.
Anyone familiar with linear and/or logistic regression will be comfortable
with the expression on the right-hand side. The parameters (λ) weight the
relative importance of their corresponding predictors (w) for the prob-
ability of a tie. Positive parameters correspond to effects that increase
the probability of a tie, whereas negative parameters relate to effects that
decrease the probability of a tie.
The difference in the log-odds for two pairs (i, j) and (h,m), the covari-
ates of whom only differ in that i and j are of the same gender (wi j,2 = 1)


--- PAGE BREAK ---

54
Exponential Random Graph Models for Social Networks
and h and m are of different gender (whm,2 = 0), is
logit Pr(Xi j = 1|λ)
logit Pr(Xhm = 1|λ) = λ1(wi j,1 ⃝whm,1) + λ2(wi j,2 ⃝whm,2) + · · ·
+ λp(wi j,p ⃝whm,p) = λ2.
This ratio (of being of the same gender) is the well-known odds ratio. The
larger the value of λ2, the greater the probability of a tie for same-gender
pairs as compared to different-gender pairs, everything else being equal.
We can think of λ2 as relating to the change in going from a situation of
a different gender to a same-gender pair with everything else the same.
For ERGMs, in addition to the exogenous covariates used in logistic
regression such as the w variables, we include as covariates counts of
“network conﬁgurations” in the linear predictor. Conﬁgurations were
introduced in Chapter 3, and examples include edges, 2-stars, and trian-
gles (see Section 3.1.2). In addition, we provide details of other possible
conﬁgurations later in this chapter. The interpretation of the parameters
corresponding to these conﬁgurations is similar to those of exogenous
covariates; for example, a positive parameter corresponding to the num-
ber of triangles means that a tie is more likely to occur if it closes a 2-path
than if it does not. In the example of the triangle, as the reader will notice,
whether a tie closes a 2-path depends on whether the other two ties of
the triangle are present.
Consequently, the second departure from logistic regression is that
we have to formulate the model for each tie-variable conditional on the
rest of the graph: that is, in predicting a tie Xij, we need to take into
account the other ties that might be present. In other words, ERGMs
predict the probability for Xij, conditional on all other ties observed in
the network (which we denote as X⃝ij). This conditional probability is
written as Pr(Xi j = 1|X⃝i j = x⃝i j, λ). Leaving aside the dyadic covariates
(the w variables previously mentioned), and concentrating only on the
conﬁguration counts as predictors, the (conditional) logit then becomes
log Pr(Xi j = 1|X⃝i j = x⃝i j, λ)
Pr(Xi j = 0|X⃝i j = x⃝i j, λ) = λ1η+
i j,1(x) + λ2η+
i j,2(x) + · · ·
+ λpη+
i j,p(x).
(6.1)
The functions η+
i j,k(x) are called the “change statistics” for the kth con-
ﬁguration. They are not just counts of the conﬁgurations in the graph
(e.g., the number of triangles) but the change in going from a graph
for which X⃝i j = x⃝i j and Xi j = 0 to a graph for which X⃝i j = x⃝i j and
Xi j = 1. For example, if one covariate is the number of edges, then adding
the edge (i, j) to X⃝i j = x⃝i j will result in an increase in the number of
edges by one, say, η+
i j,edge(x) = 1. Adding the edge (i, j) to X⃝i j = x⃝i j
when xik = xkj = 1 will result in an increase in the number of triangles by


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
55
(at least) one because this would create a new triangle xi j = xik = xkj = 1.
If the parameter corresponding to the number of triangles is positive, then
the fact that the triangle count increases would contribute positively to
the probability for Xi j = 1.
Note here the important fact that we need to know the rest of the
graph X⃝i j = x⃝i j in order to calculate the η+
i j,k(x) and the conditional
logits. This is a direct consequence of the assumption that ties may be
interdependent – the probability of a tie depends on whether other ties
are present. The probabilities (or probability distributions) presented in
this chapter may be interpreted conditionally – an ERGM prescribes how
likely it is to add or delete a tie for a pair of actors given everything else.
These probabilities are based on the weighted contributions of changes
in conﬁgurations that adding or deleting the tie in question would yield.
Why are the predictors the change statistics of conﬁgurations rather
than the raw count of conﬁgurations? In Equation (6.1), we have an
expression for the log-odds for the presence of a tie on Xij compared to
the absence of a tie on Xij. In that case, the correct predictor is the change
from the graph, when xij = 0, to the graph, when xij = 1.
There is an equivalent form of the model as a probability expression for
all tie-variables simultaneously, where the predictors are then the counts
of conﬁgurations. This is known as the joint form of the model:
Pr(X = x|λ) ̸ Pλ(x) =
1
δ(λ) exp{λ1z1(x) + λ2z2(x) + · · ·
+ λpzp(x)}.
(6.2)
Equation (6.2) is the general form of the ERGM that we stick to through-
out the book. The functions zk(x) are counts of conﬁgurations in the graph
x, such that the corresponding change statistic for zk(x) would be η+
i j,k(x) =
zk(κ+
i jx) ⃝zk(κ⃝
i jx), where κ+
i jx (κ⃝
i jx) denotes a matrix x for which xi j is
constrained to be equal to one (zero). The parameters weight the relative
importance of their respective conﬁgurations, and the normalizing term
δ(λ) = %
y≈X exp{λ1z1(y) + λ2z2(y) + · · · + λpzp(y)} ensures that the sum
of the probability mass function, Pλ(x), over all graphs is one.
Equation (6.2) describes a probability distribution for all graphs with
n nodes. Let us suppose that we have only one conﬁguration represented
in a model for the network – the number of edges. Then there will be
a parameter λ1 for edges and a statistic z1(x) that is simply the count L
of the number of edges in the graph x. So, for any and every graph x
with n nodes, Equation (6.2) with a given edge parameter λ1 will assign
a probability to x based on the number of edges. We can then think of a
graph from this probability distribution as a random graph, and due to
the form of Equation (6.2), we term it an “exponential (family) random
graph distribution.” Because Equation (6.2) is based on certain network


--- PAGE BREAK ---

56
Exponential Random Graph Models for Social Networks
conﬁgurations, we can think of graphs in this distribution as built up by
the presence and absence of those particular conﬁgurations, combining
together in ways represented by the parameter values to create the total
graph structure.
As the ERGM gives us a distribution of graphs over X, the model
also implies a distribution of statistics. This offers a convenient way of
studying various properties of a model through inspecting the various
implied distributions of statistics (as is done in Chapter 4; the use of
simulated distributions of statistics is described in more detail in Chapter
12 (simulation, estimation, and goodness of ﬁt) and further illustrated
in Chapter 13). As an example, we frequently make use of the expected
values Ex|λ{z(x)} = %
x≈X z(x)Pλ(x) of these implied distributions.
Of course, this description is still quite abstract. To obtain a particular
model, we ﬁrst need to decide which conﬁgurations are relevant. We
are guided here by hypotheses about possible dependencies among tie-
variables.
6.5
Possible Forms of Dependence
We now introduce the different forms of dependence among tie-variables
that have been proposed in the literature and brieﬂy note the different
types of models that result. With this quick summary of dependence in
place, we go on to describe each form of the model in more detail. A more
detailed discussion of dependence is provided in Chapter 7.
6.5.1
Bernoulli Assumption
The simplest form of dependence is represented by the Bernoulli graph
(e.g., Bollob´as, 1985; Frank, 1981; Frank & Strauss, 1986; Karo´nsky,
1982) in which the tie-variables are assumed to be independent. The
Bernoulli graph is called “homogeneous” if the tie-variables are indepen-
dent and identically distributed Bernoulli variables (in other words, just
like a coinﬂip, although perhaps biased with unequal probabilities for
heads and tails). The Bernoulli dependence assumption deﬁnes the class
of Bernoulli graphs, where the (log-) probability of a graph is propor-
tional to the weighted sum of number of edges. This assumption is quite
unrealistic for social networks but can serve as a baseline for comparison.
6.5.2
Dyad-Independent Assumption
For directed graphs, an intuitive form of dependence is to allow for the
tie from person i to person j to be dependent of the tie to person i from
person j. Hence, the model is no longer a model for the ties of the network


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
57
but for pairs of ties of the network, and the pairs of tie-variables are called
“dyads.”
6.5.3
Markov Dependence Assumption
Frank and Strauss (1986) proposed a “Markov dependence assumption,”
the simplest assumption that goes beyond a dyad. Two tie-variables are
assumed to be independent unless they share a node. If instead of con-
sidering the edges of a graph as connecting nodes, we think of the nodes
of the graph as connecting the edges, the Markov dependence assump-
tion suggests itself. Because node i connects the possible edges (i, j) and
(i, h), we say that the tie-variables corresponding to (i, j) and (i, h) are
dependent conditional on the rest of the graph.
This assumption accounts for the fact that whether Mary talks to John
may depend on whether Mary talks to Peter because both ties pertain
to Mary. In addition, the probability that John talks to Peter may be
affected by whether both John and Peter talk to Mary (a possible tie
between John and Peter is conditionally dependent on ties between Mary
and John and between Mary and Peter under the Markov assumption –
note the triangle!). The Markov dependence assumption leads to the
class of Markov random graphs, where the (log-) probability of a graph
is proportional to the weighted sum of counts of different structural
features such as edges, stars, and triangles. How these features are derived
is summarized in Chapter 7, and the structural features themselves and
how they may be interpreted is dealt with in the next section.
6.5.4
Realization-Dependent Models
Pattison and Robins (2002) suggested that in some circumstances, two
tie-variables, Xi j and Xhm, may be conditionally dependent given the
presence of other network tie-variables even when they do not share a
node. This is a “partial conditional independence assumption” that is a
generalization of the more familiar notion of conditional independence,
which refers to the situation of statistical independence of two variables
given the state of a third variable (Dawid, 1979, 1980). In the case of
partial conditional independence for tie-variables, two tie-variables are
statistically independent if and only if a third tie-variable is in a particular
state.2
An example of a partial conditional independence assumption is the
“social circuit dependence assumption,” where two tie-variables, Xi j and
2
This approach is similar in form to that used by Baddeley and M¨oller (1989) for spatial
models, which is why Pattison and Robins (2002) adopted the same term referring to
these models as “realization-dependent models.”


--- PAGE BREAK ---

58
Exponential Random Graph Models for Social Networks
i
j
m
h
xih = 1
xjm = 1
Figure 6.2. Social circuit dependence.
Xhm, that do not share a vertex are conditionally dependent if ties exists
between i and h and between j and m. In this case, if the two-variables
are observed (i.e., xihxjm = 1), then a 4-cycle is created as in Figure 6.2.
This dependence may be typiﬁed in collaborative ties, when i works with
h and j works with m. Then the presence of collaboration between i and
j is likely to affect whether h and m also collaborate.
This assumption in combination with the Markov dependence assump-
tion gives rise to a set of additional conﬁgurations in the network model,
including sets of 2-paths with common starting and ending nodes, and
sets of triangles with a common base.
6.6
Different Classes of Model Speciﬁcations
A dependence assumption constrains the types of conﬁgurations among
network tie-variables in the model. This point is argued more fully in
Chapter 7, which presents technical details of dependence at greater
length. For the moment, it sufﬁces to know that a particular dependence
assumption implies that the conditional probability of a tie is affected by
certain network conﬁgurations. In other words, based on the nature of the
dependence, a tie is more (or less) probable if it features in some of these
conﬁgurations. Counts of these subgraphs in the observed graph then
become the statistics in the model that permit us to move beyond logistic
regression and take dependence into account. Different model speciﬁ-
cations involve different combinations of statistics. We now describe a
number of commonly used models based on different dependence assump-
tions, although this is not a complete list of possible models.
6.6.1
Bernoulli Model
Undirected Graphs. The simplest ERGM is the Bernoulli model. As noted
previously, for the homogeneous Bernoulli model, each possible tie can
be modeled as the independent ﬂip of a (p-) coin. The interpretation is
that for each possible tie, we ﬂip a (p-) coin, where the probability of


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
59
heads is p: if this coin comes up heads, we deem a tie present; otherwise,
it is absent. The conditional probability is then
Pr(Xi j = 1|X⃝i j = x⃝i j, λ) = Pr(Xi j = 1|λ) =
eλ
1 + eλ .
The logit of the probability of a tie is given simply by λ, the edge
parameter. The joint ERGM probability mass function for the adjacency
matrix according to the general formula (Equation (6.2)) is
Pλ(x) =
1
δ(λ) exp{λLL(x)}.
(6.3)
The parameter λL is called the “edge parameter,” and the corresponding
statistic for this is the number of edges L(x) = %
i< j xi j. There is only one
network conﬁguration relevant to this model: the single edge.
Directed Graphs. The homogeneous Bernoulli model for directed graphs
follows the same principles as for undirected graphs with the difference
that there are twice as many tie-variables.
6.6.2
Dyadic Independence Models
An obvious limitation of the Bernoulli model for directed graphs is that
it does not allow for tendencies toward reciprocation, a well-known ten-
dency in human social relations. This prompted the development of the
dyad-independent (or p1) class of exponential family distributions by
Holland and Leinhardt (1981) and Fienberg and Wasserman (1981). For
two actors i, j ≈N, the Bernoulli model assumes that the probability that
Xi j = xi j and Xji = xji is the product of the two marginal probabilities
as in Table 6.1, akin to two independent coin tosses (with biased coins).
The dyad-independent model, in contrast, allows for these variables to
be dependent as in Table 6.2. Nevertheless, the dependence assumption
is limited: the model assumes that dyads are independent of each other,
so that the probability of Xi j = 1 depends only on xji. Hence, the tie-
variables (Xi j, Xji) may be treated as independent observations for each
pair (i, j) of nodes. Because of the simple dependence assumption, a dyad-
independent model may still be ﬁtted using standard statistical techniques
(more speciﬁcally, multinomial logistic regression).
The simplest form of a dyad-independent model is what Snijders (2002)
called the “reciprocity p* model”:
Pλ(x) =
1
δ(λ) exp{λLL(x) + λMM(x)},
where L(x) is now the number of arcs and M(x) = %
i< j xi jxji is the
number of reciprocated (or mutual) arcs in the graph. Here, there are


--- PAGE BREAK ---

60
Exponential Random Graph Models for Social Networks
edge
2-star
Figure 6.3. Conﬁgurations in 2-star model.
two conﬁgurations relevant to the model: arcs and reciprocated arcs. For
each dyad, there are four possible outcomes for which the associated
probabilities are easily seen to be
Pr(Xi j = xi j, Xji = xji | λ) =
⎧
⎪⎪⎪⎪⎪⎪⎪⎪⎪⎪⎨
⎪⎪⎪⎪⎪⎪⎪⎪⎪⎪⎩
1
δi j(λ)
xi j = xi j = 0
1
δi j(λ) exp{λL}
xi j = 1, xji = 0
1
δi j(λ) exp{λL}
xi j = 0, xji = 1
1
δi j(λ) exp{2λL + λM}
xi j = xji = 1
,
where δi j(λ) = 1 + 2eλL + e2λL+λM, obtained from adding the probabilities
of the four outcomes.
In the original p1 class of models, the parameter λL was assumed to be
a function of sender and receiver effects to reﬂect an actor’s propensity to
establish ties to others and to receive ties. In subsequent elaborations of
the p1, Bayesian smoothing has been employed (Wong, 1987), and more
recently, more complicated dependencies have been introduced through
random effects in the p2 model (van Duijn, Snijders, & Zijlstra, 2004).
Although reciprocity is typically not the only type of interdependency
encountered in social network data, it is an integral part of most realistic
models for directed networks.
6.6.3
Markov Model
Nondirected Markov Random Graph Models. The Markov depen-
denceassumption gives rise to a model whose statistics in Equation (6.2)
are the number of edges; the numbers of k-stars Sk(x) = %
i≈N
! xi+
k
"
of dif-
ferent sizes (2 ≡k ≡(n ⃝1)), where xi+ = %
j xi j (see Figures 6.3 and 6.4
for depictions of 2- and 3-stars, respectively); and the number of triangles
T(x) = %
i< j<k xi jxjkxki. The Markov dependence assumption supposes
that two tie-variables are conditionally dependent if they share a node.


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
61
3-star
triangle
Figure 6.4. Conﬁgurations with three edges: 3-star and triangle.
What this means is that any conﬁguration in the model must have ties
that all share nodes with each other. A little thought will show that the
only way that this can occur is if a conﬁguration is a single edge, if all
ties in the conﬁguration share the one node (i.e., a star of different sizes,
depending on how many ties there are), or if there are three ties with
three nodes (a triangle). (This argument is presented in more detail in
Chapter 7.)
The full Markov model then becomes
Pr(X = x) = 1
δ exp(λLL(x) + λS2 S2(x) + λS3 S3(x) + · · ·
+ λSn⃝1 Sn⃝1(x) + λTT(x)).
(6.4)
Subsets of models nested in the full Markov model are obtained by setting
some parameters to be zero. Recall (see Figure 3.2 in Section 3.1.5) that
the higher-order conﬁgurations contain lower-order conﬁgurations, so
that the statistics are nested. The count of 2-stars (Figure 6.3) is not
just a count of nodes with degree 2: a 3-star contains three 2-stars, as
does a triangle (Figure 6.4). Similarly, a triangle contains three edges,
and so on. Thus, statistically, the higher-order conﬁgurations represent
statistical interactions involving lower-order conﬁgurations. This has the
effect of permitting inferences about, for instance, the relevance of 2-star
conﬁgurations given the number of edges in the graph, or the importance
of triangles given the number of 2-stars. We want to make inferences
about whether there is a distinct process of network ties forming into
triangles, over and above the chance accumulation of edges and 2-stars.
Setting different statistics to zero gives rise to different model speciﬁ-
cations. As explained later in this chapter, it turns out that most Markov
models alone do not represent social network data well and have now
generally been superseded by social circuit models. Nevertheless, a more
detailed discussion of a few simple Markov models will assist understand-
ing of the general modeling approach.


--- PAGE BREAK ---

62
Exponential Random Graph Models for Social Networks
The simplest Markov model is the “2-star model,” where the higher-
order star and triangle parameters are set to zero: λS3 = λS4 = · · · =
λSn⃝1 = λT = 0. The conﬁgurations in the model are then simply edges and
2-stars.
The 2-star statistic may equivalently be written in terms of the degree
distribution as S2(x) = %
i< j
%
k∈=i,j xikxkj = %
j≤2
! j
2
"
dj(x), where dj is
the number of nodes of degree j. For a given number of edges, a positive 2-
star parameter increases the probability of graphs with more 2-stars. For
a given number of edges, the simplest way to get many 2-stars is to have
some high-degree nodes, thereby leading to a skewed-degree distribution.
The degree variance S = 1
n
%n
i=1 (xi+ ⃝x)2 has been used as a measure of
centralization (Hagberg, 2004; Snijders, 1981a, 1981b), and expanding
this expression, the ﬁrst term is a sum of 2-stars centered on node i, x2
i+ =
%
j,h xi jxih. So, in ﬁtting a 2-star model, we are modeling the average
number of ties per node (the edge parameter) and the variation in the
number of ties of each node (the 2-star parameter), that is, the mean
and variance of the degree distribution. Some technical aspects of the
2-star model are studied more closely by Handcock (2003) and Park and
Newman (2004).
Although this model accounts for degree variation, it rarely ﬁts
observed network data because it is unable to capture network closure
(clustering or triangulation). However, the model can be extended by
including triangle conﬁgurations. Frank and Strauss (1986) called this
the “triad model.” Again, this model is of limited empirical value because
it can only be ﬁt to data under very limited circumstances. However, a
brief discussion illustrates a number of important points. The model may
equivalently be formulated in terms of triad counts (Frank & Strauss,
1986), that is, in counts of induced subgraphs consisting of three vertices
with no, one, two, or three edges. Triad counts of undirected graphs have
been extensively used to test hypothesis by comparing them against vari-
ous null distributions (Frank, 1979; Frank & Harary, 1982; Holland &
Leinhardt, 1971, 1976; Karlberg, 1997, 2002).
A positive triangle parameter indicates network closure or clustering.
In friendship networks, for example, there may be a tendency for friends
to meet through other friends (i.e., a friend of a friend is a friend). Because
the 2-star conﬁguration is a subgraph of the triangle, a lower-order inter-
action, it is desirable to include the 2-star parameter whenever the triangle
parameter is included. Without a 2-star parameter, we cannot tell whether
the prevalence of triangles was due to accumulation of 2-stars or a distinct
effect of closure.
The triad model may be extended by including a 3-star parameter
(Figure 6.4). Then, the edge, 2-star parameter, and 3-star parameter
model the mean, standard deviation, and skew of the degree distribution,


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
63
0
0.5
1
1.5
50
60
70
80
90
100
110
120
130
140
number of edges
triangle parameter
0
0.5
1
1.5
0
50
100
150
200
250
300
350
400
number of triangles
triangle parameter
Figure 6.5. Expected and 95% intervals for number of edges and trian-
gles as function of triangle parameter in Markov model on thirty nodes
with edges (⃝3), 2-stars (0.5), 3-stars (⃝0.2), and triangles.
respectively. In terms of interpretation, positive 2-star and negative 3-star
parameters indicate some centralization through high-degree nodes but
with a cap on the level of that centralization (through the negative 3-star
parameter). In other words, a positive 2-star parameter suggests a ten-
dency to have multiple ties, but the negative 3-star parameter indicates
that there is a point beyond which additional ties are not desirable (we
cannot be friends with everyone!).
A fundamental property of an ERGM is that parameters regulate how
many of their corresponding conﬁgurations are expected on average. As
an illustrative example, consider how the triangle parameter λT controls
the number of triangles in a model that also includes parameters for
edges, 2-stars, and 3-stars, with parameter values ﬁxed at ⃝3.0, 0.5,
and ⃝0.2 respectively,3 for undirected graphs with thirty nodes. The
expected number of triangles and the range of the likely number of tri-
angles for different values of the triangle parameter is graphed in Figure
6.5. If there is no effect for triangulation (i.e., λT = 0) from the right-hand
3
For the purpose of simple illustration, we have chosen these numbers as parameter values
based on experience.


--- PAGE BREAK ---

64
Exponential Random Graph Models for Social Networks
panel, we expect around 10 triangles on average, and with probability
.95, we observe between 4 and 17 triangles. As we increase the trian-
gle parameter, the number of triangles we expect to see steadily rises:
for example, when λT = 1, we get 40 triangles on average, and 95% of
the graphs generated from this model have between 25 and 59 triangles.
Roughly after λT = 1.11, there is a dramatic rise in the number of tri-
angles, and when λT = 1.15, the 95% interval extends from 38 to 293
triangles.
The statistics are highly interdependent: we cannot increase the
expected number of triangles without also increasing the expected num-
ber of edges as in the left-hand panel. Hence, although we get between 51
and 72 edges when λT = 0, we get between 71 and 92 edges when λT = 1.
The explosion in the number of triangles after λT = 1.11 is mirrored in
the steep rise in edges.
The transition from low-density graphs to high-density graphs in Figure
6.5 illustrates one of the difﬁculties with Markov models. For models
with a triangle parameter (all other parameters being ﬁxed) in the range
0 to roughly 1.11, the increase in the number of triangles is small and
gradual as a function of increases in the triangle parameter. In that range,
the increase in the probability of a graph for an additional triangle is
counteracted by the negative edge parameter (and also the negative 3-star
parameter).
Compare two graphs, x and y, where y has one triangle more than
x through the addition of an edge that closes a 2-path. Then y has an
additional λT in the (exponent for the) probability compared to x, mean-
ing that the triangle contributes positively to favoring y over x. However,
an additional edge in y also contributes negatively to the probability of the
graph given that the edge parameter is negative. Hence, leaving aside the
star parameters for the moment, increasing the number of triangles con-
tributes positively to the likelihood of observing that graph through the
triangle parameter but contributes negatively through the edge param-
eter. In Figure 6.5, we see that there is a balance between the positive
triangle and negative edge effect until roughly λT = 1.11. From roughly
λT = 1.18, the balance is upset in favor of graphs with many triangles.
This dramatic change is known as a phase transition from low-density
graphs to high-density graphs, characterized by high uncertainty with a
very wide 95% interval.
Figure 6.6 depicts the number of triangles across graphs when λT =
1.1524. The high variability occurs because the model places half the
probability on low-density graphs and half on high-density graphs, and
very little on graphs in-between. Bimodality as in Figure 6.6 is prob-
lematic for both inference and interpretation of parameters. Researchers
have found that observed data often fall in between two such humps
for Markov graphs, when it is impossible to ﬁnd combinations of


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
65
0
50
100
150
200
250
300
350
400
number of triangles
Figure 6.6. Number of triangles for Markov model with edges (⃝3),
2-stars (0.5), 3-stars (⃝0.2), and triangles (1.1524).
parameter values such that the observed combination of graph statistics
is central in the distribution of graph statistics (see, e.g., Snijders et al.,
2006).
Similar phase transitions can be observed for the star parameters, so
although the triad model models the degree distribution and recognizes
network closure, it has been demonstrated to be inadequate for reproduc-
ing the forms of degree heterogeneity and clustering commonly observed
in empirical social networks (Handcock, 2003; Robins & Pattison, 2005;
Snijders et al., 2006). It is perhaps not surprising given that social relation-
ships are potentially complex phenomena that they cannot be described
only at the dyadic and/or triadic levels implied by the Markov dependence
assumption.
Alternating Star Parameters. One parameterization that helps consider-
ably with phase transitions involving star parameters is that of “alter-
nating star parameters” or (equivalently) “geometrically weighted degree
parameters.” The alternating star statistic is a weighted sum of all star
counts (with alternating signs on the counts – see the next paragraph) and
dampens the effects of higher-order stars to help avoid a dramatic phase
transition from low-density to high-density graphs.


--- PAGE BREAK ---

66
Exponential Random Graph Models for Social Networks
When ﬁtting models to real data, the combination of density, 2-star
parameter, and 3-star parameter in the triad model often yields parame-
ters with alternating signs (as do indeed models with higher-order stars).
The alternating sign of star parameters is associated with the fact that
the k-star counts are nested: every k-star contains
! k
j
"
j-stars, for j ≡k.
Higher-order stars are higher-order statistical interactions in the model:
changes in signs with higher-order interaction effects are familiar from
standard general linear model approaches.
Frank and Strauss (1986) proposed to reparameterize the star param-
eters in terms of the degree distribution λd( j) = %
k≤j
! j
k
"
λS(k), where λd(j)
and λS(k) are parameters for nodes of degree j- and k-stars, respectively.
This is a complete parameterization of the degree distribution but cre-
ates too many free parameters to be estimated. To limit the number of
parameters, Snijders et al. (2006) suggested the restriction λdj = λdj⃝1e⃝α,
for α > 0, down-weighting the contributions of high-degree nodes in
a geometrically decreasing fashion (see also Hunter (2007) for a slight
variation). Here, α is a smoothing constant either ﬁxed at a value chosen
by the researcher or treated as a parameter to be estimated (see Chap-
ter 12). These parameter restrictions for the degree parameters may be
translated back to the parameters for the stars. With some minor modi-
ﬁcations, λdj = λdj⃝1e⃝α is equivalent to the constraint λS(k) = ⃝λS(k⃝1)
α
on
the star parameters, where α =
eα
eα⃝1. Treating α as a ﬁxed constant, this
constraint implies that we have one alternating star parameter λS, with
an associated statistic:
zs(x; α) = S2(x) ⃝S3(x)
α
+ · · · + (⃝1)k Sk(x)
αk⃝2 + · · ·
+ (⃝1)n⃝1 Sn⃝1(x)
αn⃝3 .
(6.5)
Because of the special properties of the stars of order 2 and 3, and their
relation to degree variance and skew, it is sometimes useful to include
effects for stars of order 2 and 3 in addition to the alternating star effects.
It is almost always recommended to include the edge parameter λL in
addition to the alternating star statistic (unless using ﬁxed density mod-
els – see later in this chapter). The alternating star statistic differs from
the geometrically weighted degree (GWD) statistic (Snijders et al., 2006)
(and the subtly different GWD statistic of Hunter (2007)) in the treatment
of 1-star (i.e., edges) (the exact relation is given in formula 14 of Snijders
et al., 2006).
The general interpretation of the alternating star parameter λS is as
follows. A positive parameter value with α > 1 indicates centralization
based on high-degree nodes. The value of α controls the amount of that


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
67
2-path
in-2-stars
out-2-star
Figure 6.7. Directed star conﬁgurations on three nodes.
centralization, with a larger α encouraging higher-degree nodes. Thus, a
large α may assist with modeling graphs with more highly skewed degree
distributions. When λS is negative, however, the reverse will be true, so
that the degree distribution is relatively more equal among nodes. For
many empirical data sets, α = 2 is a reasonable value for this smoothing
constant for alternating statistics (Robins & Morris, 2007), although
α may also be considered a free parameter to be estimated (Hunter &
Handcock, 2006; Snijders et al., 2006).4
Directed Markov Models. For directed graphs, there are many more con-
ﬁgurations than for undirected graphs, too many to ﬁt all of them in
one model (see Figure 7.8 in Chapter 7 for the twenty-ﬁve conﬁgura-
tions with less than four vertices). Some star conﬁgurations with spe-
cial status in directed graph Markov models are in-2-stars, 2-paths, and
out-2-stars, given by IS2(x) = %
i
! x+i
2
"
, P2(x) = %
i
%
j,h, j∈=h xjixih, and
OS2(x) = %
i
! xi+
2
"
, respectively (shown in Figure 6.7). These are the con-
ﬁgurations of three (non-isolate) nodes with two arcs (Snijders, 2002).
Directed graphs have two degree distributions: the in-2-star parameter
controls variation of in-degrees, whereas the out-2-star controls variation
of out-degrees. So, in principle, the in-2-star and out-2-star parameters
model the heterogeneity in a graph with respect to popularity and activ-
ity. The 2-path parameter controls for the correlation between in- and
out-degree.
The full Markov model for directed graphs parameterizes the entire
triad census (Holland & Leinhardt, 1970), although again this is generally
too many parameters. If we limit the triangle parameters to those that
consist of three vertices with exactly one arc between any pair of nodes,
4
As Snijders et al. (2006) point out, if α is considered a free parameter, the model no longer
belongs to the exponential family of distributions but to the curved exponential family
of distributions. Hunter and Handcock (2006) show how α may be estimated using
maximum likelihood, and Koskinen, Robins, and Pattison (2010) estimate the smooth-
ing constant using Bayesian inference (see Chapter 12). This also holds for smoothing
constants in the other alternating statistics presented here.


--- PAGE BREAK ---

68
Exponential Random Graph Models for Social Networks
3-cycle
transitive triple
Figure 6.8. Conﬁgurations on three vertices with exactly one tie for each
dyad.
the conﬁgurations correspond to the 3-cycle and the transitive triple
(Figure 6.8). The 3-cycle can be seen to consist of three distinct 2-paths,
and the transitive triple consists of a 2-path, in-2-star, and out-2-star.
These are effects that should be controlled for when 3-cycle and transi-
tive triadic parameters are included in a model. In addition, a directed
Markov model should include the arc and reciprocity parameters famil-
iar from the dyadic dependence directed model, as well as star-based
parameters to control for the degree distribution.
Transitivity and cyclicity represent different forms of network closure.
They have interesting differences in regard to local hierarchies in the
network. Consider the case when the network represents the ﬂow of
orders, so that a node may only send ties to other nodes of lower status.
In that case, there can be no cycles, but there may be transitive triples.
(Local hierarchy, however, does not necessarily imply global hierarchy.) It
is quite common in friendship networks to see a negative effect for 3-cycles
and a positive effect for transitive triads, suggesting that friendship is
quite strongly organized in terms of local hierarchies. Sometimes cyclicity
is also interpreted as a form of generalized exchange.
Even though the family of Markov models covers a variety of different
models and is able to produce many different types of graphs (Robins,
Pattison, & Woolcock, 2005), difﬁculty in ﬁtting models to real data
as described previously (Corander et al., 1998; 2002; Frank & Strauss,
1986; Handcock, 2003; Snijders, 2002) prompted the introduction of
statistics that were not derived exclusively from Markov dependence.
We have already introduced alternating star statistics for undirected
models, motivated by these issues. Alternating in- and out-star parameters
can be used in directed models in an analogous way. Two alternating
counts of in- and out-degrees suggested by Snijders et al. (2006) were
zd,out(x; α) =
n⃝1
*
j=0
e⃝αjdout
j
(x) =
n
*
i=0
e⃝αxi+
(6.6)


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
69
and
zd,in(x; α) =
n⃝1
*
j=0
e⃝αjdin
j (x) =
n
*
i=0
e⃝αx+i .
(6.7)
These are referred to as “geometrically weighted out-degrees” and “geo-
metrically weighted in-degrees,” respectively. In the same fashion as
we may express the geometrically decreasing degrees statistic as alter-
nating star statistics, geometrically weighted out- and in-degrees have
an alternate representation as alternating out- and in-stars, respectively
(Robins, Pattison, & Wang, 2009). As zd,out (x; α) models the shape of
the out-degree distribution, the corresponding effect may be called “activ-
ity spread.” Analogously, we term the effect corresponding to zd,in(x; α)
“popularity spread,” referring to the way in which differences in number
of ties received (for positive relations) reﬂect differences in popularity. A
large positive value on the in- or out-star parameter indicates a network
with high- (in- and out-) degree nodes (i.e., a network more centralized in
terms of popularity or activity, respectively). The parameter α is usually
treated as a smoothing constant for alternating statistics (as described
previously).
The social circuit dependence assumption permits further extensions to
address the problems associated with ﬁtting Markov models.
6.6.4
Social Circuit Models
Undirected Models. The social circuit dependence assumption, in combi-
nation with Markov dependence, leads to the following conﬁgurations:
edges, k-stars of different order, k-triangles, and k-independent 2-paths.
These are the most commonly used social circuit conﬁgurations in model
ﬁtting (although the social circuit assumption also permits other possi-
ble conﬁgurations, such as cliques of different sizes, that are not often
used).
A k-triangle consists of two connected nodes that are also jointly con-
nected to k other distinct nodes. A k-independent 2-path consists of two
nodes jointly connected to k other distinct nodes. These are depicted in
Figure 6.9a (k-triangles) and Figure 6.9b (k-independent 2-paths), where
we refer to (i, j) as the base and (i,hk) and (j,hk) as the sides of the k-
triangle. Note that these conﬁgurations are consistent with the combined
social circuit/Markov dependence assumptions because they are counts
of 4-cycles (social circuit) with – for k-triangles – a base that is accounted
for by Markov dependence.
The motivation for using k-triangle conﬁgurations relates to the dif-
ﬁculty in modeling triangles in Markov models as noted previously. A
Markov model, in effect, assumes that triangles are distributed evenly


--- PAGE BREAK ---

70
Exponential Random Graph Models for Social Networks
h1
j
i
h1
j
i
h2
h1
j
i
h2
h3
h1
j
i
h2
hk
h3
h1
j
i
h1
j
i
h2
h1
j
i
h2
h3
h1
j
i
h2
hk
h3
(a)
(b)
Figure 6.9. (a) Alternating triangles on base (i, j) and (b) independent
2-paths.
throughout the graph. For many observed networks, however, triangles
are clumped together in denser regions of multiple triangulation, which
the higher-order k-triangles are better able to model.
Just as a 2-star and 3-star model the variance and skew of the degree
distribution, the 2-triangle and 3-triangle model the variance and skew
of the distribution of triangles across the graph – more speciﬁcally, the
distribution across ties (i, j) of the number of third nodes connected to
both i and j (termed the “edgewise shared partner distribution”).
The k-2-path conﬁguration is lower order to the counterpart k-triangle
conﬁguration, so the inclusion of both parameters permits inference about
whether k shared partners encourage the presence of a tie between two
nodes. (The distribution of k-2-paths across dyads is often referred to as
the “dyadwise shared partner distribution.”)
The count of k-triangles in a graph x is Tk(x) = %
i< j xi j
! S2i j(x)
k
"
, where
S2i j(x) = %
k∈=i,j xikxkj is the number of 2-paths connecting i and j (except
for the 1-triangle, which is counted as the number of triangles, as in the
Markov case). As with the alternating star statistic, distinct parameters
for each of the k-triangles and k-2-paths give an overdetermined model
with too many parameters. Snijders et al. (2006) proposed to combine the
counts of k-triangles through the alternating triangle statistic, analogously
to the alternating star statistic:
zT(x; α) = 3T1(x) ⃝T2(x)
α
+ T3(x)
α2
+ · · · + (⃝1)k⃝1 Tk(x)
αk⃝1 + · · ·
+ (⃝1)n⃝3 Tn⃝2(x)
αn⃝3 .
(6.8)
(The factor of 3 for the T1 count arises because the 1-triangles are counted
as single Markov triangles – see Snijders et al. (2006).) The constraints


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
71
on the k-triangle parameters implied by the alternating triangle statistic
means that edges whose nodes are connected by many indirect paths get
differentially weighted. The strength of this effect will depend on the val-
ues of the parameter and the damping factor α. For α > 1 and a positive
parameter value, the model favors graphs with highly clustered regions.
The weight of higher-order k-triangles is smaller the greater the value of
α. For higher values of α, the highly clustered regions of the graph tend to
be larger. So, the alternating triangle statistic represents network closure
in dense regions of the network with the size of those regions represented
by the value of α. (In practice, we typically set α = 2 and treat it as a
smoothing parameter for alternating statistics, as explained previously.)
The geometrically weighted edgewise shared partner (GWESP) term in
statnet is parameterized in terms of log(α), so that gwesp(0.693) is
the alternating triangle statistic with α = 2. The geometrically weighted
dyadwise shared partner (GWDSP) statistic (alternating 2-paths) is simi-
larly parameterized, so that gwdsp(0.693) has α = 2.
In the Markov model with a positive triangle parameter, the triangles
are “evenly” distributed in the graph. In a model with an alternating
triangle statistic, however, the presence of one triangle may increase the
likelihood of other triangles “attaching themselves” to it. However, the
increase in probability for creation of a k-triangle is a decreasing function
of k. This can be interpreted as follows: if a social tie between individuals
who share many social partners is absent, the increase in a number of
shared partners is not likely to increase the probability of the tie greatly.
In empirical settings, we may see serious impediments to a tie being
formed (e.g., mutual antipathy or geographic distance), and additional
shared partners will not alter the situation much.
It is obvious that alternating triangles emerge not only from formation
of new bases of k-triangles but also from the formation of new sides.
Analogous to the use of 2-paths as a control for triangles that result from
accumulated two paths, the alternating independent 2-path statistic can
be used as a control for the alternating triangle statistic. As previously,
a sequence of alternating and decreasing weights for the counts of inde-
pendent 2-paths (Figure 6.9b) can be used to create a single aggregate
statistic termed the “alternating path statistic” with a damping factor α.
Note that an independent 2-path of order 2 corresponds to a 4-
cycle. The constant α may be distinct from that for alternating triangles
(although we do not make any notational distinctions), but again it is
commonly set to 2. There is a functional dependence between alternat-
ing 2-paths and alternating triangles, and it is common that the 2-path
parameter is negative in combination with a positive triangle parameter.
In that case, actors are less likely to have shared partners unless they are
themselves connected, a clear indicator for network closure.


--- PAGE BREAK ---

72
Exponential Random Graph Models for Social Networks
h1
j
i
h1
j
i
h2
h1
j
i
h2
h3
h1
j
i
h2
hk
h3
h1
j
i
h1
j
i
h2
h1
j
i
h2
h3
h1
j
i
h2
hk
h3
(a)
(b)
Figure 6.10. Conﬁgurations for directed graphs in alternating forms
(a) AT-T and (b) A2P-T.
Directed Graphs. Just as with Markov models, the directed equivalent of
the social circuit speciﬁcations has more variety in possible conﬁgurations.
We have already mentioned parameters for alternating in- and out-stars.
For a directed version of the alternating triangle conﬁguration, Snijders
et al. (2006) proposed the transitive version shown in Figure 6.10a. The
vertices at the base, i and j, are connected to each other and also indirectly
through 2-paths via k others. The lower-order k-2-path counterparts are
depicted in Figure 6.10b. As in the undirected case, the number of param-
eters can be reduced by using alternating parameter constraints. These
alternating statistics are denoted AT-T and A2P-T, respectively, where T
signiﬁes “transitive.” (For directed networks, the GWESP and GWDSP
terms in statnet, gwesp(), and gwdsp() are equivalent to these tran-
sitive conﬁgurations AT-T and A2P-T with the log(α) parameterization.)
The counterpart parameters are referred to as the “path closure” and
“multiple 2-path” parameters, respectively.
Considering the way the directed k-triangles are built on the directed
1-triangle (i.e., the transitive triple), we note that there are other possible
choices of base. In an undirected triangle, the three vertices are structurally
equivalent, so that the subgraph stays the same even if the labels of the
nodes are rearranged. In a transitive triple, however, the three nodes
have distinct positions: one sends two ties, one receives two ties, and
one receives and sends one tie. In the directed 1-triangle in Figure 6.10a,
these roles are occupied by i, j, and h1, the center of an out-2-star, an
in-2-star and a 2-path, respectively. Different directed k-triangles may be
formed by adding out-2-stars, in-2-stars, and 2-paths to a suitable base.
In addition to the AT-T structure in Figure 6.10 (formed by adding 2-
paths to a base), Robins et al. (2009) proposed the directed k-triangles
in Figure 6.11: (1) AT-U, by adding 2-out-stars to the base; (2) AT-D,
by adding 2-in-stars; and (3) AT-C to form cyclic patterns. The 2-path
“controls” for the latter two are given by the alternating 2-paths in Figure
6.12: A2P-U (“shared activity”) and A2P-D (“shared popularity”).


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
73
h1
j
i
h1
j
i
h2
h1
j
i
h2
h3
h1
j
i
h2
hk
h3
h1
j
i
h1
j
i
h2
h1
j
i
h2
h3
h1
j
i
h2
hk
h3
(a)
(b)
h1
j
i
h1
j
i
h2
h1
j
i
h2
h3
h1
j
i
h2
hk
h3
(c)
Figure 6.11. Additional triadic conﬁgurations for directed graphs in
alternating forms (a) AT-U, (b) AT-D, and (c) AT-C.
These four different forms of alternating triangle effects relate to differ-
ent forms of network closure. (The notation in Figure 6.11 of AT-D and
AT-U derives from the classic triad census, with the D and U referring to
“down” and “up”; the AT-C notation refers to “cycle.” See Chapter 15
for an example of the application of such conﬁgurations.)
We may think of AT-T in terms of transitive path closure. In terms of
friendship, i tends to choose those j who are friends of their friends hu. Fol-
lowing Robins, Pattison, and Wang (2009), a positive AT-T parameter,
the “path closure” parameter, can be interpreted as a tendency for struc-
tural holes to close when there are multiple independent paths between i
and j.
A positive AT-U parameter – referred to as an “activity closure” param-
eter – suggests that if two actors i and j are similar with respect to
h1
j
i
h1
j
i
h2
h1
j
i
h2
h3
h1
j
i
h2
hk
h3
h1
j
i
h1
j
i
h2
h1
j
i
h2
h3
h1
j
i
h2
hk
h3
(a)
(b)
Figure 6.12. Additional 2-path conﬁgurations for directed graphs in
alternating forms (a) A2P-U and (b) A2P-D.


--- PAGE BREAK ---

74
Exponential Random Graph Models for Social Networks
activity – that is, they send ties to the same people – then this increases the
probability that there is a tie between them. Implicit in this interpretation
is that if individuals send ties to the same others, then they are either
doing this because they are faced with the same conditions or embed-
ded in the same social neighborhoods or social settings. These conditions
may, of course, be created or reinforced by repeated similarity of action.
For example, we could think of two individuals new to a group who
therefore send ties to popular people and, in doing so, recognize that they
are both in a similar position, something that is acknowledged by the
establishment of a tie between them.
A positive AT-D parameter – a “popularity closure” parameter – may
be interpreted in similar terms, but in this case for actors who are similar
with respect to popularity rather than activity. One interesting example
would be if the relation investigated is positive, yet there was a degree
of competition among highly connected nodes, in which case this com-
petitiveness might act against the prevalence of AT-D counts. A positive
AT-C parameter – a “cyclic closure” parameter – indicates the presence
of many 3-cycles in the network. This represents nonhierarchical network
closure.
Robins, Pattison and Wang (2009) also proposed that equating the
three transitive triadic parameters – path, activity, and popularity clo-
sure – to create one general transitivity parameter might also be useful and
parsimonious in certain circumstances (we label the associated statistic
“AT-TDU”). A positive general transitivity parameter indicates a general
tendency for hierarchical network closure without differentiating among
the three effects. Of course, it is an empirical question whether a partic-
ular network exhibits this general effect or whether one or other of the
individual transitive closure effects is paramount.
Robins, Pattison and Wang (2009) also suggested inclusion of three
parameters that can help control the degree distributions of directed
graphs. These were parameters for the number of “isolated nodes” (i.e.,
nodes with degree zero), for “sources” (i.e., nodes with zero in-degree
but positive out-degree), and for “sinks” (i.e., nodes with zero out-degree
but positive in-degree).
Interpreting parameters and their effects independently in isolation
from the other effects may be hazardous in light of the high degree of
interdependence between different counts. The magnitudes of the esti-
mated parameters are typically hard to interpret as well. Accordingly,
although we may provide interpretations along the lines suggested in pre-
vious paragraphs, it is often helpful to interpret the model – that is, the
simultaneous results of the parameters in the model – in terms of the kinds
of structure produced through simulation (see Chapter 12). Sometimes it
is helpful to use conditional log-odds and odd ratios, especially when we
include actor attributes in models, as we illustrate in Chapter 8.


--- PAGE BREAK ---

Exponential Random Graph Model Fundamentals
75
bow-tie
edge-triangle
Figure 6.13. Conﬁgurations associated with brokerage.
6.7
Other Model Speciﬁcations
Whether a particular model speciﬁcation is appropriate in a given context
is in part an empirical question, regardless of how coherent the underpin-
ning theoretical framework. Almost certainly, therefore, we will come to
entertain different dependence assumptions and different models within
the broad ERGM class as we work with new forms of network data, and
as we gain experience in understanding the strengths and limitations of
particular model speciﬁcations.
Butts (2006) proposed a form of dependence termed “reciprocal path
dependence,” the idea that two tie-variables are conditionally dependent
if their presence creates a directed cycle of any length in the graph. Statis-
tics for the resulting homogeneous model are the counts of cycles of each
length in the graph, the so-called cycle census.
Although closure is testiﬁed as being a central mechanism in tie for-
mation, we saw that too much closure is responsible for the instabilities
of the pure Markov model (Figures 6.5 and 6.6). Robins, Pattison, Snid-
jers, and Wang (2009) also argued that as there are costs associated with
establishing and maintaining relationships with people, there may be
additional costs associated with maintaining big groups. Consequently,
both from the perspective of creating models that generate realistic graphs
and based on theoretical considerations, tendencies for nonclosure might
be considered. Robins, Pattison, Snijders, and Wang (2009) proposed
conﬁgurations such as edge-triangles and bow ties, representing particu-
lar mechanisms that counteracted closure (Figure 6.13). The edge-triangle
conﬁguration is interpreted as a form of brokerage from the central node
(the one with three ties). Similarly, the bow tie may be seen to represent
partially overlapping group membership, where there is one node that
belongs to two triangles. Here, the triangle is interpreted as the simplest


--- PAGE BREAK ---

76
Exponential Random Graph Models for Social Networks
form of a group. There is ongoing work examining the complexities of
these additional conﬁgurations.
In these cases, a means of building model speciﬁcations from a particu-
lar construal about dependencies has provided a valuable path to model
building. Equally important, though, in an empirical setting, is the means
of evaluating how adequately a model has been speciﬁed. This is an issue
that is taken up in Chapter 12.
6.8
Conclusion
The central premise of the ERGM modeling endeavor is its dual inter-
pretation as a model for ties and for the graph. This duality mirrors
both theoretical considerations – the way individuals form ties but at the
same time are constrained and affected by structure – and technical con-
siderations – we provide a model for tie-variables but conditional on the
rest of the graph. In this chapter, we deﬁne different model speciﬁcations
in terms of localized structures and attempt to interpret these in terms
of substantively interesting effects. In Chapter 7, we show how the dual
consideration for ties and overall structure give rise to and motivate the
inclusion of the subgraph counts presented in this chapter. We explain
how the dependence assumptions relate to subgraphs and how the prob-
ability of a tie is informed by neighboring structures.


--- PAGE BREAK ---

7
Dependence Graphs and Sufﬁcient Statistics
Johan Koskinen and Galina Daraganova
7.1
Chapter Outline
This chapter is written for those interested in a more detailed under-
standing of how assumptions regarding various forms of dependence can
be formalized. What is treated here is not essential for applying expo-
nential random graph models (ERGMs) and may be skipped at a ﬁrst
reading. The general idea, laid down by Frank and Strauss (1986), is
nevertheless crucial to the formulation of statistical models treated in this
book.
Important key points in this chapter are as follows:
r Subgraph counts are not arbitrarily chosen in ERGMs but corre-
spond to speciﬁc dependency structures.
r The subgraph counts in ERGMs are intricately nested and inter-
dependent, so care has to be taken in interpreting parameters in
isolation.
r An ERGM is akin to a log-linear model where the subgraph
counts are represented by interactions of tie-variables.
r ERGMs try to reduce the complexity of observed networks into
systematic underlying principles and stochastic components.
r A homogeneous ERGM assigns equal probability to graphs that
are structurally identical.
In this chapter, we focus on models for undirected graphs. Dependence
graphs for directed models are a natural extension of what we describe
here, but we only discuss them brieﬂy.
77


--- PAGE BREAK ---

78
Exponential Random Graph Models for Social Networks
2
1
4
3
X23
X24
X13
X14
X34
12
23
24
13
34
X12
14
(a)
(b)
Figure 7.1. Tie-variables of (a) four-node graph and (b) associated
Bernoulli dependence graph.
7.2
Dependence Graph
Frank and Strauss (1986) proposed a dependence graph D to represent
the dependence assumptions for tie-variables.1 The dependence graph is
a representation of the way in which tie-variables may depend on one
another.
Formally, a dependence graph D for a (random) graph G is deﬁned
using the tie-variables Xij from G. D has as its node set the tie-variables
Xij so that there are n(n ⃝1)/2 and n(n ⃝1) nodes in D according to
whether G is undirected or directed. The edges of D, however, repre-
sent the conditional dependencies among the tie-variables of G. That is,
(Xij,Xkl) is an edge of D if and only if Xij and Xkl are assumed to be
conditionally dependent given the values of all remaining tie-variables.
Hence, the dependence graph indicates which random variables are con-
ditionally dependent on (or conditionally independent of) each other. It
is worth emphasizing that the dependencies among random variables are
indeed a matter of assumption. They reﬂect the basic hypotheses that the
researcher assumes underpin the model.
Take as a simple example possible networks on only four nodes. With
four nodes, there are exactly six tie-variables (Figure 7.1a). Thus, the
dependence graph will have six nodes, one for each tie-variable. For
instance, the tie-variable X23 in Figure 7.1a is represented by node 23 in
the dependence graph.
1
Frank and Strauss derived their dependence graph from similar notions in the graphical
modeling literature (see Lauritzen, 1996). In that literature, the same construct is termed
an “independence graph.”


--- PAGE BREAK ---

Dependence Graphs and Sufﬁcient Statistics
79
2
1
4
3
12
23
24
13
34
14
(a)
(b)
Figure 7.2. Tie-variables of (a) four-node graph and (b) associated
Markov dependence graph.
Suppose we want D to represent the Bernoulli dependence assump-
tion, where tie-variables are independent of each other. An edge in the
dependence graph indicates a conditional dependence between two tie-
variables, so in this case there are no edges in D. The dependence graph
for the Bernoulli assumption is an empty graph as in Figure 7.1b.
Suppose, instead, that the dependence graph D represents Markov
graph dependence. Then two tie-variables Xij and Xhm are dependent,
given the rest of X, if the intersection of {i,j} and {h,m} is nonempty.
Edges in D are between tie-variables that share a node as in Figure 7.2b
(e.g., there is an edge between nodes 12 and 24 because they have node
2 in common).
A very important feature of this dependence graph is that although
there are edges between many nodes in Figure 7.2b, D is not complete
(e.g., there is no edge between nodes 12 and 34). What this means is
that, for a given graph G, once we know the rest of the graph (i.e., the
values of the tie-variables Xij for every pair of nodes excluding 12 and
34), then knowing X12 does not help us determine X34: the two variables
are conditionally independent (i.e., conditional on the rest of the graph).
There must be some level of independence or else the models will not be
identiﬁable and cannot be estimated from data.
For the social circuit model, the dependence assumption states that,
in addition to Markov dependencies, two tie-variables Xij and Xhm are
conditionally dependent even when the intersection of {i,j} and {h,m}
is empty, as long as ties between i and h and between j and m exist
in the observed graph G. This assumption may be described in terms
of the 4-cycle as explained in previous chapters. This complicates the
representation of a dependence graph because some edges may appear
due to the values of tie-variables in G. Note, however, that the social
circuit models also presuppose Markov dependence, so the dependencies
in Figure 7.2b at the least are present. In Figure 7.2b, there is no edge


--- PAGE BREAK ---

80
Exponential Random Graph Models for Social Networks
2
1
4
3
12
23
24
13
34
14
2
1
4
3
12
23
24
13
34
14
x24 = 0
x13 = 0
x14 = 0
x23 = 0
Figure 7.3. Tie-variables of social circuit graph and its dependence
graph (top) and dependence graph conditional on some tie-variables
being zero (greyed out vertices not in partial dependence graph).
between 12 and 34, but in social circuit dependence there may be an edge
between 12 and 34 if, for example, x13 = x24 = 1 because then a 4-cycle
can be created. If, however, all tie-variables other than X13 and X24 are
zero, we know that the ties {1,2} and {3,4} could not create a 4-cycle, and
in that scenario X13 and X24 are independent. So, there is some level of
independence available for an identiﬁable model; this may be speciﬁed
in the “partial dependence graph” conditional on some variables being
zero, x13 = x14 = x23 = x24 = 0 (in Figure 7.3). In this dependence
graph, if we know that x13 = x14 = x23 = x24 = 0 – represented in
Figure 7.3 by the lighter shading of the nodes 13, 14, 23, and 24 – then
X13 and X24 are independent, and hence there is no edge between 12
and 34. In principle, there is a partial dependence graph describing the
dependencies that exist when each possible subset of tie-variables is set to
zero, so that the complex social circuit dependence structure (for any G)
can – again, in principle – be represented by a series of partial dependence
graphs. Once again, we see that, as for the Markov dependence graph,
there are pairs of tie-variables in the partial dependence graph that are


--- PAGE BREAK ---

Dependence Graphs and Sufﬁcient Statistics
81
not tied. Consequently, there are instances of conditional independence.
Partial conditional dependence was introduced for a number of different
conditions for ERGMs in Pattison and Robins (2002), where further
technical details can be found.
We have now constructed dependence graphs for three dependence
assumptions. Frank and Strauss (1986) showed that the dependence graph
is a conceptual link between the dependence assumptions and how they
are expressed in the data. Although the dependence assumption implies
that a network can be characterized by a limited number of subgraphs, the
corresponding dependence graph delineates the subgraphs of particular
importance.
In summary, the link between the dependence graph and the model is
that collections of nodes in D that are mutually connected to each other –
that is, cliques of tie-variables in D – can be represented in the model
by the corresponding interaction effects among tie-variables. Each clique
in the dependence graph represents a possible conﬁguration and hence a
possible parameter in the model. More important, if there is no clique in
D for a set of nodes, then there should not be a conﬁguration involving
that set of nodes in the model.
For example, if the two tie-variables X12 and X13 are linked in D, then
a model for the network that respects the dependence assumption under-
lying D may include the interaction effect X12X13. If X12 and X13 are
linked in D, then X12 and X13 are conditionally dependent given the rest
of G. By the deﬁnition of dependence, Pr(X12 = x12, X13 = x13|rest) ∈=
Pr(X12 = x12|rest) Pr(X13 = x13|rest), so that the ties 12 and 13 would
co-occur with a probability different from expected under the marginal
probabilities for 12 and 13. The implication is that there may be an inter-
action effect X12X13. Furthermore, suppose that X12, X13, and X23 were
all jointly dependent given the rest of the graph (as they would be under a
Markov assumption), then the extent of the co-occurrence of these three
tie-variables would be measured by the interaction X12X13X23.
Note that if x12 = x13 = 1, then x12x13 = 1, and there is a 2-star
on node 1. Thus, the interaction effect x12x13 represents a possible
2-star, a Markov conﬁguration, and so a parameter in the Markov
model. Furthermore, if x12 = x13 = x23 = 1, then x12x13x23 = 1,
and there is a triangle on nodes 1, 2, and 3. Hence, the interaction
effect X12X13X23 represents a possible triangle, another Markov con-
ﬁguration, and so another parameter in the Markov model. It is in this
way that the cliques of the dependence graph come to identify possi-
ble effects in the model. Suppose, however, that x12 = x34 = 1, then
although it is true that x12x34 = 1, there is no clique for 12 and 34
in D because there is no edge between them. So, for a Markov model,
it would be improper to include a parameter for this conﬁguration of
ties.


--- PAGE BREAK ---

82
Exponential Random Graph Models for Social Networks
7.2.1
Hammersley-Clifford Theorem and Sufﬁcient Statistics
The important link between the probability of a graph and the depen-
dence graph is provided by the Hammersley-Clifford theorem (Besag,
1974). The theorem is an important basis for the graphical modeling
literature (e.g., Lauritzen, 1996) and was introduced into network statis-
tical methodology by Frank and Strauss (1986). The main points are the
following (we have left out the details, which can be found in Frank and
Strauss (1986) and Robins and Pattison (2005)).
The probability distribution function for any graph distribution may
be written Pr(X = x) = δ⃝1 exp Q(x) for some real-valued function Q
(where δ is a normalizing constant and assuming Pr(X = x) > 0 for all
x ≈X). By writing Q(x) = log{Pr(X = x)/ Pr(X = x(0))} with reference to
the empty graph x(0), we can use the inclusion–exclusion principle to write
Q(x) = % αA(xA) for functions αA deﬁned on subsets A ≥J . For a ratio
Pr(X = κ+
i jx)/ Pr(X = κ⃝
i jx), it follows from the deﬁnition of conditional
probability that Q(κ+
i jx) ⃝Q(κ⃝
i jx) may be a function only of xkℓthat xi j
is conditionally dependent on – these xkℓare given by D. Hence, it can be
seen (although this may require some thought) that αA(xA) ∈= 0 only for
A that are cliques of D.
To arrive at the sufﬁcient statistics, note ﬁrst that for a binary graph
we may write αA(xA) = λA
+
{i, j}≈A xi j. Because +
{i, j}≈A xi j is a product of
binary variables, it can only take two values: 1 if all the variables in the
index set A are equal to one, and 0 if at least one of the variables in
the index set A is equal to zero. We may call A a conﬁguration because
it corresponds to a subset of potential ties, and αA(xA) = λA when all
ties of the conﬁguration A are present. If, for example, A is equal to
{i,j},{j,h},{h,i}, A is present if the triangle involving nodes i, j, and h is
present (i.e., if xi jxjhxhi = 1 or xi j, xjh, and xhi are all equal to one). The
function αA is called the A interaction in X.
The model thus expressed in terms of αA(xA) = λA
+
{i, j}≈A xi j has the
form of an exponential random graph model as presented in Chapter 6
(Equation 6.2). In other words, the Hammersley-Clifford theorem com-
pletely determines the general form of the model once a dependence
assumption is adopted. In these network terms, the theorem can be
expressed as
Pr(X = x) = δ⃝1 exp
*
A≥J ⊆
λA
,
{i, j}≈A xi j
= δ⃝1 exp
*
A≥J ⊆
λAzA(x),
(7.1)
where J* is the set of all cliques of the dependence graph, λA is a parameter
associated with the clique (conﬁguration) A, and zA(x) is an indicator


--- PAGE BREAK ---

Dependence Graphs and Sufﬁcient Statistics
83
variable that has value 1 if conﬁguration A is observed in graph x, and is
0 otherwise.
It is worth noting that any single tie-variable is also a clique in the
dependence graph, and any subgraph of a clique is also a clique (except
for certain partial dependence structures). Hence, if A is a clique of D,
then so is every subset of A; consequently, if A is a possible conﬁguration
in the model, so are subgraphs of A.
7.2.2
Sufﬁcient Subgraphs for Nondirected Graphs
Bernoulli Model. For the Bernoulli model, the dependence graph (Figure
7.1b) is an empty graph, and hence the only cliques are those comprising
a single node from D, each of which relates to an edge in the graph x.
So, a model given by Equation (7.1) has a unique parameter for each
tie-variable, a large number of parameters. For example, for a network
with 20 nodes, the model has
! 20
2
"
= 190 parameters to be estimated.
One way of reducing the number of distinct conﬁgurations, A, and
corresponding parameters, λA, is to assume that all structurally identical
graphs are equally probable (i.e., that only the structure is relevant). This
homogeneity assumption is a central ingredient in modeling networks
using ERGMs.
For example, let the parameter λij correspond to the edge conﬁguration
A = {i,j}. For a homogeneous model, we equate the parameters λij = λL
for all i,j. From Equation (7.1), we then have that
Pr(X = x) = δ⃝1 exp
*
A≥J ⊆
λA
,
(i, j)≈A xi j
= δ⃝1 exp
*
(i, j)
λi jxi j = δ⃝1 exp λLL(x),
where L(x) = %
i< j xi j is the number of edges in x. Having imposed the
homogeneity assumption for the case where n = 20 vertices, instead
of the previous 190 conﬁgurations, we only need to consider counts of
the edges. Once we impose homogeneity in this way (irrespective of the
particular dependence assumption used), the statistics, zA(x), in Equation
(7.1) become more than indicator variables for individual conﬁgurations.
Rather, they rather reduce to counts in x of conﬁgurations of particular
types, and then Equation (7.1) takes on the familiar form of an ERGM
presented in Chapter 6.
For the Bernoulli model, the number of edges is sufﬁcient information
for the parameter λL, and hence sufﬁcient information about the model
deﬁned by the Bernoulli dependence graph and the interactions. We say
that the subgraph is a “sufﬁcient subgraph” because its count is a sufﬁcient


--- PAGE BREAK ---

84
Exponential Random Graph Models for Social Networks
2
1
4
3
12
23
24
13
34
14
Figure 7.4. Singleton clique in dependence graph and corresponding
conﬁguration in X.
statistic in the same way that the number of heads in n ﬂips of a (biased)
coin is a sufﬁcient statistic for the probability of heads – letting “1” denote
“heads,” we do not need to know if the sequence was (1,0,0,1,0) or
(0,1,0,0,1), only that the total was 2. Hence, the probability of observing
a particular graph is dependent on the graph statistic z(x) for x and
corresponding parameter λ.
Markov Model. For the Markov model, just as in the Bernoulli model,
the singleton cliques correspond to the individual tie-variables, such as
12 in Figure 7.4.
As described previously, the clique 12, 23 in D corresponds to X12 and
X23, a conﬁguration in X that is a 2-star centered on vertex 2 whenever
x12 = x23 = 1. In contrast, the subgraph in D that is induced by 12 and
34 is not complete because these two vertices are not tied. Cliques of size
3 in D correspond to two different conﬁgurations in X. For example,
the 3-clique in Figure 7.5, consisting of nodes 12, 23, and 24, all have
node 2 from G in common, and therefore correspond to a 3-star centered
on node 2 in G. The clique 12, 23, 13 in Figure 7.6 corresponds to a
triangle conﬁguration in X.
2
1
4
3
12
23
24
13
34
14
Figure 7.5. Three-clique in dependence graph and corresponding 3-star
conﬁguration in X.


--- PAGE BREAK ---

Dependence Graphs and Sufﬁcient Statistics
85
2
1
4
3
12
23
24
13
34
14
Figure 7.6. Three-clique
in
dependence
graph
and
corresponding
triangle conﬁguration in X.
For Markov graph models, the cliques in D correspond to edges, stars,
or triangles (Frank & Strauss, 1986). The Hammersley-Clifford theorem
informs us that Markov random graphs are completely characterized by
their edges, stars, and triangles, the sufﬁcient subgraphs of the Markov
random graph model. In other words, for any graph in X, its probability,
under the Markov assumption, is completely determined by the numbers
of edges, stars, and triangles. Whether there is, for example, a complete
subgraph with ﬁve vertices is not important other than the fact that it
contributes ten triangles, ten edges, and so on.
We reiterate that star and triangle conﬁgurations correspond to interac-
tions of tie-variables that arise from the Markov dependence assumption.
In each case, the interaction term informs us how much more likely (or
unlikely) the particular conﬁguration is in comparison to that expected
from the probabilities of the respective tie-variables alone. As a result,
in a properly hierarchical model, where higher-order interaction effects
are included with appropriate lower-order effects, an interaction term
gives us information about the presence of a conﬁguration, taking into
account the lower-order effects. There is a direct comparison here with
a standard log-linear model. So, a 2-star parameter represents a central-
ization effect, taking into account the lower-order edge effect. In other
words, inferences based on a 2-star parameter are conditional on the
number of edges, so we can infer whether there are more than expected
2-stars given the number of edges (i.e., more than expected centraliza-
tion given the density). Similarly, a 3-star parameter permits inferences,
taking into account the numbers of 2-stars and edges. Importantly, a tri-
angle parameter represents triangulation conditional on the number of
2-stars and edges. This permits inferences about network closure, given
the number of density and the number of 2-paths (i.e., the potential for
closure).
This is a remarkable result: given only a simple assumption regarding
dependence between the ties, we do not need to know the exact structure
of a network in order to know how likely it is, we only need to know some


--- PAGE BREAK ---

86
Exponential Random Graph Models for Social Networks
of the subgraphs (edges, stars, triangles) of this network. Let us consider
what listing the stars and triangles entail. For each of the n nodes, the other
n – 1 nodes may have edges that can be combined in
! n ⃝1
2
"
ways such
that the node is the center of a 2-star, and hence there are n
! n ⃝1
2
"
distinct
possible 2-stars. In general, there are n
! n ⃝1
k
"
distinct possible k-stars, for
k = 2, . . . , n ⃝1. Because a triangle includes three nodes, the number
of distinct possible triangles is given by
! n
3
"
. If we were to allow for a
separate parameter for each conﬁguration corresponding to a clique in the
dependence graph, we would have too many parameters. For example,
a Markov graph on twenty vertices would have
! 20 ⃝1
2
"
+ 20
! 20 ⃝1
3
"
+
20
! 20 ⃝1
4
"
+ · · · + 20
! 20 ⃝1
19
"
+
! 20
3
"
= 10,486,690 distinct parameters
but only 190 tie-variables.
As before, to reduce the number of distinct conﬁgurations and corre-
sponding parameters, we impose homogeneity whereby all structurally
identical graphs are equally probable. This means, for instance, that the
effect for every 2-star is identical, so that there is one 2-star parameter,
with a statistic that is the count of the number of 2-stars. Suppose we
apply a Markov dependence assumption to Equation (7.1). Among the
possible conﬁgurations A are 2-stars with terms %
i
%
j<h, j,h∈=i λi jhxi jxih
in the equation. We impose homogeneity by letting λA = λS(2) for all
A corresponding to 2-stars. Then the summation across all 2-star terms
reduces to λS(2)S2(x), where S2(x) is the number of 2-stars in x. Similar
results follow for the other conﬁgurations (edges, other stars and trian-
gles), so that in the end Equation (7.1) reduces to the Markov model
familiar from Chapter 6. Having imposed the homogeneity assumption,
with twenty nodes, instead of 10 million subgraphs, we only need to
consider counts of edges, of eighteen different star conﬁgurations and
of triangle conﬁgurations. The numbers of edges, of stars of different
orders, and of triangles are sufﬁcient information for the parameters and
hence constitute sufﬁcient statistics for the model. It is worth emphasiz-
ing that imposing homogeneity allows us to consider graph topology (the
structure of the graph) irrespective of the labeling of the graph nodes.
The homogeneity assumption reduces the model to n parameters, com-
prising an edge and triangle parameter and (n ⃝2) star parameters. In
most instances, we cannot have unique parameters for all stars. For most
data, such a model will not be estimable (e.g., if no node is connected to
every other node, the count of (n ⃝1)-stars is zero and the parameter can-
not be estimated). In any event, for a large network, n parameters is still
not very parsimonious. One way of reducing the number of star parame-
ters is by setting some of them to zero. Setting higher-order parameters to
zero is analogous to ignoring higher-order interactions among predictors
in a standard logistic regression. For example, Frank and Strauss (1986)
suggested (as one possible model) the “triad model” with only an edge, a


--- PAGE BREAK ---

Dependence Graphs and Sufﬁcient Statistics
87
2-star, and a triangle parameter. All 3-star and higher-order star parame-
ters are set to zero. Robins, Pattison, and Woolcock (2005) suggested an
extension that included a nonzero 3-star parameter. However, for many
data sets, these models still cannot be estimated properly, as explained
in Chapter 6. An alternative to restricting the number of star parameters
is to constrain them into a single alternating star parameter. This is now
the preferred way to proceed and helps, although does not eliminate, the
problems with estimation. The details are set out in Chapter 6.
We have gone through Bernoulli and Markov dependence at some
length because these simpler models illustrate the arguments well. How-
ever, we emphasize that for the practical purposes of ﬁtting data, these
models will only rarely be used with success. Social circuit models with
alternating parameter constraints are by far the preferred option to avoid
estimation difﬁculties.
Social Circuit Dependence. We have already mentioned how the social
circuit partial dependence assumption was formalized for the case of ran-
dom graph models by Pattison and Robins (2002) using partial depen-
dence graphs. Snijders et al. (2006) proposed a model that satisﬁes the
social circuit independence assumption. As described in connection with
Figure 7.3, this model means that some tie-variables may be conditionally
dependent given the presence of other ties, even if they do not share a
node. As explained in Chapter 6, the model consists of all Markov param-
eters with the addition of parameters for k-triangles and k-independent
2-paths. Other conﬁgurations are also consistent with the dependence
assumptions but to date have not been widely used (e.g., k-cliques).
Analogous to the case of Markov graphs, allowing for conﬁgurations
that correspond to all distinct k-triangles would lead to too many statis-
tics, and hence a homogeneity restriction is imposed so that all structurally
identical graphs have the same probability under the model. Still, with
this homogeneity restriction, the number of triangle parameters will be
too large. Using the same rationale as for the introduction of alternat-
ing stars, a restriction can be imposed on the k-triangle parameters to
produce the alternating triangle parameter, as explained in Chapter 6.
Sufﬁcient Subgraphs for Directed Graphs. Using the same approach as
described previously, we can derive sufﬁcient statistics for directed graphs.
The important thing to bear in mind is that there are twice as many
tie-variables for a directed graph, and thus, there are twice as many
nodes in the dependence graph (Figure 7.7). Because there are now two
tie-variables for each node pair, there is a greater variety of different
star and triangle conﬁgurations in Markov dependence. The singleton
cliques correspond to a (directed) arc, and cliques 12 and 21 in Figure
7.7 correspond to two distinct conﬁgurations.


--- PAGE BREAK ---

88
Exponential Random Graph Models for Social Networks
1
3
2
12
21
13
23
31
4
24
42
14
41
43
34
32
Figure 7.7. Tie-variables for directed graph on four vertices with corre-
sponding Markov dependence graph.
Let us return to the example of a four-node graph using a Markov
dependence assumption. Applying the homogeneity restriction as dis-
cussed previously, the sufﬁcient subgraphs derived from D in Figure 7.7
are given in Figure 7.8.
In addition to arcs, there is another dyadic conﬁguration, namely, recip-
rocated arcs (cliques in D of the type {12,21}). There are also various
star conﬁgurations, as well as seven triangle statistics representing dif-
ferent types of relational closure in a subgroup of three actors. As can
be seen, parameters for these conﬁgurations essentially parameterize the
triad census of a graph (Frank, 1979; Frank & Strauss, 1986; Holland
& Leinhardt, 1981; Wasserman & Faust, 1994). If the parameters corre-
sponding to conﬁgurations with more than three vertices are set to zero,
the directed Markov graph model may be parameterized directly in terms
of the triad census.
The social circuit dependence assumption for directed graphs builds
naturally on that of the partial dependence approach described previously
in this chapter. We do not go into details here. Sufﬁce it to say that the
sufﬁcient subgraphs include the directed k-triangle and k-path conﬁgura-
tions described in Chapter 6. The alternating or geometrically weighted
form of the parameters is the most commonly used in ﬁtting data.
7.3
Dependence Graphs Involving Attributes
Attribute variables can also be introduced into dependence graphs, either
as exogenous predictors of network ties (social selection effects) or out-
come variables from network structure (social inﬂuence effects). These
types of models are presented in Chapters 8 and 9. There are some addi-
tional complexities in introducing exogenous predictors and different
variable types into a dependence graph formulation that are beyond the


--- PAGE BREAK ---

Dependence Graphs and Sufﬁcient Statistics
89
Figure 7.8. Sufﬁcient subgraphs for directed Markov graph on four
vertices.
scope of this chapter. Interested readers may consult Robins, Pattison,
and Elliott (2001); Robins, Elliott, and Pattison (2001); and Robins and
Pattison (2005).
7.4
Conclusion
The ERGM is a stochastic model in which the observed network is
regarded as one realization from a probability distribution on the set
of possible networks or graphs X on a ﬁxed set of nodes. The probabil-
ity of any particular realization x depends on parameters and statistics
associated with certain conﬁgurations of x. These conﬁgurations are not


--- PAGE BREAK ---

90
Exponential Random Graph Models for Social Networks
arbitrarily chosen; on the contrary, they are seen as the outcomes of
particular social processes that give rise to the network.
The process of formulating ERGMs for networks may be seen as com-
prising the following steps. First, a dependence structure is postulated
in the form of dependence graph. Second, cliques are derived from the
dependence graphs. Third, the Hammersley-Clifford theorem is applied
to provide a factorization with parameters based on cliques. Fourth, some
homogeneity constraints are proposed to identify the model. As a result,
the general form of the model has parameters and statistics relating to
the presence of various types of local network conﬁgurations.
Elaborations of this basic form of the model permit different forms of
dependence assumptions among network variables to be incorporated in
a hierarchy of model forms. In addition, exogenous variables (e.g., node
attributes or geographic location) can be built in. This general approach
to model building also permits the construction of models for patterns of
social inﬂuence within a network (i.e., models that allow individual-level
attributes to be predicted from network ties).
Work on other possible forms of dependence is ongoing. The advan-
tages of a systematic approach of understanding dependence are more
than theoretic: the type of data that need to be collected in a snowball
sample to estimate a large-scale ERGM is informed by the dependence
structure. Moreover, it is possible to identify a hierarchy of dependence
assumptions and so investigate further model elaborations systematically.
These issues are taken up in the ﬁnal chapter of this book.


--- PAGE BREAK ---

