MOSTRES <- 1000
N <- 50
mu <- 74
sigma.quadrat <- 0.4^2

t <- replicate(MOSTRES,rnorm(N, mean=mu, sd=sqrt(sigma.quadrat)), simplify = FALSE)
mus <- sapply(t,mean)
sigmas.quadrat <- sapply(t,var)

#bias de mus
mean(mus)-mu
#var de mus
var(mus)
#bias de sigmas.quadrat
mean(sigmas.quadrat)-sigma.quadrat
#variança de sigmas
var(sigmas.quadrat)