#Business profit in Euro is 100,000 Euro on average with standard deviation of 5000 Euro, 
#and it is normally distributed.
set.seed(123)
#100 years
# n = 100
# profit <- rnorm(n, 100,5)
# sd(profit)
# # Euro to dollar
# exchangeRate <- 1.4

# profitInDollar <- exchangeRate*profit
# sd(profitInDollar)
# mean(profitInDollar)
# 
# #Thus observed that sd(cx) = c*sd(x)
# sd(profit)*1.4
# 
# hist(profit)
# 
# hist(profitInDollar)
n = 100
profit <- rnorm(n, 1.4, 0.05)
sd(profit)
# Euro to dollar
#Exchange rate is not const 
# it is normally distributed with mean = 1.4 and sd = 0.05
exchangeRate <- 1.4

profitInDollar <- exchangeRate*profit
sd(profitInDollar)
mean(profitInDollar)

#Thus observed that sd(cx) = c*sd(x)
sd(profit)*1.4

hist(profit)

hist(profitInDollar)

#Crime data, Standardizing data, converting data to z score
#scling is function to apply zscore
crime <- read.csv(file.choose())

head(crime)

# for standardizing use scale function - gives u zscore -disregard first column
#column -1 is names, need to exclude it from calculations
scaled.crime = data.frame(crime$STATE, scale(crime[,-1]))
head(scaled.crime)

# Filter to find which state zscore more than 2
library(dplyr)
#filter(scaled.crime, MURDER >=2, RAPE > 2)

m <- mean(scaled.crime$MURDER)
round(m,10)

r <- mean(scaled.crime$RAPE)
round(m,10)

sd <- sd(scaled.crime$MURDER)
sd

# Question: If X and Y are deeeeeeeeependent, what is Var(X+Y)
#rnorm(n, 0, 2) is noise
x = rnorm(n, 10, 2) 

# Y is dependent to x
y=2.5*x+5 + rnorm(n, 0, 2)

plot(x,y)

cov(x,y)

z = rnorm(n, 10, 2)

plot(x,z)
#no covariance between x and z, they are independent of each other
cov(x,z)


#What is var(x+y) -> x and y are dependent
var(x+y)
var(x) + var(y)
var(x) + var(y)+2*cov(x,y)

#What is var(x+Z)
# x and z are independent
var(x+z)
var(x) + var(z)

# Student with study time of normal(mean = 18, sd = 2)
study =rnorm(100, 18, 2)
study
gpa <- 0.2*study + rnorm(100,0,0.1)
gpa

salary = 5000*study + rnorm(100,0,20000)
salary

cov(study,gpa)
cov(study,salary)

cor(study,gpa)
cor(study,salary)
