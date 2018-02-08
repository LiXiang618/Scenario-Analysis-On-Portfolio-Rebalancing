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
for(i in 1:n)
{
  tmpV = numS*S[i]+numB*B[i]+Cash
  V = c(V,tmpV)
  if(numS*S[i] > 0.6*tmpV){
    numS = floor(tmpV*w1/S[i])
    numB = floor(tmpV*w2/B[i])
    Cash = tmpV - numS*S[i] - numB*B[i]
  }
}
V_new = V




