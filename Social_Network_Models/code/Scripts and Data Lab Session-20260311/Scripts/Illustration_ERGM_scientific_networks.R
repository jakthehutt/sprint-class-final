## Illustration script ERGMs to analyze scientific networks ## 

# Install packages if not already installed
install.packages("readxl", dep=T)
install.packages("ineq", dep=T)
install.packages("statnet", dep=T)
install.packages("ergMargins", dep=T)
install.packages("ggplot2", dep=T)
install.packages("ggthemes", dep=T)
install.packages("moments", dep=T)
install.packages("parallel", dep=T)
install.packages("Hmisc", dep=T)

# Load packages
library(readxl)
library(ineq)
library(statnet)
library(ergMargins)
library(ggplot2)
library(ggthemes)
library(moments)
library(parallel)
library(Hmisc)

## Let's read the dataset (adjust the path to your location)
load("~/Desktop/Scripts and Data Lab Session/Data/Clean_environment.RData")
 
### Setting a theme for ggplot
apatheme=theme_bw()+
  theme(panel.border=element_blank(),
        axis.line=element_line(),
        text=element_text(family='Times'), axis.text=element_text(size=20), axis.title=element_text(size=24), legend.text = element_text(size=20), legend.title = element_text(size=16), legend.position = "right" )

## Getting the degree distribution of the network
degree_dist  <-(degree(network_1984, cmode='indegree'))
degree_dist  <- as.data.frame(degree_dist)

## Plotting a nice looking histogramm for the degree distribution (left panel of figure 1)
ggplot(data=degree_dist,aes(x = degree_dist, stat(density)))+geom_histogram(bins=50,fill = "white", col="black")+apatheme+xlab("Number of co-authorships")+ylab("Density")+geom_density(alpha = 0.1, fill="grey")+     
  labs(title = "1984")+ theme(plot.title = element_text(size=22,hjust = 0.5))

## Network Visualization (left panel of figure 1)
deg <- as.vector(degree_dist)$degree_dist
gplot(network_1984, arrowhead.cex = 0, vertex.cex = deg/10, vertex.col = "lightgrey", edge.lwd = 0.1)

## Descriptives for 1984
# Size of the network, skewness and standard deviation of the degree distribution in 1984
length(deg)
skewness(deg)
sd(deg)


###### ERGM analysis for one network ###########

# A very simple ERGM specification just entailing the edges term for density
m1 <-ergm(network_1998 ~ edges)
summary(m1)

# Let's introduce nodal attributes: being in the same country and at the same institution
m2 <-ergm(network_1998 ~ edges + nodematch('country')+ nodematch('institution'))
summary(m2)

# Let's introduce more nodal attributes: popularity of effect of having more publications 
m3 <-ergm(network_1998 ~ edges + nodematch('country')+ nodematch('institution') + nodecov('publications_cum'))
summary(m3)

# Full model specification used in the paper (note: coefficients are log Odds and not AMEs like in the paper)
m4 <-ergm(network_1998 ~ edges + nodematch('country')+ nodematch('institution') + nodecov('author_experience_z')+ absdiff('author_experience_z') + nodecov('publications_cum_z')+ absdiff('publications_cum_z') + nodecov('share_last_z')+ absdiff('share_last_z'))
summary(m4)


#### Using average marginal effects for interpretation on probability scale 
# Shift in absolute probability (percentage points) of a tie
 ergm.AME(m4, var1='nodematch.country')
 ergm.AME(m4, var1='nodematch.institution')
 ergm.AME(m4, var1='absdiff.author_experience_z')
 
# Adjusted at baseline probability to observe a tie 
# The baseline probability to observe a ties is the density of the network 
network.density(network_1998)

# Given the baseline probability to observe a tie (in this case only 1.6%), sharing the same country makes increases the probability of a collaboration tie between two researchers by 203%! 
(ergm.AME(m4, var1='nodematch.country')[[1]]/network.density(network_1998))*100

# A one standard deviation increase in the difference in experience output decreases the probability of a tie by 33% given the baseline probability (authors with a similar experience collaborate more often)   
(ergm.AME(m4, var1='absdiff.author_experience_z')[[1]]/network.density(network_1998))*100



###### ERGM analysis for multiple networks ###########

# Define a function that is estimating ERGMs for each conference network
estimate_run<-function(input_network=NULL, effects=NULL){
  
  ## Estimate ERGMs for Science Network
  collab_network           <-input_network[[1]]
  
  m.base.results <- ergm(as.formula(effects), control=control.ergm(MCMC.burnin=10000,MCMC.samplesize=5000, MCMLE.maxit = 20),verbose=TRUE)
  
  ## Which specification was used?
  specification                   <- as.formula(effects)
  coefs_from_model_meta_baseline  <- summary(m.base.results)$coefs[,1]
  
  ### if it worked, continue, otherwise abort and return "NA"
  if(class(m.base.results)!="try-error"){
    
    try({
      
      
      # gof: how well does model reproduce school network characteristics (outdegree, edgewise-shared partners, and min. geodesic distances)?
      gof_orig <- gof(m.base.results ~ degree + esp + distance, control=control.gof.formula(nsim=2,MCMC.burnin = 1000,MCMC.interval = 5000))
      
      t_stats_dist<-c()
      for (j in 1:nrow(gof_orig$summary.dist)) {
        dif<-gof_orig$summary.dist[j,1]-gof_orig$sim.dist[,j]
        t_stats_dist[j]<-mean(dif,na.rm=T)/sd(dif,na.rm=T)
      }
      
      t_stats_espart<-c()
      for (j in 1:nrow(gof_orig$summary.espart)) {
        dif<-gof_orig$summary.espart[j,1]-gof_orig$sim.espart[,j]
        t_stats_espart[j]<-mean(dif,na.rm=T)/sd(dif,na.rm=T)
      }
      
      t_stats_deg<-c()
      for (z in 1:nrow(gof_orig$summary.deg)) {
        dif<-gof_orig$summary.deg[z,1]-gof_orig$sim.deg[,z]
        t_stats_deg[z]<-mean(dif,na.rm=T)/sd(dif,na.rm=T)
      }
      
      
      gof_t_stats<-c(t_stats_dist,t_stats_espart,t_stats_deg)
      gof_t_stats<-gof_t_stats[!is.na(gof_t_stats)]
      
      gof<- c( mean(abs(gof_t_stats)<=2),
               median(abs(gof_t_stats)),
               max(abs(gof_t_stats)) )
      rm(dif,t_stats_dist,t_stats_espart,gof_t_stats)
      
      #### Postestimation Average Marginal Effects
      collect_AvMargins      <- list()
      
      collect_AvMargins[[1]] <- ergm.AME(m.base.results, var1='nodematch.country')
      collect_AvMargins[[2]] <- ergm.AME(m.base.results, var1='nodematch.institution')
      
      collect_AvMargins[[3]] <- ergm.AME(m.base.results, var1='nodecov.author_experience_z')
      collect_AvMargins[[4]] <- ergm.AME(m.base.results, var1='absdiff.author_experience_z')
      
      collect_AvMargins[[5]] <- ergm.AME(m.base.results, var1='nodecov.publications_cum_z')
      collect_AvMargins[[6]] <- ergm.AME(m.base.results, var1='absdiff.publications_cum_z')
      
      collect_AvMargins[[7]] <- ergm.AME(m.base.results, var1='nodecov.share_last_z')
      collect_AvMargins[[8]] <- ergm.AME(m.base.results, var1='absdiff.share_last_z')
      
      # enter results in output object
      out<-list()
      
      
      out[[1]]<-m.base.results$coefficients       # Thetas
      out[[2]]<-sqrt(diag(m.base.results$covar))  # Standard errors
      out[[3]]<-vcov(m.base.results)              # Covariance matrix
      out[[4]]<-gof                               # GOF information
      out[[5]]<-m.base.results$failure            # Failure of MCMC estimation?
      out[[6]]<-m.base.results                    # Original ERGM object
      out[[7]]<-t_stats_deg                       # Fit of degree distribution
      out[[8]]<-collect_AvMargins
      out[[9]]<-gof_orig
      
      return(out)
      
    })
  }
}

# Set the model specification
effects                <-c("collab_network ~ edges + nodematch('country') + nodematch('institution') + nodecov('author_experience_z') + absdiff('author_experience_z') + nodecov('publications_cum_z') + absdiff('publications_cum_z') + nodecov('share_last_z') + absdiff('share_last_z')")

# Define subset of networks
network_list_all_years_subset     <- list_of_networks[2:18]

# Estimate the models
estimate_list                     <- lapply(network_list_all_years_subset, function(x) estimate_run(input_network=x, effects=effects))

## If you can run it in parallel recommended
# estimate_list                     <- mclapply(network_list_all_years_subset, function(x) estimate_run(input_network=x, effects=effects), mc.cores = 8)


## Having a look at the estimates
summary(estimate_list[[1]][[6]])
summary(estimate_list[[2]][[6]])
summary(estimate_list[[4]][[6]])
summary(estimate_list[[5]][[6]])
summary(estimate_list[[6]][[6]])



######## Post estimation, Plots Coefs and average marginal effects ######################
names_coefs <-names(estimate_list[[1]][[1]])
names_ses   <-unlist(lapply(names_coefs, function(x) ((parse(text=paste(x,"_se", sep = "")) ))) )

coefs <-estimate_list[[1]][[1]]
ses   <-estimate_list[[1]][[2]]

for(z in 2:length(estimate_list)){
  
  coefs<- rbind(coefs,estimate_list[[z]][[1]])
  ses  <- rbind(ses,estimate_list[[z]][[2]])
  
}

coefs           <-as.data.frame(coefs)
names(coefs)    <-names_coefs

ses             <-as.data.frame(ses)
names(ses)      <-names_ses

estimates_frame <-cbind(coefs,ses)

years           <- c(1979, 1984, 1987,1990,1993,1994,1996,1998,2000,2002,2004,2006,2008,2010,2012,2014,2016)
estimates_frame <-cbind(estimates_frame,years)

GOFs            <-unlist(lapply(estimate_list, function(x) x[[6]][[1]]))
estimates_frame <-cbind(estimates_frame,GOFs)

## Construct confidence intervals for plots 
for(y in 1:length(names_coefs)){
  
  eval(parse(text=paste("estimates_frame$lowerci_",names_coefs[[y]],"<-estimates_frame$",names_coefs[[y]],"-(1.96*estimates_frame$",names_coefs[[y]],"_se)", sep="")))
  eval(parse(text=paste("estimates_frame$upperci_",names_coefs[[y]],"<-estimates_frame$",names_coefs[[y]],"+(1.96*estimates_frame$",names_coefs[[y]],"_se)", sep="")))
  
}


## Make Plot for parameter you want to examine
p=ggplot(dat=estimates_frame[estimates_frame$years>1980,], aes(y=years, x= nodematch.country , xmin=lowerci_nodematch.country, xmax=upperci_nodematch.country))+apatheme+
  #Add data points and color them black
  geom_point(color = 'black')+
  #add the CI error bars
  geom_errorbarh(height=0.5)+
  #Add a vertical dashed line indicating an effect size of zero, for reference
  geom_vline(xintercept=0, color='black', linetype='dashed')+
  coord_flip() + ylab('Year') + xlab('ERGM Coefficient') + labs(title = "") + theme(plot.title = element_text(size=22))
p




###### Average Marginal Perspective ####################################################################################################

# Get names of average marginal effects
names_AMEs <-c()

for(r in 1: length(estimate_list[[1]][[8]])){
  
  names_AMEs[[r]]       <-rownames(estimate_list[[1]][[8]][[r]])
  
}

names_AMEs       <- unlist(names_AMEs)
names_AME_ses    <-unlist(lapply(names_AMEs, function(x) ((parse(text=paste(x,"_se", sep = "")) ))) )

### Get values for AMEs and Delta Standarderrors
AMEs      <-c()
AMEs_ses  <-c()

for(z in 1:length(names_AMEs)){
  
  AMEs[[z]]     <-estimate_list[[1]][[8]][[z]][[1]]
  AMEs_ses[[z]] <-estimate_list[[1]][[8]][[z]][[2]]
  
  
}

AMEs       <-unlist(AMEs)
AMEs_ses   <-unlist(AMEs_ses)

names(AMEs)     <- names_AMEs
AMEs            <-t(as.data.frame(AMEs))

names(AMEs_ses) <- names_AME_ses
AMEs_ses        <-t(as.data.frame(AMEs_ses))


AME_frame       <-cbind(AMEs,AMEs_ses)
AME_frame       <-as.data.frame(AME_frame)


for(t in 2:length(estimate_list)){
  
  AMEs <-c()
  AMEs_ses <- c()
  
  for(z in 1:length(names_AMEs)){
    
    AMEs[[z]]     <-estimate_list[[t]][[8]][[z]][[1]]
    AMEs_ses[[z]] <-estimate_list[[t]][[8]][[z]][[2]]
    
    
  }
  
  AMEs       <-unlist(AMEs)
  AMEs_ses   <-unlist(AMEs_ses)
  
  names(AMEs)     <- names_AMEs
  AMEs            <-t(as.data.frame(AMEs))
  
  names(AMEs_ses) <- names_AME_ses
  AMEs_ses        <-t(as.data.frame(AMEs_ses))
  
  
  AME_frame_fuppes <-cbind(AMEs,AMEs_ses)
  AME_frame        <-rbind(AME_frame,AME_frame_fuppes)
  
  
}

## Attach years
years           <- c(1979, 1984, 1987,1990,1993,1994,1996,1998,2000,2002,2004,2006,2008,2010,2012,2014,2016)
AME_frame       <-cbind(AME_frame,years)

## Attach baseline probabilities 
network_list_all_years_subset  <-list_of_networks[2:18]
baseline_probs                 <-unlist(lapply(network_list_all_years_subset, function(x) network.density(x[[1]])))
AME_frame                      <-cbind(AME_frame,baseline_probs)

for(u in 1:length(names_AMEs)){
  
  eval(parse(text=paste("AME_frame$",names_AMEs[[u]],"_base<-AME_frame$",names_AMEs[[u]],"/AME_frame$baseline_probs", sep="")))
  
}


## Construct confidence intervals for plots 
for(y in 1:length(names_AMEs)){
  
  eval(parse(text=paste("AME_frame$lowerci_",names_AMEs[[y]],"   <-AME_frame$",names_AMEs[[y]],"-(1.96*AME_frame$",names_AMEs[[y]],"_se)", sep="")))
  eval(parse(text=paste("AME_frame$upperci_",names_AMEs[[y]],"   <-AME_frame$",names_AMEs[[y]],"+(1.96*AME_frame$",names_AMEs[[y]],"_se)", sep="")))
  
  ## Now import ses via ratio to new scale oriented at baseline probs.
  eval(parse(text=paste("AME_frame$",names_AMEs[[y]],"_ses_ratio   <-AME_frame$",names_AMEs[[y]],"/AME_frame$",names_AMEs[[y]],"_se", sep=""))) 
  eval(parse(text=paste("AME_frame$",names_AMEs[[y]],"_ses_base    <-AME_frame$",names_AMEs[[y]],"_base/AME_frame$",names_AMEs[[y]],"_ses_ratio", sep=""))) 
  
  ## Calculate CIs scaled at baseline prob.
  eval(parse(text=paste("AME_frame$lowerci_",names_AMEs[[y]],"_base <-AME_frame$",names_AMEs[[y]],"_base-(1.96*AME_frame$",names_AMEs[[y]],"_ses_base)", sep="")))
  eval(parse(text=paste("AME_frame$upperci_",names_AMEs[[y]],"_base <-AME_frame$",names_AMEs[[y]],"_base+(1.96*AME_frame$",names_AMEs[[y]],"_ses_base)", sep="")))
  
}


## Make Plot for parameter you want to examine
p=ggplot(dat=AME_frame[AME_frame$years>1980,], aes(y=years, x= nodematch.institution_base , xmin=lowerci_nodematch.institution_base, xmax=upperci_nodematch.institution_base))+
  #Add data points and colour them black
  geom_point(color = 'black')+
  #add the CI error bars
  geom_errorbarh(height=0.5)+
  #Add a vertical dashed line indicating an effect size of zero, for reference
  geom_vline(xintercept=0, color='black', linetype='dashed')+
  coord_flip() + ylab('Year') + apatheme + xlab('AMEs percentage change of baseline prob.') + labs(title = "") + theme(plot.title = element_text(size=22))
p

## Save Results in a table format
rounded_frame   <-round(AME_frame, digits=4)

for(u in 1:length(names_AMEs)){
  
  eval(parse(text=paste("funky_coef_vector<-rounded_frame$",names_AMEs[[u]], sep="")))
  eval(parse(text=paste("funky_se_vector<-rounded_frame$",names_AMEs[[u]],"_se", sep="")))
  
  fuppes_t_values <-abs(funky_coef_vector/funky_se_vector)
  
  
  funky_coefs <-c()
  
  for(z in 1:length(fuppes_t_values)){
    
    try(eval(parse(text=paste("if(fuppes_t_values[[z]]<1.96){funky_coefs[[z]] <- as.character('",funky_coef_vector[[z]],"')}", sep=""))))
    try(eval(parse(text=paste("if(fuppes_t_values[[z]]>=1.96){funky_coefs[[z]] <- as.character('",funky_coef_vector[[z]],"*')}", sep=""))))
    try(eval(parse(text=paste("if(fuppes_t_values[[z]]>=2.576){funky_coefs[[z]] <- as.character('",funky_coef_vector[[z]],"**')}", sep=""))))
    try(eval(parse(text=paste("if(fuppes_t_values[[z]]>=3.291){funky_coefs[[z]] <- as.character('",funky_coef_vector[[z]],"***')}", sep=""))))
    
  }
  
  eval(parse(text=paste("rounded_frame$",names_AMEs[[u]],"<-funky_coefs",sep="")))
  
}

unlist_frame<-lapply(rounded_frame, function(x) unlist(x))
unlist_frame<-as.data.frame(unlist_frame)

switched_frame  <- (t(unlist_frame))

# If you want to write stats into a table
write.csv(switched_frame, file="new_stats.csv")














