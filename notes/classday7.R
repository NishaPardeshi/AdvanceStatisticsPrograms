#X is time between arrival
# lambda = 10 per hour
# P(X < 0.1)
1 - exp(-10*0.1)

#OR
pexp(0.1,10)

pexp(30,8.6/60)

pexp(0.5,8.6)

1 - pexp(9/60,8.6)

dpois(6,0.25*31)

#In binom we have assumption of just one earthquake in one day
#dbinom(6,31,0.25)

pexp(15,0.25)

dnbinom(4,1,0.2)
dbinom(0,2,0.2)*0.2

ppois(1,3)
1-ppois(0,3)

1-ppois(8,3*3)


pnorm(0,2.8,10)
pnorm(21,2.8,10)-pnorm(-9,2.8,10)

1 - pnorm(5,2.8,10)

pnorm(6600,6558,550) - pnorm(6250,6558,550)

qnorm(0.01,6558,550)

qnorm(0.975,6558,550)-qnorm(0.025,6558,550)
