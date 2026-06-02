
print('let\'s start')
data=readxl::read_xlsx("D:\\omarelrayes\\Downloads\\Day 5 -Assignments.xlsx")
# replace with your path
reps_d=as.factor(data$reps)
salt_d=as.factor(data$salt)
salicylic_d=as.factor(data$salicylic)
data$reps=as.numeric(as.factor(data$reps))
data$salt=as.numeric(as.factor(data$salt))
data$salicylic=as.numeric(as.factor(data$salicylic))
str(data)
attach(data)
print("_______________________________\n")
# some of describtive analysis
print(paste("mean:",mean(Y)))
print(paste("median:",median(Y)))
print(paste("mode:",mode(Y)))
print(paste("varience:",var(Y)))
print(paste("standard diviation:",sd(Y)))
print(paste("range:",range(Y)))
print("_______________________________\n")
##############################################3

hist(data$Y,main = " hist distribution of target ")

means=tapply(Y, reps, mean)
bp <- barplot(means,
              main = "mean of Y for every  class of reps",
              xlab = "reps classes",
              ylab = "average of  Y",
              col = "skyblue",
              ylim = c(0, max(means) * 1.2))


text(x = bp, y = means, labels = round(means, 2), pos = 3, cex = 0.8, col = "blue")
#######################################################
if (shapiro.test(data$Y)$p.value>0.05){
  print("Y column is normal distributed")
  print("testvalue:")
  print( shapiro.test(data$Y))
}else{
  print("Y column is not normal distributed")
}
plot(density(data$Y),main = "denisty distribution  of target")

print("_______________________________\n")
cor(data,method = 'spearman')
a_o_v_1=aov(Y~reps_d)
TukeyHSD(a_o_v_1,"reps_d")
summary(a_o_v_1)

a_o_v_2=aov(Y~reps_d+salt_d*salicylic_d)
summary(a_o_v_2)
TukeyHSD(a_o_v_2,"salt_d:salicylic_d")

a_o_v_3 <- aov(Y ~ reps_d + salt_d +salicylic_d)
summary(a_o_v_3)
TukeyHSD(a_o_v_3)


lin_m=lm(Y~reps+salt)
summary(lin_m)
detach(data)
