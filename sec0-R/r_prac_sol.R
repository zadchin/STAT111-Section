set.seed(111)
data <- rpois(20, 3)
lambdas <- seq(0.1, 5, 0.1)
likelihoods <- rep(NA, length(lambdas))
for (i in 1:length(lambdas)) {
  likelihoods[i] <- prod(dpois(data, lambdas[i]))
}

plot(lambdas, likelihoods, type = "l")

set.seed(111)
unifs <- runif(10000)
pit_expos <- -log(1 - unifs)
hist(pit_expos, breaks = 40)

hist(pit_expos, breaks = 40, freq = FALSE)
x <- seq(0, 10, by = 0.1)
curve(dexp(x), col = "blue", add = TRUE)

iris$setosa <- as.integer(iris$Species == "setosa")
lm1 <- lm(setosa ~ . -Species, data = iris)
as.numeric(lm1$coefficients)
# Part (d), (e), (f)
X <- data.frame(iris[, 1:4])
X <- cbind(intercept = rep(1, nrow(X)), X)
head(X)
X <- as.matrix(X)
y <- iris$setosa
solve(t(X) %*% X) %*% t(X) %*% y
