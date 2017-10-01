X = c(35.2,41,44.7,38.6,41.5)
lambda = length(X)/sum(X)
lambda
p_50 = lambda*exp(-lambda*50)
p_50
