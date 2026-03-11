## Homework Social Networks 2

## Helpful resource: https://statnet.org/workshop-ergm/ergm_tutorial.html#The_Statnet_Project

# Advice: don't use ChatGPT or you will learn little. Try to copy and adjust code from the course and other credible sources instead. 

# Install packages if not already installed, don't run if you installed them alreday.
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

# There are different network datasets that come already with the ergm package 
data(package='ergm') # here you can have a look, if you want to know more about the datasets search for publications using them or consult the help file

# This is how you load a dataset (note: it's already a network object)
data(faux.mesa.high )
faux.mesa.high 

# Task 1. Choose one of the network datasets, load it and make a nice looking plot



# Task 2. Plot a histogram of the degree distribution and calculate the skewness of the degree distribution



# Task 3. Run an ERGM and include at least one network endogenous effect (e.g., triadic closure (gwesp))



# Task 4. Run an ERGM and additionally include actor attributes (e.g., a term capturing homophily according to social categories such as race or gender)



# Task 5. Get a summary of the models and interpret the coefficients 



# Task 6. Calculate average marginal effects for coefficients you care about substantially and interpret them, compare coefficients between models



# Task 7. Scale the coefficients at the baseline probability of the network (density)



# Task 8. Make a goodness of fit (GOF) plot and interpret it, look up how to do it on the statnet page



# Optional: advanced task 9
# There are two (mutual) friendship networks of High School students  
data(faux.magnolia.high)
faux.magnolia.high
data(faux.mesa.high)
faux.mesa.high

# In which of the networks is racial homophily stronger? Estimate ERGMs and control for segregation according to Grade and Sex 
# Make one plot for each network with node colour adjusted according to race
# Use average marginal effects scaled at the baseline probabilities (densities) of the respective network to make a solid comparison

