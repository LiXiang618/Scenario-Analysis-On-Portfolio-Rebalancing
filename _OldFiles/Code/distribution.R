v_bh = c()
v_daily = c()
v_mon = c()
v_con = c()

for(index in 1:numOfSim){
  source("simulation.R")
  v_bh = c(v_bh,tail(V_bh,1))
  v_daily = c(v_daily,tail(V_daily,1))
  v_mon = c(v_mon,tail(V_mon,1))
  v_con = c(v_con,tail(V_con,1))
  print(index)
}

table = data.frame(v_bh, v_daily, v_mon, v_con)

#mu_sigma_r_w1_w2
write.csv(table,paste0(paste(mu,sigma,r,w1,w2,sep = "_"),".csv"))

statistics = rbind(apply(table,2,mean),
                   apply(table,2,sd),
                   apply(table,2,skewness),
                   apply(table,2,kurtosis))
rownames(statistics) = c("mean","sd","skewness","kurtosis")
write.csv(statistics,paste0("stat_",paste(mu,sigma,r,w1,w2,sep = "_"),".csv"))

