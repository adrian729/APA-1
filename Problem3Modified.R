#Apartado 7
set.seed(12345)
MOSTRES <- 1000
N <- 50
mu <- 74
sigma.quadrat <- 0.4^2

t <- replicate(MOSTRES,rnorm(N, mean=mu, sd=sqrt(sigma.quadrat)), simplify = FALSE)

mus <- lapply(t,mean)
mus <- array(as.numeric(unlist((mus))))
sigmas.quadrat <- lapply(t,var)
sigmas.quadrat <- array(as.numeric(unlist(sigmas.quadrat)))
sigmas.quadrat <- (N-1)/N*sigmas.quadrat

#bias de mus
mean(mus)-mu
#var de mus
var(mus)
var.mu.teorica <- 1/N * sigma.quadrat
#bias de sigmas.quadrat
mean(sigmas.quadrat)-sigma.quadrat
biaix.var.teoric <- -1/N*sigma.quadrat

#variança de sigmas
var(sigmas.quadrat)



#Apartado 6
X <- c(422.2, 418.7, 425.6, 420.3, 425.8, 423.1, 431.5, 428.2, 438.3, 434.0, 411.3, 417.2, 413.5, 441.3, 423.0)

mu = (1/length(X))*sum(X)
sigma = (1/(length(X)-1))*sum((X - mu)^2)
var(X)
