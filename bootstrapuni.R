library(bootstrap)
logs <- rlnorm(1000, meanlog = 0.1, sdlog = 1.3)
bs <- bcanon(logs, 1000, var, alpha=c(0.025, 0.975))
bs$confpoints
varianza_teorica <- (exp(1.3^2) - 1)*(exp(2*0.1 + 1.3^2))
varianza_teorica