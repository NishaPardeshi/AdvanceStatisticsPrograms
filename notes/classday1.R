# This is a single line comment
x=2
y=3
x+y


cars_sold <- rpois(10000,0.5)

cars_sold

head(cars_sold, 10)
tail(cars_sold)

# table gives frequency
t <- table(cars_sold)

# Provide possible outcomes
names(t)

# SHhape of the distribution - needle plot
plot(t)

barplot(t)

summary(cars_sold)

# Continuous Random Variable

y <- runif(10000)
head(y)
summary(y)

hist(y)

# Gives probability
hist(y, freq=F)

hist(y, freq=F, breaks = seq(0,1,0.2))



# Random nos generation main is setting the seed - to get consistent result
set.seed(123)

n <- rnorm(10000)
head(n)

summary(n)

hist(n)

hist(n, freq=F)

hist(n, freq=F, breaks=seq(-4,4,2))

x=runif(10000)
y = ifelse(x<0.35, "Red", ifelse(x<0.75, "Gray", "Green"))
table(y)

# Relative frequency probability
t2 <- table(y)/10000

barplot(t2)


n=10000
y=c("Red","Gray","Green")
p=c(0.35,0.4,0.25)
rv=sample(y,n,p,replace=T)

rv = sample(y, size = n, replace = T, prob = p)
table(rv)

?sample

# sample(y, size = n, replace = T, prob = p)

# Read a dataset
beer = read.csv("beer.csv")
head(beer)
#Another way to read data file browser is invoked
beer = read.csv(file.choose(), header = TRUE)

names(beer)
hist(beer$Alcohol)
hist(beer$Calories)

# Attach variable with the machine can use the column name directly
attach(beer)
hist(Alcohol)

summary(beer)

summary(Alcohol)

plot(Alcohol, Calories)

DOW = read.csv("http://tiny.cc/djia")

names(DOW)

plot(DOW$return)

# type l is line
plot(DOW$return, type="l")

#xlim sets the limit to be displayed on x axis
hist(DOW$return, freq=F, breaks = seq(-0.3,0.3,0.005),xlim = c(-0.1,0.1))

presname = c("Lincon", "Grant", "Kennedy", "Obama")
party=c("R","R","D","D")
pres_no=c(16,18,35,44)
died=c(56.1,63.2,46.4,NA)
pres_d=data.frame(name=presname, pol=party,num=pres_no, died=died)
pres_d


# Probability ppt 1

set.seed(123)
n=10000
#1 easy call
#0 hard call
y=c(0,1)
p=c(0.3,0.7)
x<- sample(y, n, p, replace=TRUE)

x

#make a cumulative sum
cumSumX <- cumsum(x)

#define for saving cumulative mean
cumMean <- c()

for(i in 1:n)
{
  cumMean[i] <- cumSumX[i]/i
}
plot(cumMean, type='l')
cm<-c()
cmean <- function(data) {
  cm = (cumsum(data)/seq_along(data))
}
plot(cmean(x), type = 'l')