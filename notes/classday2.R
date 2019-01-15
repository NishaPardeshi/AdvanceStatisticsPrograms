x <- c(-5,0,5)
p <- c(0.09,0.8,0.11)
n =10000
set.seed(123)

sim <- sample(x,n,p,replace=T)
#sim

mn <- mean(sim)
mn
cummean = function(data) {
  cumsum(data)/seq_along(data)
}
plot(cummean(sim),type='l')

