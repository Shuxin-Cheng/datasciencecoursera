assignment <- "<-" ##assignment operator
sequence <- ":" ##sequence operator

## create and play with a vector ----
## a vector is a list or pool of object collectively assigned.
x <- c(1:9) ##created a numeric vector x containing 1-9
y <- c(TRUE, FALSE) ##logical vector y
z<- c("Tom", "Tony", "Lisa", "Mary") ## character vector

## we can also change the data type in a whole vector
as.logical(x) ## printed out a vector where all values in vector x was transformed into logical value
i <- as.character(x) ## created a new vector i, where each value is the character version of numeric values in x.

##check and confirm the class of a vector
class(x)
class(i)

##list is a **SPECIAL TYPE** of vector, which could contain different types of values.
list (1, "Tom", FALSE)
v <- list(1, "Tom", FALSE)
class(v)



## creating a matrix ----
matrix(nrow=4,ncol=5) ## created a matrix with 4 rows and 5 colums
matrix(1:20, nrow=4, ncol=5) ##put a numeric argument in the function to assign numbers into the matrix
##However, the number of values filled into the matrix has to be divisible by both ncol and nrow.
matrix(1:9, nrow=4, ncol=5) ##this matrix could not be created because 9 is not divisible by 5 nor 4
matrix(1:40, nrow=4, ncol=5) ##so you see r will fill the matrix with the given value range firstly colum-wise then row-wise until the whole matrix is filled.

##another way to create a matrix
##binding existing.
m=c(4,5,3,2,1,6,3,2,1)
as.integer(m)
cbind(x, m) ##binding vector x and m into a matrix 
rbind(x,m) ##similar as above yet bind them in another direction
z <- c("TOM", "LISA","MARY","TONY","BIFF","CINDY","MIKE","KATE","LUCY")
cbind(x,z) ##binding is feasible as long as the number of values in two vectors are equal.
##create a matrix out from a existing vector
dim(x) <- c(3,3) #rendered x into a dimensional dataframe...
print(x)
##Check the detail of a matrix
dim(x)
attributes(x)
##Note: using matrix function we could only fill values into a chart, e.g. both into rows or both into colums. We cannot use matrix function to make vetors as the name of rows and colums


## creating factor vector ----
factor(z)
##这个当真没太懂。



##missing value ----
u <- c(1,2,3,4,5,0,NA,NA,4,NA)
is.na(u) ##the function to find missing values
##maybe try to code missing values?
u<- c(1,2,3,4,1,2,5,1,3,6,4,1,3,4,2,1,5,8)
1 <- NA ##this did not work...
u[1] <- NA
is.na(u) #Nope, only recognised the first value in u as NA...
u[u==1] <-NA
is.na(u) ##aha, it worked!!! so we need to use specific operators to code NA

