#### Welcome to R, the software land of endless possibilities!

## Before we start our journey, here are some basics you might find useful

# 1.) Objects; R operates with objects which are stored in the environment and can have different forms

# Numbers
x <- 1    # This defines a very simple object called x that contains a number (1), Note: new objects are always defined by "<-"
x         # You can look at objects in the console by calling them 

y <- 2    # We can define several objects, here we create y containing another number
x+y       # The interesting stuff begins when we combine objects, here we simply add x and y together
z <- x+y  # This can also lead to a new object
z

# Vectors and data frames
v1    <-c(1,2,3,4,5,6,7,8,9,10) # Single numbers as objects are not very interesting, but we can also define objects that are vectors and contain more information
v2    <-c(0,0,1,0,0,1,1,1,0,1)  # Here we define another vector
v1[4]                           # You can call elements of a vector by using square brackets and indicating the position of the element (here fourth position)
v1[1:5]                         # You can also call a collection of elements, here element 1 to 5
v1[c(2,5,6)]                    # Or a collection of elements you set individually

# Logical Filters: similar to if conditions in STATA you can also filter by logical conditions in R, here are some examples for vectors
v2[v2==1]                       # This gives you all elements with the value one that are stored in v2                    
v2[v2!=1]                       # This gives you all elements that have a different value than one (!= negates the logical statement)
v1[v1>5]                        # All values greater than 5 are displayed
v1[v1<5]                        # All values smaller than 5
v1[v2==1]                       # If two vectors have the same length you can filter them conditional on one another; here only values of v1 are displayed for elements that have the value 1 in v2

data1 <-cbind(v1, v2)           # cbind() means "bind these two vectors besides one another (column-wise)"
data1                           # This object almost looks like a data frame, right?
data2 <-as.data.frame(data1)    # This class of functions (as.data.frame, as.network, as.vector, etc.) allow us to transform data into different formats, in this case we make a data frame
class(data1) 
class(data2)                    # with the class() function you can assess which type of object you are dealing with

data2$v1                        # Once you have a data frame you can call variables just like you are used to from STATA, first call the object, then the variable ($variable_name)
cor(data2$v1, data2$v2)         # You can use functions, like the cor() function to calculate the correlation between two variables
barplot(v2~v1, data=data2)      # Also, here is an example of a simple visualization 

# Matrices
m1  <-matrix(0, nrow = 10, ncol=10) # We can create matrices, something that will be important to handle network data (remember the adjacency matrix?)
m1                                  # As yo±u can see its an empty matrix, if we want to enter something we can do this by calling individual cells (see next command)
m1[1,2] <-1                         # Here we enter 1 into the first row and second column cell
m1                                  # If we think of this as an adjacency matrix we just coded a tie between actor 1 and actor 2, that's great!
m1[1,]                              # If we only insert a number in one of the spaces in the square brackets we can call the entire row of the matrix
m1[1,] <- c(0,1,0,0,0,1,0,1,0,1)    # We can also set an entire vector, here this could be friendship nominations going from actor 1 to actors 2,6,8, and 10 
m1


# OK so that's how we could manually enter our own network data in R, pretty nice, let's turn to two additional types of objects: lists and functions

# Lists 
list1 <-list(x,y,z)                               # Lists are a useful format to store information, e.g., a vector of numbers
list1
list1[[1]][1]                                     # You can also accesses elements in lists 
list2<-list(v1,v2)                                # Here is another example
list2[[1]][4:10]
lapply(list1, function(x) x+1)                    # A nice feature of lists is that you can apply a function to each element in a list making them very powerful 
lapply(list1, function(x) exp(4/(x*100)))         # This means you can layer different functions and apply fairly complex transformation to the elements and save them later as a new list (see next line)
list2 <-lapply(list1, function(x) exp(4/(x*100))) 
list2                                             # Meaning you can chain transformations in list format after one another, can you feel the power?
list3 <-lapply(list2, function(x) x+1) 
list3
list4 <- list(data2,m1,x)                         # Lists can also contain multiple types of objects, which makes them very flexible
list4

function_test <-function(o,i){
  
  out<-(o+i)/100
  
  return(out)
}

function_test(o=50, i=30)

lapply(list1, function(x) function_test(o=50, i=x))                    # A nice feature of lists is that you can apply a function to each element in a list making them very powerful 



# 2.) Network analysis in R, the basics

## Before we can conduct network analysis in R we first have to install the packages that entail network functions which help us to handle network data
install.packages("statnet", dep=TRUE) # dep =TRUE makes sure that other packages that are needed by the package we install will also be installed (the so called dependencies of a package)
install.packages("sna", dep=TRUE)
install.packages("network", dep=TRUE)

## You only have to install the packages once, afterwards you can call them from your library
library(statnet)
library(sna)
library(network) ## This activates the packages and allows us to use their functions

# now we could use the matrix we created before (m1) and make a network out of it
net1  <-as.network(m1)            # Here we use the function as.network() to turn our matrix into a network object 
net1                              # Our first network object
plot(net1)                        # A simple plot

degree(net1)                      # This allows us to use functions that are tailored for network objects, like the degree function, simply counting degrees
degree(net1, cmode = "indegree")  # With the option cmode= we can modify the function and only count the indegrees
degree(net1, cmode = "outdegree") # Or only count the outdegrees

# Combining network information and data frame 
indegrees       <-degree(net1, cmode = "indegree") 
data2$indegrees <-indegrees                          # Let's assume data2 entails information on the 10 actors in the network we created, then we could add the variable indegree to the data frame   
data2
cor(data2$indegrees, data2$v1)                       # Now we can use the new network variable in the statistical operations we already know such as correlations
lm(data2$indegrees ~ data2$v1)                       # regression with one independent variables
lm(data2$indegrees ~ data2$v1 + data2$v2)            # regression with two independent variables
summary(lm(data2$indegrees ~ data2$v1 + data2$v2))   # the summary function allows you to display regressions in a more convenient way
t.test(data2$indegrees, data2$v1)                    # t-test


#### Exercises 

# Task 1.
# Define a vector that entails the numbers 4,5,6, and 7
v3 <- c(4,5,6,7)

# Task 2.
# Create an empty matrix with 6 rows and 6 columns
m1 <- matrix(0, nrow=6, ncol=6)

# Task 3.
# Suppose Actor 2 sends friendship nominations to Actor 3,4, and 5
# How would you enter this information in the matrix you created in Task 2?
m1[2,] <- c(0,0,1,1,1,0)

# Task 4. 
# Imagine the actors are pupils and Actor 1,2,3 are visiting the same classroom, Actor 4,5,6 are visiting a different classroom
# Code a vector that represents this information 
class <- c(1,1,1,2,2,2)

# Task 5. 
# Imagine Actor 1,2,3 are friends (reciprocal ties) and Actor 4,5,6 are friends (reciprocal ties)
# How would you code this information into the matrix you created in Task 2?
m1[1,] <- c(0,1,1,0,0,0)
m1[2,] <- c(1,0,1,0,0,0)
m1[3,] <- c(1,1,0,0,0,0)
m1[4,] <- c(0,0,0,0,1,1)
m1[5,] <- c(0,0,0,1,0,1)
m1[6,] <- c(0,0,0,1,1,0)

# Task 6. 
# Transform the adjacency matrix from task 5 into a network object and plot the network, what do you see?
network <- as.network(m1)

# Task 7. 
# Calculate the number of degrees for each actor and store this information in a new vector
# Remember to load packages
degree_number <- degree(network)

# Task 8.
# Combine the vectors from Task 4 and Task 7 into a data frame by using cbind() and as.data.frame()
dat_frame_test <-cbind(degree_number,class)
dat_frame_test <-as.data.frame(dat_frame_test)

# Task 9.
# Calculate the correlation between the classroom variable and the degree variable 
dat_frame_test$degree_number[1]<-20 ## Otherwise no correlation can be calculated because degrees are a constant..
cor(dat_frame_test$degree_number,dat_frame_test$class)

