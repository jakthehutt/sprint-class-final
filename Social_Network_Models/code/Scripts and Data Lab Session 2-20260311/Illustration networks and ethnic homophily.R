#### In this Session we will learn how to run network models in R, our example will be ethnic homophily in the school setting

# Install packages if not already installed
#install.packages("haven", dep=T)
#install.packages("sna", dep=T)

# Load packages
library(haven)
library(sna)

### 1. Data Preparation

# First we load the data set again
wave1_Knecht <- read_spss("~/Desktop/PupilsWaveV.sav")

## Here is our code that allows us to create a network in a single classroom; in this case classroom 2

# Bring class ID variable into a better format
wave1_Knecht$classroom_ID <-as.numeric(as.factor(wave1_Knecht$schoolnr))

# Subset the data set so that only information of classroom 2 is contained in the data
subset_data                <-wave1_Knecht[wave1_Knecht$classroom_ID==2,]

# we can define the num. of students with the length() function
number_of_students <-length(subset_data$namenr) 

# Define an empty matrix
matrix_class_2 <- matrix(0,ncol=number_of_students,nrow=number_of_students)

# Subsetting all friendship information
data_keep_vars             <- c("namenr","friend1", "friend2", "friend3", "friend4","friend5","friend6","friend7","friend8","friend9","friend10","friend11","friend12")    
friends_all_only_in_class2 <- subset_data[,colnames(subset_data) %in% data_keep_vars] 

# Before entering the information for classroom two it is necessary to name the rows and cols according to students' namenr to ensure a correct ordering
colnames(matrix_class_2) <- friends_all_only_in_class2$namenr
rownames(matrix_class_2) <- friends_all_only_in_class2$namenr

# This loop "fills up" the adjacency matrix and enters the friendship nominations
for(x in 1:number_of_students){
  
  name_of_student      <-friends_all_only_in_class2$namenr[friends_all_only_in_class2$namenr==friends_all_only_in_class2$namenr[x]]
  friends_student_info <-friends_all_only_in_class2[friends_all_only_in_class2$namenr==name_of_student,]
  friends_student_info <-unlist(friends_student_info) 
  friends_student_info <-as.vector(friends_student_info)                          # transform into a nice vector that we can use to code the friendship nominations
  friends_student_info <-friends_student_info[-1]                                 # delete the first element because it is the students own name
  friends_student_info <-friends_student_info[is.na(friends_student_info)==FALSE] # Only keep valid information (no missing)
  
  ## So how do we get the information into the matrix?
  matrix_class_2[rownames(matrix_class_2) %in% name_of_student,colnames(matrix_class_2) %in% friends_student_info] <- 1 
  matrix_class_2
  
}

## Now we can transform it into a network and plot it
network_class2          <-as.network(matrix_class_2)
plot(network_class2)    ## Looks good

## Finally, we add actor attributes
set.vertex.attribute(network_class2, "gender", value = as.numeric(subset_data$sex))
set.vertex.attribute(network_class2, "age", value = as.numeric(subset_data$age))

## Let's see whether there is gender segregation 
gender_class_one<-network_class2 %v% "gender"
gplot(network_class2, vertex.col=gender_class_one) ## Extreme gender segregation!

## Information on the migration history is only provided in wave 4...so we have to merge 
wave4_Knecht               <- read_spss("~/Desktop/PupilsWaveY.sav")
wave4_Knecht$namenr
wave4_Knecht$classroom_ID  <-as.numeric(as.factor(wave4_Knecht$schoolnr))
subset_data_wave4          <-wave4_Knecht[wave4_Knecht$classroom_ID==2,]

## Only keep vars on migration history
data_keep_vars             <- c("namenr","landmo1", "landmo2", "landfa1", "landfa2")    
subset_data_wave4          <- subset_data_wave4[,colnames(subset_data_wave4) %in% data_keep_vars] 
new_data_class2            <- merge(subset_data, subset_data_wave4, by="namenr", all.x = TRUE)

# Code a rough variable for any migration history 
new_data_class2$mother_mig    <-as.numeric(new_data_class2$landmo1!=1)
new_data_class2$father_mig    <-as.numeric(new_data_class2$landfa1!=1)
new_data_class2$mig_hist      <-as.numeric(new_data_class2$father_mig==1 | new_data_class2$mother_mig==1)
new_data_class2$mig_hist[is.na(new_data_class2$mig_hist)==TRUE]<-0

# Add it to our network
set.vertex.attribute(network_class2, "mig_hist", value = as.numeric(new_data_class2$mig_hist))

## Let's see whether there is segregation according to migration history
mig_hist_class_two<-network_class2 %v% "mig_hist"
gplot(network_class2, vertex.col=mig_hist_class_two+1) ## strong segregation according to migration history!


### 2. Introduction to network models in R 

## First you have to load the library that entails ERGM functions
library(ergm)

# Here is an example for a basic ERGM which only includes a term for the density of the network (edges)
base_ergm1 <-ergm(network_class2 ~ edges)
summary(base_ergm1)

# Let's include more terms to model the network's structure, for instance the number of reciprocal ties (mutual)
base_ergm2 <-ergm(network_class2 ~ edges+mutual)
summary(base_ergm2)

# We can also consider network attributes. For instance, whether migration history structures the network
base_ergm3 <-ergm(network_class2 ~ edges+mutual+nodematch('mig_hist'))
summary(base_ergm3)
## -> gender segregation is present in this network

# Model can become increasingly complex by adding more endogenous network processes and terms for the role of attributes
base_ergm4 <-ergm(network_class2 ~ edges+mutual+idegree1.5+nodematch('mig_hist'))
summary(base_ergm4)

# In the development of these model geometrically weighted terms got introduced to enhance model convergence and goodness of fit...this is very technical we will discuss it next time
base_ergm5 <-ergm(network_class2 ~ edges+mutual+gwidegree(decay=1, fixed=TRUE)+nodematch('mig_hist')+nodematch('gender'))
summary(base_ergm5)

# What if gender is driving the observed segregation according to migration history? 
base_ergm6 <-ergm(network_class2 ~ edges+mutual+nodematch('gender')+nodecov('gender')+nodeicov('gender')+nodematch('mig_hist'))
summary(base_ergm6)

# With transitivity and other network endogenous variables
base_ergm7 <-ergm(network_class2 ~ edges+mutual+gwidegree(decay=1, fixed=TRUE)+gwodegree(decay=1, fixed=TRUE)+gwesp(decay=1, fixed=TRUE)+nodematch('gender')+nodecov('gender')+nodeicov('gender')+nodematch('mig_hist'))
summary(base_ergm7)

## Once we have a stable model, we can look at the goodness of (is our model able to simulate key features of the empirical data?)
plot(gof(base_ergm6))
plot(gof(base_ergm7))

#### Exercises 

## Task 1. Formulate your own research question concerned with segregation in social networks 

## Task 2. Answer your research question with one classroom (in a similar way we did above)



