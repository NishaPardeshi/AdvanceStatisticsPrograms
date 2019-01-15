1-pnorm(4.44,4.5,0.04)

qnorm(0.025,0,1)
qnorm(0.13,0,1)
qnorm(0.25,4.5,0.04)

pnorm(21,2.8,5) -pnorm(9,2.8,5)
1-pnorm(5,2.8,5)

pnorm(0,2.8,5)


#3 a P(phat > 0.53) population proportion p is 0.501
n=1000
p = 0.501
mu = p
stderror = sqrt(p*(1-p)/n)
stderror
1 - pnorm(0.53, 0.501, stderror)

# 3 b P(phat > 0.53) population proportion p is 0.56
p = 0.56
mu = p
stderror = sqrt(p*(1-p)/n)
stderror
1 - pnorm(0.53, mu, stderror)

# 3 c
n = 4000
#3 c a P(phat > 0.53) population proportion p is 0.501
p = 0.501
mu = p
stderror = sqrt(p*(1-p)/n)
stderror
1 - pnorm(0.53, 0.501, stderror)

# 3 c b P(phat > 0.53) population proportion p is 0.56
p = 0.56
mu = p
stderror = sqrt(p*(1-p)/n)
stderror
1 - pnorm(0.53, mu, stderror)



pnorm(6350,6558,550)
pnorm(6600,6558,550) - pnorm(6250,6558,550)
1-pnorm(7100,6558,550)

qnorm(0.01,6558,550)

qnorm(0.005,0,1)

qnorm(1-0.95,5.6,0.2)

qnorm(0.005,0,1)
