## creating an R script and adding it to my github repo ##

# Load the built-in 'iris' dataset
data(iris)
summary(iris)

# plot some raw data
plot(iris$Sepal.Length, iris$Petal.Width)

# run a regression
res <- lm(Petal.Width ~ Sepal.Length, data = iris)
summary(res)

# add the model fit to the plot
abline(res, col = 'red')

## What if we add in Species?
plot(iris$Sepal.Length, iris$Petal.Width, col = factor(iris$Species))

# re-run the regression
res2 <- lm(Petal.Width ~ Sepal.Length * Species, data = iris)
summary(res2)

# plot the effects
abline(a = coef(res2)[1] + coef(res2)[3],
       b = coef(res2)[2] + coef(res2)[5],
       col = "red")

abline(a = coef(res2)[1] + coef(res2)[4],
       b = coef(res2)[2] + coef(res2)[6],
       col = "green")

abline(a = coef(res2)[1],
       b = coef(res2)[2],
       col = "black")


## Add a new regression model
plot(iris$Sepal.Length, iris$Petal.Length, col = factor(iris$Species))

res3 <- lm(Petal.Length ~ Sepal.Length * Species, data = iris)
summary(res3)

abline(a = coef(res3)[1] + coef(res3)[3],
       b = coef(res3)[2] + coef(res3)[5],
       col = "red")

abline(a = coef(res3)[1] + coef(res3)[4],
       b = coef(res3)[2] + coef(res3)[6],
       col = "green")

abline(a = coef(res3)[1],
       b = coef(res3)[2],
       col = "black")
