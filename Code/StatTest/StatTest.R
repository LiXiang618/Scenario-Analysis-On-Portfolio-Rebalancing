allFiles = list.files("../SimulationResults/")
allFiles = allFiles[1:(length(allFiles)/2)]

df = rbind()
for(i in 1:length(allFiles)){
  fileName = allFiles[i]
  params = as.numeric(strsplit(fileName,"_")[[1]][1:3])
  
  file = read.csv(paste0("../SimulationResults/",fileName))
  file = file[,-1]
  
  res = tryCatch({
    c(shapiro.test(file$v_bh)[[2]],
      shapiro.test(file$v_con)[[2]],
      t.test(file$v_bh,file$v_con,var.equal = FALSE)$p.value,
      var.test(file$v_bh,file$v_con)$p.value)
  },error = function(e){
    c(NA,NA,NA,NA)
  })

  df = rbind(df,round(c(params,res),3))
  print(i)
}

df = as.data.frame(df)
colnames(df) = c("mu","sigma","r","norm_bh","norm_con","mean_test","var_test")
df$isNorm_bh = df$norm_bh > 0.10
df$isNorm_con = df$norm_con > 0.10
df$isMeanDiff = df$mean_test < 0.05
df$isVarDiff = df$var_test < 0.05

View(df[which(df$isNorm_bh & df$isNorm_con & df$isMeanDiff),])

write.csv(df,"test.csv")

