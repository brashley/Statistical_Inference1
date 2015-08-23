# Test code

library(knitr)
library(markdown)
library(ggplot2)


lambda <- 0.2
runs <- 1000
size <- 40

mns = NULL
for (i in 1 : runs) mns = c(mns, mean(rexp(size,lambda)))
hist(mns)








# library(ggplot2)
# nosim <- 10000; 
# dat <- data.frame(
#     x = c(apply(matrix(rnorm(nosim * 10), nosim), 1, var),
#           apply(matrix(rnorm(nosim * 20), nosim), 1, var),
#           apply(matrix(rnorm(nosim * 30), nosim), 1, var)),
#     n = factor(rep(c("10", "20", "30"), c(nosim, nosim, nosim))) 
# )
# ggplot(dat, aes(x = x, fill = n)) + geom_density(size = 2, alpha = .2) + geom_vline(xintercept = 1, size = 2) 
# 
# We want to do the same thing, but use rexp() with these parameters:
#     
#     nosim <- 1000                             # number of samples (of size 40)
# lambda = 0.2                               # rate parameter
# exp.mean = exp.sd = 1/lambda   # theorectial exponential mean and standard deviation
# exp.var = exp.sd^2                      # theorectial exponential variance
# sample.size = 40                         # sample size