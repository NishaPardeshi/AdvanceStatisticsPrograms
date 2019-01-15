pbinom(1 ,12, prob = 0.2)

?pbinom


dbinom(0,12,0.2)+dbinom(1,12,0.2)



n=6
p=0.1
x=0:6

prob = dbinom(x,n,p)

plot(prob,type="h")

#plot(prob,type="h", xlim = range(0:6))

table <- data.frame(x,prob)
table
plot(table,type="h", xlim = range(0:6))

#p(X>=1) = 1 - p(X=0)
1- pbinom(0,n,p)


Revenue = c(550,rep(1200,6))
Revenue

sum(Revenue*prob)
##854.5634$

dpois(3,0.93)

1-dpois(0,0.93)

dpois(0,0.93)+dpois(1,0.93)

ppois(1,0.93)

dpois(3,4.3)

ppois(4,4.3)

#Homework2
x1 <- 1:6
x2 <- 1:6
Ey = mean(x1)*mean(1/x2)
Ey

# Or

y = c()
for(i in x1)
  for(j in x2)
    y = c(y,i/j)
y

mean(y)

#The events are equally likely hence did not use weighted sum of prob


#b)

# To prove as the number of trial has increased the mean merges to the theor mean -
#Law of large numbers
#equally likely events no need of probab
x1i = sample(x1, 100000,replace=TRUE)
x2i = sample(x2, 100000,replace=TRUE)


yi =x1i/x2i

cummean=function(data)  {
  cumsum = (data)/seq_along(data)
}

plot(cummean(yi), type='l')

#COv and COR for non linear associations:

x = rnorm(1000,2,0.5)
#rnorm(100) similar to rnorm(100,0,1)
y = x*sin(x) * rnorm(1000)
plot(y)
cor(x,y)
cov(x,y)

#Negetive binom qs
#P(T3 = 90) =
r = 3
N = 90
p = 0.04

dbinom(r-1,N-1,p)*p

dnbinom(N-r, r, p)


# c
dbinom(3,90,0.04)

#e
#P(T4<=5)

pnbinom((5-4),4,0.04)



pnorm(32.085,30,2.5)-pnorm(25.665,30,2.5)



qnorm(0.005,0,1)
