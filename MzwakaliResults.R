#TT.Mzwakali
#216194350

#2
 library(readxl)
 Results <- read_excel("C:/Users/Zubenathi/Downloads/Results.xlsx")
 View(Results)
 
#3a 
 summary(Results)
 
#b 
 AppDev1<-c(90,83,76,80,83)
 mean(AppDev1)
 
#c
 plot(Results$`Term 1`,Results$`Term 2`, main = "Regression")
 cor(Results$`Term 1`, Results$`Term 2`)
 help(lm)
 mod<-lm(Results$`Term 1` ~ Results$`Term 2`)
 summary(mod)
 mod$coefficients
 coef(mod)
 plot(Results$`Term 1`,Results$`Term 2`, main = "Regression")
 abline(mod)

#4a
 hist(Results$`Term 5`)

#b
 boxplot(Results$`Term 3`)

#5
 library(reshape2)
 Marks<-melt(Results)
 colnames(Marks)<-c("Subject","Terms","Grades")
 head(Marks)
 library(ggplot2)
 ggplot(Marks, aes(x=Terms,y=Grades))+geom_point()
 