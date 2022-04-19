library(tidyverse)
unique(oscar$Folder)

oscar1<-str_replace_all(oscar$Folder,"JFD_1508_Centurio_senex","Centurio senex")

oscar$Folder
oscar1<-str_replace_all(oscar1,"JFD_1509_Artibeus_aequatorialis","Artibeus aequatorialis")
oscar1<-str_replace(oscar1,"JFD_1520_Artibeus_lituratus","Artibeus lituratus")
oscar1<-str_replace_all(oscar1,"JFD_1510_Chiroderma_salvini","Chiroderma salvini")
oscar1<-str_replace_all(oscar1,"JFD_1511_Vampyressa_thyone", "Vampyressa_thyone")
oscar1<-str_replace_all(oscar1,"JFD_1512_Phyllostomus_hastatus","Phyllostomus hastatus")
oscar1<-str_replace_all(oscar1,"JFD_1516_Artibeus aequatorialis","Artibeus aequatorialis")
oscar1<-str_replace_all(oscar1,"JFD_1563_Eptesicus_chiriquinus","Eptesicus_chiriquinus")
unique(oscar1)
oscar$Especie<-oscar1
oscar<-oscar[,-1]

write.table(oscar_modificado,file="datos_oscar.txt",sep="\t")

summary(oscar_modificado)
getwd()

arti_ae<-subset(oscar_modificado,Especie=="Artibeus aequatorialis"&duration>0.0010)
unique(oscar_modificado$Especie)
boxplot(data=oscar_modificado,duration~Especie,col=rainbow(18),las=2,cex=1,cex.axis=0.5)

oscar_modificado<-oscar_modificado[-841,]
tabla<-as.matrix(tabla)
barplot(tabla,las=2,cex.names = 0.5,col=terrain.colors(17))
tabla<-table(oscar_modificado$Especie)
dim(tabla)
              
oscar1<-read.table("datos_oscar.txt",header = TRUE)
