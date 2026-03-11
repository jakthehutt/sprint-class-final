#### In this Session we will combine knowledge from previous sessions and derive a function which allows us to build networks in all classrooms

# Install packages if not already installed
#install.packages("haven", dep=T)
#install.packages("sna", dep=T)

library(haven)
library(sna)

### 1. Data Preparation

# First we load the data set again
wave1_Knecht <- read_spss("~/Desktop/PupilsWaveV.sav")

# Bring class ID variable into a better format
wave1_Knecht$classroom_ID <-as.numeric(as.factor(wave1_Knecht$schoolnr))



### 2. Building a Function to derive networks in all classrooms

# We now take code from our last sessions and make it more general so that it applies not just to a single classroom but all classrooms in the data set
# One way to do this is to write a function

make_network <- function(input_data=NULL, name_classroom=NULL){
  
  # Subset the data set so that only information of classroom 2 is contained in the data
  subset_data                <-input_data[input_data$classroom_ID==name_classroom,]
  
  # we can define the num. of students with the length() function
  number_of_students <-length(subset_data$namenr) 
  
  # Define an empty matrix
  matrix_class_fuppes <- matrix(0,ncol=number_of_students,nrow=number_of_students)
  
  # Subsetting all friendship information
  data_keep_vars                   <- c("namenr","friend1", "friend2", "friend3", "friend4","friend5","friend6","friend7","friend8","friend9","friend10","friend11","friend12")    
  friends_all_only_in_class_fuppes <- subset_data[,colnames(subset_data) %in% data_keep_vars] 
  
  # Before entering the information for classroom two it is necessary to name the rows and cols according to students' namenr to ensure a correct ordering
  colnames(matrix_class_fuppes) <- friends_all_only_in_class_fuppes$namenr
  rownames(matrix_class_fuppes) <- friends_all_only_in_class_fuppes$namenr
  
  # This loop "fills up" the adjacency matrix and enters the freindship nominations
  for(x in 1:number_of_students){
    
    name_of_student      <-friends_all_only_in_class_fuppes$namenr[friends_all_only_in_class_fuppes$namenr==friends_all_only_in_class_fuppes$namenr[x]]
    friends_student_info <-friends_all_only_in_class_fuppes[friends_all_only_in_class_fuppes$namenr==name_of_student,]
    friends_student_info <-unlist(friends_student_info) 
    friends_student_info <-as.vector(friends_student_info)                          # transform into a nice vector that we can use to code the friendship nominations
    friends_student_info <-friends_student_info[-1]                                 # delete the first element because it is the students own name
    friends_student_info <-friends_student_info[is.na(friends_student_info)==FALSE] # Only keep valid information (no missing)
    
    ## So how do we get the information into the matrix?
    matrix_class_fuppes[rownames(matrix_class_fuppes) %in% name_of_student,colnames(matrix_class_fuppes) %in% friends_student_info] <- 1 
    matrix_class_fuppes
    
  }
  
  ## Now we can transform it into a network 
  matrix_class_fuppes          <-as.network(matrix_class_fuppes)

  ## Finally, we add actor attributes
  set.vertex.attribute(matrix_class_fuppes, "gender", value = as.numeric(subset_data$sex))
  set.vertex.attribute(matrix_class_fuppes, "age", value = as.numeric(subset_data$age))
  set.vertex.attribute(matrix_class_fuppes, "classroom_ID", value = as.numeric(subset_data$classroom_ID))
  set.vertex.attribute(matrix_class_fuppes, "namenr", value = as.numeric(subset_data$namenr))
  set.vertex.attribute(matrix_class_fuppes, "smoking", value = as.numeric(subset_data$actsmoke))
  
  # the return command determines what the function "make_network" is returning to R's environment
  return(matrix_class_fuppes)
  
}

# Now we can create networks in a pretty tidy way
classroom_2_network <-make_network(input_data = wave1_Knecht, name_classroom = 2)
plot(classroom_2_network)

classroom_3_network <-make_network(input_data = wave1_Knecht, name_classroom = 3)
plot(classroom_3_network)



### Application of function to full data set
## And this function paves the way to building networks for all classrooms
number_of_classrooms <- length(unique(wave1_Knecht$classroom_ID))

# Empty list in which we store the network objects
network_list         <- c()

for(y in 1:number_of_classrooms){
  
  classroom_network_fuppes <-make_network(input_data = wave1_Knecht, name_classroom = y)
  network_list[[y]]        <-classroom_network_fuppes
  
}



### 3. Examples for network analysis in complete sample I, degree based

## Now we can perform network analysis for the complete sample
# one convenient way to do this is using lapply functions 
indegree_list <-lapply(network_list, function(x) degree(x, cmode="indegree"))

# How many incoming friendship nominations do students hold?
summary(unlist(indegree_list))

# We can also look at it with a histogram
hist(unlist(indegree_list))

# We can also address more interesting questions, such as "do certain behaviours make you popular as a friend?"

# First supply indegree information to the overall data frame 
wave1_Knecht$friendship_indegrees  <- unlist(indegree_list)

# Next calculate a OLS regression to probe for correlations
summary(lm(friendship_indegrees ~ actsmoke, data=wave1_Knecht))



### 4. Examples for network analysis in complete sample II, network models

# We can also perform network models for all classrooms:
network_estimates <- c()

for(y in 1:number_of_classrooms){
  
  network_fuppes <- network_list[[y]]
  ergm_fuppes    <- ergm(network_fuppes ~ edges+mutual+nodematch('gender'), 
                         control = control.ergm(main.method = "Stochastic", force.main = TRUE),verbose= TRUE)

  try(network_estimates[[y]] <- ergm_fuppes) ## This can take some time...
  
}







