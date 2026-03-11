The Conversion of Cultural Tastes
into Social Network Ties1
Kevin Lewis
University of California, San Diego
Jason Kaufman
McLean Hospital
In recent years, sociologists have focused less on cultural tastes as “ef-
fects” of social structure and more on their causal efﬁcacy in the crea-
tion and maintenance of social ties. Progress on this agenda has been
hindered, however, by limitations in theory, methods, and available
data. This article attempts to advance all three fronts. First, it clariﬁes,
integrates, andexpands upon prior work to develop a more comprehen-
sive theoretical framework for examining the conversion of cultural
tastes into social relationships. Second, it introduces a powerful net-
work modeling tool, stochastic actor-based modeling, that is uniquely
capable of implementing this framework. Third, it illustrates the utility
of these advances using an original, longitudinal data set based on the
behavior of a cohort of college students on Facebook. Findings from
this application suggest several general substantive propositions about
capital conversion, providing a starting point for future research.
INTRODUCTION
Tastes play a fundamental role in the reproduction of class structure (Bour-
dieu 1984). This insight has launched a thriving ﬁeld of research investigat-
ing both the origins of tastes in terms of social structural position (e.g., Peter-
son and Kern 1996; Mark 1998; Katz-Gerro 1999; Alderson, Junisbai, and
© 2018 by The University of Chicago. All rights reserved.
0002-9602/2018/12306-0004$10.00
1 We are indebted to Marco Gonzalez, Chana Teeger, Jocelyn Viterna, and Andreas
Wimmer for providing valuable feedback on an earlier draft of this paper. We also thank
Ron Breiger and Kurt Gray for helpful conversations regarding tie strength and network
evolution, Marco Gonzalez for developing our exogenous measures of tastes, and Omar
1684
AJS Volume 123 Number 6 (May 2018): 1684–1742
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Heacock 2007; Bennett et al. 2009) and the consequences of tastes for a va-
riety of socioeconomic outcomes (e.g., DiMaggio 1982; DiMaggio and Mohr
1985; Hagan 1991; Erickson 1996; Kaufman and Gabler 2004). One partic-
ularly innovative branch of this research takes a social network approach
to the study of tastes (Pachucki and Breiger 2010, pp. 214–15). This work
has demonstrated that the relationship between cultural tastes and social in-
equality is mediated by the impact of tastes on social network ties—in other
words, by a process of capital conversion between cultural and social capital
(DiMaggio and Mohr 1985; Bourdieu 1986; Lizardo 2006; Edelmann and
Vaisey 2014).
While pioneering, we argue that this network-based approach to tastes
and class reproduction has yet to realize its full potential. This is primarily
due to four obstacles. First, prior research on tastes and networks tends to focus
on tastes in a single domain (most commonly, music) and measure them in
a particular way (most commonly, using genres). Closed-ended instruments
facilitate data collection and comparison but risk imposing a structure on re-
spondents’ tastes (Marsden and Swingle 1994): respondents may prefer very
different items within the same genre and may not conceptualize their tastes
as genres in the ﬁrst place (Lewis et al. 2008b). And while there are practical
and theoretical reasons to focus on music, the possibility that the conversion
value of preferences may vary by domain is seldom explored—leading to a
potential overgeneralization of ﬁndings.
Second, prior research commonly relies on classiﬁcations of tastes into cat-
egories such as “highbrow” and “popular” that refer to the content of a pref-
erence and are held to be universally valid. Meanwhile, there is evidence
that other dimensions of valuation—particularly those wedded to the local
context—are equally important (Erickson 1996; Eliasoph and Lichterman
2003). We propose that one dimension of a taste’s meaning that may be par-
ticularly salient for tie formation is its location in the local cultural ecology
(Mark 1998, 2003; Kaufman 2004). For instance, if classical music lovers
tend to befriend one another, is this because a taste for Bach is a universal
marker of high status and exclusion (Lamont and Lareau 1988)? Or because
it is relatively rare in the immediate social context and for this reason effec-
tively distinguishes “us” from “them” (DiMaggio 1987; Lizardo 2006)? Be-
cause surveys often rely on random, nationally representative samples, por-
traits of local cultural ecologies are challenging to construct. Consequently,
Lizardo and Steve Vaisey for their communication and encouragement. An earlier ver-
sion of this paper was presented at the 2015 Annual Meeting of the American Sociological
Association in Chicago. This research was supported by National Science Foundation
grant SES-0819400, Social Networks and Online Spaces: A Cohort Study of American
College Students. Direct correspondence to Kevin Lewis, Department of Sociology, Uni-
versity of California, San Diego, 9500 Gilman Drive, 0533, La Jolla, California, 92093-
0533. E-mail: lewis@ucsd.edu
Conversion of Cultural Tastes
1685
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

some effects of tastes on ties may so far have been masked, while other ﬁnd-
ings may have been artifacts of omitted dimensions of meaning.
Third, past research tends to focus on only one mechanism whereby cul-
tural capital is converted into social capital: the more tastes two individuals
share, the more likely they are to form a tie. However, certain tastes may af-
fect the tendency to form ties in general (cf. Goodreau, Kitts, and Morris
2009; Wimmer and Lewis 2010), and tastes that are not shared may be just
as important (Edelmann and Vaisey 2014), such that two people with similar
overall “taste proﬁles” are especially likely to become friends (Selfhout et al.
2009; see also Dahlander and McFarland 2013). Failure to control for alter-
native mechanisms could result in misdiagnosis of the conversion processes
at work and underappreciation of the diverse ways tastes actually inﬂuence
ties. However, it is impossible to disentangle these mechanisms unless one
collects “sociocentric” network data on some closed population of respon-
dents (Steglich, Snijders, and Pearson 2010), whereas many network data
sets contain only “egocentric” data reported by a sample of disconnected in-
dividuals (e.g., Marsden 1987; Vaisey and Lizardo 2010).
Finally, most analyses of tastes and ties are cross-sectional—creating an
uphill battle for causal claims given that tastes both inﬂuence and are inﬂu-
enced by social networks. While researchers have employed sophisticated
techniques (e.g., Lizardo 2006) to address this concern, an important possi-
bility has yet to be raised: What if conversion dynamics change over time at
different stages in the evolution of a network? If they do change, this places
additional qualiﬁcations on prior results and presents a further opportunity
for theoretical development.
In light of the above limitations, this article develops a broader theoreti-
cal framework for examining the conversion of cultural tastes into social net-
work ties. Building upon a growing body of work focusing on the structure
rather than the content of cultural systems (Mohr 1998), this framework con-
siders both “exogenous” dimensions of meaning dependent on universal clas-
siﬁcations and “endogenous” dimensions of meaning derived from the local
cultural ecology. We also offer theoretical grounds for expecting that tastes
in different domains will be differentially consequential; we elaborate three
general mechanisms whereby tastes might inﬂuence ties; and, drawing on
classic and contemporary work in the networks literature (Verbrugge 1977;
de Klepper et al. 2010), we suggest that different domains, meanings, and
mechanisms may be more or less salient over time.
To implement this framework, we draw on recent developments in meth-
ods and data. First, assessing the impact of tastes on ties requires a modeling
framework capable of (1) realistically representing and disentangling various
possible tie-generating mechanisms; (2) handling the complex interdependen-
cies of social network data (as opposed to traditional approaches that assume
observations are independent); and (3) accomplishing these goals longitudi-
American Journal of Sociology
1686
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

nally (to minimize concerns of reciprocal causation). Stochastic actor-based
models—a tool network analysts have developed over the past two decades
but cultural sociologists have only begun to adopt (Lewis, Gonzalez, and
Kaufman 2012; Edelmann and Vaisey 2014; see also Steglich, Snijders,
and West 2006)—meet these requirements (Steglich et al. 2010).
Second, we illustrate the utility of this framework and method using a
unique, longitudinal data set based on the activity of a cohort of college stu-
dents on Facebook. Not only does this data set provide sociocentric network
data on a naturally bounded population, but it also contains open-ended
data on students’ tastes that can be coded according to any number of (exog-
enous and endogenous) metrics. We have demonstrated in a previous article
that friendship among these students is signiﬁcantly associated with taste
similarity (Lewis et al. 2008b)—an example of the ubiquitous social phenom-
enon known as network autocorrelation, homogeneity, or homophily (Ste-
glich et al. 2010; Wimmer and Lewis 2010). Here we pursue an increasingly
common agenda of delving beneath this observed pattern to understand
how and under what circumstances it is generated and maintained (Rivera,
Soderstrom, and Uzzi 2010).
This article is structured as follows: We begin by brieﬂy positioning our
work vis-à-vis prior research on capital conversion. Next, we develop our
theoretical framework and introduce our method, data, and cultural coding
schemes. We then present two sets of statistical models that document the im-
pact of tastes on network evolution—ﬁrst by considering all data collectively
and next by differentiating effects across time periods. We ﬁnd that, control-
ling for exogenous dimensions of meaning, tastes are also efﬁcacious if they
are particularly common or rare among one’s peers; that tastes have both pos-
itive and negative effects on the likelihood of forming and maintaining rela-
tionships; and that “dyadic conversion,” “generalized conversion,” and “cul-
tural matching” are all mechanisms whereby tastes are converted into ties.
However, different conversion mechanisms, taste domains, and dimensions
of meaning are consequential at different stages in the college experience as
originally “invisible” preferences gradually emerge. We extrapolate from these
results several general substantive propositions about capital conversion.
While the generalizability of these propositions remains to be explored—a
problem familiar to network analysts (Borgatti et al. 2009)—and our data face
limitations of nonresponse and interpretation—problems endemic to on-
line research (Golder and Macy 2014)—we hope our theoretical approach,
method, and ﬁndings will provide a starting point for future inquiry.
THE CAPITAL CONVERSION MODEL
Traditionally, the dominant conceptualization of culture and networks has
been to treat “cultural practices and patterns of culture consumption and
Conversion of Cultural Tastes
1687
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

taste as being primarily shaped and determined by social networks” (Lizardo
2006, p. 779; emphasis in original). For some time, however, the pieces were
in place for an alternative approach. Lamont and Lareau advocated greater
attention to “micro-level interactions in which individuals activate their cul-
tural capital to . . . attain desired social results” (1988, p. 163). Bryson pointed
out that we “do not really know how people use taste in their everyday lives”
(1996, p. 897). These comments align with a broader theoretical agenda em-
phasizing culture’s causal role in the evolution of networks (Emirbayer and
Goodwin 1994; DiMaggio 2004; Pachucki and Breiger 2010) and in the de-
termination of action more generally (Alexander and Smith 2001; Jacobs and
Spillman 2005; Vaisey 2009).
While some evidence existed for the role of tastes in tie formation (Erick-
son 1996; Ostrower 1998; Long 2003), these strands had not yet been inte-
grated into an explicit causal framework. Drawing on Bourdieu’s classic
essay (1986), Lizardo (2006) argued that tastes can be utilized to form and
maintain social ties through a process of “capital conversion.” Speciﬁcally,
because popular culture is shared by wider swaths of the population and
“provides the stuff of everyday sociability” (DiMaggio 1987, p. 444), it fosters
the creation of weak tie “bridges” across social space. Meanwhile, because
high culture is more strongly associated with social position, it can be used
to identifyinsiders from outsiders and build strong tie “fences” among the elite.
This work paved an exciting new path at the intersection of cultural soci-
ology and network analysis—one that complements prior work on stratiﬁ-
cation and demonstrates that “culture” is not only transmitted through net-
work ties but also helps create and sustain them (see also Selfhout et al. 2009;
Vaisey and Lizardo 2010; Lewis et al. 2012; Edelmann and Vaisey 2014).
Unfortunately, this work also inherited the challenges of its intellectual fore-
bears. Culture, in all its many forms, is notoriously difﬁcult to operationalize
(Mohr and Ghaziani 2014), and it is still relatively recently that network an-
alysts have developed both the language (Rivera et al. 2010) and the tools
(Snijders 2011) for understanding the complex processes whereby social net-
works evolve (Lewis 2015a). In the next section, we clarify and expand on
existing models of capital conversion in four ways—related to media, mean-
ing, mechanisms, and time—to propose a broader theoretical framework for
considering how tastes impact ties.
A NEW THEORETICAL FRAMEWORK
Media
There is a common tendency in past work on tastes—both related and un-
related to capital conversion—either to focus on a single domain of prefer-
ence or else to utilize aggregate measures that consider multiple domains si-
multaneously (for examples of the latter, see Hughes and Peterson [1983],
American Journal of Sociology
1688
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Katz-Gerro [1999], Mark [2003], Lizardo [2006], and Alderson et al. [2007];
examples of the former are ubiquitous). And yet there are a number of rea-
sons to expect that whether or how tastes inﬂuence relationships may crit-
ically vary by medium.2
Tastes in music, for instance, are highly correlated with socioeconomic
status (although the nature of this relationship has famously changed over
time; Peterson 1992) and provide nuanced markers of subcultural distinc-
tion (Roy and Dowd 2010). As such, they are a natural site for examining
culture (e.g., Marsden and Swingle 1994)—but also one that may be unrep-
resentative of other domains. In an unusually thorough study of multiple
taste domains in Britain, Bennett et al. (2009) found that tastes in movies
correlate less strongly with class but are sharply divided by age and gender.
Meanwhile, reading books is a relatively unpopular activity uniquely asso-
ciated with formal education (cf. Bukodi 2007). We might expect, then, that
these three domains imply very different criteria for deciding whether to be-
friend a stranger: one might care what someone listens to; whether someone
reads; and only whether someone likes movies appropriate to her age and
gender. While the connotations associated with each domain are obviously
contextually and historically contingent (e.g., Baumann 2001; Griswold, Mc-
Donnell, and Wright 2005; Zavisca 2005), the implications for capital con-
version are clear: the medium of a taste fundamentally shapes its social signal
and thus its potential impact on tie formation.
The above distinctions have to do with how tastes “directly” inﬂuence in-
teraction, that is, by making some people more or less attractive as potential
friends. But tastes may also impact ties indirectly by serving as “foci” around
which joint activities are organized (Feld 1981; Benediktsson 2012). For in-
stance, roommates might gather to watch their favorite movies, strangers
could meet at a concert for their favorite band, and book clubs provide op-
portunities for periodic interaction among friends (see Long 2003). Colleges
are rife with cultural organizations, and websites such as Meetup explicitly
connect strangers with common interests. All of these scenarios entail self-
selection into a situation in which additional time is spent with one’s (cultur-
ally similar) companions or additional opportunities are present to meet (like-
minded) strangers. Ceteris paribus, we can expect the importance of a domain
for capital conversion to vary with the availability of domain-speciﬁc, institu-
tionalized foci that regularly organize interaction.3
2 While in principle this discussion could be extended to any domain—preferred wine,
preferred travel destinations, preferred pets—we focus here on media, both to foreshadow
our available measures (on movies, music, and books) and to emphasize these tastes’ par-
ticular importance to interaction and identity (e.g., Bennett et al. 2009).
3 The importance of such foci cannot be overstated. For instance, Kossinets and Watts
(2009) demonstrate that even a modest preference to afﬁliate with similar others, com-
pounded over many “generations” of self-selection into similar social foci and proximate
network positions, can result in striking patterns of community segregation.
Conversion of Cultural Tastes
1689
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Meaning
Work on cultural classiﬁcation has typically relied on what we call “exoge-
nous” measures of preferences. In other words, tastes are coded according to
their content using categories such as “highbrow” and “popular” that are held
to be universally valid. Such an approach is employed even in studies that
move beyond this basic dichotomy: the traditional deﬁnition of “omnivore,”
for instance, is one whose tastes span the “elite” versus “nonelite” boundary
(Peterson 1992; Warde and Gayo-Cal [2009] call this “omnivorousness by
composition”). To complement this strategy of measuring meaning, we pro-
pose an alternative grounded in two additional perspectives. First, scholars
in the tradition of microsociology have long emphasized locally constituted
meaning and action (e.g., Eliasoph and Lichterman 2003; Fine and Fields
2008). Because meaning is grounded in speciﬁc social settings, the utility
of cultural resources depends on the context in which they are used (Erickson
1996). But what features of a context are especially consequential?
Here we draw upon a second perspective emphasizing the location of each
taste in the broader cultural system of which it is part (see Mohr 1998). This
“ecosystem” places limits on cultural stability and change, and it is these dy-
namics—rather than the substance of cultural forms per se—that are central
to research on “cultural ecologies” (Kaufman 2004). Mark (1998, 2003), for
instance, argues that musical forms compete for the time, energy, and pref-
erences of individuals and in this way carve out niches in sociodemographic
space. Lieberson (2000), meanwhile, demonstrates that tastes continuously
evolve due to the desire for social differentiation. In other words, “some con-
sumers desire novelty, though nothing so novel as to be unrecognizable vis à
vis current trends. . . . A given taste’s value thus lies in its relationship to the
systemwide distribution of tastes” (Kaufman 2004, pp. 347–48).
Research onculturalecologies is thereforepremised onthe notionthat peo-
ple are sensitive to the relative novelty or commonality of available prefer-
ences. However, rather than using this sensitivity to explain the tastes we
choose to identify with, we consider its consequences for the people we choose
to afﬁliate with. The above research therefore serves as the background (cul-
tural) context in which the focal (social) dynamics of this article play out: we
expect tastes to affect ties not only because they are universal signals of a par-
ticular type of culture, but also because tastes carry distinct social meanings
derived from how frequently they occur in the local setting. We refer to this
popularity as the endogenous meaning of a preference, and our proposed the-
oretical framework recognizes that both exogenous and endogenous proper-
ties of tastes may be responsible for network evolution.4
4 Notably, although operationalized in terms of high and popular culture, the essence of
Lizardo’s argument—and the DiMaggio piece that inspired it—is also ecological in na-
American Journal of Sociology
1690
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Mechanisms
Facilitated by advances in statistical modeling, recent research on social net-
works has focused less on patterns in relationships and more on the under-
lying mechanisms that generated them (Rivera et al. 2010; Lewis 2015a). A
fundamental contribution of this work has been to caution against assuming
a direct correspondence between process and pattern. For instance, simply
because two people with the same racial background are friends does not
necessarily mean that the reason they are friends is because they have the
same background (Goodreau et al. 2009; Wimmer and Lewis 2010). Here
we adapt this contribution to the study of tastes, both by incorporating in-
sights from network research as well as by clarifying (and more directly mea-
suring) mechanisms cultural sociologists have already posited.
Dyadic Conversion
Prior work has focused almost exclusively on one micromechanism whereby
cultural tastes are converted into social relationships: the more tastes two
individuals share, the more likely it is they will form a tie. While sometimes
qualiﬁcations regarding the nature of the shared taste or the strength of the
social relationship are speciﬁed (e.g., DiMaggio 1987; Lizardo 2006), this
general mechanism has been developed in a variety of empirical applications.
In short, commonalities in preferences, knowledge, experiences, and world-
views provide the shared social “glue” that fosters social interaction and sus-
tains a variety of long-term relationships (DiMaggio and Mohr 1985; Kalmijn
1994; Erickson 1996; Vaisey and Lizardo 2010; Lewis et al. 2012). As noted
above, dyadic conversion can also operate indirectly by enlarging opportuni-
ties for joint activities (Werner and Parmelee 1979; Benediktsson 2012): the
more tastes two people share, the more likely they are to turn up in the same
place at the same time, dramatically increasing their likelihood of meeting
(Feld 1981, 1982).
ture. Lizardo acknowledges that “from an ecological viewpoint . . . highbrow culture is
simply an example of a specialist form, and its effect on relational outcomes should be
due to this latter property and not to its higher status value” (2006, p. 801, emphasis in
original). DiMaggio also observes that “conversations about scarce cultural goods bind
partners who can reciprocate and identify as outsiders those who do not command the re-
quired codes” (1987, p. 443; emphasis added). We build on these contributions by devel-
oping the distinction between exogenous and endogenous meanings and suggesting that
each has consequences for networks net of the other. Unfortunately, because we do not
have data on tie strength (or data on interactions from which to infer it; e.g., Arnaboldi,
Guazzini, and Passarella 2013), we are unable to pursue Lizardo’s agenda of distinguish-
ing the consequences of tastes for different kinds of relationships. We revisit this issue in
the conclusion.
Conversion of Cultural Tastes
1691
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Generalized Conversion/Inhibition
We also expect that individuals with certain tastes may accumulate more or
fewer relationships overall (cf. Goodreau et al. 2009; Wimmer and Lewis
2010). In other words, tastes should not be considered a restricted type of
capital that only supports ties with others who share it. Rather, certain
tastes might constitute a form of generalized capital (cf. Bearman 1997) that
fosters tie formation with anyone, while other tastes may generally stiﬂe net-
work growth. This mechanism has received the least attention in the liter-
ature, although it squares most closely with the notion that tastes—an accu-
mulated cultural resource—may be converted into another kind of broad
resource: the quantity of one’s social connections (Campbell, Marsden,
and Hurlbert 1986; see also DiMaggio and Mohr 1985, p. 1256). Speciﬁcally,
if there is indeed a status hierarchy of preferences—whether entire domains
or speciﬁc tastes and whether universally or locally ordered—the distribu-
tion of friendships should be patterned accordingly: people with esteemed
tastes should be generally more popular, while people with stigmatized
tastes may face social marginalization as a result (see Steglich et al. 2006,
p. 50). We refer to these mechanisms as “generalized conversion” and “gen-
eralized inhibition,” respectively.5
Cultural Matching
Homophily—the principle that “birds of a feather ﬂock together”—has been
studied across a wide range of characteristics and relationships (McPher-
son, Smith-Lovin, and Cook 2001). While work on cultural homophily is
less common, this concept has featured centrally in simulation-based stud-
ies of group dynamics (e.g., Carley 1991; Axelrod 1997) and is increasingly
the focus of empirical research (e.g., Rivera 2012). While dyadic conversion
is also consistent with the concept of homophily, we recognize homophily
can be operationalized in many ways (see DiMaggio and Garip 2012, p. 111)
and see a need to distinguish between the effects of sharing speciﬁc cultural
attributes and resembling someone holistically. Following Rivera (2012), we
refer to the latter as “cultural matching.”
How is matching distinct from other mechanisms? Unlike generalized
conversion—an effect that makes certain individuals more or less likely
to form ties—both matching and dyadic conversion have to do with the like-
lihood of a tie forming within a given dyad. While dyadic conversion focuses
5 It is worth noting that insofar as individuals with shared tastes select into particularly
“greedy” foci—social groups that demand exclusive loyalty and time (Coser 1974)—we
should observe the distinct signature of social closure from a capital conversion perspec-
tive: dyadic conversion coupled with generalized inhibition, i.e., tastes that bring people
together at the cost of associating with anyone else.
American Journal of Sociology
1692
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

on the quantity of shared tastes, however, matching focuses on the similar-
ity of cultural proﬁles (cf. Selfhout et al. 2009; Dahlander and McFarland
2013). This distinction can be clariﬁed using a hypothetical example. Sup-
pose students A and B both like books by Kurt Vonnegut—so much so that
they refuse to read anything else. Student C, meanwhile, loves not only Von-
negut but also Milan Kundera and Nicole Krauss. The dyadic conversion
mechanism would predict that a tie between any of these students would
be equally likely to develop: all three share a taste for Vonnegut, and this
shared taste would help sustain conversation about the relative merits of
Slaughterhouse-Five versus Cat’s Cradle, joint participation in Vonnegut
book clubs, and so on—all of which contribute to friendship. Cultural match-
ing, meanwhile, would predict that a tie between A and B is more likely to
develop than a tie between A and C or B and C, because the entirety of A
and B’s literary identities are deﬁned by their passion for this one author.
While dyadic conversion, therefore, predicts a linear association between
the quantity of shared tastes and the likelihood of tie formation, matching
predicts that a friendship between two people is more likely the more objec-
tively similar their overall cultural proﬁles are.6
Time
While longitudinal analyses of networks have become more common in re-
cent years (Snijders and Doreian 2010, 2012), surprisingly few studies have
examined how the determinants of tie formation vary over time. To our
knowledge, no prior work has examined such variation in capital conver-
sion. We speculate, however, that different domains and dimensions of
tastes may be more or less salient at different stages in the evolution of a net-
work. Verbrugge (1977) is often credited for developing the distinction be-
tween “meeting” and “mating,” respectively, the processes whereby strang-
ers are converted to acquaintances and acquaintances to friends.7 Recent
work has further suggested that similarity with respect to “visible” charac-
teristics (e.g., gender, age) is more important for meeting, while “invisible”
characteristics (e.g., tastes) are more relevant for mating—because two peo-
6 More formally, matching could also be interpreted in terms of balance theory (Cart-
wright and Harary 1956): if two students share both likes and dislikes, this entails bal-
ance on a greater number of dimensions and makes the formation of a friendship more
likely than dyadic conversion alone would predict. On the other hand—and although
Edelmann and Vaisey (2014) provide evidence that shared nonconsumption of musical
genres is as important to tie formation as shared consumption—it is important to ac-
knowledge that not liking a cultural object is different from actually disliking it, and
our data cannot differentiate between the two.
7 Verbrugge, in turn, points to several theoretical predecessors, including Lazarsfeld and
Merton and social psychologists Levinger and Snoek (see Verbrugge 1977, n. 1).
Conversion of Cultural Tastes
1693
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

ple need to be acquainted before they can determine each other’s prefer-
ences (van Duijn et al. 2003; Selfhout et al. 2009; de Klepper et al. 2010).
Building on this observation, we propose that in relatively small and/or
“constrained” social settings—that is, “where everyone is forced to interact
much and often” (Feld 1981, p. 1019)—everyone will eventually “meet”
sooner or later. Thus, the question is not whether but when different kinds
of tastes will come into play. For instance, preferences that are particularly
unusual, connected to institutionalized foci, or associated with outward life-
style markers such as speech or dress might be relevant for relationship for-
mation from the start. Meanwhile, whether through direct exposure (e.g., a
chance meeting) or secondhand information (e.g., via friends-of-friends), in
a small enough setting even originally “invisible” preferences should be-
come visible to everyone with time, potentially triggering dormant conver-
sion mechanisms.
Summary
Prior work on tastes and networks has tended to focus on tastes in a single
domain (and so variation in the effects of tastes across domains has been ob-
scured); on “exogenous” cultural measures (even when the underlying argu-
ment is ecological; e.g., Lizardo 2006); on a single mechanism (dyadic con-
version) whereby tastes are converted into ties; and on processes that are
undifferentiated with respect to time. The consequences of this are fourfold.
First, insofar as there is a mismatch between sophisticated theoretical argu-
ments and indirect empirical tests, support for these arguments is necessar-
ily tentative.8 Second, what appears to be a relationship between taste prop-
erty X and network outcome Y could actually be an artifact of some other
variable Z with which X is correlated—whether Z is an omitted dimension
of meaning or an ignored domain of preference. Third, our limited under-
standing of capital conversion means that the scope conditions of this pro-
cess have yet to be explored—leading to potential overgeneralization of con-
clusions to taste domains, social settings, and time horizons where they do
not in fact hold. Fourth, prior work has potentially underappreciated the
diverse ways tastes actually inﬂuence ties—impoverishing our understand-
ing of culture and networks.
8 For instance, due to constraints in available data, both Lizardo (2006) and Vaisey and
Lizardo (2010) examine individual-level signatures of what are in fact dyadic mecha-
nisms: the theoretical expectation that “certain kinds of people will form ties with one an-
other” becomes the empirical prediction that “certain kinds of people will have certain
types of networks.” While the latter certainly follows from the former, so it also follows
from alternative mechanisms; recent work has cautioned against precisely this kind of
inference (e.g., Goodreau et al. 2009).
American Journal of Sociology
1694
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Just as limitations in available data and methods have stymied theoreti-
cal progress, so our own theoretical framework comes with a heavy price
tag. Data sets containing both cultural and network variables are scarce
to begin with. In order to implement our framework, relational data should
also be collected for a relatively bounded setting, tastes should be docu-
mented in as unconstrained a format as possible, and both network and cul-
tural data must be available longitudinally. Before explaining how our data
set approaches these requirements, we ﬁrst introduce an analytic method
that can accommodate it.
STOCHASTIC ACTOR-BASED MODELS
In recent years, tremendous advances have been made in statistical models
for network dynamics (Snijders 2011). Here we rely on the stochastic actor-
based models described by Snijders (2001, 2005). In contrast to techniques
for cross-sectional and/or egocentric data (ﬁg. 1), these models allow us to
estimate the processes responsible for the evolution of an entire social net-
work over time—viewing global transformations in network structure as
the accumulation of microlevel tie changes between actors. Such a frame-
work is necessary to adequately disentangle the various mechanisms de-
scribed above. In short, in order to say anything meaningful about the rea-
sons two people became friends, it is necessary to compare these choices to
the people who did not become friends (Steglich et al. 2010). A longitudinal
approach also enables us to look at the impact of tastes on succeeding net-
work changes, as opposed to documenting patterns in static network struc-
tures where the direction of causality is ambiguous (cf. Lewis et al. 2012).
Despite their great promise, applications of stochastic actor-based models
among cultural sociologists remain surprisingly scarce (e.g., Lewis et al.
2012; Edelmann and Vaisey 2014). Because most readers will be unfamiliar
with this method, we here summarize its deﬁning characteristics (for an ac-
cessible introduction, see Snijders, van de Bunt, and Steglich 2010).
Overview and Assumptions
Previous models of network dynamics often focused on speciﬁc sets of micro-
mechanisms and lacked explicit estimation theories, making them inadequate
for multivariate theory testing (Snijders et al. 2010). Stochastic actor-based
models, in contrast, can represent a wide variety of inﬂuences on network
change and estimate parameters quantifying these inﬂuences. These models
are characterized by four assumptions.
First, stochastic actor-based models conceive of network evolution as oc-
curring in continuous time. In other words, rather than viewing each wave
of data as a discrete “event” to be directly explained by the previous obser-
Conversion of Cultural Tastes
1695
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

vation, these models simulate the process whereby the network at time K
gradually evolves into the network at time K 1 1. Each wave of data is
therefore considered merely a “snapshot” of an underlying process of ongo-
ing social change (see elaborations in Snijders et al. [2010], Steglich et al.
[2010]).
Second, network changes are considered to be the outcome of a Markov
process. In other words, the current state of the network, and only the cur-
rent state of the network, probabilistically determines its further evolution.
While likely unrealistic, this assumption has been made by practically all
past models of network dynamics. Snijders et al. suggest considering it as
a “lens” through which to view the data: “it should help but it also may dis-
tort” (2010, p. 46).
Third, actors control their outgoing ties. In other words, the decision to
establish (or terminate) a tie is made exclusively by the actor who sends it
FIG. 1.—Different forms of longitudinal network data. With egocentric data—appro-
priate, for example, for random sampling—respondents (shaded nodes) are asked about
their ﬁrst-degree connections (e.g., friends), but it is unclear how or whether these friends
are connected to one another or which individuals were not selected as friends. Socio-
centric data, meanwhile, are typically collected from relatively small settings and include
both ties and nonties as well as direct and indirect connections. Sociocentric data are nec-
essary to effectively examine capital conversion but require sophisticated modeling tech-
niques that relax the assumption of independence.
American Journal of Sociology
1696
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

on the basis of the speciﬁc considerations in the objective function (see be-
low). This assumption of “structural individualism” is the reason for the
name “actor-based model” because all changes in the network are driven
by the behavior of individuals. (This is true even in our analysis of Face-
book friendships, where models replicate the process whereby Facebook
friendships actually develop: a tie is created if and only if a request is sent
and then conﬁrmed, while it may be dissolved by either actor.)
Fourth, network evolution is decomposed into its smallest possible com-
ponents: “microsteps” in which a single social tie is modiﬁed (Steglich et al.
2006). Another way of putting this is that at any given “moment” one prob-
abilistically selected actor is given the opportunity to create a new tie, dis-
solve an old one, or do nothing. No more than one tie can change at any
one moment, and therefore tie changes may depend on each other only se-
quentially. This is another assumption that simpliﬁes modeling consider-
ably and is relatively benign in practice.
The Objective Function and Estimation
While the probability of receiving the opportunity to make a tie change can
depend on attributes or network position (according to the rate function),
we here assume it is equal for all actors for each transition period. There-
fore, the sole function that needs to be speciﬁed is the “objective function,”
which has the following general shape:
fi b, x
ð
Þ 5 o
k
bkski x
ð Þ:
The objective function is the heart of the stochastic actor-based modeling
approach. It determines the behavioral “rules” that actors will probabilisti-
cally follow when given the opportunity to make a change, or the short-term
“objectives” they tend to pursue (whether purposefully or not). In the equa-
tion above, fi(b,x) is the value of the objective function for actor i depending
on the state x of the network. The functions ski(x) are effects, and the weights
bk are statistical parameters. Each effect represents a certain aspect of the
network from the perspective of actor i. Some of these are derived from
the characteristics of individual students, such as the tendency for women
to form more or fewer friendships than men. Others are derived from char-
acteristics of pairs of students, such as the tendency for students to befriend
others who live in the same residence or share the same tastes.9 Still others
9 In order to calculate how various student traits inﬂuence the objective function, models
must assume all students are aware of the traits of all other students in the sample—in-
cluding their cultural tastes. On one hand, the ability of all students to see on Facebook
the tastes of all other students makes this assumption more plausible than in other set-
tings. On the other hand, this assumption will bias results if the distribution of tastes is
Conversion of Cultural Tastes
1697
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

have nothing to do with student attributes but refer to “structural” network
processes such as triadic closure (the tendency for A to befriend C if A is al-
ready friends with B and B is friends with C) and preferential attachment
(the tendency for people with many friends to accumulate new friendships
at a faster rate than people with fewer friends). Because multiple underlying
processes (e.g., matching and triadic closure) can produce the same network
pattern (e.g., the clustering of students by taste), it is essential to control for
both in order to assess the actual contribution of each to observed behavior
(Goodreau et al. 2009; Steglich et al. 2010; Wimmer and Lewis 2010).
Because of the complex dependencies between ties implied by the above
processes, parameter values cannot be estimated directly. Instead, we esti-
mate them using an approach called “method of moments” that depends on
computer simulation (Snijders 1996, 2001). Unlike other modeling approaches
that utilize cross-sectional data (e.g., Robins et al. 2007), the analysis does
not make inferences about the determinants of network structure at the ini-
tial observation. Rather, simulations condition on the ﬁrst wave of data, and
it is the subsequent transition periods between waves that are modeled. If
we recall that stochastic actor-based models conceive of network evolution
in continuous time, then any given set of parameter values implies a certain
(probabilistic) trajectory of development. The aim of model estimation is
therefore to select, through a process of iterative reﬁnement, coefﬁcients
where this simulated trajectory ﬁts the observed data as closely as possible.
In other words, it identiﬁes the “movie” (parameter values) that best matches
our array of “still frames” (panel waves).
THE “TASTES, TIES, AND TIME” DATA SET
Contemporary social media provide an unprecedented opportunity to col-
lect unusually nuanced, “naturally occurring” cultural and network data
at minimal cost (Golder and Macy 2014). To illustrate the utility of our the-
oretical framework, applied via stochastic actor-based models, we created a
data set based on the activity of a cohort of American college students (N 5
1,640 at wave 1) on the popular social network website Facebook (Lewis
et al. 2008b). With permission from Facebook and the college in question,
from March 2006 (the students’ freshman year) through March 2009 (the
students’ senior year) we downloaded proﬁle and network data once per year
and supplemented it with data provided by the college. Below we provide
inhomogeneous across the social foci where students most often meet. To assess this con-
cern, we compared the means of all individual taste covariates (see table 1) by residence
and major at each of the ﬁrst three waves using one-way ANOVA tests. Out of 42 such
tests (7 covariates # 2 foci # 3 waves), there were only two instances of signiﬁcantly dif-
ferent means by residence and eight instances of signiﬁcantly different means by major.
American Journal of Sociology
1698
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

background on the study population and describe the individual and rela-
tional data used in this article.
Study Sample and Setting
The college used in this study is highly selective, and the vast majority of
students live on campus all four years. While many students come from ad-
vantaged backgrounds, the college observes a need-blind admissions policy
and makes special efforts to recruit a student body that is racially, socioeco-
nomically, and geographically diverse (see Lewis et al. 2008b). Importantly,
students at this college were also early adopters of Facebook: as of March
2006, 97.4% of students in our study cohort maintained an account. Here
we focus on students who were members of the class of 2009 all four years
(i.e., they did not transfer in or out of the college) and who had “publicly
available” taste data for the ﬁrst three years.10 In this way, students whose
proﬁles were set to “private” were excluded, as were students whose proﬁles
were “public” but did not list any tastes.11 This resulted in a ﬁnal study sam-
ple of 520 students (31.7% of the original cohort).
Comparing these 520 students with the 1,120 students who were excluded,
students in our analyses are more likely to be male (P < .01) and Hispanic
(P < .05) and less likely to be Asian (P < .01). Otherwise, the two samples
are statistically indistinguishable with respect to racial background, socio-
economic status, and online activity (as deﬁned below). On the other hand,
although membership on Facebook was nearly ubiquitous among this cohort,
participation on Facebook—including listing one’s tastes—is likely corre-
lated with personality traits such as extraversion or general openness. This
is particularly impactful because students without taste data were dropped.
Combined with the fact that Facebook itself makes tastes more explicitly
visible to one’s peers than in face-to-face settings—and culture’s impact
on networks may be especially pronounced during the “unsettled” time that
is college (Swidler 1986)—we should interpret this setting as a relatively lib-
eral test of our capital conversion framework.12
10 Because tastes are used here exclusively as “explanatory variables”—i.e., tastes at
wave K are used to explain the network transition from wave K to wave K 1 1—taste
data at wave 4 are superﬂuous.
11 It is essential to remember that Facebook looked and functioned very differently in
2006 than it does today. One important difference is that available privacy settings have
grown dramatically more complex. In 2006, one could essentially only make one’s entire
proﬁle visible to (1) everyone, (2) only one’s “network” (i.e., college), or (3) only one’s
friends. For the purposes of this article, the ﬁnal category is considered “private” and
these students were excluded. For an analysis of privacy behavior in this network, see
Lewis, Kaufman, and Christakis (2008a).
12 That said, other factors bias against identifying tastes’ effects on networks using Face-
book (see, e.g., n. 15), and all models include controls for proxy measures of online activity
(see below).
Conversion of Cultural Tastes
1699
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Focusing on a subset of one cohort also has implications for the accuracy
of results given that ties to people outside the sample are truncated. Given
that no setting is perfectly isolated, this is a problem all network research
faces to some degree, particularly when data are collected on a large scale.
The most important way these missing data could be consequential for the
current study is if observed ties that were facilitated by unobserved connec-
tions to third parties are mistakenly attributed to tastes, that is, triadic clo-
sure masquerading as homophily (Goodreau et al. 2009). Fortunately, our
detailed data on social foci help protect against this possibility: because
all interaction in college—both observed and unobserved in our data—is
powerfully structured by the formal and informal settings in which students
meet, much of the unobserved impact of third parties will likely be absorbed
by our multiple measures of foci, described below.13
Demographic Background, Online Activity, and Shared Foci
In assessing our capital conversion framework, it is necessary to control for
a number of alternative determinants of network dynamics (see review in
Rivera et al. 2010). First, countless studies have documented the impor-
tance of demographic attributes for the evolution of networks. In particular,
individuals tend to self-segregate on the basis of race, gender, and a variety
of other characteristics (McPherson et al. 2001). Students from certain back-
grounds may also form more or fewer ties overall or display varying degrees
of “sociality” (Goodreau et al. 2009; Wimmer and Lewis 2010). Gender was
coded based on self-report or ﬁrst name and proﬁle photo otherwise. Stu-
dents were assigned one of ﬁve racial categories based on Facebook photos,
surnames, and afﬁliation with Facebook groups signaling a racial identity.
As a proxy for socioeconomic status, we combined self-reported hometown
zip codes with socioeconomic data from the 2000 census and assigned each
student the median household income of her zip code tabulation area. Finally,
we coded each student’s region of origin based on standard census divisions.
Descriptive statistics of these variables are provided in table 1.
Second, if friendships on Facebook are to be used to approximate some
underlying structure of relationships, we must control for the fact that some
students are more active users of the site and may have a greater tendency to
connect online. While all our models feature an endogenous control for this
13 To further assess the possible impact of missing relational data on results, we replicated
our most comprehensive model (model 2) without the control for triadic closure. Exclud-
ing this control (for observed instances of triadic closure) had generally small and incon-
sistent effects on the measurement of our central taste mechanisms—suggesting results
would not have been substantially different if complete data on all instances of triadic
closure had been available. We acknowledge, however, that this is an important limita-
tion of our data set.
American Journal of Sociology
1700
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

TABLE 1
Mean (SD) for Select Individual and Dyadic Covariates
Wave 1
Wave 2
Wave 3
Individual covariates:
Female. . . . . . . . . . . . . . . . . . . . . . . .
.45
(.50)
Blacka . . . . . . . . . . . . . . . . . . . . . . . .
.09
(.28)
Asiana . . . . . . . . . . . . . . . . . . . . . . . .
.17
(.38)
Mixeda . . . . . . . . . . . . . . . . . . . . . . . .
.03
(.18)
Hispanica. . . . . . . . . . . . . . . . . . . . . .
.08
(.26)
Median household income (K) . . . . .
65.47
(28.26)
Days since last update . . . . . . . . . . .
14.85
(29.31)
Days since joined Facebook . . . . . . .
253.79
(40.77)
Consecrated culture . . . . . . . . . . . . .
4.11
3.69
3.21
(4.38)
(4.11)
(4.06)
Mass culture . . . . . . . . . . . . . . . . . . .
7.76
6.45
5.77
(6.99)
(6.14)
(5.75)
Specialized culture . . . . . . . . . . . . . .
8.29
7.75
6.97
(9.82)
(8.66)
(7.88)
Common culture . . . . . . . . . . . . . . . .
7.81
5.50
4.00
(6.03)
(4.75)
(3.77)
Movies. . . . . . . . . . . . . . . . . . . . . . . .
9.57
8.24
7.61
(8.21)
(7.30)
(7.42)
Music. . . . . . . . . . . . . . . . . . . . . . . . .
14.41
12.00
9.85
(15.98)
(13.47)
(11.89)
Books . . . . . . . . . . . . . . . . . . . . . . . .
6.08
5.75
5.12
(4.66)
(4.77)
(4.77)
Dyadic covariates:
Shared major . . . . . . . . . . . . . . . . . .
.05
(.22)
Shared Facebook group . . . . . . . . . .
.85
(1.29)
Shared consecrated culture. . . . . . . .
.18
.15
.11
(.50)
(.45)
(.38)
Shared mass culture . . . . . . . . . . . . .
.45
.31
.24
(.91)
(.73)
(.62)
Shared specialized culture . . . . . . . .
.01
.01
.01
(.11)
(.09)
(.08)
Shared common culture . . . . . . . . . .
.72
.44
.29
(1.22)
(.89)
(.68)
Shared movies. . . . . . . . . . . . . . . . . .
.29
.20
.16
(.67)
(.54)
(.48)
Shared music. . . . . . . . . . . . . . . . . . .
.46
.29
.18
(1.13)
(.82)
(.62)
Shared books. . . . . . . . . . . . . . . . . . .
.25
.19
.15
(.55)
(.50)
(.44)
Taste similarity (%). . . . . . . . . . . . . .
1.48
1.11
.85
(2.16)
(1.96)
(1.72)
NOTE.—All of the above covariates have complete data (N 5 520) except racial background
indicators (N 5 518) and median household income (N 5 466). For dyadic covariates, the num-
ber of observations is equal to 269,880, i.e., N2 – N (a square matrix with the diagonal omitted).
a Dummy-coded variables, with “white” as reference category.
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

tendency (“preferential attachment”), we include two additional proxies for
online activity in our analyses. Facebook has discontinued these features,
but they were available on all student proﬁles at wave 1. The ﬁrst indicated
the date on which the user became a member of Facebook. The second in-
dicated the date on which the user had last updated her proﬁle. Using this
information, we derived two measures of online activity (“days since joined
Facebook” and “days since last update”) that might reasonably be expected
to inﬂuence tie formation.
Third, scholars have long emphasized the fundamental role that oppor-
tunity structures, or shared foci, play in structuring social networks (Feld
1982). For example, one of the most important determinants of friendship
among college students is propinquity, such as sharing a room or dorm
building (Marmaros and Sacerdote 2006; Wimmer and Lewis 2010). Friend-
ships are also heavily inﬂuenced by institutional foci such as classrooms and
academic majors (Mayer and Puller 2008; Kossinets and Watts 2009). While
students at this college choose their own roommates after their freshman
year—and therefore such choices cannot be used as exogenous predictors
of friendship—all students are randomly assigned to one of several large res-
idence facilities in which they spend their sophomore through senior years.
The college provided data on such assignments for virtually all students as
well as the academic major students declared at the end of their freshman
year. (Unfortunately, class enrollment data were unavailable.)
Extracurricular activities are a ﬁnal, especially important set of foci to
consider. Not only do student publications, sports teams, and many kinds
of social organizations provide opportunities to forge and strengthen friend-
ships (Adamic and Adar 2003; Benediktsson 2012), but students are espe-
cially likely to self-select into these activities on the basis of their tastes.
In this way, foci may mediate the impact of tastes on ties, as discussed in
our theoretical framework. Because we were unable to acquire student or-
ganization rosters, we use an available proxy: at the time of our data collec-
tion, students formed a variety of online groups on Facebook that often—
but not always—corresponded to formal student organizations ranging from
religious groups to dance troupes to ethnic clubs. Other groups represented
physical locations (e.g., dorm buildings), and many were purely electronic,
signaling a common interest (e.g., political cause) or collective identity (e.g.,
the largest group in our data was for students who attended a public high
school). All groups a student joined were listed on her proﬁle. The average
student in our sample belonged to 25 groups in 2006, and all students in the
sample belonged to at least one.14
14 Unfortunately, group data are only available at wave 1. At the time of data collection, it
had not occurred to us to consider Facebook groups as social foci so we did not continue
to collect these data.
American Journal of Sociology
1702
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Group data are limited in several ways. Some members of an organiza-
tion may not be members of its Facebook group; not all organizations cre-
ated a group in the ﬁrst place; and not all groups represent opportunities for
face-to-face meeting (although even shared “virtual” afﬁliations can inspire
ofﬂine connections). We thus interpret group comembership as representing
a variety of personal similarities and meeting opportunities—similarities and
opportunities that may or may not overlap with other terms in our models.
For this reason, we pause in our presentation of results to discuss ﬁndings
from a model where all controls for shared foci are omitted in order to dis-
cern their impact on the estimation of other effects.
Cultural Data
The dominant tendency in research on tastes is to rely on closed-ended ques-
tions, commonly about music, and commonly asking respondents to choose
from among a list of predetermined genres. While there are practical rea-
sons for this practice, it also entails drawbacks: respondents may be think-
ing of entirely different items when they select the same genre, respondents
may not (and in fact, our data suggest they generally do not) conceptualize
tastes as genres in the ﬁrst place (cf. van Venrooij 2009), and respondents
will be miscategorized if a survey does not include all relevant options (Pe-
terson 2005, p. 268; see also Bryson 1996).
Every Facebook proﬁle contained open-ended spaces for users to list their
favorite movies, music, and books. Online cultural data are not without lim-
itations. First, favorites posted on Facebook may be as much a performance
as an expression of authentic taste. Because we are interested in the social
consequences of tastes, however, what is important is not so much what stu-
dents actually prefer but what they express as tastes in public spaces. Favor-
ites on Facebook seem to meet this criterion. Second, these measures would
seem to capture only the extremes of cultural preference, ignoring variation
among items that students “like” but would not necessarily consider their “fa-
vorites” (Schultz and Breiger 2010). However, if tastes inﬂuence the creation
and maintenance of social ties, we would again expect that it is precisely
these publicized favorites that are most personally meaningful and socially
consequential.
Third, one limitation of our data set vis-à-vis data gathered from ques-
tionnaires is that observed tastes may be “out of date” if students do not up-
date their proﬁles regularly. Fortunately, students at this university were not
only early adopters of Facebook but unusually active users: at wave 1, for
instance, half the students in our sample had last updated their proﬁle in
the past ﬁve days, 75% in the past two weeks, and 95% in the past 70 days.
Facebook proﬁles were also structured very differently in 2006–9 such that
“Favorites” appeared more prominently and were likely a greater focus of
Conversion of Cultural Tastes
1703
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

attention than they are today. Thus, it seems online and ofﬂine behaviors
were coupled unusually strongly in this community during this time.15
Data on students’ tastes underwent an extensive cleaning and coding
process. First, responses were cleaned by hand to correct misspellings, re-
move superﬂuous commentary, and ensure all instances of the same taste
were worded identically (e.g., “LOTR” and “Lord of the Rings”).16 Descrip-
tive statistics on the three taste ﬁelds that resulted are presented in table 2.
Across all waves and transition periods, the ﬁeld of music displays the most
participation (the quantity of students who expressed tastes), the least sta-
bility (the degree of consistency over time), and by far the most differentia-
tion (the quantity of unique items). Meanwhile, the ﬁelds of movies and
books display similar levels of participation, but the ﬁeld of movies is slightly
more differentiated and less stable than the ﬁeld of books.
Second, all 10,385 distinct tastes in our data set were assigned a dichoto-
mous code on each of four dimensions: consecrated culture, mass culture,
specialized culture, and common culture (ﬁg. 2). This approach acknowl-
edges that a single taste can have multiple meanings (Erickson 1996; Elia-
soph and Lichterman 2003) and accommodates individuals whose taste pro-
ﬁles are composed of diverse, or even dissonant, cultural elements (Lahire
2008; Ollivier 2008).
Exogenous Coding
While any number of exogenous coding schemes is possible, we employ two
categories that have been examined in prior literature and are easily op-
erationalized using objective measures: consecrated culture and mass cul-
ture.17 We sought criteria that focus on particular cultural items, are speciﬁc
15 A related problem is that tastes at wave K are used to predict the evolution of networks
from wave K to wave K 1 1—while in reality, students’ preferences may change at any
time during this interval. In this sense, our test for the effects of tastes that may be out of
date by the end of the time interval is a conservative one.
16 Two additional coding decisions were particularly consequential. First, while students
tended to list movie titles and music artists, they listed both titles and authors for “Favor-
ite Books.” To ensure commensurability, all books were recoded according to their au-
thor. Second, all taste items that were part of a series were recoded as the title of that se-
ries. Otherwise, we would face a counterintuitive situation where one student who listed
Star Wars and another who listed all of the individual Star Wars movies by name would
be seen as having different tastes.
17 In prior versions of this manuscript, we instead used the terminology “high culture”
and “popular culture.” These labels were potentially misleading, however, insofar as
our measures of the former focus on consecration projects—the very inclusion in which
may undermine a taste’s value as a status token among the elite (cf. Macdonald 1983)—
and our measures of the latter focus on the success of a cultural item, whereas “popular
culture” commonly refers to items produced and distributed by mainstream commercial
companies, independent of actual popularity.
American Journal of Sociology
1704
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

to the American context, and most closely correspond to the notion of con-
secrated culture as being critically legitimated as worthy of admiration and
respect (Allen and Lincoln 2004) and mass culture as being widely con-
sumed among the population at large (Peterson 1992).18 All coding schemes
18 In some sense, our deﬁnition of “mass culture” is endogenous insofar as it is based on
the prevalence of a given cultural item. However, the frame of reference is the population
at large rather than the immediate social context; and all of our mass culture measures
emphasize the number of people who consume a given item rather than those who nec-
essarily like it. It is also important to note that these deﬁnitions of consecrated and mass
TABLE 2
Descriptive Statistics of Taste Fields and Network Structure
Wave
1
Period
1
Wave
2
Period
2
Wave
3
Period
3
Wave
4
Taste ﬁelds:
Participation (no. respondents):
Movies. . . . . . . . . . . . . . . . . . . .
1,086
777
669
424
Music. . . . . . . . . . . . . . . . . . . . .
1,107
802
696
470
Books. . . . . . . . . . . . . . . . . . . . .
1,076
771
662
430
Differentiation (no. unique
taste listings):
Movies. . . . . . . . . . . . . . . . . . . .
1,918
1,717
1,577
1,353
Music. . . . . . . . . . . . . . . . . . . . .
3,439
2,731
2,613
2,073
Books
1,599
1,338
1,233
1,018
Stability (avg. Jaccard coefﬁcient):a
Movies. . . . . . . . . . . . . . . . . . . .
.61
.70
.80
Music. . . . . . . . . . . . . . . . . . . . .
.50
.59
.72
Books. . . . . . . . . . . . . . . . . . . . .
.62
.70
.83
Network structure:
Statics:
Average degree . . . . . . . . . . . . .
35.54
49.25
55.51
58.03
Total no. ties . . . . . . . . . . . . . . .
9,134
12,462
13,557
8,744
Proportion missing datab . . . . .
.01
.03
.06
.42
Dynamics:
Ties created (0 to 1). . . . . . . . . .
3,656
1,794
878
Ties dissolved (1 to 0) . . . . . . . .
200
125
81
Ties maintained (1 to 1) . . . . . .
8,691
11,607
7,519
NOTE.—Descriptive statistics of taste ﬁelds are provided for all students in the original data
set, under the assumption that this is the relevant reference point for local cultural meanings.
Tastes at wave 4 are not employed in the current analyses (see n. 10). Descriptive statistics
of network structure are provided only for students in the sample (N 5 520).
a The Jaccard coefﬁcient for “stability” is calculated identically to our dyadic measure of cul-
tural matching—except applied to the same individual over time rather than two individuals
from the same wave. In other words, it represents the quantity of tastes a student keeps cons-
tant over time divided by the total quantity of unique tastes the student expresses between
both waves.
b While we only included in our analyses students with publicly available taste data (i.e.,
they did not have “private” proﬁles and they reported at least one taste) at all of the ﬁrst three
waves, students could separately set their friendship data to public or private—resulting in
varying degrees of missing network data over time.
Conversion of Cultural Tastes
1705
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

were generated in 2008 to code data from waves 1 and 2 and updated in
2009 to code data from waves 3 and 4.19
First, a movie was considered consecrated culture if it has ever appeared
on the American Film Institute’s list of the top 100 ﬁlms. A movie was con-
19 Other operationalizations than those presented here are certainly possible. In many
cases, the optimal measure was not available (e.g., to our knowledge, a list of the top-
selling books of all time does not exist, nor does a list of popular movies based on ticket
culture are not mutually exclusive. In fact, many items appeared on both lists across all
three media, reﬂective of the fact that some consecrated culture becomes so canonized
and popularized as to merit mass culture status (see ﬁg. 2).
FIG. 2.—Cultural classiﬁcation scheme and examples of tastes from wave 1
American Journal of Sociology
1706
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

sidered mass culture if it was among the highest grossing ﬁlms of all time
according to worldwide box ofﬁce proﬁts—the cutoff point being $200 mil-
lion.
Second, National Public Radio maintains a list of the 100 most important
American musical works of the 20th century. This list spans all genres of
music. An artist was considered consecrated culture if she has ever been
nominated for inclusion on this list or if she appeared among the 100 best
classical artists according to a panel of experts at Gramophone, a magazine
devoted to classical music. Using data from the Recording Industry Associa-
tion of America, an artist was considered mass culture if she was listed among
the top-selling artists in the United States in terms of album sales—the cutoff
point being 10.25 million albums sold.20
Finally, an author was coded as consecrated culture if a book written by
that author appeared on the Modern Library’s list of the top 100 ﬁction and
nonﬁction books. This list was devised by the Modern Library’s board mem-
bers and is limited to works published in the English language during the
20th century. An author was considered mass culture if the author has ever
had a book (ﬁction or nonﬁction) reach the number one position on the New
York Times best-seller list. This list dates back to August 9, 1942, when the
ﬁrst best-seller was named.
Endogenous Coding
In addition to the coding described above—which employs categories of
meaning presumably shared by all Americans—each taste was also coded
according to its prevalence in the study population—a dimension of mean-
ing speciﬁc to the local context. A continuous measure of popularity is intu-
itively appealing but difﬁcult to operationalize. Do two tastes that are some-
what popular, for instance, carry the same social meaning as one taste that is
very popular? Instead, we follow the assumption of cultural ecologists that
there exist “social thresholds” (Kaufman 2004) beyond which a taste will be
generally recognized as either popular or unpopular, or in our terminology,
20 Sales calculations are based on the total number of “units” sold under a given artist’s
name. The deﬁnition of a unit has changed over time, corresponding with changes in
available music formats. Today, eligible formats include digital downloads (singles, full
albums, kiosks, music videos, mobile phone downloads, and subscription services) and
physical purchases (CDs, CD singles, cassettes, LPs/EPs, vinyl singles, music videos,
and DVD videos). In 2008, 32% of all music purchased was in a digital format.
sales rather than gross proﬁts), and we do not claim our measures are ﬂawless. Nonethe-
less, measures were chosen based on a thorough search for alternatives and a conscien-
tious balance between parsimony and theoretical precision. In app. A, we provide addi-
tional details on the strengths and limitations of our coding as well as supplementary
analyses exploring whether our results might be inﬂuenced by differences in operation-
alizations across domains.
Conversion of Cultural Tastes
1707
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

“common” or “specialized.”21 While optimal levels for these thresholds would
best be determined using qualitative research, we deﬁned a taste as special-
ized if it was expressed by fewer than .5% of respondents and as common if
it was expressed by more than 5% of respondents. These thresholds estab-
lished categories that were neither too broad (e.g., almost every taste being
counted as specialized) nor too restrictive (e.g., almost no tastes being counted
as common), produced relatively balanced distributions of specialized and
common capital among students, and resulted in classiﬁcations that ﬁt our
informal understandings of unusual and typical preferences among college
students at the time (with some variation particular to this study popula-
tion). Alternative criteria, such as standard deviations from the mean, did
not work due to the heavy skew in taste popularity (i.e., many tastes that
few students like and few tastes that many students like). Supplementary
analyses (see app. A) suggest results are robust to alternative thresholds
set at half and double the above values.
Measures and Mechanisms
Based on the above coding, we created three sets of covariates correspond-
ing to our three theoretical mechanisms. First, to measure dyadic conver-
sion, we calculated the total quantity of consecrated, mass, specialized, and
common tastes each pair of students shared in common, as well as the quan-
tity of movie, music, and book tastes each pair of students shared in common.
Second, to measure generalized conversion, we calculated the total quantity
of consecrated, mass, specialized, and common tastes each student expressed
as well as the quantity of movie, music, and book tastes each student ex-
pressed.22 Finally, to measure cultural matching, we calculated the quantity
of tastes each pair of students shared in common as a percentage of the total
number of unique tastes collectively expressed among the dyad.
Correlations among our 12 original individual variables (4 measures # 3 do-
mains) are presented in table 3. Aggregated across all waves, the average
within-domain correlation was .43 for movies, .47 for music, and .41 for
books; the average within-measure correlation was .24 for consecrated cul-
ture, .25 for mass culture, .29 for specialized culture, and .39 for common cul-
ture; and the average cross-domain, cross-measure correlation was only .17.
In other words, students who liked one kind of movie also tended to like
21 We use “common” instead of “generalized”—the standard antonym of “specialized” in
the niche literature (Popielarz and Neal 2007)—to distinguish this term from our gener-
alized conversion mechanism.
22 It is important to note that our measures of the total quantity of movies, music, and
books each student expressed also include tastes that were not classiﬁed as consecrated,
mass, specialized, or common and that the same taste can be classiﬁed under multiple
codes. Consequently, no linear dependence between taste measures exists by design.
American Journal of Sociology
1708
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

TABLE 3
Correlations between Individual Taste Variables
CONSECRATED
MASS
SPECIALIZED
COMMON
Movies
Music
Books
Movies
Music
Books
Movies
Music
Books
Movies
Music
Books
Consecrated
Movies. . . .
Music . . . .
.20
Books . . . .
.23
.30
Mass
Movies . . .
.42
.07
.15
Music . . . .
.20
.47
.20
.24
Books . . . .
.20
.14
.48
.29
.21
Specialized
Movies . . .
.39
.18
.09
.43
.14
.15
Music . . . .
.10
.51
.09
.10
.39
.07
.29
Books . . . .
.22
.18
.21
.23
.13
.35
.35
.24
Common
Movies . . .
.45
.14
.20
.63
.34
.32
.23
.14
.18
Music . . . .
.16
.43
.25
.19
.72
.26
.06
.32
.09
.44
Books . . . .
.23
.16
.54
.34
.22
.66
.11
.05
.20
.41
.32
NOTE.—The above correlations refer only to students in the ﬁnal sample (N 5 520) and aggregate data from waves 1–3. Bold data are correlations within
measures; italic data are correlations within domains.
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

movies in general (and so on for music and books), and students who liked
one kind of movie also tended to like the same kind of music and books—
supporting our decision to aggregate tastes by domain and measure.23
Relational Data
As DiMaggio has observed, college students “form a kind of ready-made
community that is relatively bounded off from the outside world” (2004,
p. 101). When collected in such a setting, data on digital interaction can il-
luminate patterns of relationships among students (Adamic and Adar 2003;
Marmaros and Sacerdote 2006; Kossinets and Watts 2009). Facebook is
constructed around a formal network of friendships that users can form.
To become friends, one user must simply select a link on another user’s pro-
ﬁle, and a request for friendship is sent. If the other user conﬁrms the friend-
ship, a tie is created; if the user rejects or ignores the request, nothing hap-
pens. Once created, a friendship can be dissolved by either user at any time.
The meaning of a Facebook friendship varies across contexts and indi-
viduals (e.g., Zywica and Danowski 2008). Students also vary in their ten-
dency to initiate ties with others and to conﬁrm the requests they receive.
Informal observation suggests it is common to befriend someone you have
met even once, while friendships are rarely created between two people who
have never met (Ellison, Steinﬁeld, and Lampe 2007). While it is therefore
reasonable to assume the lower limit of tie strength falls somewhere at the
“weak tie” or “acquaintance” threshold (Lewis et al. 2008b, p. 332; Mayer
and Puller 2008, p. 332), Facebook friendships also subsume a variety of
other relationships and tie strengths (not unlike our lay deﬁnition of “friend”;
Fischer 1982). We conservatively interpret these relationships as a generic
measure of “friendship” or “social tie.”
In addition to ambiguity regarding the meaning of these ties, Facebook
friendships are limited in two ways. First, ties are created far more often
than they are dissolved (table 2). While this is consistent with our interpre-
tation above—students make many new acquaintances in college, and Face-
book itself may help maintain precisely such “weak tie” relationships (Elli-
son et al. 2007)—social norms against “defriending” also play a role, creating
occasional gaps between our instrument and reality. Second, Facebook friend-
23 An alternative approach would be to retain all 12 original variables in order to exam-
ine, e.g., whether the effect of consecrated culture books differs from the effect of conse-
crated culture music or whether the effect of mass culture movies differs from the effect of
common culture movies. Such an exploration of “interactions” between domains and
measures not only exceeds the theoretical scope of this article but—based on preliminary
analyses—results in drastically reduced statistical power and corresponding challenges
for interpretation.
American Journal of Sociology
1710
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

ships are undirected, such that it is impossible to determine who initiated
each tie. This is problematic not only because we cannot control for a norm
of reciprocity in “accepting” friend requests (cf. Wimmer and Lewis 2010)
but also because we cannot determine whether the effects of tastes on net-
work size result from activity or popularity. For instance, our generalized
conversion mechanism implies that students with locally esteemed tastes
will have larger networks not because they are especially gregarious (outgo-
ing ties) but because they are especially popular (incoming ties). Alternative,
directed measures of friendship are necessary to distinguish between these
two scenarios.24
RESULTS
Results are presented in two stages. In the ﬁrst stage, we estimate models
over all four waves, thereby assuming the parameters governing network
evolution are homogeneous over time. While this has the advantage of high-
lighting the strongest overarching trends based on the aggregated pool of
data, temporal differentiation is obscured. In the second stage, we estimate
models separately for each transition period—wave 1 to wave 2, wave 2 to
wave 3, and wave 3 to wave 4—trading reduced statistical power for greater
temporal precision.25
Within each stage of results, we develop our models in multiple steps.
Model-building with stochastic actor-based models is as much art as sci-
ence. Unlike mainstream statistical approaches—where deductive hypoth-
esis testing is commonly prioritized over ﬁt—inductive exploration is encour-
aged in order to ﬁnd the best-ﬁtting model (Snijders et al. 2010; Ripley et al.
2016; for similar approaches in the networks literature, see Goodreau 2007;
Wimmer and Lewis 2010). Results for all periods feature both a “full” model
24 In fact, our data set contains such a measure: whether one student has uploaded and
“tagged” a photo of another student (see Wimmer and Lewis 2010). However, so few stu-
dents had publicly available photo albums by wave 4 that using this measure would have
resulted in a dramatically smaller longitudinal sample.
25 All models were estimated using RSiena version 1.1-294. We used conditional method
of moments estimation with ﬁve phase 2 subphases and calculated SEs using the default
score function method and 4,000 phase 3 iterations. To parallel the process whereby
Facebook friendships are created and dissolved, we used the “initiative/conﬁrmation”
model for undirected networks. The t-ratios for all terms in all models were less than
0.1 in absolute value, and the overall maximum convergence ratio for all models was well
beneath 0.2, both of which demonstrate excellent model convergence and are the suggested
standard for published results. We also found no concerning evidence of multicollinearity:
parameter correlations were all less than .9 in absolute value for all models, and parameter
and standard error estimates were stable across model runs (Ripley et al. 2016).
Conversion of Cultural Tastes
1711
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

including all available covariates as well as a “ﬁnal,” best-ﬁtting model. (The
ﬁrst section of results also includes a control model and a model without foci
effects.) In order to reach our ﬁnal model, we follow a replicable adaptation
of the general guidelines suggested by Snijders et al. (2010, pp. 50–51). Spe-
ciﬁcally, beginning with the full model, we deleted nonsigniﬁcant taste ef-
fects one by one (in order of lowest-to-highest ratio of parameter estimate
to standard error) until only signiﬁcant taste effects remained—and unless
the deletion of an effect resulted in another coefﬁcient dropping beneath the
threshold of signiﬁcance (in which case we moved to the next effect). With
each successive deletion, we also utilized the score-type goodness-of-ﬁt test
described by Schweinberger (2012) to see whether any of the excluded ef-
fects should be added back to the model. Because such an approach will
be unfamiliar to many readers—and may look suspiciously like “theory trim-
ming” (McPherson 1976)—we provide further context in appendix B along
with assessments of ﬁt.
Finally, a brief note on interpretation: as described earlier, the objective
function can be used to compare how attractive various tie changes are for a
given actor, where the probability of a change is higher as the objective
function for that change is higher (subject to the constraints of current net-
work structure as well as randominﬂuences). Parameter estimates can there-
fore be interpreted similarly to those obtained by logistic regression, that is,
in terms of the likelihood of idealized micro steps. For instance, a coefﬁcient
of .5 for the “shared consecrated culture” effect means that for every addi-
tional consecrated culture taste two students share in common, the log-
likelihood of friendship formation between these students increases by .5
(all else equal).
Comprehensive Models
Table 4 presents results for our comprehensive models spanning all avail-
able data. Model 1 is a control model, containing only nontaste effects. These
comprise “structural effects” reﬂecting the inﬂuence of network position on
tie formation; “individual effects” reﬂecting the inﬂuence of various individ-
ual covariates on sociality, or the propensity to form ties with anyone; and
“dyadic effects” reﬂecting the tendency for a tie to develop between two stu-
dents who share certain characteristics. (There are also three “rate parame-
ters” indicating the expected number of opportunities every student receives
to change a tie during each period.)
The negative, robustly signiﬁcant “density” coefﬁcient indicates that ties
are created relatively infrequently (as opposed to a positive coefﬁcient, which
would indicate that ties are more likely to be present than absent). Two stu-
dents are signiﬁcantly more likely to become friends the more friends they
American Journal of Sociology
1712
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

share (triadic closure), and students are less likely to form new friendships the
more friends they already have (preferential attachment). The latter ﬁnding
is an interesting reversal of the Matthew effect commonly documented in so-
cial networks and could be explained in terms of some upper limit on the
quantity of contacts a college student can actively maintain (cf. Gonçalves,
Perra, and Vespignani 2011).26 Women form signiﬁcantly more ties than
men; Hispanic students form signiﬁcantly more ties than white students,
while black students form signiﬁcantly fewer; and students form more ties
the higher their zip code tabulation area median household income. Stu-
dents form signiﬁcantly fewer friendships the longer they have been mem-
bers of Facebook. In order of smallest to largest effect, we also ﬁnd that two
students are signiﬁcantly more likely to become friends if they share the
same gender, region of origin, racial background, major, or residence. (Sim-
ilarity in median household income also fosters tie formation, but the effect
is not directly commensurable because the underlying variable is continu-
ous.) Notably, the effect of each additional shared Facebook group on the
likelihood of tie formation is as strong as the effect of sharing the same re-
gion of origin.
Model 2 is our “full” model—the same as model 1 except that it also incor-
porates all taste effects suggested by our theoretical framework. In general,
the size and signiﬁcance of control terms is fairly consistent between models.
This suggests the effects of network position, demographic traits, online ac-
tivity, and shared foci cannot be explained by tastes. Beyond these controls,
however, we ﬁnd that cultural tastes independently impact network evolu-
tion in a variety of ways. Speciﬁcally, students with more mass culture tastes
or more tastes in movies are signiﬁcantly less likely to form ties (generalized
inhibition), while students with more common culture tastes are signiﬁcantly
more likely to form ties (generalized conversion). Two students whose over-
all taste proﬁles are more similar are also signiﬁcantly more likely to become
friends (cultural matching).
Model 3 is identical to model 2 except that effects for shared foci are omit-
ted. As demonstrated in models 1 and 2, residential facilities, academic ma-
jors, and Facebook groups (which we interpret as a proxy for extracur-
ricular activities and a wide array of miscellaneous similarities) powerfully
inﬂuence network ties by providing opportunities for interaction. If in fact
students self-select into these settings on the basis of demographic or cultural
traits, then removing these effects should lead to an increase in the absolute
26 We experimented with ﬁve other theoretically plausible structural effects: a square root
version of our preferential attachment effect, a degree effect on the rate of change, a de-
gree assortativity effect (both standard and square root versions), and a brokerage effect.
In all cases, either the effect was not statistically signiﬁcant or including the effect resulted
in estimation problems (e.g., unsatisfactory convergence, multicollinearity).
Conversion of Cultural Tastes
1713
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

TABLE 4
Stochastic Actor-Based Models of Capital Conversion,
Estimated over All Four Waves
Model 1
Model 2
Model 3
Model 4
Rate parameters:
Period 1 . . . . . . . . . . . . . . . . . . . . . . . . .
13.92
13.81
14.21
13.82
(.23)
(.23)
(.24)
(.23)
Period 2 . . . . . . . . . . . . . . . . . . . . . . . . .
6.21
6.26
6.36
6.26
(.14)
(.14)
(.15)
(.14)
Period 3 . . . . . . . . . . . . . . . . . . . . . . . . .
5.12
5.19
5.23
5.19
(.17)
(.17)
(.17)
(.17)
Structural effects:
Density . . . . . . . . . . . . . . . . . . . . . . . . .
275.84*** 274.36*** 259.18*** 274.26***
(3.49)
(3.52)
(3.54)
(3.48)
Triadic closure . . . . . . . . . . . . . . . . . . .
14.26***
14.17***
14.65***
14.18***
(.34)
(.33)
(.33)
(.34)
Preferential attachment . . . . . . . . . . . .
2.45***
2.50***
2.60***
2.51***
(.07)
(.07)
(.07)
(.07)
Individual effects:
Demographics:
Female. . . . . . . . . . . . . . . . . . . . . . . .
9.43***
6.97*
5.43*
6.81*
(2.67)
(2.94)
(2.72)
(2.77)
Blacka . . . . . . . . . . . . . . . . . . . . . . . .
224.61*** 219.87*** 215.08**
219.77***
(5.18)
(5.29)
(5.24)
(5.28)
Asiana . . . . . . . . . . . . . . . . . . . . . . . .
21.11
22.22
.63
22.06
(3.96)
(3.99)
(4.04)
(4.02)
Mixeda . . . . . . . . . . . . . . . . . . . . . . . .
12.01
4.74
3.25
5.45
(7.72)
(7.81)
(7.75)
(7.49)
Hispanica. . . . . . . . . . . . . . . . . . . . . .
12.39*
13.69*
18.01***
14.29**
(5.28)
(5.36)
(5.15)
(5.37)
Median household income (K) . . . . .
.18***
.18***
.14**
.17**
(.05)
(.05)
(.05)
(.06)
Online activity:
Days since last update . . . . . . . . . . .
2.09
2.10*
2.11*
2.10
(.05)
(.05)
(.05)
(.06)
Days since joined Facebook . . . . . . .
2.13**
2.14***
2.11***
2.14***
(.04)
(.04)
(.03)
(.04)
Tastes:
Consecrated culture . . . . . . . . . . . . .
2.61
21.02*
2.28
(.43)
(.43)
(.40)
Mass culture . . . . . . . . . . . . . . . . . . .
2.81*
2.44
2.72*
(.34)
(.34)
(.32)
Specialized culture . . . . . . . . . . . . . .
2.01
2.27
(.37)
(.35)
Common culture . . . . . . . . . . . . . . . .
2.15***
1.92***
2.25***
(.52)
(.50)
(.37)
Movies. . . . . . . . . . . . . . . . . . . . . . . .
21.06***
2.76*
21.06***
(.31)
(.30)
(.22)
Music. . . . . . . . . . . . . . . . . . . . . . . . .
.17
.22
(.25)
(.24)
Books. . . . . . . . . . . . . . . . . . . . . . . . .
.73
.74
.69*
(.41)
(.39)
(.34)
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

value of coefﬁcients representing such traits (because their effects on tie for-
mation would no longer be mediated). Interestingly, this is only selectively
the case. All four effects for shared demographics indeed increase slightly
from model 2 to model 3—an unsurprising ﬁnding insofar as many extracur-
ricular activities and academic majors are more attractive to students from
TABLE 4 (Continued)
Model 1
Model 2
Model 3
Model 4
Dyadic effects:
Shared demographics:
Same gender . . . . . . . . . . . . . . . . . . .
8.41***
8.04***
9.86***
8.11***
(1.84)
(1.86)
(1.81)
(1.88)
Same racial background . . . . . . . . . .
30.48***
29.67***
31.37***
29.61***
(2.55)
(2.52)
(2.48)
(2.54)
Similar median household
income (K). . . . . . . . . . . . . . . . . . .
25.38**
23.07**
26.07**
22.97**
(7.95)
(7.91)
(7.93)
(7.98)
Same region of origin . . . . . . . . . . . .
9.38***
9.58***
10.83***
9.60***
(2.68)
(2.64)
(2.64)
(2.67)
Shared foci:
Shared residence . . . . . . . . . . . . . . . .
100.84***
100.93***
100.95***
(2.37)
(2.45)
(2.40)
Shared major. . . . . . . . . . . . . . . . . . .
55.43***
55.89***
55.86***
(3.35)
(3.41)
(3.46)
Shared Facebook group . . . . . . . . . .
9.43***
9.45***
9.44***
(.81)
(.80)
(.81)
Shared tastes:
Shared consecrated culture. . . . . . . .
3.35
2.87
(2.41)
(2.40)
Shared mass culture . . . . . . . . . . . . .
23.41
23.11
22.97
(1.90)
(1.83)
(1.78)
Shared specialized culture . . . . . . . .
14.07
13.18
16.37*
(8.22)
(8.16)
(8.16)
Shared common culture . . . . . . . . . .
23.04
23.26
22.09
(2.11)
(2.06)
(1.68)
Shared movies. . . . . . . . . . . . . . . . . .
1.85
3.14
(2.45)
(2.45)
Shared music. . . . . . . . . . . . . . . . . . .
2.81
3.45
2.58*
(1.87)
(1.78)
(1.31)
Shared books. . . . . . . . . . . . . . . . . . .
.81
2.17
(2.89)
(2.88)
Taste similarity (%). . . . . . . . . . . . . .
1.94*
1.91*
2.15***
(.77)
(.75)
(.63)
NOTE.—Signiﬁcance levels are not provided for rate parameters, as testing that they are zero
is meaningless (if they were zero, there would be no change between successive waves). N 5
520 for all models. All results (except rate parameters) are multiplied by 100 to preserve space.
Data are presented as coefﬁcient (SE).
a Dummy-coded variables, with “white” as reference category.
* P < .05.
** P < .01.
*** P < .001.
Conversion of Cultural Tastes
1715
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

particular backgrounds. Individual effects of tastes on ties are fairly consis-
tent across models, however, and the only effect that becomes signiﬁcant is
the (negative) effect of consecrated culture. Meanwhile, although multiple
parameter estimates for shared tastes increase—especially the three domain
measures (shared movies, music, and books)—these effects do not cross the
threshold of signiﬁcance.
We then pursued the model development approach described above.
This resulted in model 4, our ﬁnal model. As required by our approach, the
same taste effects that were signiﬁcant in model 2 continue to be signiﬁcant
in model 4. Differences in the sizes of these parameter estimates are negligi-
ble. However, by eliminating those effects that do not contribute to model
ﬁt, we ﬁnd three new signiﬁcant effects that were masked in model 2: the
more tastes in books a student expresses, the more friendships she is likely
to form; the more specialized culture tastes two students share, they more
likely they are to become friends; and the more tastes in music two students
share, the more likely they are to become friends. The size of the dyadic con-
version effect for specialized culture (b 5 .164) is particularly noteworthy:
students who share a single specialized culture taste are, ceteris paribus,
more likely to become friends than students who share the same gender
(b 5 .081) or region of origin (b 5 .096); and students who share just two
specialized culture tastes are more likely to become friends than students
who share the same racial background (b 5 .296). Also included are the in-
dividual effect for consecrated culture and the dyadic effects for shared
mass culture and common culture. While these effects are not themselves
statistically signiﬁcant, their omission results in the dyadic effect for shared
music dropping beneath signiﬁcance, and so we maintained them per our
model-building protocol. In other words, sharing tastes in music is signiﬁ-
cantly related to tie formation, but only when we also control for consecrated
culture tastes and shared mass and common culture tastes.
Period Models
We next estimated separate models for each transition period—ﬁrst, to as-
sess whether any of the effects in our comprehensive models may have been
produced by atypical behavior during a single period (cf. Lewis et al. 2012)
and second, because our theoretical framework leads us to consider whether
or how capital conversion dynamics vary over time as an important but sel-
dom explored question in its own right. In table 5, we replicate the above
presentation of results but focus exclusively on the full and ﬁnal models
for the sake of concision.
Two prefatory comments are in order. First, it is important to remember
that each model conditions on its starting point, and it is only the transition
between waves that is considered. So, for instance, the models for period 2
American Journal of Sociology
1716
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

TABLE 5
Stochastic Actor-Based Models of Capital Conversion, Estimated Separately for Each Period
PERIOD 1
PERIOD 2
PERIOD 3
Model 5
Model 6
Model 7
Model 8
Model 9
Model 10
Rate parameter . . . . . . . . . . . . . . . . . . . . . . . . .
13.08
13.07
6.51
6.51
5.57
5.56
(.22)
(.21)
(.15)
(.15)
(.18)
(.18)
Structural effects:
Density . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
277.09***
277.41***
245.18***
245.66***
2103.69***
2102.30***
(4.45)
(4.48)
(7.49)
(7.19)
(11.09)
(10.49)
Triadic closure . . . . . . . . . . . . . . . . . . . . . . .
15.04***
15.04***
14.00***
14.02***
13.56***
13.64***
(.49)
(.49)
(.56)
(.54)
(.87)
(.80)
Preferential attachment . . . . . . . . . . . . . . . .
2.36***
2.35***
2.94***
2.93***
2.35
2.38*
(.09)
(.09)
(.14)
(.13)
(.20)
(.18)
Individual effects:
Demographics:
Female. . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.63
4.76
11.87*
12.51*
12.19
11.36
(3.87)
(3.57)
(5.30)
(5.30)
(7.47)
(7.06)
Blacka . . . . . . . . . . . . . . . . . . . . . . . . . . . .
22.69
21.61
264.41***
263.24***
236.41*
238.84**
(6.80)
(7.10)
(10.64)
(10.74)
(15.33)
(14.94)
Asiana . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.45
4.79
210.09
29.81
225.54*
224.84*
(5.37)
(5.59)
(7.36)
(7.46)
(12.13)
(11.40)
Mixeda . . . . . . . . . . . . . . . . . . . . . . . . . . . .
17.57
17.80
243.52**
243.09**
45.98*
44.16*
(10.61)
(10.57)
(15.84)
(16.02)
(21.18)
(19.37)
Hispanica. . . . . . . . . . . . . . . . . . . . . . . . . .
39.66***
40.55***
224.46*
223.74*
233.61*
234.93*
(7.17)
(7.16)
(10.86)
(10.80)
(14.77)
(14.43)
Median household income (K) . . . . . . . . .
.39***
.40***
2.09
2.08
2.12
2.13
(.07)
(.07)
(.11)
(.11)
(.15)
(.16)
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

TABLE 5 (Continued)
PERIOD 1
PERIOD 2
PERIOD 3
Model 5
Model 6
Model 7
Model 8
Model 9
Model 10
Online activity:
Days since last update . . . . . . . . . . . . . . .
2.13
2.14*
.02
.02
2.16
2.17
(.07)
(.07)
(.10)
(.10)
(.15)
(.14)
Days since joined Facebook . . . . . . . . . . .
2.18***
2.19***
.00
.00
2.26**
2.26**
(.05)
(.05)
(.06)
(.06)
(.10)
(.10)
Tastes:
Consecrated culture . . . . . . . . . . . . . . . . .
2.83
21.08
2.99
.96
(.56)
(.82)
(.77)
(1.12)
Mass culture . . . . . . . . . . . . . . . . . . . . . . .
2.65
2.80*
2.64
2.51
23.50**
23.67***
(.41)
(.38)
(.74)
(.67)
(1.17)
(1.04)
Specialized culture . . . . . . . . . . . . . . . . . .
2.21
2.74
.39
(.49)
(.73)
(1.03)
Common culture . . . . . . . . . . . . . . . . . . . .
1.61*
1.85***
2.68
5.68**
5.91***
(.69)
(.45)
(1.16)
(1.77)
(1.32)
Movies. . . . . . . . . . . . . . . . . . . . . . . . . . . .
21.01*
21.01***
2.49
2.98*
2.78
(.40)
(.28)
(.61)
(.47)
(.97)
Music. . . . . . . . . . . . . . . . . . . . . . . . . . . . .
.11
.92
.60*
.28
.76
(.33)
(.51)
(.24)
(.70)
(.39)
Books. . . . . . . . . . . . . . . . . . . . . . . . . . . . .
.84
1.64*
1.35*
.29
(.52)
(.81)
(.67)
(1.19)
Dyadic effects:
Shared demographics:
Same gender . . . . . . . . . . . . . . . . . . . . . . .
10.69***
10.60***
4.45
4.27
6.15
6.07
(2.45)
(2.49)
(3.50)
(3.44)
(5.02)
(5.07)
Same racial background . . . . . . . . . . . . . .
35.97***
35.96***
12.87**
13.08**
29.06***
29.37***
(3.25)
(3.20)
(4.94)
(4.94)
(7.43)
(7.20)
Similar median household income (K) . . .
22.37*
22.86*
24.09
25.04
33.75
32.17
(10.59)
(10.26)
(15.60)
(15.59)
(23.42)
(23.50)
Same region of origin . . . . . . . . . . . . . . . .
4.40
4.40
15.67**
15.68**
16.76*
16.72*
(3.56)
(3.45)
(4.96)
(5.02)
(7.07)
(7.38)
1718
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Shared foci:
Shared residence . . . . . . . . . . . . . . . . . . . .
101.75***
101.82***
100.70***
100.81***
103.08***
102.92***
(3.23)
(3.14)
(4.62)
(4.42)
(6.44)
(6.58)
Shared major. . . . . . . . . . . . . . . . . . . . . . .
54.17***
54.18***
63.24***
63.28***
49.28***
49.59***
(4.54)
(4.49)
(6.33)
(6.38)
(10.10)
(9.70)
Shared Facebook group . . . . . . . . . . . . . .
12.05***
12.15***
5.70***
5.75***
5.90**
5.81**
(1.05)
(1.06)
(1.58)
(1.58)
(2.26)
(2.25)
Shared tastes:
Shared consecrated culture. . . . . . . . . . . .
4.46
2.44
4.04
(2.95)
(4.99)
(7.52)
Shared mass culture . . . . . . . . . . . . . . . . .
22.13
28.77*
27.40*
22.52
(2.21)
(4.23)
(3.28)
(7.15)
Shared specialized culture . . . . . . . . . . . .
17.67
20.24*
9.70
25.74
(10.33)
(9.88)
(17.13)
(30.12)
Shared common culture . . . . . . . . . . . . . .
23.16
22.53
2.13
23.48
(2.52)
(1.73)
(4.57)
(7.68)
Shared movies. . . . . . . . . . . . . . . . . . . . . .
3.06
23.78
8.09
(3.10)
(5.20)
(8.93)
Shared music. . . . . . . . . . . . . . . . . . . . . . .
1.65
4.85
9.33
(2.27)
(3.77)
(7.09)
Shared books. . . . . . . . . . . . . . . . . . . . . . .
21.74
3.89
9.67
(3.70)
(5.65)
(9.99)
Taste similarity (%). . . . . . . . . . . . . . . . . .
2.62**
3.04***
1.82
2.51**
22.82
(.99)
(.80)
(1.28)
(.92)
(2.99)
NOTE.—Signiﬁcance levels are not provided for rate parameters, as testing that they are zero is meaningless. N 5 520 for all models. All results (except rate
parameters) are multiplied by 100. Data are presented as coefﬁcient (SE).
a Dummy-coded variables, with “white” as reference category.
* P < .05.
** P < .01.
*** P < .001.
1719
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

take for granted the state of the network at March of the students’ sopho-
more year and parameter estimates refer primarily to the new ties students
formed over the succeeding 12 months.27 Second, it is important to note that
missing network data increased over time (table 2) and were particularly
prevalent at wave 4 (students’ senior year). While our estimation technique
treats missing data as noninformative (Huisman and Steglich 2008; Ripley
et al. 2016),28 parameter estimates for period 3 may be especially imprecise;
interpretation should be correspondingly tentative.29
We begin with changes in control effects over time. Several trends are
noteworthy. Triadic closure and living in the same residence are the two
most robust and consistent predictors of tie formation: over all three peri-
ods, student friendship patterns are powerfully inﬂuenced by both physical
and “relational” opportunity structures (cf. Kossinets and Watts 2009). Our
measures of online activity, recorded at wave 1, display inconsistent effects
over time. Interestingly, many of the demographic effects on sociality we ob-
served in table 4 are strongest at periods 2 and 3. The effects of shared gen-
der, racial background, and Facebook groups, in contrast, are strongest at
period 1, although the latter two remain statistically signiﬁcant at all peri-
ods. Region of origin—an attribute that might be “invisible” at ﬁrst outside
of dialect or dress—becomes much more important to tie formation over
time. Trends in socioeconomic homophily are difﬁcult to interpret due to large
standard errors. Finally, sharing the same major is even more important for
friendship formation across all three periods than sharing the same racial
background. This effect is strongest at period 2 and weakest at period 3—
perhaps because students take more classes for their major over time (as op-
posed to general education requirements), but by period 3 most students in
the same major who will become friends already have become friends.
27 We say “primarily” rather than “exclusively” because these estimates are derived not
just from students’ tendency to form new ties but also from their tendency to maintain
(rather than dissolve) existing ties. However, because tie dissolution is relatively rare, pat-
terns of dissolution contribute proportionately little to the coefﬁcients we report.
28 Speciﬁcally, during the simulation phase of estimation, missing values are imputed to
allow for meaningful simulations: missing network variables are replaced by their last
observed value (and a “nontie” in the case of no earlier observation), and missing covar-
iates are replaced by the variable’s global mean. For the calculation of target statistics
used by the method of moments, however, only nonmissing data are used (Ripley et al.
2016, pp. 32–33). Levels of missing data (individual and relational) in this study fall well
within recommended thresholds, with the sole exception of network data at wave 4. Even
there, however, the large size of our network may mitigate this concern; potentially more
worrisome is that these data are unlikely to be missing at random.
29 An alternative approach would be to maximize available data for each transition pe-
riod separately, omitting missing data altogether. However, this would create a situation
where the study sample varies among models, so it would be unclear whether differences
in results should be attributed to differences in network dynamics or differences in sam-
ple composition over time.
American Journal of Sociology
1720
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Shifting attention to the focal taste effects of this article, models 5–10 (ta-
ble 5) clarify and expand upon the time-invariant results from model 4. Most
signiﬁcant taste effects from model 4 (the comprehensive ﬁnal model) are sig-
niﬁcant in model 6 (the period 1 ﬁnal model), including the generalized inhi-
bition effects of mass culture and movies, the generalized conversion effect of
common culture, the dyadic conversion effect of specialized culture, and cul-
tural matching. Interestingly, however, only two of these effects (matching and
the inhibition effect of movie tastes) are still signiﬁcant in period 2 (model 8)—
where tastes in music and (especially) in books are now also a resource for
generalized conversion. There is also an unexpected negative and signiﬁ-
cant dyadic effect of sharing mass culture tastes. Finally, in period 3, shared
tastes do not signiﬁcantly contribute to friendship formation, whether through
dyadic conversion or cultural matching (model 10). However, our model-
building approach in this instance is potentially misleading: unusually large
standard errors obscure several unusually large parameter estimates in
model 9—especially for shared movies, music, and books. Common culture
tastes are a particularly strong predictor of generalized tie formation in pe-
riod 3, while the more mass culture tastes a student expresses, the fewer ties
she forms between her junior and senior years.30
DISCUSSION
It is important to remember that Facebook friends are, at best, imperfect
measures of friendship; that tastes and conversion dynamics among this sam-
ple may not be representative of other people in other contexts; and that miss-
ing data problems—owing to both privacy settings and nonreport—prevent
us from studying all students and detract from the precision of our estimates.
Nonetheless, the above results powerfully illustrate the utility of our theoret-
ical framework and suggest both qualiﬁcations and extensions to prior work.
While research on tastes has overwhelmingly relied on exogenous mea-
sures, we ﬁnd that both exogenous and endogenous properties of tastes have
consequences for network dynamics—each controlling for the other. In ad-
dition, we provide robust support for entirely new mechanisms of capital
conversion that naturally extend prior work: just as students from particu-
lar demographic backgrounds are more or less likely to form ties (Goodreau
30 To conﬁrm these results are not an artifact of our method—or our approach to model
building—we replicated our four ﬁnal models using alternative, more basic techniques:
ﬁrst, a descriptive comparison of dyads that did and did not transition to friendship; and
second, multivariate logistic regression. While the assumptions of logistic regression conﬂict
with the nature of our data (speciﬁcally, our data are not a randomsample and observations
are clearly interdependent)—and indeed, stochastic actor-based models were designed to
surmount many of the limitations of alternative methods (Steglich et al. 2010)—results were
overwhelmingly consistent with those reported above and are presented in a detailed online
supplement for the interested reader.
Conversion of Cultural Tastes
1721
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

et al. 2009; Wimmer and Lewis 2010), so some tastes (e.g., for common cul-
ture and for books) constitute a form of “generalized capital” for creating
friendships with anyone. Other tastes, meanwhile (e.g., for mass culture and
for movies), have a negative effect on generalized tie formation and thus in-
hibit the creation of social capital. And while prior work has relied on cul-
tural homophily as a central theoretical assumption (Carley 1991; Axelrod
1997) or else examined this mechanism qualitatively (Rivera 2012), we pro-
vide quantitative evidence for cultural matching above and beyond the ef-
fects of dyadic conversion: students are attuned to the overall similarity of
cultural proﬁles, suggesting that tastes as well as nontastes are important for
forming friendships (cf. Edelmann and Vaisey 2014).
We paused to explicitly address the question of whether tastes impact ties
indirectly by leading certain kinds of students to self-select into certain kinds
of meeting opportunities (Feld 1981; Benediktsson 2012). While residence as-
signments are randomly determined, this could occur for academic majors
and many kinds of student organizations. We expected that if the impact
of some tastes is absorbed by social foci, removal of foci effects should elevate
taste coefﬁcients accordingly. Surprisingly, this was hardly the case: taste co-
efﬁcients changed little between models 2 and 3, implying tastes’ impact on
network evolution is primarily direct rather than mediated. Two exceptions
were that the parameter estimates for shared movies, music, and books in-
creased more than other coefﬁcients, although not to the point of signiﬁcance,
and that the (negative) effect of consecrated culture on generalized tie forma-
tion became signiﬁcant in model 3. The latter suggests that one reason stu-
dents with consecrated culture tastes tend to have smaller networks might
be because they dedicate time to “greedy” organizations (Coser 1974). In sum,
social foci play an undeniably important role in network evolution. How-
ever, they do not seem to be central to capital conversion—at least for the
tastes, foci, and students examined here.31
We also provide, to our knowledge, the ﬁrst direct comparison of how the
social consequences of tastes vary by domain. In short, prior ﬁndings based
on music may not be generalizable to other media, and different kinds of
31 Because our models condition on the state of the network at wave 1, one explanation is
that tastes’ indirect effect on ties (via foci) was effectively conditioned out of our analysis.
In other words, if students with particularly strong cultural interests had already joined
relevant groups (and become friends with most people in these groups) by the time of our
ﬁrst data pull (i.e., prior to March of their freshman year), our models would be unable to
discern these effects. The fact that the impact of Facebook group comembership on tie
formation is strongest at period 1 would seem to support this explanation. An additional
limitation is that we are here forced to operationalize social foci as yet another shared trait
that may increase or decrease the probability of tie formation, while in reality, foci are
meeting structures that may shape students’ very awareness of friendship opportunities.
Realistically conceiving the relationship between physical and relational space is a chal-
lenging methodological puzzle and an area of ongoing development across social network
methods at large (see adams, Faust, and Lovasi 2012).
American Journal of Sociology
1722
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

tastes provide different paths to friendship. Further, the salience of these
paths varies depending on the time horizon at hand. Here, perhaps, is our
most striking result: we ﬁnd conversion dynamics vary not only by how we
measure tastes and what we mean by “conversion,” but by when we collect
our data. Building on prior distinctions between meeting and mating (Ver-
brugge 1977), visible and invisible attributes (de Klepper et al. 2010), and
varying levels of network constraint (Feld 1981), we suggest different kinds
of tastes are salient at different points in time in relatively close-knit settings
(such as a residential college campus where students eat, sleep, and study
together as well as take classes and socialize). Our results speak to three tem-
poral stages corresponding to the three periods we examined.
In the early stages of network formation—when students are just becom-
ing acquainted—most tastes are indeed invisible, and the crucial question is
what stands out. Perhaps unsurprisingly, it is here when shared tastes that
are particularly unusual are particularly conducive to friendship formation,
that is, specialized culture dyadic conversion (cf. Adamic and Adar 2003;
Lewis et al. 2012). If students share so much in common that their overall
taste proﬁles are similar, this is also unlikely to escape recognition, leading
to, cultural matching. Both dynamics may fade over time as friendships are
less inﬂuenced by ﬁrst impressions.
We also observe three generalized effects of tastes at period 1. First, stu-
dents with more mass culturetastes form signiﬁcantlyfewerfriendships.Par-
ticularly in an elite setting, students who openly express (on their Facebook
pages) tastes that follow public opinion at large may be viewed as lacking in
cultural reﬁnement—and avoided accordingly (cf. Lopes 2006). This makes
the second generalized effect especially interesting: controlling for exogenous
popularity, expressing tastes that are locally popular is instead rewarded, as
students with more common culture tastes form signiﬁcantly more friend-
ships overall. Third, we ﬁnd a generalized inhibition effect for tastes in mov-
ies. We return to these latter two effects below.
As students settle into their residential communities, alternative forms of
capital come to the fore. Although slightly diminished in effect size, match-
ing continues to have a robust impact on network evolution at period 2.
Unique to this period, however, are strikingly divergent effects of different
domains: students who express more tastes in music and (especially) books
form more ties overall, while students who express more tastes in movies
again form fewer. We speculate that the generalized conversion effects of
music and books are driven by distinct social signals conveyed by each me-
dium. Given that domain effects persist net of endogenous and exogenous
measures, these students may be “omnivores by volume” who “engage in
more activities and express preferences for a wider range of cultural items
than others” (Warde and Gayo-Cal 2009, p. 121). Insofar as omnivorous-
ness in music is a marker of high status, it is no surprise that these students
Conversion of Cultural Tastes
1723
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

are popular in an elite institution. However, particularly in a college setting—
where education is universally valued and reading is a core component of
learning (see Bennett et al. 2009)—bookworms display a different kind of
locally situated capital that others may wish to beneﬁt from.32 Tastes in
movies, meanwhile, represent the opposite scenario: net of cultural mea-
sures, movies per se may have neither symbolic nor instrumental value—
and might here be viewed as a “base” form of consumption (cf. Chan and
Goldthorpe 2005; Bennett et al. 2009).
Surprisingly, we also ﬁnd at period 2 a signiﬁcant negative effect for shar-
ing mass culture tastes, indicating students who share such tastes start avoid-
ing each other. Why this occurs is difﬁcult to determine. On an abstract level,
it ﬂies in the face of the universal principle that similarity breeds attraction
(McPherson et al. 2001) and suggests dyadic aversion may in rare cases ac-
company dyadic conversion. On a substantive level, the underlying dynamic
may be diametrically opposite to the effect of specialized culture at wave 1:
just as sharing locally unusual tastes creates a powerful social bond—the
fact that we are similarly different from them fosters a special afﬁnity be-
tween us—sharing universally popular tastes may be uniquely socially repel-
ling—the thing we have in common is our ordinariness vis-à-vis the average
American.
Finally, between students’ junior and senior years (period 3), most students
who will become friends have become friends already. Missing network data
at wave 4 also result in large standard errors, complicating interpretation.
Nonetheless, important trends are evident. First, while not statistically sig-
niﬁcant, parameter estimates for shared movies, music, and books are higher
than for any other period, suggesting ongoing (but imprecisely measured) dy-
adic conversion. Music tastes also have generalized conversion value (this
term is borderline signiﬁcant, and a score-type test suggested it should be in-
cluded). Tastes in common culture are strongly associated with forming ties
(an effect that was also signiﬁcant, but much smaller, at period 1), while
tastes in mass culture negatively impact tie formation. It seems, therefore,
DiMaggio was correct that “popular culture provides the stuff of everyday
sociability” (1987, p. 444)—with two qualiﬁcations. First, what matters is
that the taste is locally popular, not universally popular. Second, people
do not need to like the same culture to discuss it (otherwise, we would see
32 An alternative explanation draws on the “more-more” principle discussed by Robinson
and Godbey (1997). This principle—which reﬂects a Newtonian model of human behav-
ior that “bodies in motion stay in motion”—would suggest some underlying disposition
may be jointly responsible for elevated tie formation, cultural consumption, and Face-
book participation alike. Insofar as some students are generally more active people, how-
ever, we expect that this will be captured by our controls for online activity and prefer-
ential attachment; this principle also cannot explain why the association between tastes
and network size varies across domains (and is negative for movies).
American Journal of Sociology
1724
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

evidence of dyadic conversion). Rather, culture many students like is prob-
ably culture most students know about, so those with locally common pref-
erences can strike up a conversation with just about anyone.
We recognize the dangers of generalizing from a single case. Nonetheless,
careful consideration of how the particularities of our context may have in-
ﬂuenced results can shed light on broader principles. Inspired by DiMaggio
(1987), we thus conclude our discussion with the following propositions
about capital conversion—intended both to summarize our ﬁndings in gen-
eral language and to provide a starting point for further exploration:
PROPOSITION 1.—In a nascent social network, the people most likely to
quickly become friends are those whose cultural resemblance is subjectively
striking—namely, people who share tastes and nontastes across multiple do-
mains and people who share tastes that are locally uncommon.
PROPOSITION 2.—Culture many people like is culture most people know
about. Consequently, tastes that are relatively common in a particular set-
ting constitute a broad social resource that facilitates friendship with almost
anyone—even, and especially, in later stages of network evolution.
PROPOSITION 3.—Networks follow culture based on context-speciﬁc hier-
archies of evaluation. In other words, people who express tastes that are lo-
cally valued will be attractive as potential friends and people who express
tastes that are locally disvalued will be avoided.
PROPOSITION 4.—People who share locally stigmatized tastes will be unat-
tractive to one another as potential friends, especially at intermediate stages
of network evolution (i.e., after enough time to learn each other’s dirty se-
crets but before enough time to stop feeling threatened by them).
PROPOSITION 5.—Just as unexpected similarities (e.g., sharing uncommon
tastes) are most salient as networks emerge, mundane similarities (i.e., shar-
ing any tastes) become more salient as networks evolve. Domains more as-
sociated with visible identity markers matter sooner.
PROPOSITION 6.—Cultural organizations are efﬁcient mediators of tastes
and friendship. In other words, people who self-select into shared foci on
the basis of their tastes become friends rapidly or not at all; beyond the ear-
liest stages of network evolution, the impact of tastes on ties is largely direct.
CONCLUSION
In the context of a growing literature on culture and social networks (Pa-
chucki and Breiger 2010), we have focused here on the question of how cul-
tural tastes are converted into social network ties. While this question is
rooted in Bourdieu’s (1986) classic essay, it was not fully articulated until
20 years later (Lizardo 2006)—and is now beneﬁtting from a ﬂurry of scien-
tiﬁc inquiry (Selfhout et al. 2009; Vaisey and Lizardo 2010; Lewis et al.
2012; Edelmann and Vaisey 2014). Nonetheless, as beﬁts any subﬁeld in
Conversion of Cultural Tastes
1725
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

its infancy, proof of concept has preceded elaboration, and this nascent
body of scholarship has yet to be integrated under a more comprehensive
theoretical umbrella. This can also be attributed to the practical constraints
of available data and methods: there are only so many questions that cross-
sectional, closed-ended data on tastes and egocentric data on ties can an-
swer, and the independence assumptions of mainstream statistical methods
have always been a poor ﬁt for analyzing networks.
In this article, we have outlined such a broadened framework and illus-
trated its utility using a unique, longitudinal data set and recent develop-
ments in network modeling. In this way, we have not only integrated prior
work and empirically demonstrated that tastes impact ties in a variety of
unacknowledged ways, we have also attempted to narrow the gap between
theory, methods, and data by pushing each to the next level. First, we sug-
gest that formal properties of cultural ecologies can shed light on locally
constituted meaning and action net of the effects of traditional measures
(Mark 1998; Mohr 1998; Harrington and Fine 2006). Second, we caution
against assumptions of time homogeneity and domain consistency in capital
conversion dynamics and encourage longitudinal data collection across
multiple ﬁelds of preferences (Bennett et al. 2009). Third, we recommend
the use of stochastic actor-based models for future research on culture and
networks—for, as Snijders (2011, p. 146) has suggested, their emphasis on
context-dependent choices made by actors provides one possible avenue
for integrating structure and agency under a powerful yet ﬂexible quantita-
tive framework (Emirbayer and Goodwin 1994).
This analysis is limited in many ways. Most importantly, our data are re-
stricted to only a subset of students at a single college. While students who
are especially culturally and socially active on Facebook present a rich op-
portunity for examining capital conversion, left unanswered is the question
of generalizability to other people in other places and at different stages of
the life course. Unfortunately, surveying a random sample of respondents
precludes the in-depth measurement of local ecologies and restricts atten-
tion to egocentric network data. Such data cannot produce meaningful con-
clusions about network evolution because crucial data on “nonchoices” are
omitted (Steglich et al. 2010). Fortunately, recent developments in meta-
analyses for stochastic actor-based models provide a possible solution to
this catch-22 (Ripley et al. 2016)—provided that longitudinal, sociocentric
network data are collected across multiple settings. While this is no trivial
task, the payoff for scholars of culture and networks could be well worth the
cost: a comparative approach would illuminate contextual variation in con-
version dynamics that is bracketed in the preceding analyses; longitudinal
and less ambiguous data on social foci could also be incorporated in a vari-
ety of ways to explore the mutually constitutive nature of persons and cul-
tural groups (Breiger 1974; Block and Grund 2014).
American Journal of Sociology
1726
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

In addition to better data and a broader, comparative approach, future
research could contribute further nuance to our proposed theoretical frame-
work. With respect to cultural tastes, we have here focused on preferences
for movies, music, and books. Beyond the need to examine other domains,33
prior work has also operationalized tastes as knowledge or consumption (cf.
Warde and Gayo-Cal 2009). Tastes that are “weaker” than favorites—or
even dislikes—may be equally consequential for networks (Bryson 1996;
Schultz and Breiger 2010). Beyond consecrated, mass, specialized, and com-
mon, other exogenous and endogenous measures are certainly possible (cf.
Peterson 1992; Lewis et al. 2008a), and our proposed set of mechanisms
could become even more variegated (e.g., by considering dyadic aversion
or intertaste compatibility).
With respect to social ties, Lizardo (2006) has already elaborated one way
capital conversion might vary by tie strength (see also Edelmann and Vai-
sey 2014). This is an important omission from our framework, and given
that close friends tend to constitute a small portion of Facebook friends
(Arnaboldi et al. 2013), our results are likely biased toward weak tie dynam-
ics. (Modeling tie strength longitudinally also raises new methodological
challenges insofar as strong ties tend to evolve from weaker relationships.)
We further suggest future research move beyond the trinary operational-
ization of ties as weak/strong/absent and incorporate continuous measures,
consider how capital conversion might vary across different kinds of rela-
tionships (e.g., who you like, who you know, and who you actually spend
time with), and examine the differential role tastes play in tie formation
compared to tie maintenance (cf. Selfhout et al. 2009).34
A ﬁnal extension of our approach is worth suggesting. Although we have
here focused on the substantive signal conveyed by preferences for different
media—for example, how books are different from music and the distinc-
tive social meaning of tastes for each—our emphasis on local ecologies could
be extended to understand why capital conversion might vary across do-
mains. In this way, the statistics in table 2 concerning the structure of each
“taste ﬁeld” could become explanatory principles in their own right. For
33 The Glasgow Teenage Friends and Lifestyle Study, which in addition to data on music
genres contains data on the frequency at which students participated in 15 different lei-
sure activities, could be an especially useful starting point (see https://www.stats.ox.ac
.uk/~snijders/siena/Glasgow_data.htm).
34 This is another important limitation of our article, given that friendships on Facebook
operate “opposite” to real life: on Facebook, a tie persists by default and requires active
intervention to terminate, whereas actual social relationships tend to require ongoing re-
newal. While RSiena is capable of distinguishing these two processes, we were unable to
pursue this possibility. Speciﬁcally, “if the network dynamics in a given data set is such
that ties mainly are created, and they are dissolved rather rarely, then the data will con-
tain little information about the question whether creating ties follows different rules
than dissolving ties” (Ripley et al. 2016, p. 37).
Conversion of Cultural Tastes
1727
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

FIG. 3.—Extended capital conversion framework
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

instance, the fewer people who participate in a given domain, the less the
content of those tastes might matter, and it could be the distinction between
those who have and do not have preferences that is socially salient (e.g.,
Bukodi 2007). Differentiated ﬁelds may be less hierarchical, facilitating ties
across boundaries (DiMaggio 1987), and stable ﬁelds may be more impor-
tant to identity and therefore positively correlated with impact. In this way,
even identical tastes with identical popularity may have very different conse-
quences depending on the structure of the surrounding ecology (Kaufman
2004).35
We visualize in ﬁgure 3 what such an extended version of our framework
might look like. It is essential to remember, however, that even this frame-
work is but one part of a much larger story. Just as tastes inﬂuence ties, so
are preferences transmitted through relationships in ways we are only be-
ginning to appreciate (Steglich et al. 2006; Aral and Walker 2012; Lewis
et al. 2012),36 and both social structure and the “cultural surface” evolve ac-
cording to their own internal dynamics (Lieberson 2000). We hope future
work picks up where we leave off.
APPENDIX A
Coding Cultural Tastes
As a growing proportion of social interaction occurs online, data from dig-
ital sources have the potential to address important social scientiﬁc ques-
tions. Sociologists are increasingly making use of these opportunities (Golder
and Macy 2014). Elsewhere, we have provided a detailed introduction to
the Facebook data set used in this article and a thorough discussion of its
strengths and limitations (Lewis et al. 2008b). In particular, our data set com-
bines sociocentric network data with open-ended taste data—both of which
35 Residential colleges provide one opportunity for exploring these dynamics. Insofar as
students at the same college share a common cultural context but still primarily form ties
within (randomly assigned) subcommunities like dorm buildings, one could exploit nat-
urally occurring variation in the structure of taste ﬁelds across subcommunities to disen-
tangle the effects of local ecology “controlling for” context.
36 While stochastic actor-based models are capable of disentangling selection and inﬂu-
ence, current software cannot implement the kinds of dynamics our framework requires.
Speciﬁcally, dyadic dependent variables such as taste sharing are not yet available, and
the evolution of cultural covariates would need to be systematically integrated due to the
fact that these measures are collectively dependent on thousands of underlying indicator
variables representing each student’s constellation of tastes. Recent advances in the co-
evolution of one- and two-mode networks provide an exciting alternative approach (e.g.,
Lomi and Stadtfeld 2014). Instead, we are forced to here “artiﬁcially freeze” the values of
taste variables at the last preceding observation. While Mercken et al. (2010, ﬁg. 1) give
one example of how this may result in a misdiagnosis of social selection when peer inﬂu-
ence is actually at work, it is unlikely that such a roundabout chain of events could hap-
pen frequently enough to inﬂuence our central ﬁndings.
Conversion of Cultural Tastes
1729
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

are available longitudinally on a standardized template. Drawbacks, mean-
while, include participation biases, incomplete (or out of date) information,
and a variety of challenges of interpretation (cf. Lewis 2015b).
Here we focus on the issue of coding cultural tastes. While it is possible to
study the correlation between friendships and tastes without imposing any
structure on the raw taste data (as in Lewis et al. 2008b)—and also to group
tastes inductively using clustering algorithms (e.g., Wimmer and Lewis
2010; Lewis et al. 2012)—our aim of developing the distinction between ex-
ogenous and endogenous meanings required us to classify individual cultural
objects using categories that are commensurable with prior literature. Al-
though our choice of measures emerged from a careful consideration of many
alternatives, no measure is perfect, and we will be the ﬁrst to acknowledge
residual concerns. Two such concerns are that our exogenous codes capture
different distinctions across domains and that our endogenous thresholds are
potentially arbitrary.
Exogenous Codes
Among many possible exogenous meanings, consecrated culture and mass
culture are attractive categories both because of the attention they have re-
ceived in prior literature (e.g., Peterson 1992; Allen and Lincoln 2004) and
because they lend themselves straightforwardly to objective empirical mea-
sures. The choices of which consecration projects to focus on and how to as-
sess mass market success were still open, however, and while differences in
operationalization across domains are inevitable (given differences in mar-
ket structure, evaluation standards, and inherent qualities of movies, music,
and books as cultural products), it is important that our various codes for
consecrated and mass culture approximate the same underlying concepts.
One way of evaluating whether we achieved this goal is to examine cor-
relations among the various exogenous and endogenous codes for each do-
main and wave. These correlations are reported in table A1. In general, cor-
relation coefﬁcients are highly consistent within domains and across waves.
For instance, the correlation between movies coded as specialized culture
and consecrated culture at wave 1 (2.20) is almost identical to the same cor-
relation at wave 2 (2.21) and wave 3 (2.19). Across domains and waves,
correlations between the same two codes (e.g., specialized culture and mass
culture) also always have the same sign (positive or negative). Finally, while
occasionally there is some degree of variation by domain (e.g., the correla-
tion between common culture and consecrated culture is as low as .03 for
music but as high as .18 for books), in general we found no evidence of con-
sistent or extreme discrepancies.
A second way of assessing this concern is to ask how this article’s central
results might have been different if our measures had focused on a single
American Journal of Sociology
1730
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

TABLE A1
Correlations between Taste Codes
WAVE 1
WAVE 2
WAVE 3
Consecrated Mass Specialized Common Consecrated Mass Specialized Common Consecrated Mass Specialized Common
Movies
Consecrated
Mass . . . . . . . . . . . .
.07
.07
.06
Specialized . . . . . . .
2.20
2.26
2.21
2.28
2.19
2.29
Common . . . . . . . . .
.10
.13
2.27
.11
.13
2.24
.12
.16
2.23
N . . . . . . . . . . . . . . .
1,918
1,717
1,577
Music
Consecrated
Mass . . . . . . . . . . . .
.11
.11
.12
Specialized . . . . . . .
2.23
2.35
2.21
2.29
2.23
2.29
Common . . . . . . . . .
.03
.18
2.26
.03
.14
2.24
.04
.15
2.18
N . . . . . . . . . . . . . . .
3,439
2,731
2,613
Books
Consecrated
Mass . . . . . . . . . . . .
.18
.16
.16
Specialized . . . . . . .
2.18
2.18
2.19
2.20
2.18
2.15
Common . . . . . . . . .
.16
.13
2.30
.18
.15
2.26
.16
.13
2.27
N . . . . . . . . . . . . . . .
1,599
1,338
1,233
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

domain. While replicating all models three times is beyond the scope of this
appendix, we focus on model 2 as an illustrative example (given that model 2
includes all taste effects and examines all time periods simultaneously).
What this means in practice is that in one replication model the exogenous
and endogenous measures focus solely on movie tastes; for the next replica-
tion model, they focus solely on music tastes; and so on. Results from these
analyses are presented in table A2.
TABLE A2
Taste Effects from Model 2 and Three Replication Models
Considering Each Domain Separately
Model 2
Model A1
Model A2
Model A3
Individual effects:
Consecrated culture . . . . . . . . . .
2.61
21.37
21.22
2.96*
(.43)
(1.05)
(.63)
(1.21)
Mass culture . . . . . . . . . . . . . . . .
2.81*
21.04
21.37**
2.92
(.34)
(.72)
(.46)
(1.25)
Specialized culture . . . . . . . . . . .
2.01
2.82
2.67
1.93
(.37)
(.83)
(.54)
(1.06)
Common culture . . . . . . . . . . . . .
2.15***
2.87**
2.37**
3.10*
(.52)
(.96)
(.83)
(1.37)
Movies. . . . . . . . . . . . . . . . . . . . .
21.06***
2.34
(.31)
(.50)
Music. . . . . . . . . . . . . . . . . . . . . .
.17
.52
(.25)
(.34)
Books . . . . . . . . . . . . . . . . . . . . .
.73
21.11
(.41)
(.70)
Dyadic effects:
Shared consecrated culture. . . . .
3.35
10.49*
4.78
27.82
(2.41)
(4.64)
(3.98)
(4.51)
Shared mass culture . . . . . . . . . .
23.41
26.38
21.92
26.28
(1.90)
(3.94)
(2.55)
(4.35)
Shared specialized culture . . . . .
14.07
40.93**
6.44
214.41
(8.22)
(13.64)
(11.49)
(22.63)
Shared common culture . . . . . . .
23.04
22.35
25.13
.90
(2.11)
(3.97)
(3.00)
(5.22)
Shared movies. . . . . . . . . . . . . . .
1.85
2.05
(2.45)
(3.40)
Shared music. . . . . . . . . . . . . . . .
2.81
3.41
(1.87)
(2.28)
Shared books. . . . . . . . . . . . . . . .
.81
1.95
(2.89)
(4.60)
Taste similarity (%). . . . . . . . . . .
1.94*
2.46***
1.77**
2.44***
(.77)
(.48)
(.55)
(.47)
Domain . . . . . . . . . . . . . . . . . . . . . .
All
Movies
Music
Books
NOTE.—N 5 520 for all models. Exogenous and endogenous codes in each model refer only
to the domain that is the focus of that model. The “taste similarity” measure still incorporates
all domains. All results are multiplied by 100. Data are presented as coefﬁcient (SE).
* P < .05.
** P < .01.
*** P < .001.
American Journal of Sociology
1732
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Findings suggest there is some important variation among domains that
is masked by our aggregate measures. In particular, tastes in consecrated
culture books (model A3) have generalized conversion value, but tastes in
consecrated culture movies and music do not. Further, dyadic conversion
for consecrated and specialized culture tastes is only statistically signiﬁcant
for movies (model A1). Other results are more consistent. Speciﬁcally, we
ﬁnd the generalized conversion effect of common culture tastes is statisti-
cally signiﬁcant across all domains, and while the generalized inhibition ef-
fect of mass culture tastes is only signiﬁcant for music (model A2), the size
and direction of this effect is similar across all models.
One challenge of this exercise is that, in cases where results vary, it is dif-
ﬁculttoassess,forexample,whetherour codingforconsecrated culture mov-
ies and consecrated culture books captures slightly different constructs or
whether consecrated culture tastes in movies and in books actually convey
distinct social signals. As with any composite measure, this is one advantage
of aggregating domains: the impact on results of potential variation across
individual measures is attenuated. However, we should be mindful of this
preliminary evidence that interactions between meanings and domains could
be a potentially valuable path for future exploration.
Endogenous Thresholds
As described in the main text, we operationalized the endogenous meaning
of each taste by selecting two thresholds of local popularity: a taste was con-
sidered “specialized” if it was expressed by fewer than .5% of students at a
given wave and “common” if it was expressed by more than 5% of students.
How robust are results to alternative thresholds? To answer this question,
we again replicated model 2, each time substituting a different threshold for
one of our endogenous measures: in model A4 we replaced the threshold for
specialized tastes with .25% and in model A5 with 1% (respectively, half
and double the original value), and in model A6 we replaced the threshold
for common tastes with 2.5% and in model A7 with 10% (respectively, half
and double the original value). Results are presented in table A3.
Findings from these replications are reassuring. Speciﬁcally, in all cases
where there was a signiﬁcant taste effect in model 2, this effect continued to
be statistically signiﬁcant in all four of the replication models. Additionally,
we ﬁnd that in some cases new effects appeared that were not present in our
original model. For instance, when the threshold for common culture tastes
is reduced to 2.5%, we ﬁnd a signiﬁcant dyadic aversion effect for shared
common culture tastes and a signiﬁcant dyadic conversion effect for shared
tastes in music, and when the threshold for common culture tastes is raised
to 10%, we ﬁnd signiﬁcant generalized conversion effects for tastes in music
and in books. Collectively, these ﬁndings indicate that different thresholds
Conversion of Cultural Tastes
1733
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

for endogenous measures may illuminate some variation in conversion dy-
namics. However, the central conclusions from model 2 are robust across
multiple operationalizations.
TABLE A3
Taste Effects from Model 2 and Four Replication Models with Varying
Thresholds for Endogenous Measures
Model 2
Model A4 Model A5 Model A6 Model A7
Individual effects:
Consecrated culture . . . . . . . . . .
2.61
2.62
2.63
2.64
2.53
(.43)
(.44)
(.44)
(.43)
(.43)
Mass culture . . . . . . . . . . . . . . . .
2.81*
2.84*
2.83*
2.75*
2.84*
(.34)
(.34)
(.34)
(.34)
(.35)
Specialized culture . . . . . . . . . . .
2.01
2.15
2.09
2.10
2.50
(.37)
(.42)
(.39)
(.45)
(.32)
Common culture . . . . . . . . . . . . .
2.15***
2.04***
2.07***
1.23*
3.38***
(.52)
(.48)
(.56)
(.49)
(.95)
Movies. . . . . . . . . . . . . . . . . . . . .
21.06*** 21.02*** 21.01**
21.07**
2.70*
(.31)
(.28)
(.36)
(.36)
(.29)
Music. . . . . . . . . . . . . . . . . . . . . .
.17
.22
.23
.14
.55**
(.25)
(.21)
(.31)
(.33)
(.21)
Books . . . . . . . . . . . . . . . . . . . . .
.73
.80*
.79
.81
1.07**
(.41)
(.40)
(.46)
(.44)
(.39)
Dyadic effects:
Shared consecrated culture. . . . .
3.35
3.37
3.41
3.28
3.39
(2.41)
(2.41)
(2.36)
(2.38)
(2.36)
Shared mass culture . . . . . . . . . .
23.41
23.44
23.37
23.19
23.15
(1.90)
(1.85)
(1.85)
(1.87)
(1.85)
Shared specialized culture . . . . .
14.07
18.12
7.75
9.83
14.45
(8.22)
(17.63)
(4.96)
(8.69)
(8.15)
Shared common culture . . . . . . .
23.04
23.44
22.55
25.74*
24.52
(2.11)
(2.05)
(2.18)
(2.71)
(2.32)
Shared movies. . . . . . . . . . . . . . .
1.85
2.30
1.39
5.08
1.26
(2.45)
(2.42)
(2.58)
(3.08)
(2.20)
Shared music. . . . . . . . . . . . . . . .
2.81
3.23
2.35
5.96*
2.14
(1.87)
(1.78)
(1.94)
(2.57)
(1.58)
Shared books. . . . . . . . . . . . . . . .
.81
1.27
.23
3.84
.20
(2.89)
(2.84)
(3.04)
(3.39)
(2.67)
Taste similarity (%). . . . . . . . . . .
1.94*
1.93*
1.94**
2.02**
1.97**
(.77)
(.76)
(.75)
(.76)
(.76)
Threshold (%):
Specialized (less than). . . . . . . . .
.50
.25
1.00
.50
.50
Common (greater than). . . . . . . .
5.00
5.00
5.00
2.50
10.00
NOTE.—N 5 520 for all models. All results are multiplied by 100. Data are presented as
coefﬁcient (SE).
* P < .05.
** P < .01.
*** P < .001.
American Journal of Sociology
1734
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

APPENDIX B
Modeling Social Networks
Rivera et al. (2010) have documented the rise of network research in top so-
ciology journals over the preceding 40 years. By now, most sociologists are
therefore familiar with the fundamental prioritization of relationships that
characterizes network research. Beyond this grasp of what network ana-
lysts study, however, much less attention is generally paid to how they go
about their research in ways that are occasionally very different from main-
stream conventions. In this appendix, we wish to clarify and make explicit
two such differences that are relevant to this article. These have to do with
model building and goodness of ﬁt in the context of stochastic actor-based
models.
Model Building
In their introduction to stochastic actor-based models, Snijders et al. (2010)
give special attention to model building: “For actor-based models for net-
work dynamics, information-theoretic model selection criteria have not
yet generally been developed. . . . Currently the best possibility is to use
ad hoc stepwise procedures, combining forward steps (where effects are
added to the model) with backward steps (where effects are deleted). The
steps can be based on signiﬁcance tests for the various effects that may be
included in the model” (p. 50). Snijders et al. then proceed to outline a series
of guideline for practitioners to follow. The approach we describe above, by
which we reached the “ﬁnal” models in this article, attempts to synthesize as
many as possible of these guidelines into a straightforward, transparent,
and replicable procedure.
This approach may appear strikingly different from mainstream conven-
tions in quantitative social science—where inductive exploration is often
discouraged and signiﬁcance tests should technically be altered to accom-
modate repeated model runs and deletion of nonsigniﬁcant effects. To our
understanding, the underlying motivation behind this difference is network
analysts’ emphasis on ﬁt—where even an effect that is not statistically signif-
icant may still be “important” in the sense of achieving a good-ﬁtting model.
To date, however, there seems to remain a gap between methodologists’ ar-
ticulation of these principles (often in specialty journals) and their implemen-
tation in mainstream research. A large variety of applications of stochastic
actor-based models are compiled on the Siena webpage (www.stats.ox.ac
.uk/~snijders/siena). For model-building illustrations that are similar to ours
in spirit but based instead on exponential random graph models (a technique
for cross-sectional analysis), we recommend Goodreau’s (2007) examination
of a large network from the National Longitudinal Study of Adolescent
Conversion of Cultural Tastes
1735
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Health and also Wimmer and Lewis’s (2010) analysis of wave 1 of the same
data set used here.
Goodness of Fit
If recommended approaches to network model building often prioritize ﬁt,
what criteria of evaluation should be used? Following again the advice in
the methodological literature (and also the RSiena manual; Ripley et al.
2016), our approach in the main text utilizes t-tests of individual coefﬁcients
and also the score-type goodness-of-ﬁt tests described by Schweinberger
(2012). Other, more holistic approaches are also available. An increasingly
common technique is to compare the observed network to simulated net-
works from the ﬁnal model with respect to macrolevel network properties
that are not explicitly modeled (cf. Hunter, Goodreau, and Handcock 2008).
One particularly important property is the “degree distribution”—in our
case, the distribution of the quantity of friendships over students.
In ﬁgure B1, we compare the cumulative degree distribution of the actu-
ally observed network (in 10-degree intervals) with simulations based on
each of our four “ﬁnal” models (models 4, 6, 8, and 10). Preliminary visual
inspection suggests the simulated and observed distributions are rather sim-
ilar, although quantitative summaries are less optimistic (all P-values based
on Monte Carlo Mahalanobis distance tests are less than .05, which in this
case suggests worse ﬁt) and the centered, more ﬁne-grained plots in the
right-hand column reveal substantial deviation between simulations and
observations. Because our network is considerably larger than many appli-
cations of stochastic actor-based models, ﬁt may be generally poorer; larger
networks may contain greater internal heterogeneity that current models
are unable to satisfactorily represent (we thank Tom Snijders for helpful
feedback on this issue). We provide these plots for the sake of transparency
and in hope that they will stimulate further development.
American Journal of Sociology
1736
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

FIG. B1.—Goodness-of-ﬁt plots for models 4, 6, 8, and 10. The solid line represents the
cumulative degree distribution of the observed network, aggregated into 10-degree inter-
vals (and presented here for a maximum degree of 100, which represents over 95% of stu-
dents in all models). Violin plots represent network simulations in phase 3 of the estima-
tion algorithm. Plots in the right column are centered to enhance visibility. Statistics for
the comprehensive model (model 4) are aggregated across all periods.
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

REFERENCES
Adamic, Lada A., and Eytan Adar. 2003. “Friends and Neighbors on the Web.” Social
Networks 25:211–230.
adams, jimi, Katherine Faust, and Gina S. Lovasi. 2012. “Capturing Context: Integrating
Spatial and Social Network Analyses.” Social Networks 34:1–5.
Alderson, Arthur S., Azamat Junisbai, and Isaac Heacock. 2007. “Social Status and Cul-
tural Consumption in the United States.” Poetics 35:191–212.
Alexander, Jeffrey and Philip Smith. 2001. “The Strong Program in Cultural Theory: El-
ements of a Structural Hermeneutics.” Pp. 135–50 in Handbook of Sociological Theory,
edited by J. H. Turner. New York: Kluwer Academic.
Allen, Michael Patrick, and Anne E. Lincoln. 2004. “Critical Discourse and the Cultural
Consecration of American Films.” Social Forces 82:871–94.
Aral, Sinan, and Dylan Walker. 2012. “Identifying Inﬂuential and Susceptible Members
of Social Networks.” Science 337:337–41.
Arnaboldi, Valerio, Andrea Guazzini, and Andrea Passarella. 2013. “Egocentric Online
Social Networks: Analysis of Key Features and Prediction of Tie Strength in Face-
book.” Computer Communications 36:1130–44.
Axelrod, Robert. 1997. “The Dissemination of Culture: A Model with Local Convergence
and Global Polarization.” Journal of Conﬂict Resolution 41:203–26.
Baumann, Shyon. 2001. “Intellectualization and Art World Development: Film in the
United States.” American Sociological Review 66:404–26.
Bearman, Peter. 1997. “Generalized Exchange.” American Journal of Sociology 102:
1383–1415.
Benediktsson, Mike Owen. 2012. “Bridging and Bonding in the Academic Melting Pot:
Cultural Resources and Network Diversity.” Sociological Forum 27:46–69.
Bennett, Tony, Mike Savage, Elizabeth Silva, Alan Warde, Modesto Gayo-Cal, and Da-
vid Wright. 2009. Culture, Class, Distinction. London: Routledge.
Block, Per, and Thomas Grund. 2014. “Multidimensional Homophily in Friendship Net-
works.” Network Science 2:189–212.
Borgatti, Stephen P., Ajay Mehra, Daniel J. Brass, and Giuseppe Labianca. 2009. “Net-
work Analysis in the Social Sciences.” Science 323:892–95.
Bourdieu, Pierre. 1984. Distinction: A Social Critique of the Judgement of Taste. Trans-
lated by R. Nice. Cambridge, Mass.: Harvard University Press.
———. 1986. “The Forms of Capital.” Pp. 241–58 in Handbook of Theoryand Research for
the Sociology of Education, edited by J. G. Richardson. New York: Greenwood Press.
Breiger, Ronald L. 1974. “The Duality of Persons and Groups.” Social Forces 53:181–90.
Bryson, Bethany. 1996. “‘Anything but Heavy Metal’: Symbolic Exclusion and Musical
Dislikes.” American Sociological Review 61:884–99.
Bukodi, Erzsébet. 2007. “Social Stratiﬁcation and Cultural Consumption in Hungary:
Book Readership.” Poetics 35:112–31.
Campbell, Karen E., Peter V. Marsden, and Jeanne S. Hurlbert. 1986. “Social Resources
and Socioeconomic Status.” Social Networks 8:97–117.
Carley, Kathleen. 1991. “A Theory of Group Stability.” American Sociological Review
56:331–54.
Cartwright, Dorwin, and Frank Harary. 1956. “Structural Balance: A Generalization of
Heider’s Theory.” Psychological Review 63:277–93.
Chan, Tak Wing, and John H. Goldthorpe. 2005. “The Social Stratiﬁcation of Theatre,
Dance and Cinema Attendance.” Cultural Trends 14:193–212.
Coser, Lewis A. 1974. Greedy Institutions: Patterns of Undivided Commitment. New
York: Free Press.
Dahlander, Linus, and Daniel A. McFarland. 2013. “Ties That Last: Tie Formation and
Persistence in Research Collaborations over Time.” Administrative Science Quarterly
58:69–110.
American Journal of Sociology
1738
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

de Klepper, Maurits, Ed Sleebos, Gerhard van de Bunt, and Filip Agneessens. 2010.
“Similarity in Friendship Networks: Selection or Inﬂuence? The Effect of Constrain-
ing Contexts and Non-Visible Individual Attributes.” Social Networks 32:82–90.
DiMaggio, Paul. 1982. “Cultural Capital and School Success: The Impact of Status Cul-
ture Participation on the Grades of U.S. High School Students.” American Sociological
Review 47:189–201.
———. 1987. “Classiﬁcation in Art.” American Sociological Review 52:440–55.
———. 2004. “Gender, Networks, and Cultural Capital.” Poetics 32:99–103.
DiMaggio, Paul, and Filiz Garip. 2012. “Network Effects and Social Inequality.” Annual
Review of Sociology 38:93–118.
DiMaggio, Paul, and John Mohr. 1985. “Cultural Capital, Educational Attainment, and
Marital Selection.” American Journal of Sociology 90:1231–61.
Edelmann, Achim, and Stephen Vaisey. 2014. “Cultural Resources and Cultural Distinc-
tion in Networks.” Poetics 46:22–37.
Eliasoph, Nina, and Paul Lichterman. 2003. “Culture in Interaction.” American Journal
of Sociology 108:735–94.
Ellison, Nicole B., Charles Steinﬁeld, and Cliff Lampe. 2007. “The Beneﬁts of Facebook
‘Friends’: Social Capital and College Students’ Use of Online Social Network Sites.”
Journal of Computer-Mediated Communication 12:1143–68.
Emirbayer, Mustafa, and Jeff Goodwin. 1994. “Network Analysis, Culture, and the
Problem of Agency.” American Journal of Sociology 99:1411–54.
Erickson, Bonnie H. 1996. “Culture, Class, and Connections.” American Journal of So-
ciology 102:217–51.
Feld, Scott L. 1981. “The Focused Organization of Social Ties.” American Journal of So-
ciology 86:1015–35.
———. 1982. “Social Structural Determinants of Similarity among Associates.” Ameri-
can Sociological Review 47:797–801.
Fine, Gary Alan, and Corey D. Fields. 2008. “Culture and Microsociology: The Anthill
and the Veldt.” Annals of the American Academy of Political and Social Science
619:130–48.
Fischer, Claude S. 1982. “What Do We Mean by ‘Friend’? An Inductive Study.” Social
Networks 3:287–306.
Golder, Scott A., and Michael W. Macy. 2014. “Digital Footprints: Opportunities and
Challenges for Online Social Research.” Annual Review of Sociology 40:129–52.
Gonçalves, Bruno, Nicola Perra, and Alessandro Vespignani. 2011. “Modeling Users’
Activity on Twitter Networks: Validation of Dunbar’s Number.” PLoS ONE 6:e22656.
Goodreau, Steven M. 2007. “Advances in Exponential Random Graph (p*) Models Ap-
plied to a Large Social Network.” Social Networks 29:231–48.
Goodreau, Steven M., James A. Kitts, and Martina Morris. 2009. “Birds of a Feather, or
Friend of a Friend? Using Exponential Random Graph Models to Investigate Adoles-
cent Social Networks.” Demography 46:103–25.
Griswold, Wendy, Terry McDonnell, and Nathan Wright. 2005. “Reading and the Read-
ing Class in the Twenty-First Century.” Annual Review of Sociology 31:127–41.
Hagan, John. 1991. “Destiny and Drift: Subcultural Preferences, Status Attainments, and
the Risks and Rewards of Youth.” American Sociological Review 56:567–82.
Harrington, Brooke, and Gary Alan Fine. 2006. “Where the Action Is: Small Groups and
Recent Developments in Sociological Theory.” Small Group Research 37:4–19.
Hughes, Michael, and Richard A. Peterson. 1983. “Isolating Cultural Choice Patterns in
the U.S. Population.” American Behavioral Scientist 26:459–78.
Huisman, Mark, and Christian Steglich. 2008. “Treatment of Non-Response in Longitu-
dinal Network Studies.” Social Networks 30:297–308.
Hunter, David R., Steven M. Goodreau, and Mark S. Handcock. 2008. “Goodness of Fit
of Social Network Models.” Journal of the American Statistical Association 103:248–
58.
Conversion of Cultural Tastes
1739
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Jacobs, Mark D., and Lyn Spillman. 2005. “Cultural Sociology at the Crossroads of the
Discipline.” Poetics 33:1–14.
Kalmijn, Matthijs. 1994. “Assortative Mating by Cultural and Economic Occupational
Status.” American Journal of Sociology 100:422–52.
Katz-Gerro, Tally. 1999. “Cultural Consumption and Social Stratiﬁcation: Leisure Activ-
ities, Musical Tastes, and Social Location.” Sociological Perspectives 42:627–46.
Kaufman, Jason. 2004. “Endogenous Explanation in the Sociology of Culture.” Annual
Review of Sociology 30:335–57.
Kaufman, Jason, and Jay Gabler. 2004. “Cultural Capital and the Extracurricular Activ-
ities of Girls and Boys in the College Attainment Process.” Poetics 32:145–68.
Kossinets, Gueorgi, and Duncan J. Watts. 2009. “Origins of Homophily in an Evolving
Social Network.” American Journal of Sociology 115:405–50.
Lahire, Bernard. 2008. “The Individual and the Mixing of Genres: Cultural Dissonance
and Self-Distinction.” Poetics 36:166–88.
Lamont, Michèle, and Annette Lareau. 1988. “Cultural Capital: Allusions, Gaps and
Glissandos in Recent Theoretical Developments.” Sociological Theory 6:153–68.
Lewis, Kevin. 2015a. “How Networks Form: Homophily, Opportunity, and Balance.” In
Emerging Trends in the Social and Behavioral Sciences, edited by R. Scott and S.
Kosslyn. Hoboken, N.J.: John Wiley & Sons.
———. 2015b. “Three Fallacies of Digital Footprints.” Big Data and Society 2. https://
doi.org/10.1177/2053951715602496.
Lewis, Kevin, Marco Gonzalez, and Jason Kaufman. 2012. “Social Selection and Peer In-
ﬂuence in an Online Social Network.” Proceedings of the National Academy of Sci-
ences of the United States of America 109:68–72.
Lewis, Kevin, Jason Kaufman, and Nicholas Christakis. 2008a. “The Taste for Privacy:
An Analysis of College Student Privacy Settings in an Online Social Network.” Journal
of Computer-Mediated Communication 14:79–100.
Lewis, Kevin, Jason Kaufman, Marco Gonzalez, Andreas Wimmer, and Nicholas
Christakis. 2008b. “Tastes, Ties, and Time: A New Social Network Dataset Using
Facebook.com.” Social Networks 30:330–42.
Lieberson, Stanley. 2000. A Matter of Taste: How Names, Fashions, and Culture Change.
New Haven, Conn.: Yale University Press.
Lizardo, Omar. 2006. “How Cultural Tastes Shape Personal Networks.” American So-
ciological Review 71:778–807.
Lomi, Alessandro, and Christoph Stadtfeld. 2014. “Social Networks and Social Settings:
Developing a Coevolutionary View.” Kölner Zeitschrift für Soziologie und Sozialpsy-
chologie 66:395–415.
Long, Elizabeth. 2003. Book Clubs: Women and the Uses of Reading in Everyday Life.
Chicago: University of Chicago Press.
Lopes, Paul. 2006. “Culture and Stigma: Popular Culture and the Case of Comic Books.”
Sociological Forum 21:387–414.
Macdonald, Dwight. 1983. Against the American Grain. New York: Da Capo Press.
Mark, Noah. 1998. “Birds of a Feather Sing Together.” Social Forces 77:453–85.
———. 2003. “Culture and Competition: Homophily and Distancing Explanations for
Cultural Niches.” American Sociological Review 68:319–45.
Marmaros, David, and Bruce Sacerdote. 2006. “How Do Friendships Form?” Quarterly
Journal of Economics 121:79–119.
Marsden, Peter V. 1987. “Core Discussion Networks of Americans.” American Sociolog-
ical Review 52:122–31.
Marsden, Peter V., and Joseph F. Swingle. 1994. “Conceptualizing and Measuring Cul-
ture in Surveys: Values, Strategies, and Symbols.” Poetics 22:269–89.
Mayer, Adalbert, and Steven L. Puller. 2008. “The Old Boy (and Girl) Network: Social
Network Formation on University Campuses.” Journal of Public Economics 92:329–47.
McPherson, J. Miller. 1976. “Theory Trimming.” Social Science Research 5:95–105.
American Journal of Sociology
1740
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

McPherson, Miller, Lynn Smith-Lovin, and James M. Cook. 2001. “Birds of a Feather:
Homophily in Social Networks.” Annual Review of Sociology 27:415–44.
Mercken, L., Tom A. B. Snijders, Christian Steglich, E. Vartiainen, and H. de Vries.
2010. “Dynamics of Adolescent Friendship Networks and Smoking Behavior.” Social
Networks 32:72–81.
Mohr, John W. 1998. “Measuring Meaning Structures.” Annual Review of Sociology
24:345–70.
Mohr, John W., and Amin Ghaziani. 2014. “Problems and Prospects of Measurement in
the Study of Culture.” Theory and Society 43:225–46.
Ollivier, Michèle. 2008. “Modes of Openness to Cultural Diversity: Humanist, Populist,
Practical, and Indifferent.” Poetics 36:120–47.
Ostrower, Francie. 1998. “The Arts as Cultural Capital among Elites: Bourdieu’s Theory
Reconsidered.” Poetics 26:43–53.
Pachucki, Mark A., and Ronald L. Breiger. 2010. “Cultural Holes: Beyond Relationality
in Social Networks and Culture.” Annual Review of Sociology 36:205–24.
Peterson, Richard A. 1992. “Understanding Audience Segmentation: From Elite and
Mass to Omnivore and Univore.” Poetics 21:243–58.
———. 2005. “Problems in Comparative Research: The Example of Omnivorousness.”
Poetics 33:257–82.
Peterson, Richard A., and Roger M. Kern. 1996. “Changing Highbrow Taste: From Snob
to Omnivore.” American Sociological Review 61:900–907.
Popielarz, Pamela A., and Zachary P. Neal. 2007. “The Niche as a Theoretical Tool.” An-
nual Review of Sociology 33:65–84.
Ripley, Ruth M., Tom A. B. Snijders, Zsóﬁa Boda, András Vörös, and Paulina Preciado.
2016. “Manual for Rsiena (Version May 28, 2016).” Oxford: University of Oxford, De-
partment of Statistics, Nufﬁeld College.
Rivera, Lauren A. 2012. “Hiring as Cultural Matching: The Case of Elite Professional
Service Firms.” American Sociological Review 77:999–1022.
Rivera, Mark T., Sara B. Soderstrom, and Brian Uzzi. 2010. “Dynamics of Dyads in So-
cial Networks: Assortative, Relational, and Proximity Mechanisms.” Annual Review
of Sociology 36:91–115.
Robins, Garry, Pip Pattison, Yuval Kalish, and Dean Lusher. 2007. “An Introduction to
Exponential Random Graph (P*) Models for Social Networks.” Social Networks
29:173–91.
Robinson, John P., and Geoffrey Godbey. 1997. Time for Life: The Surprising Ways
Americans Use Their Time. University Park: Pennsylvania State University Press.
Roy, William G., and Timothy J. Dowd. 2010. “What Is Sociological about Music?” An-
nual Review of Sociology 36:183–203.
Schultz, Jennifer, and Ronald L. Breiger. 2010. “The Strength of Weak Culture.” Poetics
38:610–24.
Schweinberger, Michael. 2012. “Statistical Modeling of Network Panel Data: Goodness-
of-Fit.” British Journal of Statistical and Mathematical Psychology 65:263–81.
Selfhout, Maarten H. W., Susan J. T. Branje, Tom F. M. ter Bogt, and Wim H. J. Meeus.
2009. “The Role of Music Preferences in Early Adolescents’ Friendship Formation and
Stability.” Journal of Adolescence 32:95–107.
Snijders, Tom A. B. 1996. “Stochastic Actor-Oriented Dynamic Network Analysis.”
Journal of Mathematical Sociology 21:149–72.
———. 2001. “The Statistical Evaluation of Social Network Dynamics.” Sociological
Methodology 31:361–95.
———. 2005. “Models for Longitudinal Network Data.” Pp. 215–47 in Models and
Methods in Social Network Analysis, edited by P. J. Carrington, J. Scott, and S.
Wasserman. Cambridge: Cambridge University Press.
———. 2011. “Statistical Models for Social Networks.” Annual Review of Sociology
37:131–53.
Conversion of Cultural Tastes
1741
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

Snijders, Tom A. B., and Patrick Doreian. 2010. “Introduction to the Special Issue on
Network Dynamics.” Social Networks 32:1–3.
———. 2012. “Introduction to the Special Issue on Network Dynamics (Part 2).” Social
Networks 34:289–90.
Snijders, Tom A. B., Gerhard van de Bunt, and Christian Steglich. 2010. “Introduction to
Stochastic Actor-Based Models for Network Dynamics.” Social Networks 32:44–60.
Steglich, Christian, Tom A. B. Snijders, and Michael Pearson. 2010. “Dynamic Net-
works and Behavior: Separating Selection from Inﬂuence.” Sociological Methodology
40:329–93.
Steglich, Christian, Tom A. B. Snijders, and Patrick West. 2006. “Applying Siena: An Il-
lustrative Analysis of the Coevolution of Adolescents’ Friendship Networks, Taste in
Music, and Alcohol Consumption.” Methodology 2:48–56.
Swidler, Ann. 1986. “Culture in Action: Symbols and Strategies.” American Sociological
Review 51:273–86.
Vaisey, Stephen. 2009. “Motivation and Justiﬁcation: A Dual-Process Model of Culture
in Action.” American Journal of Sociology 114:1675–1715.
Vaisey, Stephen, and Omar Lizardo. 2010. “Can Cultural Worldviews Inﬂuence Net-
work Composition?” Social Forces 88:1595–1618.
van Duijn, Marijtje A. J., Evelien P. H. Zeggelink, Mark Huisman, Frans N. Stokman,
and Frans W. Wasseur. 2003. “Evolution of Sociology Freshmen into a Friendship
Network.” Journal of Mathematical Sociology 27:153–91.
van Venrooij, Alex. 2009. “The Aesthetic Discourse Space of Popular Music: 1985–86
and 2004–05.” Poetics 37:315–32.
Verbrugge, Lois M. 1977. “The Structure of Adult Friendship Choices.” Social Forces
56:576–97.
Warde, Alan, and Modesto Gayo-Cal. 2009. “The Anatomy of Cultural Omnivorousness:
The Case of the United Kingdom.” Poetics 37:119–45.
Werner, Carol, and Pat Parmelee. 1979. “Similarity of Activity Preferences among Friends:
Those Who Play Together Stay Together.” Social Psychology Quarterly 42:62–66.
Wimmer, Andreas, and Kevin Lewis. 2010. “Beyond and Below Racial Homophily:
ERG Models of a Friendship Network Documented on Facebook.” American Journal
of Sociology 116:583–642.
Zavisca, Jane. 2005. “The Status of Cultural Omnivorism: A Case Study of Reading in
Russia.” Social Forces 84:1233–55.
Zywica, Jolene, and James Danowski. 2008. “The Faces of Facebookers: Investigating
Social Enhancement and Social Compensation Hypotheses; Predicting Facebook
and Ofﬂine Popularity from Sociability and Self-Esteem, and Mapping the Meanings
of Popularity with Semantic Networks.” Journal of Computer-Mediated Communica-
tion 14:1–34.
American Journal of Sociology
1742
This content downloaded from 129.008.242.067 on June 07, 2018 03:05:18 AM
All use subject to University of Chicago Press Terms and Conditions (http://www.journals.uchicago.edu/t-and-c).


--- PAGE BREAK ---

