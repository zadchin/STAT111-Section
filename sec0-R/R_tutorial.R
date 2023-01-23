## Assignment and Variables
A <- 1 ; a <- 0
print(A)
print(a)

## Conditionals
class2 <- 110
if(class2 == 111) {
  print("This is STAT111!")
} else {
  print("This is not STAT111!")
}

if(class > 111) {
  print("This is a higher level STAT course than STAT 111")
} else if(class < 111) {
  print("This is a lower level STAT course than STAT 111")
} else {
  print("This is STAT111!")
}

## Loops
for (i in 1:3) {
  print(i + 1)
}

# A while loop
i <- 0
while (i <= 2) {
  i <- i + 1
  print(i)
}

## Functions
stdev <- function(x) {
  return(sqrt(var(x)))
}
# A one-line function
stdev <- function(x) { return(sqrt(var(x)))}

# Try this in RStudio and see what it outputs!
lapply(0:4, function(a) {a + 1})

## Vectors
zeros <- rep(0, 5)
print(zeros)

# Creare a vector with elements from 4 to 10 incrementing by 2
evens <- seq(4, 10, by = 2)
print(evens)

# Bind a list of numbers
v1 <- c(3, 8, 4, 5)
# Mathematical operations
print(v1 + evens)

print(mean(v1))

print(sort(v1))

# Accessing elements in vectors
v1[2]

v1[2:3]

v1[v1 <= 4]

## Matrices
matrix1 <- matrix(c(3:11), nrow = 3, byrow = TRUE)
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4, 1, 5, 1), nrow = 3)
v_test <- c(1, 2, 3)
print(matrix1)
print(matrix2)

# Mathematical Operation
print(matrix1+matrix2)
print(matrix1*matrix2)
print(matrix1%*%matrix2)
print(matrix1%*%v_test)

# Matrix Inverse
solve(matrix2)

# Solving Equations
solve(matrix2, v_test)

# Various matrix operations
svd(matrix2)
qr(matrix2)
eigen(matrix1)
diag(matrix1)
cbind(matrix1, v_test)
rbind(matrix1, v_test)

## Plotting in R
Y <- read.csv("/Users/zadchin/Downloads/SP500time.csv")$Y 
plot(Y, type="l", col="#009999", main="S&P 500 Line Plot with y=1")
abline(h=1, col="red")
hist(Y, breaks = 100, main="S&P500 histogram with 100 bins", col="orange")

