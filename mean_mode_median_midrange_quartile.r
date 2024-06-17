ages=c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)
mean_ages=mean(ages)
median_ages=median(ages)
midrange=(max(ages)+min(ages))/2
q1=quantile(ages,0.25)
q2=quantile(ages,0.75)
mode_age=as.numeric(names(sort(table(ages),decreasing=TRUE)[1]))

cat("\nMEAN  OF AGES  IS : ",mean_ages)
cat("\nMEDIAN  OF AGES  IS : ",median_ages)
cat("\nMODE  OF AGES  IS : ",mode_age)
cat("\nMIDRANGE  OF AGES  IS : ",midrange)
cat("\nQUARTILE 1  OF AGES  IS : ",q1)
cat("\nQUARTILE 3  OF AGES  IS : ",q2)
