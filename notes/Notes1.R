#Law of large numbers
# 0 - hard calls - 30%
# 1 - easy calls - 70%
# n is nos of samples to be generated
# x is sample values
# px is probability of x

set.seed(123)
n = 100
x= c(0, 1)
px = c(0.3, 0.7)
s = sample(x,n,px,replace=TRUE)

# Making a cumulative sum 
cumSumX <- cumsum(s)

# Define var to store cumulative mean
cumMeanX <- c()

for(i in 1:n) {
  cumMeanX[i] = cumSumX[i]/i
}

# Plot the cululative mean
plot(cumMeanX,type='l')
