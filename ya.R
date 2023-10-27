library(readr)
diversidad_edafofauna_ULIBRE <- read_csv("diversidad edafofauna ULIBRE.csv")
View(diversidad_edafofauna_ULIBRE)




install.packages("BiodiversityR")
install.packages("ggplot2")
install.packages("ggforce")
install.packages("concaveman")
install.packages("ggrepel")
install.packages("ggsci")
install.packages("dplyr")
install.packages("pvclust")
install.packages("vegan")
install.packages("dismo")


library(ggplot2)
library(ggforce)
library(concaveman)
library(ggrepel)
library(ggsci)
library(dplyr)
library(pvclust)
library(vegan)
library(dismo)
library(BiodiversityR)
BiodiversityRGUI()

specnumber(PRUEvha_1_1)
boxplot(PRUEvha_1_1, ylab="abundancia", xlab="especies")


#----------------------------------------------------------------#


plot1 <- ordiplot(PRUEvha_1_1, choices=c(1,2))

plot(PRUEvha_1_1, ci.type = "poly",col="blue",lwd=2,ci.lty=0,ci.col="grey90")


#------------------------------------------------------------------#
#INDICE DE SHANNON
H=diversity(PRUEvha_1_1,index="shannon")
H

#Fisher alpha
fisher.alpha(PRUEvha_1_1,se=T)

#Indice de dominacia de simpson
simp=diversity(PRUEvha_1_1,"simpson")

#Inverso de Simpson
invsimp=diversity(PRUEvha_1_1,"invs")

#Relacion entre H e invsimp
plot(invsimp,H,pch=21,bg=3,cex=1.9)
grid()
indentify(invsimp,H) #--NO LA ENCUENTRA--#


