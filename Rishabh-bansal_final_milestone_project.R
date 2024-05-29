
title: "Final Project"
#RishabhBansal


  
## installing the packages

install.packages("dplyr")
install.packages("ggpubr")
install.packages("psych")
install.packages("ggplot2")
install.packages("plotly")
install.packages("tidyr")
install.packages("readr")
install.packages("corrplot")
install.packages("visdat")
install.packages("tidyverse")

library(tidyverse)
library(corrplot)
library(visdat)
library(readr)
library(dplyr)
library(psych)
library(ggplot2)
library(plotly)
library(ggpubr)
library()

bank <- read.csv("D:/aly6010/bank-full.csv", na.strings=c("","NA"))
head(bank)
str(bank)


##filter the columns
bank_subset = bank %>% select(`age`,`job`,`marital`,`education`,`default`,`balance`,
                                   `housing`,`loan`,`day`,`month`,`duration`,`campaign`,`pdays`,
                                   `previous`,`y`)
nrow(bank_subset)

bank_subset = na.omit(bank_subset)
colnames(bank_subset)


## cleaning the datset changing the admin. to admin
bank_subset$job <- ifelse(bank_subset$job %in% c('admin.'), "admin", bank_subset$job)
bank$job

##factoring the column to find the details 

bank$age<-as.factor(bank$age)
bank$job<-as.factor(bank$job)
bank$marital<-as.factor(bank$marital)
bank$education<-as.factor(bank$education)
bank$default<-as.factor(bank$default)
bank$balance<-as.factor(bank$balance)

vis_miss(bank_subset)

## box plot

boxplot(bank$balance, main="Account Balance Summary")
max(bank$balance)
min(bank$balance)
median(bank$balance)

levels(bank$job)

number_of_jobs<-table(bank_subset$job)
number_of_jobs

barplot(number_of_jobs,las=2,ylab = "Number of jobs",col = c("deepskyblue4", "brown4", "deeppink4", "darkolivegreen"), ylim = c(0,12000))

average_balance<-aggregate(cbind(balance,duration) ~ job, data = bank_subset, FUN = mean)
average_balance

install.packages("ggplot2")

library(ggplot2)

ggplot(average_balance) + 
  geom_col(aes(x = job, y = balance), size = 1, color = "black", fill = "darkslategrey") +
  geom_line(aes(x = job, y =duration), size = 1.5, color="darkred", group = 1)+
  theme(axis.text.x = element_text(angle = 90))

 levels(bank_subset$age)

min(bank_subset$age)


averageset2<-aggregate(cbind(balance,duration) ~ age, data = bank_subset, FUN = mean)
averageset2

ggplot(averageset2) + 
  geom_col(aes(x = age, y = balance), size = 1, color = "black", fill = "deepskyblue4",) +
  geom_line(aes(x = age, y =duration), size = 1.5, color="red", group = 1)+
  theme(axis.text.x = element_text(angle = 90))



averageset<-aggregate(cbind(balance,duration) ~ age, data = bank_subset, FUN = mean)
averageset

plot(averageset$age,averageset$balance,pch=16,col="deepskyblue4", xlab = "age",ylab = "balance")

install.packages("xtable")
library(xtable)

regresiontb<-lm(balance~age,data=bank_subset)
regresiontb

plot(bank_subset$age,bank_subset$balance,xlab = "age",ylab = "balance")
abline(regresion1,col="cyan", lwd=2.0)

newsubset<-subset(bank_subset,marital=='married' & education =='primary')
nrow(newsubset)


newnewsubset2<-subset(bank_subset,marital=='married' & education=='secondary')
nrow(newnewsubset2)

mean(newsubset$balance)

install.packages("gginference")
library(gginference)

onest<-t.test(newsubset$balance,mu=13.29,conf.level = 0.95)

twosamplet<- t.test(newsubset$balance,newsubset2$balance,conf.level = 0.95)
twosamplet

ggttest(samplet,colaccept="deepskyblue4", colreject="darkslategrey", colstat = "orange")%>%
  +coord_cartesian(xlim = c(-5, 5))

twosamplet2<- t.test(newsubset$balance,newsubset2$balance,conf.level = 0.99)
twosamplet2


twosamplet3<-t.test(newsubset$duration,newsubset2$duration,conf.level = 0.95)
twosamplet3

ggttest(t.test(newsubset$duration,newsubset2$duration,conf.level = 0.95))

ggttest(twosamplet3,colaccept="brown4", colreject="deepskyblue4", colstat = "blue")%>%
  +coord_cartesian(xlim = c(-5, 5))





