Social Networks 72 (2023) 80–107
0378-8733/© 2022 Elsevier B.V. All rights reserved.
The development of stratification and segregation in a new scientific field: 
A study of collaboration among scientists in neuroblastoma research 
between 1975 and 2016☆ 
Mark Wittek a,*, Christoph Bartenhagen b, Frank Berthold b 
a Institute of Sociology and Social Psychology, University of Cologne, Meister-Ekkehardt-Straße 1, 50937 K¨oln, Germany 
b Department of Pediatric Oncology and Hematology, University of Cologne, Kerpener Str. 62, 50924 K¨oln, Germany   
A R T I C L E  I N F O   
Keywords: 
Scientific networks 
Long-term changes in network structure 
Status 
Segregation 
Matthew effect 
ERGMs 
A B S T R A C T   
Using a new data set on scientific collaboration in neuroblastoma research over a period of 41 years, we study 
how the structure of collaboration ties in an evolving scientific field changes over time. Guided by concepts from 
the sociology of knowledge and status theories, we highlight the importance of a field’s size and age for processes 
of stratification and segregation within it. Our findings suggest that stratification becomes stronger and di­
versifies as the field of neuroblastoma research expands. Moreover, we find that the occurrence of collaboration 
between researchers with a similar status becomes more likely as the field matures. While previous work has 
primarily examined established fields, our study focuses on how scientific fields change their structure over time. 
More broadly, our article demonstrates the potential analytical merits of adopting a dynamic and relational 
perspective on the developmental trajectories of organizational and cultural fields.   
1. Introduction 
Both previous and recent research shows that accumulation dy­
namics shape the structure of scientific collaboration and perpetuate 
inequality in the distribution of recognition and resources within sci­
entific communities (Allison et al., 1982; Blau, 1994; Bol et al., 2018; 
Bourdieu, 1988; Burris, 2004; Cole and Cole, 1973; Eom and Fortunato, 
2011; Gondal, 2018; Hagstrom, 1971; Lynn, 2014; Merton, 1968). 
We contribute to this line of work by studying how stratification and 
segregation shape scientific collaboration networks throughout the 
evolution of a new scientific field. The empirical setting of our study is a 
specialized community of cancer researchers who began to investigate 
neuroblastoma—the most common solid cancer in childhood (Maris, 
2010)—in the second half of the 1970s. Consequently, our theoretical 
framework draws on insights from the sociology of knowledge (Chubin, 
1976; Cole and Cole, 1973; Crane, 1972; Mullins, 1972), status theories 
(Gould, 2002; Podolny, 2010; Ridgeway and Correll, 2006), and a 
growing body of research that applies network analysis to study the 
structure of coauthor or citation networks (Dahlander and McFarland, 
2013; Ferligoj et al., 2015; Foster et al., 2015; Friedkin, 1978; Gondal, 
2011; Kronegger et al., 2012; Lynn, 2014; Ma et al., 2020; Moody, 2004; 
Shwed and Bearman, 2010; Stark et al., 2020). 
Sociologists have identified the Matthew effect—a tendency of actors 
with a large stock of resources and recognition to accumulate even more 
of these assets—as an important factor for the social organization of 
scientific communities (Cole and Cole, 1973; Crane, 1972; Merton, 
1988, 1968). Thereby, preferential attachment can be regarded as a 
special case of the Matthew effect and describes a process by which 
actors with many network ties tend to attract more ties over time 
(Barabˆasi et al., 2002; Barab´asi and Albert, 1999). While scientometric, 
sociological, and network-scientific studies persistently report a con­
centration of coauthorships among an elite of scholars (Barabˆasi et al., 
2002; Leydesdorff and Wagner, 2008; Moody, 2004; Newman, 2001a), 
less systematic attention has been paid to the question of how inequality 
in the distribution of network partners changes as scientific fields 
mature. 
☆This work has been supported by funding from the European Research Council (ERC) under the European Union’s Horizon 2020 research and innovation 
programme (grant agreement No. 716461). We would like to thank Clemens Kroneberg, Richard Benton, Katharina Burgdorf, Lothar Krempel, and Tom Snijders for 
their valuable comments on this work. We would also like to thank the Regional Computing Center of the University of Cologne (RRZK) for providing computing time 
on the DFG-funded High Performance Computing (HPC) system CHEOPS as well as technical support. 
* Correspondence to: Institute of Sociology and Social Psychology, University of Cologne, Albertus-Magnus-Platz, 50923 Cologne, Germany. 
E-mail addresses: wiso@uni-koeln.de (M. Wittek), c.bartenhagen@uni-koeln.de (C. Bartenhagen), frank.berthold@uk-koeln.de (F. Berthold).  
Contents lists available at ScienceDirect 
Social Networks 
journal homepage: www.elsevier.com/locate/socnet 
https://doi.org/10.1016/j.socnet.2022.05.001 
Received 28 July 2021; Received in revised form 14 March 2022; Accepted 5 May 2022   


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
81
Furthermore, although canonical works suggest that scientific fields 
exhibit different forms of social organization at the outset compared to 
during their later stages (Chubin 1976; Crane 1972: 85–98, 115–128; 
Mullins 1972), no network-analytical study to date has examined how 
accumulation dynamics operate through multiple channels throughout a 
network’s evolution. 
Moreover, our investigation of the structure of a new scientific field 
that has gradually transformed over more than 40 years also contributes 
to a stream of literature that emphasizes the role of contextual charac­
teristics for network structure (Martin, 2009; McFarland et al., 2014; 
Simpson, 2019; White, 2008). As McFarland et al. (2014: 1112) note, not 
only do the preconditions for processes of tie formation vary between 
contexts, they also change over time. Yet, thus far only a few sociological 
studies have examined changes in network mechanisms as a context 
matures (Lewis and Kaufman, 2018; Schaefer and Kreager, 2020). We 
address this research gap by studying changes in the structure of 
collaboration networks in a new scientific field. 
To guide our analysis, we build upon the assumption that members of 
a nascent scientific specialty develop their careers by mobilizing new 
members (Chubin, 1976; Frickel and Gross, 2005; Mullins, 1972). 
Established actors thereby acquire more resources as a field gains 
legitimacy and in turn receives more external funding (Alberts et al., 
2014; Laudel, 2006). Consequently, senior scientists are able to inte­
grate new researchers into their teams and strengthen their position in 
the community (Bourdieu, 1988; Frickel and Gross, 2005; Lazega et al., 
2006; Mullins, 1972). 
Moreover, status theories suggest that status recognition affects 
collaboration dynamics in organizational fields and helps actors to 
navigate complex social environments (Lynn, 2014; Podolny, 2010; 
Sauder et al., 2012). Similarly, status construction theory highlights that 
status beliefs reduce situational uncertainty and ease coordination 
problems (Ridgeway, 1991; Ridgeway and Correll, 2006; Ridgeway and 
Erickson, 2000). Following these literatures, we argue that the presence 
of a larger number of authors in a field increases uncertainty, which 
elevates the importance of status recognition for coauthor choices (cf., 
McFarland et al., 2014). 
Both streams of literature lead us to the expectation that inequality in 
the distribution of coauthorships increases throughout the evolution of 
scientific fields. Furthermore, we propose that a diversification of 
accumulation dynamics accompanies this trend: as a field grows, we 
expect years of experience, productivity, and seniority to factor into 
scientists’ popularity as coauthors. In addition, we hypothesize that 
status homogeneity—the tendency to collaborate with others similar in 
status—increasingly structures scientific collaboration in later stages of 
a field. At the same time, mentor-apprentice ties between early career 
researchers and established scientists should retain their relevance for 
scientific collaboration. 
To test our theoretical arguments, we apply exponential random 
graph models (ERGMs; Lusher et al., 2013) to a coauthor network based 
on abstracts submitted to the Advances in Neuroblastoma Research 
(ANR) conferences between 1975 and 2016 (Berthold et al., 2019). This 
manually collected data source is well suited for studying how a scien­
tific specialty evolved because, initially, neuroblastoma was a new topic 
addressed by only a small number of researchers (Martynov et al., 2020). 
While previous studies examined entire scientific disciplines (Moody, 
2004; Newman, 2001a), national research communities (Ferligoj et al., 
2015; Kronegger et al., 2012, 2011; Lazega et al., 2006), or collaboration 
within a single university (Dahlander and McFarland, 2013; Rawlings 
et al., 2015; Stark et al., 2020), we focus on the long-term trajectory of a 
scientific field organized around a demarcated, well-defined research 
topic that was not diluted by other topics throughout the four decades 
under observation. 
Our findings indicate that the concentration of collaboration on an 
elite of researchers becomes stronger as neuroblastoma research ma­
tures. Also, we find that collaboration is increasingly segregated ac­
cording to researchers’ productivity and experience over time. 
2. Theory 
Social scientists have firmly established the belief that social pro­
cesses affect knowledge production (Bourdieu, 1988; Chubin, 1976; 
Crane, 1972; Frickel and Gross, 2005; Knorr, 1999; Latour, 1987; Lazega 
et al., 2006; Merton, 1988, 1968; Mullins, 1972). Scientific fields 
resemble invisible colleges (Crane, 1972) marked by interorganizational 
collaboration and regular communication among researchers. Likewise, 
scientific specialization revolves around clusters of researchers con­
nected by workshops, conferences, and informal social meetings (Chu­
bin, 1976; Mullins, 1972). Moreover, the growing size of research 
teams—for instance, in high energy physics (Newman, 2001b, 2001c)— 
makes modern science an increasingly social activity (Leahey, 2016; 
Wuchty et al., 2007). 
Concerning stratification in science, Merton (1968) noted the 
self-reinforcing nature of accumulation dynamics many years ago and 
coined the term “Matthew effect”, which describes that well-known 
scholars gain more resources and recognition over time by benefitting 
from initially small relative advantages. For the case of network ties, this 
claim has since been supported by many studies analyzing coauthorships 
or citations and is usually called “preferential attachment” in 
network-analytical applications (Barabˆasi et al., 2002; Eom and For­
tunato, 2011; Newman, 2001a). While an accumulation of coauthor­
ships by an elite of researchers is often viewed as an average 
tendency—persistently shaping the structure of scientific collabo­
ration—contemporary and earlier theoretical accounts suggest that the 
structure of organizational (Hannan and Freeman, 1993; Padgett and 
Powell, 2012), cultural (Baumann, 2001; Becker, 2008; Bourdieu, 1993, 
1984; White and White, 1993), and scientific fields (Chubin, 1976; 
Crane, 1972; Frickel and Gross, 2005; Jurgens et al., 2018; Kuhn, 1970; 
Munoz-Najar Galvez et al., 2019) changes over time. In the present 
study, we elaborate on these dynamic perspectives on the structural 
configurations of various fields and derive theoretical expectations for 
the developmental trajectory of a developing scientific specialty in the 
next section. 
2.1. Inequality in a developing scientific field 
Our first theoretical expectation concerns the question of whether a 
new scientific field exhibits different levels of stratification throughout 
its evolution. Previous work suggests that scientists first have to allocate 
resources to make new epistemic claims that are credited by a peer 
audience (Boardman and Ponomariov, 2007; Chubin, 1976; Frickel and 
Gross, 2005). Also, scientists need to mobilize collaborators such as PhD 
students and postdocs to generate a high output of well-cited publica­
tions, thus allowing them to acquire more resources and to stabilize their 
position in a new field of inquiry (Griffith and Mullins, 1972; Latour and 
Woolgar, 1986; Lazega et al., 2016, 2006; Li et al., 2013).1 
In terms of the structure of scientific collaboration, these processes 
produce “hub-spoke structures” (Martin, 2009), with senior scientists 
acting as hubs and younger researchers as spokes. These constellations 
induce stratification in the number of publications since the leader of a 
research group is usually named as a coauthor on all the papers that a 
1 While we draw upon empirical findings stemming from the stream of sci­
ence and technology studies (STS), we would like to point out that the usage of 
network-theoretic concepts in this tradition differs from our focus on collabo­
rative networks (Venturini et al., 2019). According to the STS perspective, 
networks can be composed of entities such as documents, laboratories, and 
other parts of scientific infrastructure as well as human persons (Foster et al., 
2015; Knorr, 1999; Latour, 1987; Shi et al., 2015). In comparison, sociologists 
of science and researchers using social network analysis tend to study social 
networks among persons—e.g., networks of collaborations or citations among 
scholars (Chubin, 1976; Crane, 1972; Dahlander and McFarland, 2013; Gondal, 
2011; Mullins, 1972; Rawlings et al., 2015; Stark et al., 2020). 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
82
group produces. In contrast, PhDs and postdocs tend to work on a small 
set of papers as primary investigators (see, for example, Knorr, 1999: Ch. 
9). Moreover, leaders often function as representatives of their group­
—for instance, by promoting the group at conferences or by contacting 
leaders of other research groups (Griffith and Mullins, 1972: 961; Knorr, 
1999: 222-224; Lazega et al., 2016, 2006). This role allows them to forge 
collaborations between groups, which increases leaders’ privileged ac­
cess to coauthor ties (see, for example Hˆancean et al., 2021). 
Regarding the global trajectory of a field, we argue that the overall 
inequality in collaboration is likely to increase as an area of scientific 
inquiry grows. This should be the case because collaborations between 
research groups—often initiated by senior scientists (Latour and Wool­
gar, 1986)—increase in maturing scientific specialties (e.g., Mullins, 
1972), and the structure of laboratories changes due to new funding 
sources (Alberts et al., 2014; Laudel, 2006). If new entrants collaborate 
in the same way as previous field members, inequality should remain 
stable. Yet, we expect that the balance between scientists with tenured 
positions and early career researchers shifts as a field grows. 
As more external funding is channeled into a new field of inquiry, 
funding agencies mainly offer programs that provide short-term 
employment for PhDs and postdocs. In contrast, the number of 
tenured positions does not increase proportionally because universities 
and research facilities are reluctant to create costly long-term positions 
(Laudel, 2006; Münch, 2014). As Alberts et al. (2014) point out in regard 
to US biomedical research: although the field experienced rapid growth 
from the 1980s onward, the career prospects of early career researchers 
worsened decisively as the influx of new funding “has led to an enor­
mous growth in ‘soft money’ positions, with stagnation in the ranks of 
faculty who have institutional support” (Alberts et al., 2014: 5775). 
Consequently, we expect that established scientists employ a larger staff 
of early career researchers if more external funding opportunities 
emerge and that collaborations will concentrate on a smaller proportion 
of the field. Thus, in turn, we expect a nascent scientific field to exhibit 
less inequality in the distribution of coauthorships than a mature field. 
This expectation can also be derived from another stream of litera­
ture concerned with the ubiquity of status processes in markets, orga­
nizational fields, and interaction in task-oriented groups (Borkenhagen 
and Martin, 2018; Gondal, 2018; Ma et al., 2020; Podolny, 2010; 
Ridgeway, 1991, 2019; Sauder et al., 2012). What is common to 
different usages of status as a theoretical concept is a definition of status 
as prestige, respect, recognition, and (psychological) deference received 
by others (Fiske, 2011; Gould, 2002; Podolny, 2010; Ridgeway, 2019). 
In line with Podolny (2010), we assume that actors use status signals 
as cues to reduce uncertainty, thus allowing them to navigate complex 
fields.2 Likewise, status construction theory suggests that status beliefs 
emerge from a concatenation of micro-interactions due to actors’ need 
to reduce situational uncertainty. In particular, status beliefs allow ac­
tors to solve the problem of coordinating behavior, which is necessary to 
achieve group goals (e.g., Ridgeway and Correll, 2006: 6). As uncer­
tainty increases, status should play a more prominent role in actors’ 
behavior because the heuristic usefulness of status categorizations in­
creases as environments or situations become more complex (Blau, 
1968; Fiske, 2011; Mayhew, 1973; McFarland et al., 2014; Podolny, 
2010; Ridgeway, 2019). 
Regarding cooperation in science, most fields initially consist of a 
small set of actors. Therefore, it is still feasible to monitor the actions of 
others in detail. As a field matures, new actors enter and it becomes more 
difficult, or even impossible, to keep track of what others are doing. To 
retain their capacity to navigate the field—in other words, to decide 
whom they should collaborate with or whom they should cite—actors 
tend to apply filters to the relational information they receive (Bra­
shears, 2013; Brashears and Quintane, 2015; Lynn, 2014; Mayhew, 
1973; Mayhew and Levinger, 1976). 
Consequently, we expect more inequality in the distribution of 
coauthorships over time because a growing field increases uncertainty, 
which in turn amplifies the influence of status recognition on the for­
mation of coauthor ties. 
Hypothesis 1.
Inequality in the distribution of coauthorship ties in­
creases as a scientific field matures and grows. 
In summary, we expect rising inequality in the distribution of 
coauthorships due to a shrinking proportion of actors who manage to 
mobilize additional researchers and resources (Alberts et al., 2014; 
Chubin, 1976; Frickel and Gross, 2005; Laudel, 2006; Mullins, 1972), 
and due to the increasing importance of status as a cognitive heuristic 
shaping social interaction in uncertain environments (Podolny, 2010; 
Ridgeway and Erickson, 2000). 
2.2. Diversification of accumulation dynamics 
In addition to a trend towards more stratification in coauthor ties, we 
also consider different channels through which actors manage to attract 
coauthors. A scientist’s prominence as a collaborator might result from 
their ability to offer others resources to conduct studies, a reputation for 
technical expertise in a particular research area, the skill to spark in­
terest for new topics, or experience in writing academic papers and 
applying for funding (Blau, 1994; Dahlander and McFarland, 2013; 
Griffith and Mullins, 1972; Knorr, 1999; Lamont, 2009; Merton, 1968; 
Mullins, 1972; Newman, 2001a; Zuckerman, 1968). Regarding the 
question of how multiple aspects structure the distribution of coau­
thorships, we expect accumulation dynamics tied to years of experience, 
productivity, and seniority to diversify throughout the evolution of a 
new scientific field. 
Following accounts that stress the temporal unfolding of research 
communities, we expect that accumulation dynamics diversify because 
as actors develop their careers, they can draw upon multiple field- 
specific resources to mobilize additional collaborators (Chubin, 1976; 
Cole and Harriet, 1975; Frickel and Gross, 2005; Griffith and Mullins, 
1972). In the early stages of a scientific endeavor, pioneering re­
searchers primarily rely on their charisma and their ability to spark in­
terest in new topics. In a comparison of different specialties, Griffith and 
Mullins (1972: 961) highlight the role of leaders who are crucial in 
organizing the intellectual activities of a nascent specialty but who 
initially often lack tangible resources such as funding.3 
Consequently, building and maintaining collaborations despite these 
unfavorable conditions should be the prime factor influencing researchers’ 
prominence as coauthors during the genesis of a field.4 Throughout its 
development, a field gains legitimacy, new external funding sources 
become available, and successful leaders of research groups forge their 
2 The notion that actors use cognitive heuristics to store and represent rela­
tional information is well supported by empirical evidence (Brashears, 2013; 
Carnabuci et al., 2018; Krackhardt and Kilduff, 1999). Perceiving others on a 
vertical dimension plays a crucial role in social cognition and shapes interaction 
across a variety of settings (Anderson, Hildreth, and Howland, 2015; Berger, 
Cohen, and Zelditch, 1972; Fiske, 2011; McMahan, 2017; Ridgeway, 1991). 
3 Furthermore, resources acquired in adjacent fields—e.g., previous academic 
positions or publications—are seldom sufficient to attract aspiring researchers 
because unorthodox scientific endeavors present much higher risks to the 
success of individuals’ careers compared with work on established problems 
(Frickel and Gross, 2005; Griffith and Mullins, 1972; Latour and Woolgar, 
1986). As Latour (1987) observed, scientists who tackle new problems often 
face severe resistance from established scientific elites or an inadequate infra­
structure for their research (see also Bourdieu, 1988; Frickel and Gross, 2005).  
4 For instance, Mullins (1972) showed that the scientific specialty of phage 
work—which led to the new discipline of molecular biology—was initially 
driven by a small circle of charismatic leaders who managed to recruit students 
through informal social gatherings and workshops for their cause. Scientists 
only received more institutional support and started to build a stock of influ­
ential publications as phage work matured (Mullins, 1972: 74). 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
83
careers (Alberts et al., 2014; Laudel, 2006). Thus, we expect field-specific 
resources such as years of experience, productivity, and seniority to gain 
importance for the acquisition of coauthorships over time. 
Again, we can also build on status theories to arrive at this expectation 
(Gould, 2002; Lynn et al., 2009; Podolny, 2010; Ridgeway, 2019; 
Ridgeway and Correll, 2006). Ridgeway (2019) highlights that status 
characteristics influence interaction in task-oriented groups. Similarly, 
Podolny (2010) proposes that status signals guide collaborator choices in 
organizational fields. Following these accounts, we argue that the pub­
lications and years of experience a researcher has accumulated start to act 
as status markers as a field matures. As outlined by Ridgeway (2019), 
initially, the ascription of status to nominal characteristics, such as 
gender, is arbitrary and does not necessarily correspond with actors’ 
contributions to group goals or their competence. Yet, even small dif­
ferences in the ascription of status that align with nominal characteristics 
can initiate a self-reinforcing dynamic whereby status beliefs spread and 
lead to persistent inequality in recognition and resources on the macro 
level (Grow et al., 2015; Mark et al., 2009; Ridgeway, 1991, 2014). 
In our case, we expect that the ascription of status is arbitrary at the 
beginning of a field but that a growing set of status markers crystalizes 
over time because researchers have to navigate an increasingly complex 
environment (Blau, 1968; Fiske, 2011; Mayhew, 1973; Podolny, 2010). 
While knowing, for instance, how many coauthors a scientist has worked 
with provides sufficient information to judge their status in the early 
stages of a new field, additional status markers such as years of expe­
rience, publications, or seniority should start to inform collaborator 
choices at later developmental stages. 
Hypothesis 2.
Accumulation dynamics diversify as a scientific field 
matures and grows. 
2.3. Closure according to status differences, a consolidating elite 
Besides more intense and diverse stratification, we also consider how 
status similarity between researchers affects collaboration during 
different periods of a field. Previous research suggests that actors’ close 
relationships or coalitions are segregated along the lines of status—for 
example, adolescents tend to form friendship groups of similar-status 
individuals (Adler and Adler, 1998; Coleman, 1961; Milner, 2013) and 
organizations sharing a similar status are more likely to collaborate 
(Podolny 2010). Additionally, scholars who studied status orders among 
university departments found that elite departments are more likely to 
exchange PhD students and to collaborate with other elite departments 
(Burris, 2004; Gondal, 2018; Han, 2003; Ma et al., 2020). 
Before increasing closure according to status differences emerges, we 
expect that researchers working in a nascent field primarily collaborate 
with others who are dissimilar in years of experience, productivity, and 
seniority. This tendency toward status heterogeneity should follow from 
the organizational logic of local research activities, which tend to be 
divided between experienced scholars and apprentices (Blau, 1994; 
Knorr, 1999; Latour, 1987; Latour and Woolgar, 1986; Lazega et al., 
2006). Senior scientists offer new opportunities to conduct research 
within departments and primarily collaborate with PhD candidates and 
postdocs (e.g., Mullins, 1972). Thus, scientists who hold many collab­
oration ties should work with others who hold fewer ties, especially if 
more external funding becomes available in a field and creates a larger 
scientific staff for leaders of established laboratories (Alberts et al., 
2014; Laudel, 2006). While these instances of local, status-dissimilar 
collaboration should not lose their significance over time, we expect 
more collaboration between status-similar senior scientists as a field 
matures according to status markers—i.e., increasing status homogeneity. 
As Knorr (1999: 235–240) shows, leaders of research groups act as 
representatives and forge collaborations with other groups working on 
the same topics (see also, Chubin, 1976; Griffith and Mullins, 1972; 
Mullins, 1972). Yet, this is only possible if a momentary consensus about 
relevant research areas and methods crystallizes (Koppman and Leahey, 
2016; Latour, 1987; Lazega et al., 2016; Schwemmer and Wieczorek, 
2020; Shi et al., 2015; Shwed and Bearman, 2010). Therefore, we expect 
more cases of status-similar collaboration as a field matures and senior 
scientists begin to form coauthor ties outside their local environments 
with leaders of other groups pursuing similar research. 
In addition, we expect the formation of circles of authors who are 
status-similar due to increased status homophily in uncertain contexts.5 
In line with Podolny (2010), we argue that this stems from high-status 
actors’ fear of being associated with low-status actors. As Podolny 
(2010, 24–39) highlighted, status “leaks” through social relationships, 
whereby the status of actors’ collaborators rubs off on their own status. 
Corroborating this theoretical expectation, Podolny (2010, 76–102) 
finds that status homogeneity can be observed in the investment banking 
industry, particularly under greater uncertainty. Following this 
research, we argue that collaboration with low-status scientists sends 
negative signals within an academic community and that the balance 
between status-dissimilar and status-similar collaborations tends to shift 
in favor of status-similar collaborations as the field matures. 
Hypothesis 3.
Scientists who are dissimilar in their years of experi­
ence, productivity, and seniority collaborate at the outset of a field. This 
tendency weakens in the later stages of a field’s development, and 
collaboration increasingly exhibits status homogeneity. 
Overall, our theoretical expectations sketch a trajectory marked by 
the growing importance of accumulation dynamics for the structure of 
scientific collaboration. We argue that an elite of authors emerges as a 
field matures, based on the accumulation of coauthorship through 
multiple channels such as years of experience, productivity, and 
seniority. Also, senior scientists collaborate with status-similar re­
searchers and their apprentices as a field ages. 
3. The emerging field of neuroblastoma research 
To test our theoretical expectations, we focus on the development of a 
specialized scientific community devoted to neuroblastoma research. 
Neuroblastoma represents the most common solid cancer in childhood 
(Maris, 2010). A special characteristic of neuroblastoma is the vast diversity 
of possible tumor types and consequences for patients: while most infants 
with neuroblastoma may recover entirely with minimal treatment6, chil­
dren who are older than one year often die or face long-term health con­
ditions due to high-dose chemotherapy, radiation, and immunotherapy 
(Brodeur, 2003; Cheung and Heller, 1991; Matthay et al., 1999). 
Neuroblastoma is a malignant tumor of the sympathetic autonomic 
nervous system and was first described by R. Virchow in 1864 as a 
neoplasm originating from the organ adrenal medulla.7 While research 
continued into the late 19th and early 20th centuries (Hutchison, 1907; 
Pepper, 1901)8, scientists only started to develop a clearer consensus on 
5 Please note that we use the term “status homogeneity” instead of “status 
homophily” because “homophily” has strong connotations of a social- 
psychological preference for similar others (McPherson et al., 2001). As Wim­
mer and Lewis (2010) point out, network segregation can originate in different 
sources such as the opportunity structure (Blau, 1977) or endogenous network 
mechanisms. Here, we remain agnostic as to the question of what drives status 
homogeneity in scientific networks and focus on changes over time. Further­
more, the methods we use cannot distinguish between influence and selection 
(Shalizi and Thomas, 2011; Steglich et al., 2010). Therefore, we cannot deter­
mine whether actors of similar status select each other as collaborators or 
whether connections to high-status alters are elevating actors’ status.  
6 Merely tumor resection and observation of the primary tumor sites (e.g., 
Maris, 2010).  
7 The adrenal medulla is part of the adrenal glands, which lie above the 
kidneys and produce various hormones (e.g., Avisse et al., 2000). 
8 Marchand (1891) disclosed the common features of the sympathetic ner­
vous system and the adrenal medulla. Pepper (1901) and Hutchinson (1907) 
described different biological prototypes. 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
84
how to classify and study neuroblastoma during the 1980s due to ad­
vances in the field of histopathology—the microscopic study of diseased 
biological tissues (Dehner, 1988; Olson, 1989; Shimada et al., 1984). 
Moreover, the first internationally accepted staging system was pro­
posed by Evans et al. (1971), which paved the way for progress in 
research, diagnosis, and treatment. 
Since then, those involved in researching and treating neuroblastoma 
have achieved higher survival rates among patients—especially for low- 
and intermediate-risk neuroblastoma—while also achieving earlier detec­
tion of the disease and providing more insights about its potential causes 
(Brodeur et al., 1993; Maris, 2010). However, high-risk neuroblastoma still 
leads to very high mortality rates, and the molecular mechanisms under­
pinning the disease continue to be subject to research efforts (Ray, 2019). 
The scholars who have entered this community came from various 
disciplines such as medicine, biology, and chemistry (Martynov et al., 
2020). In the first third of the field’s development, clinical researchers 
and biologists made up the majority of scholars participating in neuro­
blastoma research. From the 1990s onward, thought, the field experi­
enced an influx of bio-molecular and bio-chemical researchers as well as 
immunologists, which broadened the interdisciplinary scope of the 
community (Martynov et al., 2020).9 
4. Data 
To study how the social organization of neuroblastoma research 
changed over time, we analyze information on abstracts submitted to the 
Advances in Neuroblastoma Research (ANR) conference series. The initial 
ANR conference was the first interdisciplinary meeting devoted explicitly 
to neuroblastoma and hosted by the Children’s Hospital of Philadelphia in 
1975. We consider 18 conferences until 2016, which all addressed neu­
roblastoma from the perspective of basic, translational, and clinical sci­
ence without dilution by other topics (Berthold et al., 2019). 
The authors digitalized all the abstracts from 18 conferences docu­
mented in the conference proceedings books (for details, see Berthold 
et al., 2019). The resulting data set spans 41 years (1975–2016). We 
used the co-occurrence in abstracts of papers presented at the ANR to 
derive collaboration ties between researchers at each conference. 
Following the idea that repeated interaction and communication 
among researchers is crucial for the emergence of a community (Chubin, 
1976; Crane, 1972; Mullins, 1972), we decided to only include re­
searchers in our study who appeared as authors of abstracts for at least 
two conferences (~40% of the initial sample).10 
5. Measures 
5.1. Years of experience 
To measure the length of scientists’ careers, we operationalized 
experience as years since the first occurrence of an author in our data set. 
Descriptive statistics on scientists who participated in the conference 
series at least twice are provided in Appendix A. 
5.2. Productivity 
We accessed Clarivate’s Web of Science database to capture scien­
tists’ research output during the period 1975–2017 and merged the 
obtained publications with our data set on conference participation.11 
Because the conference data did not provide full names for every author 
and some names and abbreviations were ambiguous, we followed a step- 
wise disambiguation strategy: in the first step, we identified authors who 
could not be unambiguously connected to publications via abbreviated 
names (123 out of 8460 authors). In the second step, we manually linked 
these authors with their publications under consideration of their 
institutional affiliations. To ensure a correct linkage, an experienced 
neuroblastoma scientist carried out an in-depth investigation and ach­
ieved unambiguous correspondence between authors and publications 
in nearly all cases. 
We restricted our search to articles on the subject “neuroblastoma” 
and considered the headlines, abstracts, and keywords of published ar­
ticles. Hence, the search according to subject was preferred over a purely 
title-based approached (Tal and Gordon, 2017). We pursued this focused 
search strategy to avoid an overlap with adjacent research fields, as our 
aim was to capture publications within the scientific specialty of neu­
roblastoma research. Also, we excluded abstracts, meeting reports, 
presentations at satellite workshops, and reviews, as these carry 
different meanings and functions in research communities compared 
with peer-reviewed articles (e.g., Lamont, 2009). This decision was 
motivated by our goal to obtain a homogeneous measure for re­
searchers’ publication output over a long period. 
5.3. Seniority 
We measured seniority by constructing a variable that indicates how 
often a researcher is listed as the last author on one of the papers pre­
sented. In a similar vein to the relative position of investment banks in 
advertisements announcing a new deal (Podolny 2010: 40–76), the 
positions of author names in publications and conference abstracts in 
science are unequally prestigious: in particular, the last position in 
publications is more prestigious than other positions, as this person 
represents—in many instances—the leader of a research group (Bennett 
and Taylor, 2003; Costas and Bordons, 2011; Knorr, 1999; Latour and 
Woolgar, 1986; Savitz, 1999; Shapiro et al., 1994; Zuckerman, 1968).12 
5.4. Stratification 
We use the skewness of the degree distribution of the collaboration 
network as a global measure for inequality at a given point in time. If a 
degree distribution is positively skewed, this is indicative of a small 
number of individuals having many ties, while the majority of in­
dividuals exhibit none or only a few ties (Fisher, 2018: 57; Moody et al., 
2011: 103). As additional measures for inequality, we repeated our 
analyses with the standard deviation and the Gini coefficient (Badham, 
2013; Snijders and Steglich, 2015). Results for these measures are re­
ported in Appendix A. 
9 This development was accompanied by literature that studied the genetic 
characteristics of neuroblastoma and has led to new forms of therapy and a 
better understanding of the disease on a molecular level (Brodeur, 2003; 
Kaghad et al., 1997; Moss´e et al., 2008).  
10 Focusing the analysis on authors who appeared at least twice in abstracts 
over the years under observation seemed reasonable to us in light of the general 
trend in scientific research toward more publications per author and the 
expansion of research teams (Wuchty et al., 2007). Whereas many authors who 
appear only once might be included in the paper but not attend the conference 
or contribute much to the actual paper, the likelihood of capturing a real 
collaboration between authors should be higher for the stable part of the 
sample. 
11 Accessed July 17, 2017.  
12 Please note that last author positions are not necessarily prestigious in all 
disciplines or fields of scientific inquiry. Therefore, the measure for seniority we 
propose here might not be applicable to other settings such as the social sci­
ences. However, previous studies illustrate that last author positions are linked 
to a division of labor between senior scientists and early career researchers in 
the disciplines neuroblastoma research is mainly embedded in, such as medi­
cine, epidemiology, and biomedical research (Savitz, 1999; Shapiro et al., 
1994). Moreover, we did not consider shared last authorships, i.e., only the 
actual last author counted as the last author. 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
85
6. Methods and models 
6.1. Exponential random graph models (ERGMS) 
We use exponential random graph models (ERGMs) to study how 
neuroblastoma research changed its social structure (Lusher et al., 
2013).13 ERGMs allow us to test whether inequality in coauthorships 
intensified, accumulation dynamics diversified, and segregation along 
the lines of status amplified throughout the field’s development. 
The dependent variable for ERGMs is the global structure of a given 
network. The independent variables are count statistics for local struc­
tures, such as the number of dyads sharing the same characteristic—e.g., 
researchers who collaborate and work in the same country. ERGM co­
efficients indicate whether a particular local structure occurs more often 
in the observed network than a random allocation of ties would suggest, 
conditional on all other local structures considered by the model spec­
ification (Lusher et al., 2013; Robins, 2011). A strength of this method is 
that it allows researchers to dissect the global structure of networks with 
a generative model, which provides parameters for local tie-formation 
processes while taking into account other related factors. 
Another advantage of ERGMs is that they allow researchers to obtain 
random networks conditional on a particular model specification. Thus, 
global statistics capturing the structure in simulated networks can be 
calculated and compared with empirical values (e.g., Gondal and 
McLean, 2013a, 2013b). We make use of this feature to assess which 
models are capable of reproducing observed levels of inequality. This 
procedure enables us to test Hypothesis 1—which states that inequality 
in the distribution of coauthor ties increases over time—because we 
account for the fact that many network measures are mechanically 
linked to a network’s opportunity structure, size, or network- 
endogenous tendencies (Anderson et al., 1999; Blau, 1977; Wimmer 
and Lewis, 2010). Also, simulations help us to evaluate whether models 
including researchers’ characteristics provide a better approximation of 
observed levels of stratification, which would point to a diversification 
of accumulation dynamics (H2). 
To implement this part of our analytical strategy, we first calculate 
descriptive measures capturing stratification for each conference (18 
conferences from 1975 to 2016). Subsequently, we simulate 1,000 
random networks—based on parameters from different ERGMs—which 
had the same size, density, and node attributes as the corresponding 
empirical network. This provides us with a distribution of statistics 
stemming from simulated networks. Finally, we examine whether 
measures of empirical networks are substantially different from those 
we find in simulated networks (Gondal and McLean, 2013a, 2013b; 
Snijders and Steglich, 2015). While this procedure does not provide a 
formal test of statistical significance, it can tell us whether observed 
changes in network structure are substantial beyond basic network 
features such as changes in network density. 
In addition, we compare average marginal effects (Duxbury, 2021) in 
different years to further investigate a potential diversification of 
accumulation dynamics (H2) and to probe whether segregation ac­
cording to status differences became a feature of network structure as 
neuroblastoma research matured (H3). 
6.2. Model specifications 
Table 1 provides an overview of the different model specifications we 
estimate to study the role of researchers’ characteristics for network 
structure over time. All specifications include the edges term, which 
captures the density of a network and can be thought of as intercept term 
reflecting the overall probability of a tie (Smith et al., 2016: 1240). 
Furthermore, we added terms for homophily—the tendency of similar 
actors to form relationships (McPherson et al., 2001)—on the country and 
the institutional level, because these foci are likely to shape collabora­
tions (Dahlander and McFarland, 2013; Feld, 1981; Stark et al., 2020). 
M1 is a baseline specification that only includes the terms described 
above and helps us to assess whether changes in network density or other 
basic network properties can account for changes in global inequality. 
The full specification (M2) adds the main effects and the absolute dif­
ferences for all characteristics to account for possible interdependencies 
of popularity and homogeneity as well as multicollinearity between 
characteristics (Bojanowski and Corten, 2014; Lusher et al., 2013). Main 
effects reflect the popularity14 of actors according to a specific attribute, 
which allows us to investigate a potential diversification of accumulation 
dynamics (H2), because the main effects of years of experience, cumu­
lated publications, and last author positions mirror whether researchers 
with a higher stock of these resources attract more collaboration partners. 
To detect whether the balance between status heterogeneity and 
status homogeneity according to researchers’ characteristics changes 
over time (H3), we use terms that indicate whether dissimilar dyads are 
more or less likely to exhibit ties. In the case of continuous attributes, the 
ERGM framework usually models homogeneity in reversed difference 
Table 1 
Summary of exponential random graph model specifications.  
Model terms 
M1 
M2 
M3 
M4 
M5 
Edges 
X 
X 
X 
X 
X 
Same country 
X 
X 
X 
X 
X 
Same institution 
X 
X 
X 
X 
X 
Popularity according to experience  
X 
X   
Difference in authors’ experience  
X 
X   
Popularity according to cumulated publications  
X  
X  
Difference in cumulated publications  
X  
X  
Popularity according to share last author positions  
X   
X 
Difference in share last author positions  
X   
X 
Reported in Table 
3 
4 
A2 
A3 
A4 
Note.—X signifies whether a term was included in the respective model specification. 
13 The analysis was carried out in R. The ergm package was utilized to conduct 
the ERGM analysis (Hunter et al. 2008). In addition, the ergMargins package was 
used to calculate average marginal effects (Duxbury, 2019). 
14 Please note that the network is undirected. We use the term “popularity” to 
denote the main effect of an attribute because collaborations are based on re­
searchers’ mutual consent, i.e., instances of declined requests to collaborate are 
not recorded. Technically, main effects of nodal attributes combine popular­
ity—the tendency to receive ties—and expansiveness—the tendency to send 
ties—in undirected networks (Goodreau et al., 2009; Lusher et al., 2013). 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
86
scores. Therefore, a significantly negative estimate for e.g., the “Differ­
ence in authors’ experience” term reflects that scientists with similar 
years of experience are more likely to collaborate. 
While the full specification (M2) entails all characteristics, we also 
estimate specifications that only add one characteristic to our baseline 
specification. M3 considers researchers’ years of experience, M4 entails 
terms for authors’ productivity, and M5 adds seniority. A comparison 
between M2 and M3 to M5 allows us to assess the role of researchers’ 
characteristics for network structure in greater depth. 
6.3. Average marginal effects (AMEs) 
We calculate average marginal effects (AME) as proposed by Duxbury 
(2019, 2021) in order to compare estimates across model specifications and 
conferences. This allows us to overcome methodological challenges con­
cerning the substantial interpretation of ERGM coefficients, and the 
comparability of estimates between models—which can be problematic 
due to, e.g., residual variation (Duxbury, 2021; for similar problems in lo­
gistic regressions, see Mood, 2010). In comparison to standard coefficients, 
AMEs are unaffected by scaling and offer a substantial interpretation in 
terms of absolute changes in tie probability. For example, if the AME for the 
“Popularity experience” term is 0.01, this would mean that the probability 
of scientists with a long experience to attract an additional tie is 1 per­
centage point higher than for scientists with less experience. 
To ensure a valid comparison of effect sizes over time, we interpret 
AMEs in relation to the baseline probability to form a tie during a given 
conference. As Kreager et al. (2021: 59, footnote 12) recently noted: 
“AMEs differ from odds ratios in that they are on a probability scale and so 
their magnitudes should be interpreted relative to the baseline tie prob­
ability (i.e., network density).”15 Therefore, we report AMEs that are 
divided by the baseline probability to form a tie during a given confer­
ence. These scaled AMEs can be interpreted as change of the baseline 
probability to form a tie if a network variable increases by one unit. 
7. Results 
Table 2 provides an overview of the collaboration network among 
neuroblastoma researchers. Whereas conferences in the first decade of 
the ANR series were still relatively small, with fewer than 100 authors, 
attendance at the conferences began to grow rapidly from the early 
1990s onward. This growth was accompanied by the internationaliza­
tion of the ANR series. Whereas the first eight conferences were held in 
Philadelphia (USA), the ANR expanded to Europe between 1998 and 
2006. Then, in 2006, the conference organizers decided to rotate the 
ANR between the Americas, Europe, and Asia/Australia. 
Parallel to the geographical expansion of the conference series, the 
mean degree centrality of the collaboration network increased. For 
instance, the early Philadelphia phase of the conference reached a 
maximum of—on average—13 submitted abstracts per author (1996), 20 
years later this figure doubled at the ANR in Cairns in 2016. These trends are 
in line with findings of a recent scientometric analysis of neuroblastoma 
research, which also reported the growth and proliferation of the field over 
time (Martynov, Klima-Frysch, and Schoenberger, 2020, see also Berthold 
et al., 2019). 
Besides the internationalization and growth of the community, the 
collaboration network exhibited another pattern that provides initial evi­
dence for the emergence of a stratified order over time (H1). The skewness 
of the degree distribution increased over the years, meaning that collabo­
ration ties were distributed increasingly unequally as the field matured. 
This trend is depicted in Fig. 1, which shows the network at three 
exemplary time points (see Table 2 for the complete history of the field). 
In the next section, we scrutinize the robustness of this descriptive trend 
and test our other theoretical considerations in the ERGM framework. 
7.1. ERGM results overview 
We now turn to the results of exponential random graph models. 
Table 3 reports estimates of the baseline specification. All tables report 
the average marginal effects and their corresponding delta standard 
errors (Duxbury, 2019, 2021).16 
The full models reported in Table 4 additionally entail researchers’ 
characteristics—i.e., their years of experience, productivity, and seniority. 
Furthermore, we estimated models only adding one characteristic to the 
baseline specification to investigate how estimates change if characteris­
tics are considered independently or simultaneously (reported in 
Tables A2, A3, and A4). We compare selected average marginal effects 
from these models with AMEs stemming from full models in Figs. 3 and 4. 
Fig. 2 visualizes the properties of simulated networks obtained from 
models reported in Table 3 and Table 4. Boxplots show the distribution of 
simulated values, while triangles depict empirical values in each year. The 
upper panel of the figure allows us to assess whether inequality increased 
above and beyond basic network tendencies such as institutional and 
country homophily or changes in size and density. In addition, the bottom 
panel provides information on whether adding researchers’ characteristics 
provides better predictions for observed levels of inequality. Before we 
discuss our results, we provide details on the goodness of fit of our models. 
7.2. Goodness of fit (GOF) 
We assessed the goodness of fit (GOF) of all models by simulating net­
works from estimated ERGMs and comparing their degree, edgewise- 
shared partner, and geodesic distance statistics with the observed statis­
tics in the corresponding network (Hunter et al., 2008). We decided to 
report the share of statistics with a t-ratio smaller than 2 for the degree 
distribution, the distribution of edgewise-shared partners, and the occur­
rence of geodesic distances.17 Hence, we focus on a comparison between 
15 In the example sketched above, an increase by 1 percentage point can have 
a different substantial interpretation depending on how likely it is for a tie to 
form in the first place. In the case of a sparse network—exhibiting a baseline 
probability of e.g., 0.02—an AME of 0.01 would increase the probability to 
form a tie by 50%, indicating a substantial effect of experience. However, if the 
network’s baseline probability would be higher, e.g., 0.20, an AME of 0.01 
would be less substantial, and suggest that the baseline probability to form a tie 
is only increased by 5%. This property of AMEs is crucial for our application 
since the network density of neuroblastoma researchers’ collaborations varies 
strongly over time. 
16 As pointed out by Duxbury (2021: 8). “While rescaling does not alter con­
clusions about the direction and significance of noninteraction coefficients, it 
does affect coefficient magnitude.” In our case, the direction and significance of 
AMEs are identical with those of coefficients. However, due to the networks’ 
differing sizes, significance and direction should only be interpreted with 
caution.  
17 Previous accounts either report GOF plots that depict the fit of all statistics 
of these three network properties, tables with selected statistics (e.g., Gondal 
and McLean, 2013), or aggregate t-ratios across network properties (e.g., Smith 
et al., 2016). While the first two strategies are feasible when researchers 
analyze a single network or a small set of networks, studies that report models 
for many networks must strike a balance between an in-depth report of models’ 
GOF and an aggregation of the fit of simulated statistics. We decided to 
aggregate t-ratios separately for all three network properties (Figure A1) and 
additionally report individual GOF plots for the degree distribution (Figure A2). 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
87
our baseline model specification and full models. In addition, we report 
plots depicting the GOF for networks’ degree distributions. This allows us to 
explore which model specification better accounts for actors holding many 
collaborations. GOF analyses are reported and discussed in Appendix A. 
In summary, results indicate that the GOF for edgewise-shared 
partners and geodesic distances was insufficient, irrespective of the 
model specification. In contrast, the fit for the degree distribution was 
noticeably better in full models, especially in the later stages of the 
field’s development. These findings corroborate our theoretical expec­
tation that the importance of researchers’ characteristics for the distri­
bution of collaboration ties increases over time. 
The remainder of the results section will proceed as follows. First, we 
discuss the results of simulations to map changing stratification in 
coauthorships. Second, we turn to the questions of whether accumula­
tion dynamics diversified and status homogeneity increased over time. 
Fig. 1. The changing structure of the coauthor network at three time points. Note.—Nodes in the sociograms depict researchers who participated at least twice in the 
ANR conference series; ties between them indicate that they appeared as coauthors on an abstract submitted to the ANR conference. Histograms are based on the 
distribution of coauthor ties in the relevant year. The x-axis denotes the number of coauthor ties per author and the y-axis the density of the distribution. 
Table 2 
Information on conferences and coauthor networks.  
Year 
City of 
congress 
Country  
of 
congress 
Sizea 
Average degree 
centrality 
Skewness  
of 
degree distribution 
Standard deviation of 
degree distribution 
1975 
Philadelphia 
USA 
13 
0.50 
1.91 
0.38 
1979 
Philadelphia 
USA 
36 
1.92 
0.04 
1.00 
1984 
Philadelphia 
USA 
97 
6.00 
1.76 
4.20 
1987 
Philadelphia 
USA 
114 
5.82 
1.63 
6.70 
1990 
Philadelphia 
USA 
174 
5.75 
1.58 
4.52 
1993 
Philadelphia 
USA 
262 
8.84 
2.17 
8.03 
1994 
Philadelphia 
USA 
205 
10.13 
1.25 
4.12 
1996 
Philadelphia 
USA 
470 
12.89 
3.30 
11.07 
1998 
Bath 
UK 
507 
11.75 
2.56 
6.88 
2000 
Philadelphia 
USA 
488 
12.47 
2.81 
8.66 
2002 
Paris 
France 
641 
11.96 
2.83 
7.30 
2004 
Genoa 
Italy 
920 
12.66 
2.73 
7.20 
2006 
Los Angeles 
USA 
908 
14.12 
3.47 
8.45 
2008 
Chiba 
Japan 
970 
19.51 
3.12 
13.84 
2010 
Stockholm 
Sweden 
1184 
21.90 
3.23 
16.85 
2012 
Toronto 
Canada 
1117 
17.00 
3.32 
9.93 
2014 
Cologne 
Germany 
1197 
23.27 
3.32 
16.64 
2016 
Cairns 
Australia 
955 
26.69 
2.98 
19.29  
a Size refers to the number of authors who participated at least twice in the ANR conference series. 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
88
Table 3 
Average marginal effects (AMEs) of baseline exponential random graph models (ERGMs) for collaboration network.  
Years 
1979 
1984 
1987 
1990 
1993 
1994  
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
-0.004  
-0.094  
0.094***  
1.793  
0.061***  
0.996  
0.075***  
2.273  
0.049***  
1.594  
0.080***  
2.441  
(0.021)    
(0.008)    
(0.006)    
(0.003)    
(0.002)    
(0.003)   
Same institution  
0.110***  
2.754  
0.091***  
1.739  
0.095***  
1.548  
0.053***  
1.597  
0.055***  
1.768  
0.030***  
0.931  
(0.017)    
(0.008)    
(0.009)    
(0.003)    
(0.003)    
(0.003)   
Baseline probability  
0.040  
0.053  
0.062  
0.033  
0.031  
0.032  
Years 
1996 
1998 
2000 
2002 
2004 
2006  
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
0.039***  
1.895  
0.034***  
2.121  
0.030***  
1.677  
0.031***  
2.276  
0.022***  
2.347  
0.020***  
1.911  
(0.001)    
(0.001)    
(0.001)    
(0.001)    
(0.0004)    
(0.0004)   
Same institution  
0.034***  
1.656  
0.027***  
1.721  
0.035***  
1.971  
0.025***  
1.877  
0.020***  
2.107  
0.024***  
2.291  
(0.001)    
(0.001)    
(0.001)    
(0.001)    
(0.0003)    
(0.0003)   
Baseline probability  
0.021  
0.016  
0.018  
0.013  
0.009  
0.010  
Years 
2008 
2010 
2012 
2014 
2016  
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
0.021***  
1.704  
0.021***  
1.775  
0.018***  
2.012  
0.023***  
1.881  
0.029***  
1.630  
(0.0004)    
(0.0003)    
(0.0003)    
(0.0003)    
(0.0004)   
Same institution  
0.026***  
2.052  
0.025***  
2.089  
0.021***  
2.291  
0.026***  
2.089  
0.036***  
1.980  
(0.0004)    
(0.0003)    
(0.0003)    
(0.0003)    
(0.0005)   
Baseline probability  
0.013  
0.011  
0.009  
0.012  
0.018 
Note.—All continuous variables are z-standardized to enhance the comparability of estimates across models. Delta standard errors (Duxbury, 2019) are reported in parentheses. Scaled AMEs are AMEs divided by the 
baseline probability and can be interpreted as relative changes in tie probability if a network variable increases by one unit. We multiplied scaled AMEs by 100 to provide a measure capturing the percentage change of the 
baseline probability in Fig. 3 and Fig. 4. 
† p < 0.10 * p < 0.05 ** p < 0.01 *** p < 0.001 (two-sided) 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
89
Table 4 
Average marginal effects (AMEs) of full exponential random graph models (ERGMs) for collaboration network.  
Years 
1979 
1984 
1987 
1990 
1993 
1994  
AME 
Scaled  
AME 
AME 
Scaled 
AME 
AME 
Scaled  
AME 
AME 
Scaled  
AME 
AME 
Scaled  
AME 
AME 
Scaled  
AME 
Same country  
-0.004  
-0.111 
0.097***  
1.836  
0.065***  
1.062  
0.074***  
2.258  
0.045***  
1.463  
0.08***  
2.353  
(0.021)   
(0.008)    
(0.006)    
(0.003)    
(0.002)    
(0.003)   
Same institution  
0.105***  
2.643 
0.091***  
1.720  
0.090***  
1.470  
0.054***  
1.648  
0.060***  
1.938  
0.03***  
1.038  
(0.017)   
(0.008)    
(0.009)    
(0.003)    
(0.003)    
(0.003)   
Popularity years of experience  
0.001  
0.034 
-0.009**  
-0.177  
0.006*  
0.091  
0.002  
0.065  
0.005***  
0.159  
0.002  
0.057  
(0.006)   
(0.003)    
(0.003)    
(0.001)    
(0.001)    
(0.001)   
Difference in authors’ years of 
experience  
-0.007  
-0.174 
-9e-03  
-0.018  
-0.007*  
-0.118  
-0.005**  
-0.140  
-0.004***  
-0.138  
-0.005**  
-0.147  
(0.009)   
(0.004)    
(0.003)    
(0.002)    
(0.001)    
(0.002)   
Popularity cumulated publications  
0.008  
0.206 
0.007  
0.128  
0.014***  
0.227  
0.007***  
0.198  
0.009***  
0.278  
0.005**  
0.168  
(0.011)   
(0.006)    
(0.003)    
(0.001)    
(0.001)    
(0.001)   
Difference in cumulated publications  
-0.024  
-0.595 
0.005  
0.085  
0.006  
0.093  
0.002  
0.064  
-0.002*  
-0.079  
-0.001  
-0.038  
(0.017)   
(0.007)    
(0.003)    
(0.002)    
(0.001)    
(0.002)   
Popularity share last author positions  
0.001  
0.028 
-0.008  
-0.160  
-0.013**  
-0.210  
-0.015***  
-0.466  
-0.005***  
-0.170  
-0.01***  
-0.243  
(0.007)   
(0.006)    
(0.005)    
(0.003)    
(0.001)    
(0.002)   
Difference in share last author 
positions  
0.003  
0.067 
0.008  
0.190  
0.004  
0.072  
0.013***  
0.389  
0.001  
0.039  
0.007**  
0.200  
(0.009)   
(0.006)    
(0.006)    
(0.003)    
(0.002)    
(0.002)   
Baseline probability  
0.040 
0.053  
0.062  
0.033  
0.031  
0.032  
Years 
1996 
1998 
2000 
2002 
2004 
2006  
AME 
Scaled  
AME 
AME 
Scaled 
AME 
AME 
Scaled  
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
0.037***  
1.802  
0.032***  
2.035  
0.029***  
1.616  
0.029***  
2.184  
0.021***  
2.280  
0.019***  
1.853  
(0.001)    
(0.001)    
(0.001)    
(0.001)    
(0.0004)    
(0.0004)   
Same institution  
0.036***  
1.744  
0.028***  
1.770  
0.036***  
1.990  
0.025***  
1.897  
0.020***  
2.090  
0.023***  
2.262  
(0.001)    
(0.001)    
(0.001)    
(0.001)    
(0.0003)    
(0.0003)   
Popularity years of experience  
0.0001  
0.006  
0.0007*  
0.044  
0.002***  
0.126  
0.002***  
0.139  
0.001***  
0.086  
0.001***  
0.120  
(0.0003)    
(0.0003)    
(0.0003)    
(0.0002)    
(0.0001)    
(0.0001)   
Difference in authors’ years of 
experience  
-0.004***  
-0.184  
-0.005***  
-0.340  
-0.004***  
-0.243  
-0.003***  
-0.213  
-0.002***  
-0.164  
-0.002***  
-0.178  
(0.001)    
(0.0004)    
(0.0004)    
(0.0003)    
(0.0002)    
(0.0002)   
Popularity cumulated publications  
0.010***  
0.462  
0.006***  
0.353  
0.006***  
0.334  
0.003***  
0.216  
0.002***  
0.195  
0.003***  
0.305  
(0.0003)    
(0.0003)    
(0.0004)    
(0.0003)    
(0.0002)    
(0.0002)   
Difference in cumulated publications  
-0.002***  
-0.082  
>0.0001  
0.016  
-0.002***  
-0.081  
-0.0004  
-0.020  
0.0002  
0.017  
-0.001***  
-0.069  
(0.0004)    
(0.0004)    
(0.0004)    
(0.0003)    
(0.0002)    
(0.0002)   
Popularity share last author positions  
-0.003***  
-0.145  
-0.002***  
-0.151  
-0.003***  
-0.190  
-0.0003  
-0.024  
-0.001***  
-0.085  
-0.001***  
-0.121  
(0.001)    
(0.001)    
(0.001)    
(0.0003)    
(0.0002)    
(0.0002)   
Difference in share last author positions  
>0.001  
0.026  
0.002***  
0.128  
0.003***  
0.160  
0.001*  
0.064  
0.001**  
0.068  
0.001*  
0.066  
(0.001)    
(0.001)    
(0.001)    
(0.0004)    
(0.0002)    
(0.0003)   
Baseline probability  
0.021  
0.016  
0.018  
0.013  
0.009  
0.010 
(continued on next page) 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
90
Years 
2008 
2010 
2012 
2014 
2016  
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
0.020***  
1.620  
0.019***  
1.633  
0.017***  
1.894  
0.022***  
1.794  
0.028***  
1.571  
(0.0004)    
(0.0003)        
(0.0003)    
(0.0004)   
Same institution  
0.026***  
2.072  
0.025***  
2.163  
0.021***  
2.295  
0.026***  
2.115  
0.037***  
2.020  
(0.0004)    
(0.0003)        
(0.0003)    
(0.001)   
Popularity years of experience  
0.001***  
0.109  
0.001***  
0.120  
0.0004***  
0.046  
0.001***  
0.099  
0.003***  
0.145  
(0.0001)    
(0.0001)        
(0.0001)    
(0.0002)   
Difference in authors’ years of experience  
-0.002***  
-0.178  
-0.002***  
-0.187  
-0.001***  
-0.114  
-0.002***  
-0.129  
-0.003***  
-0.142  
(0.0002)    
(0.0002)        
(0.0002)    
(0.0002)   
Popularity cumulated publications  
0.004***  
0.345  
0.005***  
0.380  
0.003***  
0.345  
0.005***  
0.365  
0.006***  
0.343  
(0.0002)    
(0.0001)        
(0.0001)    
(0.0002)   
Difference in cumulated publications  
-0.001***  
-0.072  
-0.002***  
-0.131  
-0.001***  
-0.084  
-0.001***  
-0.104  
-0.002***  
-0.110  
(0.0002)    
(0.0001)        
(0.0001)    
(0.0002)   
Popularity share last author positions  
-0.001***  
-0.080  
-0.0004*  
-0.045  
-0.0004*  
-0.060  
-0.0004*  
-0.031  
-0.002***  
-0.102  
(0.0002)    
(0.0002)        
(0.0002)    
(0.0003)   
Difference in share last author positions  
-0.0004  
-0.015  
-0.0005*  
-0.042  
0.0003  
0.035  
-0.0005*  
-0.043  
-0.001  
-0.038  
(0.0003)    
(0.0002)        
(0.0002)    
(0.0004)   
Baseline probability  
0.013  
0.011  
0.009  
0.012  
0.018 
Note.—All continuous variables are z-standardized to enhance the comparability of estimates across models. Delta standard errors (Duxbury, 2019) are reported in parentheses. Scaled AMEs are AMEs divided by the 
baseline probability and can be interpreted as relative changes in tie probability if a network variable increases by one unit. We multiplied scaled AMEs by 100 to provide a measure capturing the percentage change of the 
baseline probability in Fig. 3 and Fig. 4. † p < 0.10 * p < 0.05 ** p < 0.01 *** p < 0.001 (two-sided) 
Table 4 (continued) 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
91
7.3. Rising inequality in coauthor ties 
We simulated 1,000 networks for each conference from baseline 
models. Simulated networks had the same number of nodes and the same 
densities as observed networks. Thus, they tell us whether an unequal 
degree distribution could also have been a by-product of basic network 
properties such as changes in the average size of research teams. Fig. 2 
summarizes the skewness in simulated networks in box plots and shows 
how empirical values—depicted by triangles—differed from simulated 
values.18 While simulated networks stemming from baseline models 
indicated a mild trend toward more inequality, empirical values differed 
starkly from 1996 onward and experienced a jump in inequality after the 
first 20 years of the community’s history. Another, smaller, increase in 
inequality was visible after 2004. Overall, these results are in line with 
our first theoretical expectation that inequality in the distribution of 
coauthor ties increases as a scientific field matures and grows (H1). 
Furthermore, a comparison between the upper and the bottom panel 
provides further evidence for our second hypothesis. While simulations 
obtained from baseline models were not sufficient to approximate the 
empirical trend in inequality, full models substantially improved our 
predictions, especially in the later stages of the field’s development. A 
similar tendency is visible if we compare the fit of degree distributions 
between baseline and full models over time (see Fig. A2 in Appendix A). 
In the next section, we provide a more detailed picture of how re­
searchers’ characteristics mold network structure over time. 
7.4. Diversification of accumulation dynamics 
Here, we consider whether a scientist’s prominence as a coauthor 
was linked to a variety of characteristics as the field matured (H2). 
Fig. 3 depicts selected average marginal effects (AMEs) and their cor­
responding confidence intervals stemming from full models (Table 4) and 
from models only adding one characteristic to the baseline specification 
(reported in Table A2 for years of experience, Table A3 for productivity, 
and Table A4 for seniority). AMEs from full models are represented by 
dots, while diamonds visualize AMEs obtained from simpler models. 
The results of specifications that add only one characteristic to the 
baseline specification indicate that researchers with one standard de­
viation more years of experience and last author positions exhibited 
significantly more coauthorships than their peers in the second half of 
the field’s development. For instance, in 1994, researchers with one 
standard deviation more years of experience showed a 15.5% higher 
probability of engaging in an additional collaboration relative to the 
baseline probability of forming a tie during this year. 
Fig. 2. Predicting inequality in coauthor ties over time Note.—Each box plot represents the distribution of skewness values calculated in simulated networks ob­
tained from network models reported in Tables 3 and 4. Boxplots in the upper panel show simulated values for networks generated according to our baseline model 
specification (see Table 3). The bottom panel reports simulated values generated from the full models that include researchers’ characteristics (Table 4). We 
simulated 1,000 networks for each year and specification. Triangles indicate empirical values, i.e., the observed skewness of the degree distribution in a particular 
year. The dashed line connects empirical values, while the straight line follows the medians of simulated values. 
18 We repeated this analysis with the standard deviation (e.g., Snijders and 
Steglich 2015) and the Gini coefficient (Badham, 2013) as additional measures 
for inequality. The results for different measures were qualitatively similar and 
are reported in Appendix A (Figures A3 and A4). 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
92
Fig. 3. Popularity according to researchers’ characteristics over time. Note.—Dots represent scaled AMEs and their 95% confidence intervals for main effects derived 
from full models in Table 4. Diamonds depict coefficients from model specifications that only include one of the researchers’ characteristics in addition to the baseline 
specification. These models are reported in Appendix A (Tables A2, A3, and A4). 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
93
From 1996 to 2006, one standard deviation more experience 
elevated the baseline probability by more than 22%, and, from 2008 to 
2016, by at least 31%.19 
Similarly, productivity and seniority showed a rising association 
with more coauthor ties from 1996 onward. Yet, for seniority, AMEs 
obtained from full models show that including multiple characteristics 
simultaneously changes this picture: the AMEs for last author positions 
showed negative values in all years in M2 (Table 4). This pattern points 
to fewer coauthorships held by senior researchers after accounting for 
their experience and productivity. 
7.5. Status homogeneity over time 
In this section, we test our third theoretical expectation that new sci­
entific fields are mainly characterized by status-dissimilar collaborations, 
whereas later stages of a field should additionally display circles of co­
authors who are status-similar (H3). We included model terms that capture 
whether a one standard deviation difference in years of experience, pro­
ductivity, or seniority changes two scientists’ likelihood of collaborating. 
Fig. 4 shows how the tendency to affiliate with others of similar 
status in terms of years of experience, publications, and share of last 
author positions changed over time. Consistent with the notion that a 
field is less marked by closure along differences in status at its outset, 
Fig. 4. Homogeneity according to researchers’ characteristics over time. Note.—Dots represent scaled AMEs and their 95% confidence intervals for z-standardized 
difference scores derived from our full models in Table 4. Diamonds depict AMEs from model specifications that only include one of the researchers’ characteristics in 
addition to the baseline specification. These models are reported fully in Appendix A (Tables A2, A3, and A4). 
19 These are AMEs for the specification which only included years of experience 
as researcher characteristic (M3, reported in Table A2 and depicted as diamonds 
in Fig. 3). The corresponding numbers from full models are as follows: 1994: 6%; 
1996–2006: at least 1%; 2008–2016: at least 5% (M2, reported in Table 4 and 
depicted as dots in Fig. 3). While these numbers indicate a decreased importance 
of experience once other characteristics are considered, a time trend towards 
rising AMEs in the second half of the field’s development is still visible in Fig. 3. 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
94
average marginal effects showed a decreasing trend. 
Here, decreasing AMEs mean that collaborative ties between status- 
dissimilar partners became less likely as the field matured. For instance, 
a one standard deviation difference in publications showed positive 
AMEs from 1984 to 1990. Subsequently, the results indicate that a one 
standard deviation difference in publications reduced scientists’ base­
line probability to collaborate by 7% to 18% between 1993 and 2004. In 
the third stage of the field’s development (2006–2016), baseline prob­
abilities to collaborate were reduced by 15% to 24% for researchers with 
dissimilar publication records.20 
In a similar vein, differences in years of experience decreased scientists’ 
probability to collaborate but started to structure collaboration networks 
earlier than scientists’ publication records. Also, a curvilinear trend is 
visible: AMEs decreased until 1998—indicating elevated importance of 
differences in experience for tie-formation—and increased afterward. 
For the simple model specification (M5), AMEs for differences in 
seniority showed a similar trend as differences in publications indicating 
that a tie between dissimilar researchers became less likely over time. In 
addition, AMEs for seniority are relatively small and only show negative 
values during a late stage of the field’s development. Between 2008 and 
2016, scaled AMEs suggest a reduction of the baseline probability between 
5% and 10% (M5, reported in Table A4). The corresponding values for the 
full model specification range from 1.5% to 4% (M2, reported in Table 4). 
In summary, our results suggest that status-similar collaborations 
became more likely over time. However, collaborations between early 
career researchers and established scientists probably retained their rele­
vance for scientific work in neuroblastoma research. The analyses presented 
here did not investigate whether high-degree nodes are connected to low- 
degree nodes (assortativity). Instead, we provided estimates for status ho­
mogeneity net of other model terms and the opportunity structure to form 
ties. Moreover, the large AMEs for institutional homophily could partially 
point to the persisting importance of mentor-apprentice ties parallel to the 
trends toward status homogeneity according to researchers’ attributes. We 
will further discuss this aspect in the concluding section of the article. 
7.6. Additional analyses 
In addition to ERGMs, we also estimated stochastic actor-oriented 
models (SAOMs, Snijders et al., 2010), which we report in an online 
supplement. Due to the rapidly changing size of the network, a violation of 
the assumption that actors have a sense of all potential collaboration 
partners (Ripley et al., 2019), and issues with model fit and convergence, 
we were unable to make comparisons across the entire history of the field 
using SAOMs. Nevertheless, the results from longitudinal network models 
show overall consistency with the results reported in the main text, which 
further strengthens our confidence that the new patterns we detected with 
our analyses are not a mere by-product of the network’s changing size and 
density or other basic network tendencies such as homophily according to 
social foci (Anderson et al., 1999; Feld, 1981). 
8. Discussion 
How do stratified orders in new scientific fields evolve? To address 
this question, we analyzed a unique data set spanning 41 years of sci­
entific collaboration in neuroblastoma research. We integrated previous 
accounts that assume a link between the importance of status and the 
amount of uncertainty exhibited by social environments (Lynn, 2014; 
Mayhew, 1973; McFarland et al., 2014; Podolny, 2010; Ridgeway, 2019; 
Ridgeway and Erickson, 2000) with research highlighting the role of 
various resources in mobilizing collaboration partners (Chubin, 1976; 
Frickel and Gross, 2005; Griffith and Mullins, 1972; Knorr, 1999; Latour 
and Woolgar, 1986; Lazega et al., 2016, 2006; Li et al., 2013). Thus, we 
derived hypotheses about the developmental trajectory of a growing 
field. We expected increasing inequality in the distribution of coauthor­
ships, a diversification of accumulation dynamics, and rising segregation 
along status differences. Our results supported our hypotheses. 
We found increasing inequality in the distribution of coauthorships, 
suggesting the formation of an elite of authors at the center of the network. 
Simulations obtained from network models enabled us to confirm that this 
trend is substantial (Gondal and McLean, 2013a; Snijders and Steglich, 
2015). Regarding our expectation that circles of status-similar authors 
accompany a mentor-apprentice model of collaboration over time, we 
found a trend toward more status homogeneity according to researchers’ 
experience and productivity. Yet, we would like to point out that our 
ERGM analysis focused on researchers’ characteristics and did not inves­
tigate whether actors with many ties collaborate with actors holding few 
ties (assortativity). In comparison, results of SAOMs suggest that, inde­
pendent of their attributes, researchers with many coauthor ties tended to 
collaborate with others who hold fewer ties in most periods. This finding 
supports the idea that a mentor-apprentice model of collaboration was 
simultaneously present to status homogeneity according to researchers’ 
attributes (for details, see online Appendix B). Furthermore, the large 
estimates for institutional homophily in ERGMs and SAOMs can be 
interpreted as suggestive evidence for a persisting relevance of local 
interaction among senior scientists and early career researchers. 
In spite of the insights we have provided, we also acknowledge 
several limitations that should be addressed in further research. While 
our data set is a comprehensive documentation of collaboration in 
neuroblastoma research, it lacks fine-grained information regarding 
individual researchers. For instance, we were unable to establish how 
researchers’ gender affects collaboration (Bozeman and Gaughan, 2011; 
Holman and Morandin, 2019; Main, 2014) and could not account for the 
funding that individuals managed to accumulate (Bol et al., 2018). 
Likewise, we had no information about scientists’ activities before they 
engaged with neuroblastoma research, such as their educational careers 
or their disciplinary background. Therefore, we focused on the link 
between field-specific resources and the structure of collaborations 
because previous accounts suggest that scientists can seldom import 
resources from adjacent fields into new fields of inquiry (Bourdieu, 
1988; Griffith and Mullins, 1972; Latour, 1987). Additional information 
would have allowed us to study how the allocation of coauthorships 
differed over time—depending on who entered the field—instead of the 
linear trend towards more diversification that we tested here. Future 
research could expand our efforts by studying non-linear trajectories of 
the diversification of accumulation dynamics in scientific communities. 
Similarly, further research could investigate which network mecha­
nisms are dominant in producing the observed trend toward more 
inequality in the distribution of coauthor ties. Our analyses established 
that the trends towards more stratification and segregation are sub­
stantial and are connected to researchers’ accumulated status in terms of 
experience, productivity, and seniority. Yet, further studies could utilize 
future advancements in longitudinal network modelling to deepen our 
understanding of how network mechanisms interact with one another to 
produce different global outcomes.21 
Another limitation was that we had no information on the content of 
20 These are AMEs for the specification that only added accumulated publi­
cations to the baseline specification (M4, reported in Table A3 and depicted as 
diamonds in Fig. 4). The corresponding numbers from the full models are as 
follows: 1993–2004: 1.6%–8%; 2006–2016: 7%–12% (M2, reported in Table 4 
and depicted as dots in Fig. 4). 
21 Our initial analytical approach was to apply SAOMs and to simulate how 
global levels of inequality and segregation change if parameters for researchers’ 
characteristics are manipulated (cf., Adams and Schaefer, 2016; Snijders and 
Steglich, 2015). The rapid growth of the network, a violation of the assumption 
that actors consider all potential collaboration partners (Ripley et al., 2019), 
and issues with model fit and convergence, forced us to abandon this strategy. 
We hope that new developments in modeling large networks with SAOMs will 
solve these issues (for details, see online Appendix B). 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
95
the research conducted by the scientists in our study. Therefore, we did 
not investigate how changes in the social structure of neuroblastoma 
research were accompanied by shifts in knowledge production (Chubin, 
1976; Cole and Harriet, 1975; Griffith and Mullins, 1972; Knorr, 1999; 
Latour and Woolgar, 1986; Mullins et al., 1977). However, it is note­
worthy that the structural changes towards more stratification and 
segregation according to status differences that we observed took place 
roughly in the second half of the field’s history. This later stage in the 
field’s history was also characterized by an influx of researchers with a 
background in molecular biology (Brodeur, 2003; Martynov et al., 2020) 
and a steady internationalization of the community (Berthold et al., 
2019). These new members widened neuroblastoma research’s interdis­
ciplinary scope and promoted the field in more countries. Simultaneously, 
new insights were produced from the late 1990s onward, such as a deeper 
understanding of the disease’s genetic mechanisms (Brodeur, 2003; Moss´e 
et al., 2008; Ray, 2019) and improved treatment strategies (Maris, 2010; 
Matthay et al., 1999). Whether advancements in scientific knowledge are 
linked to changes in stratification and segregation along status differences 
in coauthor networks are exciting questions for further research. 
A further problem was that we could not consider the role of in­
stitutions to its full extent. As previous research shows, academic in­
stitutions often have a distinct status of their own and this affects the 
success and collaborative choices of the individuals affiliated with them 
(Burris, 2004; Gondal, 2018; Hagstrom, 1971; Han, 2003; Lazega et al., 
2006; Ma et al., 2020). Moreover, large institutes tend to offer re­
searchers more resources to conduct their research and play a key role in 
understanding the formation of collaboration among scientists (Latour 
and Woolgar, 1986; Lazega et al., 2006). 
Furthermore, as we focused on one particular scientific field, we 
cannot separate general developments in science from trends that are 
specific to the community of neuroblastoma researchers. For instance, 
the reported diversification of accumulation dynamics could be due to 
an overall trend toward the economization and increasing stratification 
of knowledge production over the last few decades (Evans, 2008; 
Fochler et al., 2016; Jones et al., 2008; Leahey and Barringer, 2020; Lok, 
2016; Münch, 2014; Münch and Baier, 2012). Further research should 
therefore compare the trajectories of different fields to help us under­
stand what changes typically occur as fields mature and what de­
velopments are common across fields, for example, due to 
macroeconomic trends (Ramage et al., 2020; Stark et al., 2020). 
Despite these limitations, our study contributes to a better under­
standing of how stratified orders emerge in new scientific fields. Our 
theoretical considerations provide a relational and dynamic view of 
inequality and segregation in emerging scientific fields. Moreover, we 
propose a complementary perspective to studying individual trajectories 
(e.g., Azoulay et al., 2010; Costas and Bordons, 2011; Hˆancean et al., 
2021; Li et al., 2013; Petersen et al., 2014), macrotrends within and across 
scientific disciplines (Evans, 2008; Foster et al., 2015; Jones et al., 2008; 
Leahey, 2016; Moody, 2004; Münch, 2014; Shi et al., 2015; Wuchty et al., 
2007), or the micro-interactional antecedents for knowledge production 
(Latour and Woolgar, 1986; Parker and Hackett, 2012) by focusing on 
long-term changes in the overall structure of scientific collaboration in 
demarcated fields of research. Finally, we have shown how our theoret­
ical considerations apply to empirical settings by mapping how the 
structure of collaboration changed among neuroblastoma researchers. 
Acknowledgements 
This work has been supported by funding from the European 
Research Council (ERC) under the European Union’s Horizon 2020 
research and innovation pro- gramme (grant agreement No. 716461). 
Appendix A 
Table A1 
Goodness of fit (GOF): general trends 
Fig. A1 reports the share of simulated statistics for the distribution of 
edgewise-shared partners, geodesic distances, and degrees that showed 
a tolerable fit in relation to empirical statistics. Nearly all models 
showed an inappropriate GOF for geodesic distances and edgewise- 
shared partner statistics. Also, the fit for these network properties did 
not improve after adding researchers’ characteristics to the models. In 
contrast, the fit for the degree distribution was improved by accounting 
for researchers’ characteristics, especially during the second half of the 
field’s development. This result is in line with our theoretical 
Table A1 
Information on scientists’ characteristics.   
Years of experience 
Number of publications per year 
Seniority—share of last author positions 
Year 
Mean 
SD 
Median 
Min. 
Max. 
Mean 
SD 
Median 
Min. 
Max. 
Mean 
SD 
Median 
Min. 
Max. 
1975 
0 
0 
0 
0 
0 
0.69 
1.65 
0 
0 
6 
0.15 
0.38 
0 
0 
1 
1979 
1.22 
1.89 
0 
0 
4 
1.78 
3.10 
0.50 
0 
16 
0.27 
0.39 
0 
0 
1 
1984 
1.73 
2.89 
0 
0 
9 
0.45 
1.20 
0 
0 
7 
0.17 
0.35 
0 
0 
1 
1987 
2.86 
3.56 
3 
0 
12 
2.17 
2.86 
2.17 
0 
12 
0.14 
0.32 
0 
0 
1 
1990 
2.02 
3.63 
0 
0 
15 
1.96 
2.67 
1 
0 
11 
0.19 
0.36 
0 
0 
1 
1993 
3.00 
4.08 
3 
0 
18 
4.27 
5.13 
3 
0 
24 
0.17 
0.35 
0 
0 
1 
1994 
2.23 
3.34 
1 
0 
19 
3.76 
5.63 
2 
0 
28 
0.16 
0.33 
0 
0 
1 
1996 
3.49 
4.42 
2 
0 
21 
5.10 
6.81 
3 
0 
40 
0.13 
0.30 
0 
0 
1 
1998 
3.66 
4.51 
3.66 
0 
23 
6.18 
8.58 
3 
0 
63 
0.14 
0.30 
0 
0 
1 
2000 
4.30 
4.81 
2 
0 
25 
7.96 
11.33 
4 
0 
88 
0.12 
0.28 
0 
0 
1 
2002 
4.30 
5.10 
4.30 
0 
27 
7.56 
12.62 
3 
0 
110 
0.12 
0.27 
0 
0 
1 
2004 
4.14 
5.26 
2 
0 
29 
6.99 
12.91 
2 
0 
113 
0.12 
0.28 
0 
0 
1 
2006 
4.69 
5.53 
2 
0 
31 
7.37 
13.83 
3 
0 
125 
0.13 
0.30 
0 
0 
1 
2008 
5.53 
5.96 
4 
0 
29 
8.42 
15.54 
3 
0 
137 
0.11 
0.27 
0 
0 
1 
2010 
5.51 
6.33 
4 
0 
31 
8.35 
16.46 
3 
0 
155 
0.10 
0.25 
0 
0 
1 
2012 
5.86 
6.51 
4 
0 
33 
9.20 
18.71 
2 
0 
170 
0.12 
0.28 
0 
0 
1 
2014 
6.64 
6.86 
4 
0 
35 
9.67 
19.95 
3 
0 
183 
0.09 
0.25 
0 
0 
1 
2016 
8.99 
7.18 
6 
0 
37 
13.17 
23.96 
5 
0 
201 
0.10 
0.25 
0 
0 
1  
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
96
expectation that researchers’ characteristics became more important for 
collaboration as the field matured (H2). 
In addition, we would like to point out that an insufficient GOF for 
the distribution of edgewise-shared partners and geodesic distances is 
not unusual in large networks (similar issues are reported for SAOMs by 
Lewis and Kaufman, 2018: 1736, Stark et al., 2020: 458). We attempted 
to increase the GOF by adding geometrically weighted statistics—such 
as the GWDEG and GWESP terms (Hunter, 2007). Yet, these terms led to 
model degeneracy in several years.22 Consequently, we decided to 
report specifications that worked for all conferences instead. While a 
high GOF is desirable, simpler specifications sufficiently addressed our 
research questions regarding the link between authors’ attributes and 
the distribution of coauthorships. Moreover, terms beyond dyadic 
configurations introduce complex interdependencies among parameters 
and can complicate interpretation (Martin, 2020; Rubineau et al., 
2019). 
Goodness of fit (GOF): detailed discussion of fitting the degree distribution 
Fig. A2 further explores differences in the goodness of fit between 
baseline and full models for networks’ degree distributions. Three major 
trends can be inferred from the figure 
First, the difference between the simulated degree distributions 
produced by baseline models and full models becomes more pronounced 
over time. This is in line with the bottom panel of Fig. A1, which 
Fig. A1. Difference in goodness of fit (GOF) between baseline and full model specification. Note.—Each diamond and dot displays the share of statistics with a t- 
value below 2. A higher share indicates better model fit. Diamonds represent the GOF calculated for baseline models reported in Table 3. Dots depict the GOF derived 
for full models reported in Table 4. Lines are loess curves to enhance interpretability (dotted lines for baseline models, straight lines for full models). 
22 While models that operate only on the dyad level use pseudo-maximum likeli­
hood estimation, models that include terms beyond dyadic interdependence rely on 
Monte Carlo Markov Chains (Hunter et al., 2008). The latter simulation-based esti­
mation procedure probably caused model instability in the networks under study. 
Also, please note that we do not report information on convergence t-ratios because 
these are only calculated if ERGMs are estimated by a simulation-based procedure. 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
97
Fig. A2. Goodness of fit (GOF) plots for the degree distribution.  
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
98
Fig. A2. (continued). 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
99
Fig. A2. (continued). 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
100
illustrates that the shares of well-approximated statistics started to differ 
noticeably from 1993 onward. 
Second, simulated degree distributions from full models exhibit a 
higher skewness than the simulated degree distributions stemming from 
baseline models. This trend is especially visible during the last five 
conferences and further corroborates the notion that researchers’ char­
acteristics affected their prominence as collaborators. It also strengthens 
our interpretation of Fig. 3 in the main text, which shows that full 
models perform better in approximating the empirical skewness of the 
degree distribution. 
Third, Fig. A2 shows that full models increase the fit for nodes with a 
high degree. This trend is visible from 1996 onward: while the boxplots 
remain “flat” for high-degree nodes in baseline models, the range of 
simulated values is extended in full models, which is indicated by the 
empty dots representing the upper end of confidence intervals in this 
plot type. In the long tail of the degree distribution, simulated values of 
full models show a wider confidence interval and thereby cover 
empirical values more often than baseline models. 
In summary, our additional GOF analyses for the degree distribution 
further support our substantial claims. Models including researchers’ 
characteristics—i.e., years of experience, publications, and last author 
positions—improve the fit of the degree distribution, especially during 
the second half of the field’s development, in comparison to baseline 
models. This points to an increased relevance of accumulation dynamics 
as the field grew and matured. 
Trends in inequality and simulated values from network models 
Here we report similar analyses as performed in Fig. 2 in the main 
text. The only difference is that we used the standard deviation and the 
Gini coefficient as alternative measures for inequality in the network’s 
degree distribution (Badham, 2013; Snijders and Steglich, 2015). 
The results presented in Fig. A3 are in line with our results reported 
in the main text: inequality in empirical networks increased over time, 
and models including actor attributes simulated values that are closer to 
empirical values than simulated values from baseline models. 
Results for the Gini coefficient are summarized in Fig. A4 and did not 
indicate a strong increase in inequality. Moreover, while full models 
were closer to simulating empirical values than baseline models, these 
differences were less pronounced in comparison with other measures for 
inequality. These findings are probably due to the fact that the Gini 
coefficient places equal emphasis on all percentiles of a distribution, 
whereas the skewness and the standard deviation are more sensitive to 
the top ranks of a distribution. While the Gini coefficient considers that 
most researchers did not have many collaborative ties from the outset of 
the field, the standard deviation and the skewness capture the advent of 
authors accumulating very large numbers of collaboration partners. 
Given that we are interested in the formation of elites rather than the 
uniform distribution of the total number of coauthor ties, we believe that 
the skewness and the standard deviation are better measures for our 
purpose (Tables A2–A4). 
Fig. A2. (continued). 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
101
Fig. A3. Inequality in coauthor ties over time measured by the standard deviation. Note.—Each box plot represents the distribution of standard deviations calculated 
in simulated networks obtained from network models reported in Tables 3 and 4. Boxplots in the upper panel show simulated values for networks generated ac­
cording to our baseline model specification (see Table 3). The bottom panel reports simulated values generated from the full models that additionally include re­
searchers’ characteristics (Table 4). We simulated 1,000 networks for each year and specification. Triangles indicate empirical values, i.e., the observed standard 
deviation of the degree distribution in a particular year. The dashed line connects empirical values, while the straight line follows the medians of simulated values. 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
102
Fig. A4. Inequality in coauthor ties over time measured by the Gini coefficient. Note.—Each box plot represents the distribution of Gini coefficients calculated in 
simulated networks obtained from network models reported in Tables 3 and 4. Boxplots in the upper panel show simulated values for networks generated according 
to our baseline model specification (see Table 3). The bottom panel reports simulated values generated from the full models that additionally include researchers’ 
characteristics (Table 4). We simulated 1,000 networks for each year and specification. Triangles indicate empirical values, i.e., the observed Gini coefficient of the 
degree distribution in a particular year. The dashed line connects empirical values, while the straight line follows the medians of simulated values. 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
103
Table A2 
The role of experience for the collaboration network of neuroblastoma researchers in exponential random graph models (ERGMs).  
Years 
1979 
1984 
1987 
1990 
1993 
1994  
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
-0.003  
-0.076  
0.094***  1.801  
0.054***  0.874  
0.074***  2.241  
0.046***  1.481  
0.079***  2.411  
(0.021)    
(0.008)    
(0.006)    
(0.003)    
(0.002)    
(0.003)   
Same institution  
0.108***  2.709  
0.092***  1.755  
0.096***  1.559  
0.053***  1.605  
0.058***  1.881  
0.031***  0.937  
(0.017)    
(0.008)    
(0.009)    
(0.003)    
(0.002)    
(0.003)   
Popularity years of experience  
0.001  
0.034  
-0.004  
-0.086  
0.011***  0.174  
0.040***  0.119  
0.010***  0.309  
0.005***  0.155  
(0.006)    
(0.003)    
(0.002)    
(0.001)    
(0.001)    
(0.001)   
Difference in authors’ years of 
experience  
-0.009  
-0.227  
0.001  
0.011  
-0.005  
-0.080  
-0.004*  
-0.123  
-0.005***  -0.173  
-0.005***  -0.162  
(0.008)    
(0.004)    
(0.003)    
(0.002)    
(0.001)    
(0.001)   
Baseline probability  
0.040  
0.053  
0.062  
0.033  
0.031  
0.032  
Years 
1996 
1998 
2000 
2002 
2004 
2006  
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
0.037***  1.807  
0.033***  2.083  
0.030***  1.649  
0.030***  2.213  
0.021***  2.301  
0.020***  1.893  
(0.001)    
(0.001)    
(0.001)    
(0.001)    
(0.0004)    
(0.0004)   
Same institution  
0.035***  1.677  
0.027***  1.701  
0.035***  1.965  
0.025***  1.875  
0.019***  2.089  
0.023***  2.251  
(0.001)    
(0.001)    
(0.001)    
(0.0005)    
(0.0003)    
(0.0003)   
Popularity years of experience  
0.006***  0.267  
0.005***  0.290  
0.006***  0.328  
0.004***  0.299  
0.002***  0.223  
0.003***  0.317  
(0.0003)    
(0.0002)    
(0.0002)    
(0.0002)    
(0.0001)    
(0.0001)   
Difference in authors’ years of 
experience  
-0.004***  -0.213  
-0.005***  -0.314  
-0.005***  -0.259  
-0.003***  -0.198  
-0.001***  -0.125  
-0.002***  -0.166  
(0.0004)    
(0.0004)    
(0.0004)    
(0.0003)    
(0.0002)    
(0.0002)   
Baseline probability  
0.021  
0.016  
0.018  
0.013  
0.009  
0.010  
Years 
2008 
2010 
2012 
2014 
2016  
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
0.021***  
1.647  
0.020***  
1.672  
0.017***  
1.934  
0.022***  
1.824  
0.029***  
1.578  
(0.0004)    
(0.0003)    
(0.0003)    
(0.0003)    
(0.0004)   
Same institution  
0.026***  
2.078  
0.026***  
2.166  
0.021***  
2.286  
0.026***  
2.144  
0.037***  
2.066  
(0.0004)    
(0.0004)    
(0.0003)    
(0.0003)    
(0.0005)   
Popularity years of experience  
0.005***  
0.361  
0.005***  
0.393  
0.003***  
0.309  
0.004***  
0.363  
0.007***  
0.364  
(0.0001)    
(0.0001)    
(0.0001)    
(0.0001)    
(0.0001)   
Difference in authors’ years of experience  
-0.009***  
-0.148  
-0.002***  
-0.200  
-0.001***  
-0.082  
-0.001***  
-0.114  
-0.002***  
-0.133  
(0.0002)    
(0.0002)    
(0.0001)    
(0.0001)    
(0.0002)   
Baseline probability  
0.013  
0.011  
0.009  
0.012  
0.018 
Note.—All continuous variables are z-standardized to enhance the comparability of estimates across models. Delta standard errors (Duxbury, 2019) are reported in 
parentheses. Scaled AMEs are AMEs divided by the baseline probability and can be interpreted as relative changes in tie probability if a network variable increases by 
one unit. We multiplied scaled AMEs by 100 to provide a measure capturing the percentage change of the baseline probability in Fig. 3 and Fig. 4. 
† p < 0.10 * p < 0.05 ** p < 0.01 *** p < 0.001 (two-sided) 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
104
Table A3 
The role of productivity for the collaboration network of neuroblastoma researchers in exponential random graph models (ERGMs).  
Years 
1979 
1984 
1987 
1990 
1993 
1994  
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
-0.005  
-0.130  
0.095***  1.807  
0.065***  1.059  
0.074***  2.258  
0.046***  1.500  
0.078***  2.385  
(0.021)    
(0.008)    
(0.006)    
(0.003)    
(0.002)    
(0.003)   
Same institution  
0.107***  2.684  
0.090***  1.715  
0.092***  1.488  
0.055***  1.658  
0.060***  1.920  
0.033***  1.013  
(0.017)    
(0.008)    
(0.009)    
(0.003)    
(0.002)    
(0.003)   
Popularity cumulated 
publications  
0.009  
0.226  
-0.0004  
-0.002  
0.015***  0.238  
0.006***  0.186  
0.011***  0.343  
0.006***  0.173  
(0.010)    
(0.006)    
(0.002)    
(0.001)    
(0.001)    
(0.001)   
Difference cumulated 
publications  
-0.025  
-0.618  
0.006  
0.116  
0.005  
0.087  
0.001  
0.031  
-0.004***  -0.123  
-0.003*  
-0.095  
(0.016)    
(0.006)    
(0.003)    
(0.002)    
(0.001)    
(0.0015)   
Baseline probability  
0.040  
0.053  
0.062  
0.033  
0.031  
0.032  
Years 
1996 
1998 
2000 
2002 
2004 
2006  
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
0.037***  1.796  
0.032***  2.039  
0.029***  1.608  
0.029***  1.608  
0.021***  2.285  
0.019***  1.841  
(0.001)    
(0.001)    
(0.001)    
(0.001)    
(0.0004)    
(0.0004)   
Same institution  
0.036***  1.751  
0.028***  1.793  
0.036***  2.011  
0.026***  2.011  
0.020***  2.102  
0.024***  2.289  
(0.001)    
(0.001)    
(0.001)    
(0.0005)    
(0.0003)    
(0.0003)   
Popularity cumulated 
publications  
0.009***  0.433  
0.006***  0.361  
0.007***  0.386  
0.005***  0.386  
0.002***  0.256  
0.004***  0.377  
(0.0003)    
(0.0002)    
(0.0003)    
(0.0002)    
(0.0001)    
(0.0001)   
Difference cumulated 
publications  
-0.003***  -0.136  
-0.002***  -0.117  
-0.003***  -0.179  
-0.002***  -0.179  
-0.004***  -0.073  
-0.002***  -0.165  
(0.0004)    
(0.0003)    
(0.0004)    
(0.0003)    
(0.0002)    
(0.0002)   
Baseline probability  
0.021  
0.016  
0.018  
0.013  
0.009  
0.010  
Years 
2008 
2010 
2012 
2014 
2016  
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
0.020***  
1.622  
0.019***  
1.640  
0.017***  
1.895  
0.022***  
1.790  
0.028***  
1.563  
(0.0004)    
(0.0003)    
(0.0003)    
(0.0003)    
(0.0004)   
Same institution  
0.026***  
2.088  
0.025***  
2.158  
0.021***  
2.305  
0.026***  
2.125  
0.036***  
2.013  
(0.0004)    
(0.0003)    
(0.0003)    
(0.0003)    
(0.0005)   
Popularity cumulated publications  
0.005***  
0.422  
0.006***  
0.469  
0.003***  
0.380  
0.005***  
0.438  
0.008***  
0.438  
(0.0001)    
(0.0001)    
(0.0001)    
(0.0001)    
(0.0001)   
Difference cumulated publications  
-0.002***  
-0.181  
-0.003***  
-0.243  
-0.001***  
-0.146  
-0.002***  
-0.191  
-0.004***  
-0.208  
(0.0001)    
(0.0001)    
(0.0001)    
(0.0001)    
(0.0002)   
Baseline probability  
0.013  
0.011  
0.009  
0.012  
0.018 
Note.—All continuous variables are z-standardized to enhance the comparability of estimates across models. Delta standard errors (Duxbury, 2019) are reported in 
parentheses. Scaled AMEs are AMEs divided by the baseline probability and can be interpreted as relative changes in tie probability if a network variable increases by 
one unit. We multiplied scaled AMEs by 100 to provide a measure capturing the percentage change of the baseline probability in Fig. 3 and Fig. 4. 
† p < 0.10 * p < 0.05 ** p < 0.01 *** p < 0.001 (two-sided) 
Table A4 
The role of last authorships for the collaboration network of neuroblastoma researchers in exponential random graph models (ERGMs).  
Years 
1979 
1984 
1987 
1990 
1993 
1994  
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
-0.004 
(0.021)  
-0.092  
0.094*** 
(0.008)  
1.791  
0.064*** 
(0.006)  
1.038  
0.075*** 
(0.003)  
2.280  
0.049*** 
(0.002)  
1.594  
0.080*** 
(0.003)  
2.432 
Same institution  
0.109*** 
(0.017)  
2.741  
0.092*** 
(0.008)  
1.740  
0.095*** 
(0.009)  
1.538  
0.052*** 
(0.003)  
1.591  
0.055*** 
(0.003)  
1.769  
0.031*** 
(0.003)  
0.941 
Popularity share last 
author positions  
0.0004 
(0.007)  
0.004  
-0.007 
(0.006)  
-0.139  
-0.009 
(0.005)  
-0.151  
-0.013*** 
(0.003)  
-0.385  
-0.0025* 
(0.0012)  
-0.080  
-0.007*** 
(0.002)  
-0.208 
Difference share last 
author positions  
0.002 
(0.009)  
0.052  
0.009 
(0.006)  
0.174  
0.003 
(0.006)  
0.046  
0.011** 
(0.003)  
0.318  
0.0001 
(0.001)  
0.003  
0.006** 
(0.002)  
0.194 
Baseline probability  
0.040  
0.053  
0.062  
0.033  
0.031  
0.032  
Years 
1996 
1998 
2000 
2002 
2004 
2006  
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
AME 
Scaled 
AME 
Same country  
0.039*** 
(0.001)  
1.895  
0.034*** 
(0.001)  
2.119  
0.030*** 
(0.001)  
1.676  
0.031*** 
(0.001)  
2.269  
0.022*** 
(0.0004)  
2.348  
0.020*** 
(0.0004)  
1.909 
Same institution  
0.034*** 
(0.001)  
1.658  
0.027*** 
(0.001)  
1.725  
0.035*** 
(0.001)  
1.981  
0.025*** 
(0.001)  
1.890  
0.020*** 
(0.0003)  
2.108  
0.024*** 
(0.0003)  
2.295 
Popularity share last 
author positions  
0.0009 
(0.0005)  
0.044  
0.0004 
(0.0004)  
0.026  
0.0010* 
(0.0005)  
0.056  
0.002*** 
(0.0003)  
0.115  
0.0004* 
(0.0002)  
0.043  
0.001*** 
(0.0002)  
0.067 
Difference share last 
author positions  
-0.001* 
(0.0006)  
-0.066  
0.0005 
(0.0005)  
0.034  
0.0006 
(0.0006)  
0.032  
>0.0001 
(0.0003)  
-0.001  
0.0002 
(0.0002)  
0.020  
-0.0002 
(0.0002)  
-0.019 
Baseline probability  
0.021  
0.016  
0.018  
0.013  
0.009  
0.010 
(continued on next page) 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
105
Online Appendix B. Supporting information 
Further analysis associated with this article can be found in the on­
line version at doi:10.1016/j.socnet.2022.05.001. 
References 
Adams, J., Schaefer, D.R., 2016. How initial prevalence moderates network-based 
smoking change: estimating contextual effects with stochastic actor-based models. 
J. Health Social Behav. 57, 22–38. https://doi.org/10.1177/0022146515627848. 
Alberts, B., Kirschner, M.W., Tilghman, S., Varmus, H., 2014. Rescuing US biomedical 
research from its systemic flaws. PNAS 111, 5773–5777. https://doi.org/10.1073/ 
pnas.1404402111. 
Adler, Patricia, and Peter Adler. 1998. Peer Power: Preadolescent Culture and Identity. 
New Brunswick, N.J.: Rutgers University Press. 
Allison, P.D., Long, J.S., Krauze, T.K., 1982. Cumulative advantage and inequality in 
science. Am. Sociol. Rev. 47, 615–625. https://doi.org/10.2307/2095162. 
Anderson, B.S., Butts, C., Carley, K., 1999. The interaction of size and density with graph-level 
indices. Social Netw. 21, 239–267. https://doi.org/10.1016/S0378-8733(99)00011-8. 
Anderson, C., Hildreth, J.A.D., Howland, L., 2015. Is the desire for status a fundamental 
human motive? a review of the empirical literature. Psychological Bulletin 141, 574. 
https://doi.org/10.1037/a0038781. 
Avisse, C., Marcus, C., Patey, M., Ladam-Marcus, V., Delattre, J.-F., Flament, J.-B., 2000. 
Surgical anatomy and embryology of the adrenal glands. Surg. Clin. North Am. 80, 
403–415. https://doi.org/10.1016/S0039-6109(05)70412-6. 
Azoulay, P., Graff Zivin, J.S., Wang, J., 2010. Superstar extinction. Quart J. Econ. 125, 
549–589. https://doi.org/10.1162/qjec.2010.125.2.549. 
Badham, J.M., 2013. Commentary: measuring the shape of degree distributions. Netw. 
Sci. 1, 213–225. https://doi.org/10.1017/nws.2013.10. 
Barab´asi, A.-L., Albert, R., 1999. Emergence of scaling in random networks. Science 286, 
509–512. 
Barabˆasi, A.-L., Jeong, H., N´eda, Z., Ravasz, E., Schubert, A., Vicsek, T., 2002. Evolution 
of the social network of scientific collaborations. Physica A Stat. Mechan. Appl. 311, 
590–614. 
Baumann, S., 2001. Intellectualization and art world development: film in the United 
States. Am. Sociol. Rev. 404–426. 
Becker, H.S., 2008. Art Worlds: Updated and Expanded. University of California Press, 
Berkeley.  
Bennett, D.M., Taylor, D.M., 2003. Unethical practices in authorship of scientific papers. 
Emerg. Med. 15, 263–270. https://doi.org/10.1046/j.1442-2026.2003.00432.x. 
Berger, J., Cohen, B.P., Zelditch Jr., M., 1972. Status characteristics and social 
interaction. Am. Sociol. Rev. 241–255. 
Berthold, F., Bartenhagen, C., Krempel, L., 2019. Are network growth and the 
contributions to congresses associated with publication success? a pediatric 
oncology model. PloS one 14, e0210994. 
Blau, P., 1994. The Organization of Academic Work. Transaction Publishers, New 
Brunswick, N.J.  
Blau, P., 1977. Inequality and Heterogeneity: A Primitive Theory of Social Structure. Free 
Press, New York.  
Blau, P., 1968. The hierarchy of authority in organizations. Am. J. Sociol. 73, 453–467. 
https://doi.org/10.1086/224506. 
Boardman, P.C., Ponomariov, B.L., 2007. Reward systems and NSF university research 
centers: The impact of tenure on university scientists’ valuation of applied and 
commercially relevant research. J Higher Educ. 78, 51–70. https://doi.org/10.1080/ 
00221546.2007.11778963. 
Bojanowski, M., Corten, R., 2014. Measuring segregation in social networks. Soc. Netw. 
39, 14–32. https://doi.org/10.1016/j.socnet.2014.04.001. 
T. Bol , M. de Vaan , A. van de Rijt. The Matthew effect in science funding Proceedings of 
the National Academy of Sciences 115 2018 4887 4890 doi: 10.1073/ 
pnas.1719557115. 
Borkenhagen, C., Martin, J.L., 2018. Status and career mobility in organizational fields: 
chefs and restaurants in the United States, 1990–2013. Social Forces 97, 1–26. 
https://doi.org/10.1093/sf/soy024. 
Bourdieu, P., 1993. The Field of Cultural Production: Essays on art and Literature. 
Columbia University Press, New York.  
Bourdieu, P., 1988. Homo Academicus. Stanford University Press, Stanford.  
Bourdieu, P., 1984. Distinction: A Social Critique of the Judgement of Taste. Harvard 
University Press, Cambridge, Mass.  
Bozeman, B., Gaughan, M., 2011. How do men and women differ in research 
collaborations? An analysis of the collaborative motives and strategies of academic 
researchers. Res. Policy 40, 1393–1402. https://doi.org/10.1016/j. 
respol.2011.07.002. 
Brashears, M.E., 2013. Humans use compression heuristics to improve the recall of social 
networks. Sci. Rep. 3, 1513. https://doi.org/10.1038/srep01513. 
Brashears, M.E., Quintane, E., 2015. The microstructures of network recall: how social 
networks are encoded and represented in human memory. Soc. Netw. 41, 113–126. 
https://doi.org/10.1016/j.socnet.2014.11.003. 
Brodeur, G.M., 2003. Neuroblastoma: biological insights into a clinical enigma. Nat. Rev. 
Cancer 3, 203–216. https://doi.org/10.1038/nrc1014. 
Brodeur, G.M., Pritchard, J., Berthold, F., Carlsen, N.L., Castel, V., Castelberry, R.P., De 
Bernardi, B., Evans, A.E., Favrot, M., Hedborg, F., 1993. Revisions of the 
international criteria for neuroblastoma diagnosis, staging, and response to 
treatment. J. Clin. Oncol. 11, 1466–1477. https://doi.org/10.1200/ 
jco.1993.11.8.1466. 
Burris, V., 2004. The academic caste system: Prestige hierarchies in PhD exchange networks. 
Am. Sociol. Rev. 69, 239–264. https://doi.org/10.1177/000312240406900205. 
Carnabuci, G., Emery, C., Brinberg, D., 2018. Emergent leadership structures in informal 
groups: a dynamic, cognitively informed network model. Organ. Sci. 29, 118–133. 
https://doi.org/10.1287/orsc.2017.1171. 
Cheung, N.V., Heller, G., 1991. Chemotherapy dose intensity correlates strongly with 
response, median survival, and median progression-free survival in metastatic 
neuroblastoma. J. Clin. Oncol. 9, 1050–1058. https://doi.org/10.1200/ 
JCO.1991.9.6.1050. 
Chubin, D.E., 1976. State of the field the conceptualization of scientific specialties. 
Sociol. Quart. 17, 448–476. https://doi.org/10.1111/j.1533-8525.1976.tb01715.x. 
Cole, J.R., Cole, S., 1973. Social Stratification in Science. University of Chicago Press, Chicago.  
Cole, J.R., Harriet, Z., 1975. The emergence of a scientific specialty: the self-exemplifying 
case of the sociology of science. In: The Idea of Social Structure: Papers in Honor of 
Robert K. Merton. Routledge, New York.  
Coleman, James S. 1961. The Adolescent Society. New York: Free Press. 
Costas, R., Bordons, M., 2011. Do age and professional rank influence the order of 
authorship in scientific publications? Some evidence from a micro-level perspective. 
Scientometrics 88, 145–161. https://doi.org/10.1007/s11192-011-0368-z. 
Crane, D., 1972. Invisible Colleges; Diffusion of Knowledge in Scientific Communities. 
University of Chicago Press, Chicago.  
Dahlander, L., McFarland, D.A., 2013. Ties that last: Tie formation and persistence in 
research collaborations over time. Administrative Sci. Quart. 58, 69–110. https:// 
doi.org/10.1177/0001839212474272. 
Dehner, L.P., 1988. Classic neuroblastoma: Histopathologic grading as a prognostic 
indicator. J. Pediat. Hematol./Oncol. 10, 143–754. 
Duxbury, S., 2019. ergMargins: Process analysis for exponential random graph models. R 
package version 0.1. 0. 
Duxbury, S.W., 2021. The Problem of Scaling in Exponential Random Graph Models. 
Sociol. Methods Res. https://doi.org/10.1177/0049124120986178. 
Eom, Y.-H., Fortunato, S., 2011. Characterizing and modeling citation dynamics. PLOS 
ONE 6, e24926. https://doi.org/10.1371/journal.pone.0024926. 
Evans, A.E., D’Angio, G.J., Randolph, J., 1971. A proposed staging for children with 
neuroblastoma. Child. Cancer Study Group A Cancer 27, 374–378. 
Evans, J.A., 2008. Electronic publication and the narrowing of science and scholarship. 
Science 321, 395–399. https://doi.org/10.1126/science.1150473. 
Feld, S.L., 1981. The focused organization of social ties. Am. J. Sociol. 86, 1015–1035. 
https://doi.org/10.1086/227352. 
Years 
2008 
2010 
2012 
2014 
2016  
AME 
Scaled 
AME 
AME 
Scaled AME 
AME 
Scaled AME 
AME 
Scaled AME 
AME 
Scaled AME 
Same country  
0.021*** 
(0.0004)  
1.701  
0.021*** 
(0.0003)  
1.777  
0.018*** 
(0.0003)  
2.006  
0.023*** 
(0.0003)  
1.877  
0.029*** 
(0.0004)  
1.630 
Same institution  
0.026*** 
(0.0004)  
2.059  
0.025*** 
(0.0003)  
2.090  
0.021*** 
(0.0003)  
2.309  
0.026*** 
(0.0003)  
2.106  
0.036*** 
(0.0005)  
1.981 
Popularity share last author positions  
0.001*** 
(0.0002)  
0.106  
0.002*** 
(0.0001)  
0.144  
0.001*** 
(0.0001)  
0.108  
0.002*** 
(0.0001)  
0.146  
0.001*** 
(0.0002)  
0.077 
Difference share last author positions  
-0.001*** 
(0.0002)  
-0.090  
-0.001*** 
(0.0002)  
-0.123  
-0.0004* 
(0.0002)  
-0.048  
-0.001*** 
(0.0002)  
-0.095  
-0.002*** 
(0.0003)  
-0.102 
Baseline probability  
0.013  
0.011  
0.009  
0.012  
0.018 
Note.—All continuous variables are z-standardized to enhance the comparability of estimates across models. Delta standard errors (Duxbury, 2019) are reported in 
parentheses. Scaled AMEs are AMEs divided by the baseline probability and can be interpreted as relative changes in tie probability if a network variable increases by 
one unit. We multiplied scaled AMEs by 100 to provide a measure capturing the percentage change of the baseline probability in Fig. 3 and Fig. 4. 
† p < 0.10 * p < 0.05 ** p < 0.01 *** p < 0.001 (two-sided) 
Table A4 (continued)  
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
106
Ferligoj, A., Kronegger, L., Mali, F., Snijders, T.A.B., Doreian, P., 2015. Scientific 
collaboration dynamics in a national scientific system. Scientometrics 104, 
985–1012. https://doi.org/10.1007/s11192-015-1585-7. 
Fisher, J.C., 2018. Exit, cohesion, and consensus: social psychological moderators of 
consensus among adolescent peer groups. Social Curr. 5, 49–66. https://doi.org/ 
10.1177/2329496517704859. 
Fiske, S.T., 2011. Envy Up, Scorn Down: How Status Divides Us. Russell Sage, New York.  
Fochler, M., Felt, U., Müller, R., 2016. Unsustainable growth, hyper-competition, and 
worth in life science research: narrowing evaluative repertoires in doctoral and 
postdoctoral scientists’ work and lives. Minerva 54, 175–200. https://doi.org/ 
10.1007/s11024-016-9292-y. 
Foster, J.G., Rzhetsky, A., Evans, J.A., 2015. Tradition and innovation in scientists’ research 
strategies. Am. Sociol. Rev. 80, 875–908. https://doi.org/10.1177/0003122415601618. 
Frickel, S., Gross, N., 2005. A general theory of scientific/intellectual movements. Am. 
Sociol. Rev. 70, 204–232. https://doi.org/10.1177/000312240507000202. 
Friedkin, N.E., 1978. University social structure and social networks among scientists. 
Am. J. Sociol. 83, 1444–1465. https://doi.org/10.1086/226708. 
Gondal, N., 2018. Duality of departmental specializations and PhD exchange: A 
Weberian analysis of status in interaction using multilevel exponential random graph 
models (mERGM). Soc. Netw. 55, 202–212. https://doi.org/10.1016/j. 
socnet.2018.07.005. 
Gondal, N., 2011. The local and global structure of knowledge production in an emergent 
research field: an exponential random graph analysis. Soc. Netw. 33, 20–30. https:// 
doi.org/10.1016/j.socnet.2010.09.001. 
Gondal, N., McLean, P.D., 2013a. Linking tie-meaning with network structure: variable 
connotations of personal lending in a multiple-network ecology. Poetics 41, 
122–150. https://doi.org/10.1016/j.poetic.2012.12.002. 
Gondal, N., McLean, P.D., 2013b. What makes a network go round? exploring the 
structure of a strong component with exponential random graph models. Social 
Networks 35, 499–513. https://doi.org/10.1016/j.socnet.2013.06.004. 
Goodreau, S.M., Kitts, J.A., Morris, M., 2009. Birds of a feather, or friend of a friend? 
using exponential random graph models to investigate adolescent social networks. 
Demography 46, 103–125. https://doi.org/10.1353/dem.0.0045. 
Gould, R.V., 2002. The origins of status hierarchies: a formal theory and empirical test. 
Am. J. Sociol. 107, 1143–1178. https://doi.org/10.1086/341744. 
Griffith, B.C., Mullins, N.C., 1972. Coherent social groups in scientific change. Science 
177, 959–964. 
Grow, A., Flache, A., Wittek, R., 2015. An agent-based model of status construction in 
task focused groups. J. Artif. Soc. Social Simul. 18, 4. 
Hagstrom, W.O., 1971. Inputs, outputs, and the prestige of university science 
departments. Sociol. Educ. 375–397. 
Han, S.-K., 2003. Tribal regimes in academia: a comparative analysis of market structure 
across disciplines. Social Netw. 25, 251–280. https://doi.org/10.1016/S0378-8733 
(03)00011-X. 
Hˆancean, M.-G., Perc, M., Lerner, J., 2021. The coauthorship networks of the most 
productive European researchers. Scientometrics 126, 201–224. https://doi.org/ 
10.1007/s11192-020-03746-5. 
Hannan, M.T., Freeman, J., 1993. Organizational Ecology. Harvard University Press, 
Cambridge, Mass.  
Holman, L., Morandin, C., 2019. Researchers collaborate with same-gendered colleagues 
more often than expected across the life sciences. PloS one 14, e0216128. https:// 
doi.org/10.1371/journal.pone.0216128. 
Hunter, D.R., 2007. Curved exponential family models for social networks. Soc. Netw. 
29, 216–230. https://doi.org/10.1016/j.socnet.2006.08.005. 
Hunter, D.R., Handcock, M.S., Butts, C.T., Goodreau, S.M., Morris, M., 2008. ergm: A 
package to fit, simulate and diagnose exponential-family models for networks. 
J. Stat. Softw. 4860, 24, nihpa5.  
Hutchison, R., 1907. On suprarenal sarcoma in children with metastases in the skull. Int. 
J. Med. 33–38. 
Jones, B.F., Wuchty, S., Uzzi, B., 2008. Multi-university research teams: shifting impact, 
geography, and stratification in science. Science 322, 1259–1262. https://doi.org/ 
10.1126/science.1158357. 
Jurgens, D., Kumar, S., Hoover, R., McFarland, D., Jurafsky, D., 2018. Measuring the 
evolution of a scientific field through citation frames. Trans. Assoc. Comput. 
Linguist. 6, 391–406. https://doi.org/10.1162/tacl_a_00028. 
Kaghad, M., Bonnet, H., Yang, A., Creancier, L., Biscan, J.-C., Valent, A., Minty, A., 
Chalon, P., Lelias, J.-M., Dumont, X., 1997. Monoallelically expressed gene related to 
p53 at 1p36, a region frequently deleted in neuroblastoma and other human cancers. 
cell 90, 809–819. https://doi.org/10.1016/S0092-8674(00)80540-1. 
Knorr, C., 1999. Epistemic Cultures: How the Sciences Make Knowledge. Harvard 
University Press, Cambridge, Mass.  
Koppman, S., Leahey, E., 2016. Risk and Reputation: How Professional Classification 
Signals Drive the Diffusion of New Methods. Proceedings 2016, 11676. https://doi. 
org/10.5465/ambpp.2016.11676abstract. 
Krackhardt, D., Kilduff, M., 1999. Whether close or far: Social distance effects on 
perceived balance in friendship networks. J. Person. Social Psychol. 76, 770. https:// 
doi.org/10.1037/0022-3514.76.5.770. 
Kreager, D.A., Young, J.T.N., Haynie, D.L., Schaefer, D.R., Bouchard, M., Davidson, K.M., 
2021. In the eye of the beholder: meaning and structure of informal status in women’s and 
men’s prisons. Criminology 59, 42–72. https://doi.org/10.1111/1745-9125.12260. 
Kronegger, L., Ferligoj, A., Doreian, P., 2011. On the dynamics of national scientific 
systems. Qual. Quant. 45, 989–1015. https://doi.org/10.1007/s11135-011-9484-3. 
Kronegger, L., Mali, F., Ferligoj, A., Doreian, P., 2012. Collaboration structures in 
Slovenian scientific communities. Scientometrics 90, 631–647. https://doi.org/ 
10.1007/s11192-011-0493-8. 
Kuhn, T.S., 1970. The Structure of Scientific Revolutions, second ed. Chicago University 
Press, Chicago.  
Lamont, M., 2009. How Professors Think. Harvard University Press, Cambridge.  
Latour, B., 1987. Science in Action: How to Follow Scientists and Engineers Through 
Society. Harvard university press. 
Latour, B., Woolgar, S., 1986. Laboratory Life: The Construction of Scientific Facts. 
Princeton University Press, Princeton, N.J.  
Laudel, G., 2006. The art of getting funded: how scientists adapt to their funding 
conditions. Sci. Public Policy 33, 489–504. https://doi.org/10.3152/ 
147154306781778777. 
Lazega, E., Bar-Hen, A., Barbillon, P., Donnet, S., 2016. Effects of competition on 
collective learning in advice networks. Social Netw. 47, 1–14. https://doi.org/ 
10.1016/j.socnet.2016.04.001. 
Lazega, E., Mounier, L., Jourda, M.-T. se, Stofer, R., 2006. Organizational vs. personal 
social capital in scientists’ performance: a multi-level network study of elite French 
cancer researchers (1996-1998). Scientometrics 67, 27–44. https://doi.org/ 
10.1007/s11192-006-0049-5. 
Leahey, E., 2016. From sole investigator to team scientist: trends in the practice and 
study of research collaboration. Ann. Rev. Sociol. 42, 81–100. https://doi.org/ 
10.1146/annurev-soc-081715-074219. 
Leahey, E., Barringer, S.N., 2020. Universities’ commitment to interdisciplinary research: 
To what end? Res. Policy 49, 103910. https://doi.org/10.1016/j. 
respol.2019.103910. 
Lewis, K., Kaufman, J., 2018. The conversion of cultural tastes into social network ties. 
Am. J. Sociol. 123, 1684–1742. https://doi.org/10.1086/697525. 
Li, E.Y., Liao, C.H., Yen, H.R., 2013. Co-authorship networks and research impact: a 
social capital perspective. Res. Policy 42, 1515–1530. https://doi.org/10.1016/j. 
respol.2013.06.012. 
Lok, C., 2016. Science’s 1%: How income inequality is getting worse in research. Nat. 
News 537, 471. https://doi.org/10.1038/537471a. 
Lusher, D., Koskinen, J., Robins, G., 2013. Exponential Random Graph Models for Social 
Networks: Theory, Methods, and Applications. Cambridge University Press, New York.  
Lynn, F.B., 2014. Diffusing through disciplines: Insiders, outsiders, and socially 
influenced citation behavior. Social Forces 93, 355–382. https://doi.org/10.1093/ 
sf/sou069. 
Lynn, F.B., Podolny, J.M., Tao, L., 2009. A sociological (de) construction of the 
relationship between status and quality. Am. J. Sociol. 115, 755–804. https://doi. 
org/10.1086/603537. 
Ma, D., Narayanan, V.K., Liu, C., Fakharizadi, E., 2020. Boundary salience: The 
interactive effect of organizational status distance and geographical proximity on 
coauthorship tie formation. Social Netw. 63, 162–173. https://doi.org/10.1016/j. 
socnet.2020.07.004. 
Main, J.B., 2014. Gender homophily, Ph.D.Completion, and time to degree in the 
humanities and humanistic social sciences. Rev. High. Educ. 37, 349–375. https:// 
doi.org/10.1353/rhe.2014.0019. 
Marchand, F., 1891. Beitrage zur Kenntnis der normalen and pathologischen Anatomie 
der Glandula carotica und der Nebennieren. Int. Beitr. Wiss. Med. Festschr. Rudolph. 
Virchow. 1, 535–581. 
Maris, J.M., 2010. Recent advances in neuroblastoma. New Engl. J. Med. 362, 
2202–2211. https://doi.org/10.1056/NEJMra0804577. 
Mark, N.P., Smith-Lovin, L., Ridgeway, C.L., 2009. Why do nominal characteristics 
acquire status value? a minimal explanation for status construction. American 
Journal of Sociology 115, 832–862. https://doi.org/10.1086/606142. 
Martin, J.L., 2020. Comment on geodesic cycle length distributions in delusional and other 
social networks. J. Social Struct. 21, 77–93. https://doi.org/10.21307/joss-2020-003. 
Martin, J.L., 2009. Social Structures. Princeton University Press, Princeton, N.J.  
Martynov, I., Klima-Frysch, J., Schoenberger, J., 2020. A scientometric analysis of 
neuroblastoma research. BMC Cancer 20, 1–10. https://doi.org/10.1186/s12885- 
020-06974-3. 
Matthay, K.K., Villablanca, J.G., Seeger, R.C., Stram, D.O., Harris, R.E., Ramsay, N.K., 
Swift, P., Shimada, H., Black, C.T., Brodeur, G.M., 1999. Treatment of high-risk 
neuroblastoma with intensive chemotherapy, radiotherapy, autologous bone 
marrow transplantation, and 13-cis-retinoic acid. New Engl. J. Med. 341, 
1165–1173. https://doi.org/10.1056/NEJM199910143411601. 
Mayhew, B.H., 1973. System Size and Ruling Elites. Am. Sociol. Rev. 468–475. 
Mayhew, B.H., Levinger, R.L., 1976. Size and the density of interaction in human 
aggregates. Am. J. Sociol. 82, 86–110. https://doi.org/10.1086/226271. 
McFarland, D.A., Moody, J., Diehl, D., Smith, J.A., Thomas, R.J., 2014. Network ecology 
and adolescent social structure. Am. Sociol. Rev. 79, 1088–1121. https://doi.org/ 
10.1177/0003122414554001. 
McMahan, P., 2017. Unreciprocat. Relation. Struct. of Status. https://doi.org/10.6082/ 
M1WQ01XN. 
McPherson, M., Smith-Lovin, L., Cook, J.M., 2001. Birds of a feather: Homophily in social 
networks. Ann. Rev. Sociol. 27, 415–444. https://doi.org/10.1146/annurev. 
soc.27.1.415. 
Merton, R.K., 1988. The Matthew effect in science, II: Cumulative advantage and the 
symbolism of intellectual property. isis 79, 606–623. 
Merton, R.K., 1968. The matthew effect in science: the reward and communication 
systems of science are considered. Science 159, 56–63. https://doi.org/10.1126/ 
science.159.3810.56. 
Milner, Murray. 2013. Freaks, Geeks, and Cool Kids. Routledge. 
Mood, C., 2010. Logistic regression: why we cannot do what we think we can do, and 
what we can do about it. Euro. Sociol. Rev. 26, 67–82. 
Moody, J., 2004. The structure of a social science collaboration network: disciplinary 
cohesion from 1963 to 1999. Am. Sociol. Rev. 69, 213–238. https://doi.org/ 
10.1177/000312240406900204. 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

Social Networks 72 (2023) 80–107
107
Moody, J., Brynildsen, W.D., Osgood, D.W., Feinberg, M.E., Gest, S., 2011. Popularity 
trajectories and substance use in early adolescence. Social Netw. 33, 101–112. 
https://doi.org/10.1016/j.socnet.2010.10.001. 
Moss´e, Y.P., Laudenslager, M., Longo, L., Cole, K.A., Wood, A., Attiyeh, E.F., 
Laquaglia, M.J., Sennett, R., Lynch, J.E., Perri, P., 2008. Identification of ALK as a 
major familial neuroblastoma predisposition gene. Nature 455, 930–935. https:// 
doi.org/10.1038/nature07261. 
Mullins, N.C., 1972. The development of a scientific specialty: the phage group and the 
origins of molecular biology. Minerva 10, 51–82. 
Mullins, N.C., Hargens, L.L., Hecht, P.K., Kick, E.L., 1977. The group structure of 
cocitation clusters: a comparative study. Am. Sociol. Rev. 42, 552–562. https://doi. 
org/10.2307/2094554. 
Münch, R., 2014. Academic Capitalism: Universities in the Global Struggle for 
Excellence. Routledge, New York.  
Münch, R., Baier, C., 2012. Institutional struggles for recognition in the academic field: 
the case of university departments in German chemistry. Minerva 50, 97–126. 
https://doi.org/10.1007/s11024-012-9189-3. 
Munoz-Najar Galvez, S., Heiberger, R., McFarland, D., 2019. Paradigm wars revisited: a 
cartography of graduate research in the field of education (1980–2010), 
0002831219860511 Am. Educ. Res. J.. https://doi.org/10.3102/0002831219860511. 
Newman, M.E., 2001a. The structure of scientific collaboration networks. Proc. Natl. 
Acad. Sci. 98, 404–409. https://doi.org/10.1073/pnas.98.2.404. 
Newman, M.E., 2001b. Scientific collaboration networks. I. Network construction and 
fundamental results. Phys. Rev. E 64, 016131. https://doi.org/10.1103/ 
PhysRevE.64.016131. 
Newman, M.E., 2001c. Scientific collaboration networks. II. Shortest paths, weighted 
networks, and centrality. Phys. Rev. E 64, 016132. https://doi.org/10.1103/ 
PhysRevE.64.016132. 
Olson, J.S., 1989. The History of Cancer: an Annotated Bibliography. Greenwood Press, 
New York.  
Padgett, J.F., Powell, W.W., 2012. The Emergence of Organizations and Markets. 
Princeton University Press, Princeton, N.J.  
Parker, J.N., Hackett, E.J., 2012. Hot spots and hot moments in scientific collaborations 
and social movements. Am. Sociol. Rev. 77, 21–44. https://doi.org/10.1177/ 
0003122411433763. 
Pepper, W., 1901. A study of congenital sarcoma of the liver and suprarenal.: with report 
of a case. Am. J. Med. Sci. 121, 287. 
Petersen, A.M., Fortunato, S., Pan, R.K., Kaski, K., Penner, O., Rungi, A., Riccaboni, M., 
Stanley, H.E., Pammolli, F., 2014. Reputation and impact in academic careers. PNAS 
111, 15316–15321. https://doi.org/10.1073/pnas.1323111111. 
Podolny, J.M., 2010. Status Signals: A Sociological Study of Market Competition. 
Princeton University Press, Princeton, N.J.  
Ramage, D., Manning, C.D., McFarland, D.A., 2020. Mapping Three Decades of 
Intellectual Change in Academia. arXiv:2004.01291 [cs, stat]. 
Rawlings, C.M., McFarland, D.A., Dahlander, L., Wang, D., 2015. Streams of thought: 
knowledge flows and intellectual cohesion in a multidisciplinary era. Social Forces 
93, 1687–1722. https://doi.org/10.1093/sf/sov004. 
Ray, S.K., 2019. Neuroblastoma: Molecular Mechanisms and Therapeutic Interventions. 
Academic Press, London.  
Ridgeway, C., 1991. The social construction of status value: gender and other nominal 
characteristics. Social Forces 70, 367–386. https://doi.org/10.1093/sf/70.2.367. 
Ridgeway, C.L., 2019. Status: Why Is It Everywhere? Why Does It Matter? Russell Sage 
Foundation, New York.  
Ridgeway, C.L., 2014. Why status matters for inequality. Am. Sociol. Rev. 79, 1–16. 
https://doi.org/10.1177/0003122413515997. 
Ridgeway, C.L., Correll, S.J., 2006. Consensus and the creation of status beliefs. Social 
Forces 85, 431–453. https://doi.org/10.1353/sof.2006.0139. 
Ridgeway, C.L., Erickson, K.G., 2000. Creating and spreading status beliefs. Am. J. 
Sociol. 106, 579–615. https://doi.org/10.1086/318966. 
Ripley, R.M., Snijders, T.A., Boda, Z., V¨or¨os, A., Preciado, P., 2019. Manual for RSiena. 
Robins, G., 2011. Exponential random graph models for social networks. In: Handbook of 
Social Network Analysis. Sage, Los Angeles.  
Rubineau, B., Lim, Y., Neblo, M., 2019. Low status rejection: How status hierarchies 
influence negative tie formation. Social Netw. 56, 33–44. https://doi.org/10.1016/j. 
socnet.2018.08.005. 
Sauder, M., Lynn, F., Podolny, J.M., 2012. Status: insights from organizational sociology. 
Ann. Rev. Sociol. 38, 267–283. https://doi.org/10.1146/annurev-soc-071811- 
145503. 
Savitz, D.A., 1999. Invited commentary: what can we infer from author order in 
epidemiology? Am. J. Epidemiol. 149, 401–403. https://doi.org/10.1093/ 
oxfordjournals.aje.a009826. 
Schaefer, D.R., Kreager, D.A., 2020. New on the block: analyzing network selection 
trajectories in a prison treatment program. Am. Sociol. Rev. 85, 709–737. https:// 
doi.org/10.1177/0003122420941021. 
Schwemmer, C., Wieczorek, O., 2020. The methodological divide of sociology: evidence 
from two decades of journal publications. Sociology 54, 3–21. https://doi.org/ 
10.1177/0038038519853146. 
Shalizi, C.R., Thomas, A.C., 2011. Homophily and contagion are generically confounded 
in observational social network studies. Sociol. Methods Res. 40, 211–239. https:// 
doi.org/10.1177/0049124111404820. 
Shapiro, D.W., Wenger, N.S., Shapiro, M.F., 1994. The contributions of authors to 
multiauthored biomedical research papers. JaMa 271, 438–442. https://doi.org/ 
10.1001/jama.1994.03510300044036. 
Shi, F., Foster, J.G., Evans, J.A., 2015. Weaving the fabric of science: dynamic network 
models of science’s unfolding structure. Social Netw. 43, 73–85. https://doi.org/ 
10.1016/j.socnet.2015.02.006. 
Shimada, H., Chatten, J., Newton, W.A., Sachs, N., Hamoudi, A.B., Chiba, T., Marsden, H. 
B., Misugi, K., 1984. Histopathologic prognostic factors in neuroblastic tumors: 
definition of subtypes of ganglioneuroblastoma and an age-linked classification of 
neuroblastomas. JNCI: J. Natl. Cancer Instit. 73, 405–416. https://doi.org/10.1093/ 
jnci/73.2.405. 
Shwed, U., Bearman, P.S., 2010. The temporal structure of scientific consensus 
formation. Am. Sociol. Rev. 75, 817–840. https://doi.org/10.1177/ 
0003122410388488. 
Simpson, C.R., 2019. Farm size shapes friend choice amongst rice producers in China: 
some evidence for the theory of network ecology. Social Netw. https://doi.org/ 
10.1016/j.socnet.2019.10.001. 
Smith, S., McFarland, D.A., Van Tubergen, F., Maas, I., 2016. Ethnic composition and 
friendship segregation: differential effects for adolescent natives and immigrants. 
Am. J. Sociol. 121, 1223–1272. https://doi.org/10.1086/684032. 
Snijders, T.A., Steglich, C.E., 2015. Representing micro–macro linkages by actor-based 
dynamic network models. Sociol. Methods Res. 44, 222–271. https://doi.org/ 
10.1177/0049124113494573. 
Snijders, T.A.B., van de Bunt, G.G., Steglich, C.E.G., 2010. Introduction to stochastic 
actor-based models for network dynamics. Social Netw. Dynam. Social Netw. 32, 
44–60. https://doi.org/10.1016/j.socnet.2009.02.004. 
Stark, T.H., Rambaran, J.A., McFarland, D.A., 2020. The meeting of minds: forging social 
and intellectual networks within universities. Sociol. Sci. 7, 433–464. https://doi. 
org/10.15195/v7.a18. 
Steglich, C., Snijders, T.A., Pearson, M., 2010. Dynamic networks and behavior: 
separating selection from influence. Sociol. Methodol. 40, 329–393. https://doi.org/ 
10.1111/j.1467-9531.2010.01225.x. 
Tal, D., Gordon, A., 2017. Publication attributes of leadership: what do they mean? 
Scientometrics 112, 1391–1402. https://doi.org/10.1007/s11192-017-2425-8. 
Venturini, T., Munk, A.K., Jacomy, M., 2019. Actor-Network versus Network Analysis 
versus Digital Networks: Are We Talking about the Same Networks? DigitalSTS. 
Princeton University Press, pp. 510–524. 
White, H.C., 2008. Identity and Control: How Social Formations Emerge. Princeton 
University Press, Princeton, N.J.  
White, H.C., White, C.A., 1993. Canvases and Careers: Institutional Change in the French 
Painting World. University of Chicago Press, Chicago.  
Wimmer, A., Lewis, K., 2010. Beyond and below racial homophily: ERG models of a 
friendship network documented on facebook. Am. J. Sociol. 116, 583–642. https:// 
doi.org/10.1086/653658. 
Wuchty, S., Jones, B.F., Uzzi, B., 2007. The increasing dominance of teams in production 
of knowledge. Science 316, 1036–1039. https://doi.org/10.1126/science.1136099. 
Zuckerman, H.A., 1968. Patterns of name ordering among authors of scientific papers: a 
study of social symbolism and its ambiguity. Am. J. Sociol. 74, 276–291. https://doi. 
org/10.1086/224641. 
Further reading 
An, W., 2015. Multilevel meta network analysis with application to studying network 
dynamics of network interventions. Social Netw. 43, 48–56. https://doi.org/ 
10.1016/j.socnet.2015.03.006. 
Block, P., Koskinen, J., Hollway, J., Steglich, C., Stadtfeld, C., 2018. Change we can 
believe in: comparing longitudinal network models on consistency, interpretability 
and predictive power. Soc. Netw. 52, 180–191. https://doi.org/10.1016/j. 
socnet.2017.08.001. 
Feld, S.L., 1991. Why your friends have more friends than you do. Am. J. Sociol. 96, 
1464–1477. https://doi.org/10.1086/229693. 
Indlekofer, N., Brandes, U., 2013. Relative importance of effects in stochastic actor- 
oriented models. Netw. Sci. 1, 278–304. https://doi.org/10.1017/nws.2013.21. 
Rambaran, J.A., van Duijn, M.A., Dijkstra, J.K., Veenstra, R., 2020. Stability and change 
in student classroom composition and its impact on peer victimization. J. Educ. 
Psychol. 112, 1677. https://doi.org/10.1037/edu0000438. 
Snijders, T.A., 2011. Statistical models for social networks. Ann. Rev. Sociol. 37, 
131–153. https://doi.org/10.1146/annurev.soc.012809.102709. 
M. Wittek et al.                                                                                                                                                                                                                                 


--- PAGE BREAK ---

