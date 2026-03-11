## Homework Social Networks 2

## Helpful resource: https://statnet.org/workshop-ergm/ergm_tutorial.html#The_Statnet_Project

# Advice: don't use ChatGPT or you will learn little. Try to copy and adjust code from the course and other credible sources instead. 

# Install packages if not already installed, don't run if you installed them already.
#install.packages("readxl", dep=T)
#install.packages("ineq", dep=T)
#install.packages("statnet", dep=T)
#install.packages("ergMargins", dep=T)
#install.packages("ggplot2", dep=T)
#install.packages("ggthemes", dep=T)
#install.packages("moments", dep=T)
#install.packages("parallel", dep=T)
#install.packages("Hmisc", dep=T)
#install.packages("wesanderson")

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
library(wesanderson)

### Setting a theme for ggplot
apatheme=theme_bw()+
  theme(panel.border=element_blank(),
        axis.line=element_line(),
        text=element_text(family='Times'), axis.text=element_text(size=20), axis.title=element_text(size=24), legend.text = element_text(size=20), legend.title = element_text(size=16), legend.position = "right" )

# There are different network datasets that come already with the ergm package 
data(package='ergm') # here you can have a look, if you want to know more about the datasets search for publications using them or consult the help file

# This is how you load a dataset (note: it's already a network object)
data(faux.mesa.high )
faux.mesa.high 

# Task 1. Choose one of the network datasets, load it and make a nice looking plot
# If we want to look at degree
degree_dist  <-(degree(faux.mesa.high, cmode='indegree'))
degree_dist  <- as.data.frame(degree_dist)
deg          <- as.vector(degree_dist)$degree_dist

ggplot(data=degree_dist,aes(x = degree_dist, stat(density)))+geom_histogram(bins=50,fill = "white", col="black")+apatheme+xlab("Number of friendships")+ylab("Density")+geom_density(alpha = 0.1, fill="grey")+     
  labs(title = "Mesa")+ theme(plot.title = element_text(size=22,hjust = 0.5))

plot(faux.mesa.high, arrowhead.cex = 0.5, vertex.cex = (deg+2)/5, vertex.col = "lightgrey", edge.lwd = 0.1)


# A plot that looks for segregation along respondents reported sex 
sex_vals      <- sort(unique(get.vertex.attribute(faux.mesa.high, "Sex")))
sex_colors    <- c("Orange", "Blue") 
vertex_colors <- sex_colors[match(get.vertex.attribute(faux.mesa.high, "Sex"), 
                                  sex_vals)]
plot(faux.mesa.high, 
     vertex.cex =  (deg+2)/5,
     vertex.col = vertex_colors)


# A plot that compares segregation along multiple social categories 
par(mfrow = c(1,3))
sex_vals       <- sort(unique(get.vertex.attribute(faux.mesa.high, "Sex")))
sex_colors     <- c("Orange", "Blue") 
vertex_colors  <- sex_colors[match(get.vertex.attribute(faux.mesa.high, "Sex"), 
                                  sex_vals)]
plot(faux.mesa.high, 
     vertex.cex = (deg+2)/5,
     vertex.col = vertex_colors)
legend("topright",  
       legend = sex_vals,
       pch = 19,  
       col = sex_colors,
       title = "Sex",
       bty = "n") 
##-- 

race_vals <- sort(unique(get.vertex.attribute(faux.mesa.high, "Race")))
race_colors   <- wes_palette("AsteroidCity2")
vertex_colors <- race_colors[match(get.vertex.attribute(faux.mesa.high,"Race"),
                                   race_vals)]

plot(faux.mesa.high,
     vertex.cex = (deg+2)/5,
     vertex.col = vertex_colors)
legend("topright",  
       legend = race_vals,
       pch = 19,  
       col = race_colors,
       title = "Race",
       bty = "n") 

## -- 

grade_vals <- sort(unique(get.vertex.attribute(faux.mesa.high, "Grade")))
grade_colors <- c("cornflowerblue","coral3","burlywood1","firebrick4",
                  "darkolivegreen","darksalmon")
vertex_colors <- grade_colors[match(get.vertex.attribute(faux.mesa.high,"Grade"),
                                    grade_vals)]
plot(faux.mesa.high,
     vertex.cex = (deg+2)/5,
     vertex.col = vertex_colors)
legend("topright",  
       legend = grade_vals,
       pch = 19,  
       col = grade_colors,
       title = "Grade",
       bty = "n") 


# Task 2. Plot a histogram of the degree distribution and calculate the skewness of the degree distribution
### Setting a theme for ggplot

## Getting the degree distribution
degree_dist  <-(degree(faux.mesa.high, cmode='indegree'))
degree_dist  <- as.data.frame(degree_dist)

ggplot(data=degree_dist,aes(x = degree_dist, stat(count)))+geom_histogram(bins=50,fill = "white", col="black")+apatheme+xlab("Number of friendships")+ylab("Count")+geom_density(alpha = 0.1, fill="grey")+     
  labs(title = "Faux Mesa Highschool")+ theme(plot.title = element_text(size=22,hjust = 0.5))

# Size of the network, skewness and standard deviation of the degree distribution 
length(deg)
skewness(deg)
sd(deg)


# Task 3. Run an ERGM and include at least one network endogenous effect (e.g., triadic closure (gwesp))
m1 <-ergm(faux.mesa.high~edges+gwesp(cutoff=50), 
          control=control.ergm( main.method = "Stochastic")) ## Trick: go with stochastic approximation so we don't have to wait a lifetime
                                                             ## You might have to run this multiple times if its not working out the first time. 

# Task 4. Run an ERGM and additionally include actor attributes (e.g., a term capturing homophily according to social categories such as race or gender)
m2     <- ergm(faux.mesa.high ~ edges + nodematch("Grade") + nodematch("Sex") + nodematch("Race"),
               control = control.ergm(main.method = "MCMLE", force.main = TRUE),verbose= TRUE)

m3     <- ergm(faux.mesa.high ~ edges+ gwesp(cutoff=50) + nodematch("Grade") + nodematch("Sex") + nodematch("Race"),
               control = control.ergm(main.method = "Stochastic"),verbose= TRUE)


# Task 5. Get a summary of the models and interpret the coefficients 
summary(m1)
summary(m2)
summary(m3)

# Task 6. Make a goodness of fit (GOF) plot and interpret it, look up how to do it on the statnet page
plot(gof(m2))
plot(gof(m3))

# Task 7. Calculate average marginal effects for coefficients you care about substantially and interpret them, compare coefficients between models
ergm.AME(model = m2, var1 = "nodematch.Grade") 
ergm.AME(model = m2, var1 = "nodematch.Sex")
ergm.AME(model = m2, var1 = "nodematch.Race")

# Task 8. Scale the coefficients at the baseline probability of the network (density)
(ergm.AME(model = m2, var1 = "nodematch.Grade")[[1]] /network.density(faux.mesa.high))*100
(ergm.AME(model = m2, var1 = "nodematch.Sex")[[1]] /network.density(faux.mesa.high))*100
(ergm.AME(model = m2, var1 = "nodematch.Race")[[1]] /network.density(faux.mesa.high))*100


# Optional: advanced task 9
# There are two (mutual) friendship networks of High School students  
data(faux.magnolia.high)
faux.magnolia.high
data(faux.mesa.high)
faux.mesa.high

# In which of the networks is racial homophily stronger? Estimate ERGMs and control for segregation according to Grade and Sex 
# Make one plot for each network with node colour adjusted according to race
# Use average marginal effects scaled at the baseline probabilities (densities) of the respective network to make a solid comparison

ergm_magnolia <-ergm(faux.magnolia.high~edges + nodematch("Grade",diff=TRUE) + nodematch("Race") + nodematch("Sex"), 
                 control = control.ergm(main.method = "MCMLE", force.main = TRUE),verbose= TRUE) ## In the control section: this is how you can estimate MCMCLE evn if you have a dyad-independent model specification

ergm_mesa    <-ergm(faux.mesa.high~edges + nodematch("Grade",diff=TRUE) + nodematch("Race") + nodematch("Sex"), 
                 control = control.ergm(main.method = "MCMLE", force.main = TRUE),verbose= TRUE) ## In the control section: this is how you can estimate MCMCLE evn if you have a dyad-independent model specification


## Inspect models
summary(ergm_magnolia)
summary(ergm_mesa)

# Compare AMEs
(ergm.AME(model = ergm_magnolia, var1 = "nodematch.Race")[[1]] /network.density(faux.magnolia.high))*100
(ergm.AME(model = ergm_mesa, var1 = "nodematch.Race")[[1]] /network.density(faux.mesa.high))*100

## According to our model racial homophily is stronger in Magnolia High

# Compare plots
par(mfrow = c(1,1))

race_vals <- sort(unique(get.vertex.attribute(faux.magnolia.high, "Race")))
race_colors   <- wes_palette("AsteroidCity2")
race_colors   <- c("lightblue",race_colors) 
vertex_colors <- race_colors[match(get.vertex.attribute(faux.magnolia.high,"Race"),
                                   race_vals)]

plot(faux.magnolia.high,
     vertex.cex = 0.6,
     vertex.col = vertex_colors, 
     main = "Magnolia")
legend("topright",  
       legend = race_vals,
       pch = 19,  
       col = race_colors,
       title = "Race",
       bty = "n") 

race_vals <- sort(unique(get.vertex.attribute(faux.mesa.high, "Race")))
race_colors   <- wes_palette("AsteroidCity2")
vertex_colors <- race_colors[match(get.vertex.attribute(faux.mesa.high,"Race"),
                                   race_vals)]
plot(faux.mesa.high,
     vertex.cex = 1,
     vertex.col = vertex_colors,
     main = "Mesa")
legend("topright",  
       legend = race_vals,
       pch = 19,  
       col = race_colors,
       title = "Race",
       bty = "n") 





