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


datos <- c(23, 16, 15, 13, 13, 13, 16, 18, 17, 20, 15, 14, 22, 17, 4)
specnumber(datos)


boxplot(datos, ylab="abundancia", xlab="especies")

