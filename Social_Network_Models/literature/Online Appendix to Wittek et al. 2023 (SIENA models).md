 
 
72 
Online Appendix B: Stochastic Actor-Oriented Models 
1413 
In addition to our main analytical strategy, we also analyzed the data set with stochastic actor-
1414 
oriented models (SAOMs), which have been developed to capture dynamic social processes 
1415 
(Snijders, 2011). Detailed explanations can be found in Ripley et al. (2019) and Snijders et al. 
1416 
(2010). These models treat changes in collaboration ties as the result of a continuous-time 
1417 
Markov process in which actors “choose” whom to collaborate with based on an objective 
1418 
function. This actor-oriented approach in principle allows researchers to estimate parameters 
1419 
for theoretically assumed network mechanisms under consideration of network endogenous 
1420 
dynamics.24 
1421 
A note of caution 
1422 
Despite the numerous analytical advantages of SAOMs, certain methodological concerns 
1423 
ultimately forced us to abandon SAOMs as part of our primary analytical strategy. One of 
1424 
these concerns was related to a poor goodness of fit, an issue which seems to be impossible to 
1425 
circumvent in applications to large networks at the method’s current developmental stage 
1426 
(Stark, Rambaran, and McFarland 2020: 458, endnote 2; Lewis and Kaufman 2018: 1736–
1427 
1737). Another problem was that SAOMs assume that actors are aware of all potential 
1428 
partners in the network (Ripley et al., 2019; Snijders et al., 2010). This assumption might be 
1429 
warranted for early stages of neuroblastoma research but it becomes problematic for later 
1430 
 
24 It is also possible to account for the longitudinal structure of the data set in the ERGMs framework 
by controlling for previous collaborations. We performed analyses that controlled for previous 
collaborations by considering whether dyads had a tie during earlier stages of the network, which is in 
line with previous studies (e.g., McFarland et al., 2014). These analyses showed very similar results 
compared with analyses reported in the main text and are available upon request. We decided to report 
models without controlling for previous collaborations because advancements in the interpretation of 
longitudinal network models raised doubts about whether an auto-regressive approach is valid for 
ERGMs (Block et al., 2018). Nevertheless, it is reassuring that our interpretation of the results remains 
qualitatively unchanged if we enter previous collaborations in our model specifications. 


--- PAGE BREAK ---

 
 
73 
stages as the field quickly grew, encompassing more than 200 researchers from the early 
1431 
1990s onward.  
1432 
Therefore, we would like to emphasize that the reported network models should be 
1433 
interpreted only with the greatest caution regarding the substantial claims made in this article. 
1434 
However, we hope that these additional results will be informative for other researchers 
1435 
facing similar problems in their applications of network models to large data sets with 
1436 
changing sizes. Also, changes between models may still provide a qualitative indication of 
1437 
changes in network structure, e.g., if they are compared between periods with similar sizes. 
1438 
 
1439 
Model specification 
1440 
We included four parameters in all specifications. The so-called “degree activity effect” 
1441 
captures how popular a researcher is as a collaborator based on her previously accumulated 
1442 
number of coauthorships. A positive estimate indicates that preferential attachment is 
1443 
occurring, and scientists with many coauthor ties maintain and attract more ties over time. 
1444 
The second parameter, “degree homophily” (alias “assortativity”), measures whether authors 
1445 
with a similar number of coauthorships are more or less likely to collaborate. A significantly 
1446 
negative value for this parameter indicates a tendency for authors with many ties to 
1447 
collaborate with others who have fewer coauthorships. The third effect (“Experience of 
1448 
author”) depicts whether authors who have a long experience in the field are more attractive 
1449 
as collaborators: this is the case if the effect turns positive and significant. The fourth 
1450 
parameter is called “Similar experience” and measures whether researchers with similar years 
1451 
of experience are more likely to collaborate with each other than researchers with dissimilar 
1452 
years of experience. We would interpret a significantly positive estimate here as a sign of the 
1453 
presence of status homogeneity in the network. Likewise, we included a term capturing the 
1454 
network popularity of scientists according to their cumulated publications record 
1455 
(“Publications of author”) and a corresponding parameter indicating whether scientists with 
1456 


--- PAGE BREAK ---

 
 
74 
similar publication records are more likely to collaborate (“Similar number of publications”). 
1457 
Moreover, we add the “Share of last author positions” term to account for the accumulation of 
1458 
coauthorships that occurs due to being the leader of a research group, i.e., seniority. Likewise, 
1459 
we included a term that captures homogeneity according to seniority (“Similar share of last 
1460 
author positions”). 
1461 
 
1462 
Control variables 
1463 
Besides past coauthorship, experience, productivity, and seniority, many other factors are also 
1464 
influential in the formation of scientific collaboration. As highlighted by Wuchty et al. (2007), 
1465 
the average number of coauthor ties increased dramatically over time. To control for the 
1466 
number of ties, we included the “density” term, which is always part of SAOMs and which 
1467 
captures the density of the network. A negative term indicates that fewer ties are present than 
1468 
there would be if a random allocation of ties took place. Previous research illustrated that 
1469 
collaboration is—like many social relationships—bound to foci of activity (Feld, 1991). For 
1470 
instance, coauthorships are more prevalent among researchers in the same department 
1471 
(Dahlander and McFarland, 2013; Stark et al., 2020). To account for these foci of interaction 
1472 
we included a term capturing whether two authors are affiliated with the same institution 
1473 
(“same institution”) or country (“same country”). Moreover, we added the geometrically 
1474 
weighted edgewise-shared partner (GWESP) effect, which models transitivity—the tendency 
1475 
to collaborate with others who collaborate with one’s current coauthors—to further account 
1476 
for the local clustering of ties.  
1477 
 
1478 


--- PAGE BREAK ---

 
 
75 
Table B1. Stochastic actor-oriented models SAOMs for collaboration network of neuroblastoma researchers   
1479 
Periods 
1975–1987 
1984–1987 
1987–1990 
1990–1993 
1993–1994 
1994–1996 
1996–1998 
1998–2000 
Density 
-2.56*** 
(0.41) 
-2.83*** 
(0.24) 
14.18 
(8.62) 
-2.88*** 
(0.16) 
10.15 
(11.13) 
-3.76*** 
(0.82) 
-2.50*** 
(0.22) 
-3.35*** 
(0.13) 
Geometrically weighted edgewise-
shared partners (GWESP) 
5.90*** 
(1.00) 
 3.60*** 
(0.25) 
10.56** 
(4.23) 
 4.10*** 
(0.20) 
12.99 † 
(6.88) 
 5.09*** 
(0.46) 
 4.98*** 
(0.35) 
 4.67*** 
(0.14) 
Degree activity (preferential attachment) 
0.31*** 
(0.09) 
 0.19*** 
(0.04) 
 0.80 †   
(0.48) 
 0.17*** 
(0.02) 
 0.87 
(0.50) 
 0.28* 
(0.15) 
 0.12*** 
(0.03) 
 0.11*** 
(0.01) 
Degree homophily (assortativity) 
-0.97*** 
(0.25) 
-0.49*** 
(0.10) 
-3.23†   
(1.73) 
-0.48*** 
(0.05) 
-3.55 
(2.20) 
-0.75** 
(0.30) 
-0.54*** 
(0.09) 
-0.39*** 
(0.03) 
Same country 
-3.03*** 
(0.67) 
-2.36*** 
(0.35) 
-3.40†   
(1.63) 
-2.08*** 
(0.30) 
-2.52 
(2.19) 
-1.73*** 
(0.35) 
-1.09*** 
(0.13) 
-2.11*** 
(0.15) 
Same institution 
 1.08†   
(0.64) 
 1.41*** 
(0.37) 
-0.61 
(1.38) 
 0.02 
(0.26) 
-0.62 
(1.31) 
-0.35 
(0.44) 
  0.02 
(0.14) 
 0.45*** 
(0.11) 
Experience of author 
 0.02 
(0.06) 
 0.07 †   
(0.037) 
 0.24* 
(0.12) 
 0.06 †  
(0.04) 
-0.08 
(0.10) 
 0.14* 
(0.07) 
-0.03 
(0.02) 
 0.01 
(0.01) 
Similar experience  
 0.08 
(0.56) 
 0.43 
(0.31) 
 1.66 
(1.47) 
 0.83 
(0.60) 
-1.22 
(1.49) 
 2.42** 
(0.80) 
 0.18 
(0.30) 
 0.12 
(0.27) 
Publications of author (cumulative) 
 0.22** 
(0.08) 
 0.01 
(0.13) 
 0.35** 
(0.13) 
 0.04 
(0.04) 
 0.03 
(0.06) 
 0.08** 
(0.03) 
 0.07*** 
(0.01) 
 0.03*** 
(0.01) 
Similar number of publications  
 4.73*** 
(1.89) 
 0.42 
(0.78) 
 2.34 
(1.51) 
 0.44 
(0.40) 
-0.41 
(1.56) 
 2.35*** 
(0.66) 
 1.67** 
(0.64) 
 2.16*** 
(0.40) 
Share of last author positions 
 0.15 
(0.42)  
-0.21 
(0.34) 
-3.14 
(2.32) 
 0.47* 
(0.24) 
-3.82 
(3.20) 
-0.16 
(0.48) 
 0.44* 
(0.21) 
 0.19 
(0.20) 
Similar share of last author positions 
 0.24 
(0.39) 
-0.26 
(0.33) 
 0.17 
(1.10) 
 0.22 
(0.22) 
-2.45 
(2.65) 
-0.27 
(0.28) 
 0.26 
(0.21) 
 0.17 
(0.17) 
Number of actors 
158 
152 
240 
323 
364 
531 
708 
721 
Overall convergence ratio  
0.16 
0.17 
0.14 
0.17 
0.15 
0.17 
0.17 
0.14 
 
1480 


--- PAGE BREAK ---

 
 
76 
Periods 
2000–2002 
2002–2004 
2004–2006 
2006–2008 
2008–2010 
2008–201225 
2012–2014 
2014–2016 
Density 
-2.09*** 
(0.29) 
-1.37*** 
(0.21) 
-3.59*** 
(0.11) 
-4.93*** 
(0.14) 
-5.83*** 
(0.42) 
-5.97*** 
(0.18) 
-5.70*** 
(0.74) 
-7.96*** 
(0.51) 
Geometrically weighted edgewise-
shared partners (GWESP) 
 5.22*** 
(0.61) 
 5.86*** 
(0.18) 
 5.00*** 
(0.14) 
 4.43*** 
(0.09) 
 4.92*** 
(0.36) 
 4.99*** 
(0.12) 
 4.70*** 
(0.62) 
 5.17*** 
(0.33) 
Degree activity (preferential attachment) 
 0.17*** 
(0.17) 
 0.20*** 
(0.02) 
 0.10*** 
(0.01) 
 0.04*** 
(0.004) 
 0.04*** 
(0.004) 
 0.05*** 
(0.003) 
 0.04*** 
(0.01) 
 0.03*** 
(0.003) 
Degree homophily (assortativity) 
-0.68*** 
(0.20) 
-0.81*** 
(0.04) 
-0.40*** 
(0.03) 
-0.17*** 
(0.01) 
-0.17*** 
(0.01) 
-0.20*** 
(0.008) 
-0.16*** 
(0.04) 
-0.10*** 
(0.01) 
Same country 
-1.60*** 
(0.18) 
-1.89*** 
(0.12) 
-1.70*** 
(0.09) 
-1.51*** 
(0.06) 
-1.28*** 
(0.10) 
-0.98*** 
(0.05) 
-1.36*** 
(0.19) 
-0.61*** 
(0.04) 
Same institution 
 0.48*** 
(0.14) 
 0.26*** 
(0.09) 
 0.14* 
(0.075) 
 0.26*** 
(0.06) 
 0.45*** 
(0.07) 
 0.34*** 
(0.05) 
 0.42*** 
(0.05) 
 0.51*** 
(0.05) 
Experience of author 
 0.05*** 
(0.01) 
 0.01 
(0.01) 
-0.02* 
(0.01) 
-0.01* 
(0.005) 
-0.007† 
(0.004) 
-0.007* 
(0.003) 
-0.01*** 
(0.003) 
 0.01*** 
(0.003) 
Similar experience of authors 
 1.02*** 
(0.32) 
 0.66* 
(0.28) 
 0.49* 
(0.23) 
 0.11  
(0.14) 
 0.04 
(0.10) 
-0.02 
(0.09) 
-0.22 
(0.22) 
 0.28** 
(0.11) 
Publications of author (cumulative) 
 0.02* 
(0.01) 
 0.03*** 
(0.01) 
 0.04*** 
(0.005) 
 0.02***  
(0.002) 
 0.02*** 
(0.002) 
 0.01*** 
(0.002) 
 0.02*** 
(0.002) 
 0.004*** 
(0.001) 
Similar number of publications  
 0.87 
(0.74) 
 0.76 
(0.71) 
 3.69*** 
(0.49) 
 2.48*** 
(0.28) 
 3.02*** 
(0.24) 
 2.27*** 
(0.20) 
 3.24*** 
(0.63) 
 1.69*** 
(0.23) 
Share of last author positions 
-0.18 
(0.23) 
 0.10 
(0.22) 
 0.79*** 
(0.14) 
 0.44*** 
(0.11) 
 0.52*** 
(0.14) 
 0.46*** 
(0.09) 
 0.45** 
(0.18) 
 0.75*** 
(0.15) 
Similar share of last author positions 
-0.38 
(0.24) 
-0.07 
(0.19) 
 0.39*** 
(0.13) 
-0.05 
(0.10) 
 0.15 
(0.10) 
 0.15† 
(0.08) 
-0.002 
(0.002) 
 0.08 
(0.17) 
Number of actors 
814 
1155 
1257 
1334 
1517 
1850 
1585 
1417 
Overall convergence ratio 
 
0.17 
0.23 
0.20 
0.23 
0.20 
0.12 
0.18 
0.20 
Note.—Standard errors are reported in parentheses. †  p < 0.10  *  p < 0.05 **  p < 0.01 ***  p < 0.001 (two-sided)
1481 
 
25 It was not feasible to estimate a converging model for the period 2010 to 2012. However, defining a period, which entailed three conferences, allowed us to 
obtain converging estimates for the same model specification as for the other periods. 


--- PAGE BREAK ---

 
 
77 
Results 
1482 
We now apply SAOMs to investigate how their results relate to our findings reported in the 
1483 
main text.26 We investigated the 18 conferences in 16 periods and ran our model specification 
1484 
separately for each of these periods. We chose this partitioning of the data because it allowed 
1485 
for converging estimates whereas longer periods often proved too complex for the model (cf., 
1486 
Stark et al. 2020: 444). All presented models showed an overall convergence ratio smaller 
1487 
than 0.25, which indicates appropriate convergence (Ripley et al. 2019). 
1488 
Regarding our theoretical expectation that accumulation dynamics diversify as 
1489 
neuroblastoma research ages, Table B1 shows that parameters capturing the popularity of 
1490 
scientists according to their productivity and seniority did not consistently show statistically 
1491 
significant values until the second half of the 1990s. In a similar vein to our results in the 
1492 
main text, SAOMs indicated that productivity became a relevant factor for scientists’ 
1493 
popularity as coauthors from 1994 onwards. It took even longer for seniority to contribute to 
1494 
scientists’ accumulation of coauthorships (from 2004 onward). In comparison, preferential 
1495 
attachment was present for almost all periods. 
1496 
Concerning our expectation that status homogeneity becomes stronger as a field matures, 
1497 
SAOMs produced results that were broadly consistent with our main analyses: as the field 
1498 
entered the second half of its development, the parameter capturing whether scientists with a 
1499 
similar publication record are more likely to collaborate gained in size and was consistently 
1500 
significant after 2004. In line with our conjecture that scientists with many coauthor ties tend 
1501 
to collaborate with others holding fewer ties because they have just entered the field as PhD 
1502 
students or postdoctoral researchers, we observed a consistently negative significant 
1503 
 
26 Given that the networks under investigation are undirected, we followed the advice provided in 
Ripley et al. (2019: 52) to choose a model type informing the estimation procedure. We chose model 
type 3, which assumes that one actor takes the initiative in proposing a new or resolving an existing 
tie. While it is only possible for a new tie to form if the other actor agrees, no consent of the other 
actor is needed to resolve a tie. 


--- PAGE BREAK ---

 
 
78 
parameter for degree heterophily.27 This corroborates the notion that while status-similar 
1504 
collaborations should become more prevalent as a stratified order emerges, the mentor-
1505 
apprentice model of collaboration should not lose its importance for the organization of 
1506 
research activity.  
1507 
We would like to note that the observed trends also hold for the time span from 2002 
1508 
onwards. Periods in this part of the network’s development show sizes between 1,155 and 
1509 
1,585 actors.28 While this is still a relevant shift in network size, previous accounts compare 
1510 
estimates from models that differ similarly or even more strongly in network size (An, 2015; 
1511 
Goodreau et al., 2009; Kronegger et al., 2012; McFarland et al., 2014; Simpson, 2019; Stark 
1512 
et al., 2020). Therefore, we interpret our results as at least a qualitative indication of changes 
1513 
in network structure. However, future research should address the problem of comparing 
1514 
longitudinal network models between periods with starkly differing sizes and re-evaluate our 
1515 
results and interpretations.  
1516 
 
1517 
Relative importance measures 
1518 
While we limit our discussion of SAOM results to a heuristic comparison of coefficients over 
1519 
time, we also considered the measures of relative importance (RI) proposed by Indlekofer and 
1520 
Brandes (2013). In principle, these measures allow a comparison of the relative importance of 
1521 
different network tendencies for actors’ collaboration choices (for recent applications, see 
1522 
 
27 This finding could also partially be due to the “friendship paradox” discovered by Feld (1991). Feld 
showed that the average number of friendships one’s friends have is almost always higher than one’s 
own number of friendships. In essence, the disproportionate weighting of friends with many ties in the 
calculation of one’s friends’ average number of friendships is responsible for this phenomenon. From 
this, it follows that scholars probably have fewer coauthorship ties than their coauthors have (on 
average.) 
28 Please note that the number of actors for the period 2008–2012 is not comparable because this 
period encompasses three instead of two conferences. The reason for this decision was an issue with 
model degeneracy; please see the corresponding footnote in Table B1. 


--- PAGE BREAK ---

 
 
79 
Rambaran et al., 2020; Schaefer and Kreager, 2020; Stark et al., 2020). However, we decided 
1523 
not to use RIs for several reasons. First, these measures do not consider uncertainty in 
1524 
estimates—many coefficients were large but insignificant in early periods—making the 
1525 
interpretation of their RIs problematic. Second, RIs are an aggregation of individual scores 
1526 
and actors in our data set exhibit strong heterogeneity in terms of overall degrees and the 
1527 
distribution of attributes. While this is not a problem per se, it strains credulity as to how 
1528 
meaningful RIs are in our case. Third, the current implementation of RIs only covers 
1529 
undirected networks of type 2, meaning that one actor can propose or dissolve a tie without 
1530 
the other actor’s consent. Instead, though, we chose model type 3, which assumes that one 
1531 
actor takes the initiative in proposing or resolving a tie, but the other actor has to agree if a tie 
1532 
is initiated (Ripley et al., 2019). 
1533 


--- PAGE BREAK ---

