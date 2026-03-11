######################################################
#              Lab-CoEvolution.R                     #
#                                                    #
# R script for performing the analyses reported in   #
# Steglich, Snijders & West (2006; SSW)              #
# plus a robustness check of the results             #
# upon addition of the 'quad' effect.                # 
# Written by Christian Steglich,                     #
# with some additions by Tom Snijders.               #
# Version Sept 24, 2014                              #
#                                                    #
# Note by Mark Wittek: I adjusted the script for our ###########
# class for faster model calculation and analyses              #
# closer to the Lewis and Kaufman article for the              #
# original script see:                                         #
# https://www.stats.ox.ac.uk/~snijders/siena/Lab_coevolution.R #
################################################################


# load RSiena commands:
library(RSiena)
library(sna)
library(ggplot2)
library(wesanderson)

# set working directory to where the data are:
setwd("/Users/markwittek/Desktop/Social Networks II/Session 10/lab-CoEvolution_SSW/Glasgow_data")
list.files()

# Read data sets:
load("Glasgow-friendship.RData")  # friendship networks
load("Glasgow-demographic.RData") # for gender data
load("Glasgow-substances.RData")  # for alcoholo data
load("Glasgow-lifestyle.RData")   # for music listening data
load("Glasgow-selections.RData")  # for 129 respondents used in SSW
# See what we have now:
ls()

# Define music scales as in SSW:
rockscale <- matrix(nrow=length(age),ncol=3)
rownames(rockscale) <- rownames(music1)
rockscale[,1] <- rowSums(music1[,colnames(music1) %in% c("rock","indie","heavy","grunge")])
rockscale[,2] <- rowSums(music2[,colnames(music2) %in% c("rock","indie","heavy","grunge")])
rockscale[,3] <- rowSums(music3[,colnames(music3) %in% c("rock","indie","heavy","grunge")])
elitescale <- matrix(nrow=length(age),ncol=3)
rownames(elitescale) <- rownames(music1)
elitescale[,1] <- rowSums(music1[,colnames(music1) %in% c("folk","jazz","classical")])
elitescale[,2] <- rowSums(music2[,colnames(music2) %in% c("folk","jazz","classical")])
elitescale[,3] <- rowSums(music3[,colnames(music3) %in% c("folk","jazz","classical")])
chartscale <- matrix(nrow=length(age),ncol=3)
rownames(chartscale) <- rownames(music1)
chartscale[,1] <- rowSums(music1[,colnames(music1) %in% c("techno","chart","dance","rave")])
chartscale[,2] <- rowSums(music2[,colnames(music2) %in% c("techno","chart","dance","rave")])
chartscale[,3] <- rowSums(music3[,colnames(music3) %in% c("techno","chart","dance","rave")])

# Recode valued friendship to binary friendship:
friendship.1[friendship.1==2] <- 1
friendship.2[friendship.2==2] <- 1
friendship.3[friendship.3==2] <- 1

# Identify dependent network variable:
friendship <- sienaNet(array(c(friendship.1[selection129,selection129],
 friendship.2[selection129,selection129],friendship.3[selection129,selection129]),
 dim=c(129,129,3)))

# Identify dependent behavior variables:
rock <- sienaNet(rockscale[selection129,],type="behavior")
elite <- sienaNet(elitescale[selection129,],type="behavior")
chart <- sienaNet(chartscale[selection129,],type="behavior")

# Identify constant covariate:
sexF <- coCovar(sex.F[selection129])

# Bind data together for Siena analysis:
SSWdata <- sienaDataCreate(friendship,rock,elite,chart,sexF)

# Write first descriptive results to protocol file (optional):
print01Report(SSWdata,modelname='SSW-init')  ## Let's have a look

########### Descriptive Analysis ################

# First look at the network in wave 1
network_wave1 <- as.network(SSWdata$depvars$friendship[,,1])
plot(network_wave1)

# Looking at the popularity of different musical genres
barplot(sort(colSums(music1)/length(age)), main="Share of Listeners in W1")
barplot(sort(colSums(music2)/length(age)), main="Share of Listeners in W2")
barplot(sort(colSums(music3)/length(age)), main="Share of Listeners in W3")

## Make a Plot that looks at segregation according to musical preferences

# For rock music
rock_music_w1 <-SSWdata$depvars$rock[,,1]
music_vals    <- sort(unique(rock_music_w1))
music_colors  <- wes_palette("Zissou1")
vertex_colors <- music_colors[match(rock_music_w1,
                                    music_vals)]

plot(network_wave1,
     vertex.col = vertex_colors)
legend("topright",  
       legend = music_vals,
       pch = 19,  
       col = music_colors,
       title = "Preference for rock music",
       bty = "n") 

# For elite music (classical, folk, jazz)
elite_music_w1 <-SSWdata$depvars$elite[,,1]
music_vals    <- sort(unique(elite_music_w1))
music_colors  <- wes_palette("Zissou1")
vertex_colors <- music_colors[match(elite_music_w1,
                                    music_vals)]

plot(network_wave1,
     vertex.col = vertex_colors)
legend("topright",  
       legend = music_vals,
       pch = 19,  
       col = music_colors,
       title = "Preference for elite music",
       bty = "n") 

# For chart music (includes also techno, dance, rave)
chart_music_w1 <-SSWdata$depvars$chart[,,1]
music_vals    <- sort(unique(chart_music_w1))
music_colors  <- wes_palette("Zissou1")
vertex_colors <- music_colors[match(chart_music_w1,
                                    music_vals)]

plot(network_wave1,
     vertex.col = vertex_colors)
legend("topright",  
       legend = music_vals,
       pch = 19,  
       col = music_colors,
       title = "Preference for chart music",
       bty = "n") 


########### Model estimation ####################

# 1.Baseline model 

# Create effects object for model specification:
SSWeffects <- getEffects(SSWdata)

# Specify the model according to SSW:
SSWeffects <- includeEffects(SSWeffects,nbrDist2)
SSWeffects <- includeEffects(SSWeffects,egoX,altX,sameX,interaction1="sexF")

# Now create a model object (note that estimation option in SSW was findiff=TRUE):
SSWmodel <- sienaModelCreate(useStdInits=TRUE,projname='SSW-results')

# Estimate the model (using multiple cores of the processor to speed up affairs):
SSWresults <- siena07(SSWmodel,data=SSWdata,effects=SSWeffects,useCluster=TRUE,
                      initC=TRUE,nbrNodes=7, returnDeps=TRUE)

## Let's have a look at the results
SSWresults

## For GOF see

# goodness of fit for indegree distribution:
gof.indegrees <- sienaGOF(SSWresults,IndegreeDistribution,
                          verbose=TRUE,join=TRUE,varName="friendship",cumulative=FALSE)
gof.indegrees
plot(gof.indegrees) 

# goodness of fit for outdegree distribution:
gof.outdegrees <- sienaGOF(SSWresults,OutdegreeDistribution,
                           verbose=TRUE,join=TRUE,varName="friendship",cumulative=FALSE)
gof.outdegrees
plot(gof.outdegrees)

# goodness of fit for triad census:
gof.triads <- sienaGOF(SSWresults,TriadCensus,
                       verbose=TRUE,join=TRUE,varName="friendship")
gof.triads
plot(gof.triads,center=TRUE,scale=TRUE) 



# 2. Model that is closer to the one my Lewis and Kaufmann

# Create effects object for model specification:
SSWeffects <- getEffects(SSWdata)

# Specify the model according to SSW:
SSWeffects <- includeEffects(SSWeffects,egoX,altX,sameX,interaction1="sexF")
SSWeffects <- includeEffects(SSWeffects,egoX,altX,simX,interaction1="rock")
SSWeffects <- includeEffects(SSWeffects,egoX,altX,simX,interaction1="elite")
SSWeffects <- includeEffects(SSWeffects,egoX,altX,simX,interaction1="chart")

## Structural, Transitive
SSWeffects<-includeEffects(SSWeffects, gwespFF)
SSWeffects<-includeEffects(SSWeffects, gwespBB)
SSWeffects<-includeEffects(SSWeffects, inPopSqrt)
SSWeffects<-includeEffects(SSWeffects, outActSqrt)

# Influence effect for elite
SSWeffects <- includeEffects(SSWeffects,name="elite",totSim,interaction1="friendship")

# Now create a model object (note that estimation option in SSW was findiff=TRUE):
SSWmodel <- sienaModelCreate(useStdInits=TRUE,projname='SSW-results')

# Estimate the model (using multiple cores of the processor to speed up affairs):
SSWresults <- siena07(SSWmodel,data=SSWdata,effects=SSWeffects,useCluster=TRUE,
                      initC=TRUE,nbrNodes=7, returnDeps=TRUE)

## Let's have a look at the results
SSWresults

## For GOF see

# goodness of fit for indegree distribution:
gof.indegrees <- sienaGOF(SSWresults,IndegreeDistribution,
                          verbose=TRUE,join=TRUE,varName="friendship",cumulative=FALSE)
gof.indegrees
plot(gof.indegrees) 

# goodness of fit for outdegree distribution:
gof.outdegrees <- sienaGOF(SSWresults,OutdegreeDistribution,
                           verbose=TRUE,join=TRUE,varName="friendship",cumulative=FALSE)
gof.outdegrees
plot(gof.outdegrees)

# goodness of fit for triad census:
gof.triads <- sienaGOF(SSWresults,TriadCensus,
                       verbose=TRUE,join=TRUE,varName="friendship")
gof.triads
plot(gof.triads,center=TRUE,scale=TRUE) 




## If you want to include all influence effects, use these, warning it can take some time...
SSWeffects <- includeEffects(SSWeffects,name="rock",totSim,interaction1="friendship")
SSWeffects <- includeEffects(SSWeffects,name="chart",totSim,interaction1="friendship")

### If you want a well converged model you can use this function: 
# Tweak it to your liking regarding parallelization etc.

## Siena to converge function
siena07ToConvergence       <- function(alg0, alg1, dat, eff, ans0=NULL, ...){
  
  #Make "fresh" clusters
  numr <- 0
  ans  <- siena07(alg0, data=dat, effects=eff, prevAns=ans0, nbrNodes=7,returnDeps=TRUE) # the first run
  repeat {
    save(ans, file=paste("ans",numr,".RData",sep="")) # to be safe
    numr <- numr+1 # count number of repeated runs
    tm <- ans$tconv.max # convergence indicator
    cat(numr, tm,"\n") # report how far we are
    if (tm < 0.25) {break} # success
    if (tm > 10) {break} # divergence without much hope
    # of returning to good parameter values
    if (numr > 10) {break} # now it has lasted too long
    if (tm > 0.5){
      
      ans <- siena07(alg0, data=dat, effects=eff,prevAns=ans, nbrNodes=7,returnDeps=TRUE)
    } else {
      
      ans <- siena07(alg1, data=dat, effects=eff, prevAns=ans, nbrNodes=7,returnDeps=TRUE)
    }
  }
  if (tm > 0.25)
  {
    cat(	"Warning: convergence inadequate.\n")
  }
  ans
}

converged_model <-siena07ToConvergence(alg0=SSWmodel,alg1=SSWmodel,dat=SSWdata, eff=SSWeffects, ans0=SSWresults)










