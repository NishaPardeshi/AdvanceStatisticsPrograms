nsim =1000
Z = rnorm(nsim,0,1)
mean(Z)
mean(Z^2)

## The Chi Squared Distribution as a sum of squared Z values

df = 50

## The density function of the chi squared distribution 
## with 10 degrees of freedom is shown below.

#chi.values = seq(0,3*df,length.out=10000)
#0.01 is breaks
chi.values = seq(0,3*df, 0.01)
chi.dens = dchisq(chi.values,df)

# yaxs="i" help attach curve to actual value x axis may not start with 0
plot(chi.values, chi.dens, type="l", 
     main=paste0("Chi Square Distribution for the Sum of ",
                 df, " Squared Z's"), xlab="Chi-Squared Value", 
     ylab="density", yaxs="i", ylim = c(0, 1.2*max(chi.dens) ))
# lwd=2 make line thicker
abline(v = df, lwd=2, col='red')


## The distribution of the sum of squared z-values:

NSIM = 10000
df = 10
z = rnorm(df*NSIM,0,1)
# each row of matrix will be equal to m i.e degree of freedom
z = matrix(z, nrow=NSIM,ncol=df)
chisq = rowSums(z^2)

hist(chisq, freq=F, breaks=100)
abline(v=df, lwd=2, col = "green")


# Ftest example

###########################

grad <- read.csv("http://tiny.cc/isqs6350_grad", header=T)
attach(grad)
data$incomeLevel = c("L1:25orLess", "L2:26to50", 
                     "L3:51to75", "L4:76to100", "L5:100orMore")[
                       findInterval(data$income, c(-Inf, 1, 2, 
                                                   75000, 100000, Inf))]
head(data)
n = length(grad)
obs.table = table(grad$GenRating, grad$COL)
obs.table
mosaicplot(t(obs.table), col = 2:6)
rowsum = rowSums(obs.table)
colsum = colSums(obs.table)
exp.table <- obs.table
for (i in 1:nrow(obs.table)) {
  for(j in 1:ncol(obs.table)){
    exp.table[i,j] = rowsum[i]*colsum[j]/n
  }
}
exp.table
mosaicplot(t(exp.table), col = 2:6)
x2stat = sum((obs.table-exp.table)^2/exp.table)
x2stat
df = (nrow(obs.table)-1)*(ncol(obs.table)-1)
paste('DF',df)
qchisq(1-alpha,df)
x2stat > qchisq(1-alpha,df)



# what happened graphically
x = seq(0,40,0.01)
plot(x, dchisq(x, df), main ="H0 distribution", type = "l", yaxs="i")
abline(v=qchisq(1-alpha, df))
abline(v=x2stat, col = "red")

1-pchisq(x2stat, df)

test = chisq.test(obs.table)
test

