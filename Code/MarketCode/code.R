rm(list = ls())

library(e1071) 

T = 10
n = 252*T
dt = T/n
daysBack = 0*n

#Stock Information
assetName = "USDEUR"
stock = readLines(paste0("./data/",assetName,".txt"))
stock = as.numeric(stock)
S = stock[(n+daysBack):(1+daysBack)]
S_0 = S[1]
mu = mean(log(S[2:n]/S[1:(n-1)]))*252
sigma = sd(log(S[2:n]/S[1:(n-1)]))*sqrt(252)


#Risk-free asset parameters
r = 0.02
B_0 = 100
B = cumsum(rep(r*B_0*dt,n))+B_0

#Portfolio Initiation
Portfolio_init = function()
{
  Cash <<- 1000000
  w1 <<- 0.5
  w2 <<- 0.5
  numS <<- Cash*w1/S_0
  numB <<- Cash*w2/B_0
  V_0 <<- numS*S_0 + numB*B_0
  Cash <<- Cash - V_0
  V <<- c()
}

source("simulation.R")
source("plot.R")
print(mu)
print(sigma)

write.csv(cbind(V_bh,V_daily),paste0("./results/",assetName,"_","mu_",round(mu,2),"_sigma_",round(sigma,2),"_.csv"))
