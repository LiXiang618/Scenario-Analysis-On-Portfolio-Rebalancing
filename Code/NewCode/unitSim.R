rm(list = ls())

library(e1071) 

#Basic parameters
T = 1
n = 2520
dt = T/n

#Stock parameters
mu =  0
sigma = 0.50
S_0 = 100

#Risk-free asset parameters
r = 0.02
B_0 = 100

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

ln_S = cumsum(rnorm(n,0,1)*sigma*sqrt(dt) + mu*dt) + log(S_0)
S = exp(ln_S)
B = cumsum(rep(r*B_0*dt,n))+B_0
Portfolio_init()

#Buy and hold strategy
V_bh = numS*S + numB*B

#Continuous Rebalance
Portfolio_init()
for(i in 1:n)
{
  tmpV = numS*S[i]+numB*B[i]+Cash
  V = c(V,tmpV)
  numS = floor(tmpV*w1/S[i])
  numB = floor(tmpV*w2/B[i])
  Cash = tmpV - numS*S[i] - numB*B[i]
}
V_con = V

#New Approach
Portfolio_init()
count = 0
for(i in 1:n)
{
  tmpV = numS*S[i]+numB*B[i]+Cash
  V = c(V,tmpV)
  if((numS*S[i] < 0.40*tmpV) | (numS*S[i] > 0.60*tmpV) ){
    count = count + 1
    numS = floor(tmpV*w1/S[i])
    numB = floor(tmpV*w2/B[i])
    Cash = tmpV - numS*S[i] - numB*B[i]
  }
}
V_new = V

df = data.frame(V_bh, V_con, V_new)
sum(V_bh - V_new)
count
write.csv(df,"unit.csv")

