#Buy and hold strategy
Portfolio_init()
V_bh = numS*S + numB*B

#Daily Rebalance
Portfolio_init()
for(i in 1:n)
{
  tmpV = numS*S[i]+numB*B[i]+Cash
  V = c(V,tmpV)
  numS = floor(tmpV*w1/S[i])
  numB = floor(tmpV*w2/B[i])
  Cash = tmpV - numS*S[i] - numB*B[i]
}
V_daily = V

