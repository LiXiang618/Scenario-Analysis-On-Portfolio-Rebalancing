# #mu_sigma_r_w1_w2
# write.csv(table,paste0(paste(mu,sigma,r,w1,w2,sep = "_"),".csv"))
mu_ = seq(-0.5, 0.5, 0.05)
sigma_ = seq(0, 0.5, 0.05)
r_ = c(-0.05, -0.02, 0, 0.02, 0.05, 0.10, 0.15)

#Mean Analysis --- with mean as Y, mu as X, sigma = 0.15, r = 0.02
# df = rbind()
# sigma = 0.15
# r = 0.02
# 
# for(mu in mu_)
# {
#   tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#   df = rbind(df,tmp[1,])
# }
# write.csv(df,paste0("graph_mean_mu_sigma_",sigma,"_r_",r,".csv"))

#Mean Analysis --- with mean as Y, sigma as X, mu = 0.10, r = 0.02
# df = rbind()
# mu = 0.10
# r = 0.02
# 
# for(sigma in sigma_)
# {
#   tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#   df = rbind(df,tmp[1,])
# }
# write.csv(df,paste0("graph_mean_sigma_mu_",mu,"_r_",r,".csv"))

#Mean Analysis --- with mean as Y, r as X, mu = 0.10, sigma = 0.15
# df = rbind()
# mu = 0.50
# sigma = 0.50
# for(r in r_)
# {
#   tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#   df = rbind(df,tmp[1,])
# }
# write.csv(df,paste0("graph_mean_r_mu_",mu,"_sigma_",sigma,".csv"))

#Std Analysis --- with std as Y, mu as X, sigma = 0.15, r = 0.02
# df = rbind()
# sigma = 0.15
# r = 0.02
# for(mu in mu_)
# {
#   tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#   df = rbind(df,tmp[2,])
# }
# write.csv(df,paste0("graph_std_mu_sigma_",sigma,"_r_",r,".csv"))
# 
# for(sigma in sigma_){
#   df = rbind()
#   r = 0.02
#   for(mu in mu_)
#   {
#     tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#     df = rbind(df,tmp[2,])
#   }
#   write.csv(df,paste0("graph_std_mu_sigma_",sigma,"_r_",r,".csv"))
# }

#Std Analysis --- with std as Y, sigma as X, mu = 0.10, r = 0.02
# for(mu in mu_){
#   df = rbind()
#   r = 0.02
#   for(sigma in sigma_)
#   {
#     tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#     df = rbind(df,tmp[2,])
#   }
#   write.csv(df,paste0("graph_std_sigma_mu_",mu,"_r_",r,".csv"))
# }

#Std Analysis --- with std as Y, sigma as X, mu = 0.10, r = 0.02
# for(mu in mu_){
#   for(sigma in sigma_){
#     df = rbind()
#     for(r in r_)
#     {
#       tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#       df = rbind(df,tmp[2,])
#     }
#     write.csv(df,paste0("graph_std_r_mu_",mu,"_sigma_",sigma,".csv"))
#   }
# }

#Skewness Analysis --- with Skewness as Y, mu as X, sigma = 0.15, r = 0.02
# for(sigma in sigma_){
#   df = rbind()
#   r = 0.02
#   for(mu in mu_)
#   {
#     tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#     df = rbind(df,tmp[3,])
#   }
#   write.csv(df,paste0("graph_skew_mu_sigma_",sigma,"_r_",r,".csv"))
# }

#Skewness Analysis --- with Skewness as Y, sigma as X, mu = 0.10, r = 0.02
# for(mu in mu_){
#   df = rbind()
#   r = 0.02
#   for(sigma in sigma_)
#   {
#     tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#     df = rbind(df,tmp[3,])
#   }
#   write.csv(df,paste0("graph_skew_sigma_mu_",mu,"_r_",r,".csv"))
# }
# 

#Skewness Analysis --- with Skewness as Y, sigma as X, mu = 0.10, r = 0.02
# for(mu in mu_){
#   for(sigma in sigma_){
#     df = rbind()
#     for(r in r_)
#     {
#       tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#       df = rbind(df,tmp[3,])
#     }
#     write.csv(df,paste0("graph_skew_r_mu_",mu,"_sigma_",sigma,".csv"))
#   }
# }

#Kurtosis Analysis --- with Kurtosis as Y, mu as X, sigma = 0.15, r = 0.02
# for(sigma in sigma_){
#   df = rbind()
#   r = 0.02
#   for(mu in mu_)
#   {
#     tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#     df = rbind(df,tmp[4,])
#   }
#   write.csv(df,paste0("graph_kurt_mu_sigma_",sigma,"_r_",r,".csv"))
# }

#Kurtosis Analysis --- with Kurtosis as Y, sigma as X, mu = 0.10, r = 0.02
# for(mu in mu_){
#   df = rbind()
#   r = 0.02
#   for(sigma in sigma_)
#   {
#     tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#     df = rbind(df,tmp[4,])
#   }
#   write.csv(df,paste0("graph_Kurt_sigma_mu_",mu,"_r_",r,".csv"))
# }

#Kurtosis Analysis --- with Kurtosis as Y, sigma as X, mu = 0.10, r = 0.02
# for(mu in mu_){
#   for(sigma in sigma_){
#     df = rbind()
#     for(r in r_)
#     {
#       tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#       df = rbind(df,tmp[4,])
#     }
#     write.csv(df,paste0("graph_kurt_r_mu_",mu,"_sigma_",sigma,".csv"))
#   }
# }

#Sharpe Ratio Analysis --- with Sharpe Ratio as Y, mu as X, sigma = 0.15, r = 0.02
# for(sigma in sigma_){
#   df = rbind()
#   r = 0.02
#   for(mu in mu_)
#   {
#     tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#     df = rbind(df,tmp[1,]/tmp[2,])
#   }
#   write.csv(df,paste0("graph_sharpe_mu_sigma_",sigma,"_r_",r,".csv"))
# }

#Sharpe Ratio Analysis --- with Sharpe Ratio as Y, sigma as X, mu = 0.10, r = 0.02
# for(mu in mu_){
#   df = rbind()
#   r = 0.02
#   for(sigma in sigma_)
#   {
#     tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#     df = rbind(df,tmp[1,]/tmp[2,])
#   }
#   write.csv(df,paste0("graph_sharpe_sigma_mu_",mu,"_r_",r,".csv"))
# }

#Sharpe Ratio Analysis --- with Sharpe Ratio as Y, sigma as X, mu = 0.10, r = 0.02
# for(mu in mu_){
#   for(sigma in sigma_){
#     df = rbind()
#     for(r in r_)
#     {
#       tmp = read.csv(paste0("../SimulationResults/stat_",paste(mu,sigma,r,0.5,0.5,sep = "_"),".csv"))[,-1]
#       df = rbind(df,tmp[1,]/tmp[2,])
#     }
#     write.csv(df,paste0("graph_sharpe_r_mu_",mu,"_sigma_",sigma,".csv"))
#   }
# }
