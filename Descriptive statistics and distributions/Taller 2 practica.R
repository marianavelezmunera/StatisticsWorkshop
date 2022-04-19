lombrices<-read.table(file.choose(),header = TRUE)
lombrices1<-read.delim(file.choose(),header = TRUE)

names(lombrices)


lombrices_modificado<-lombrices[1:100,]
lombrices_modificado1<-lombrices[,1:3]
lombrices_modificado2<-lombrices[,c(1,4:12)]

lombrices_seca<-subset(lombrices,estacion=="seca")
lombrices_seca
lombrices_basico<-subset(lombrices,pH>7)
lombrices4<-subset(lombrices,pH>7&Abu_Lomb>0)

summary(lombrices)

mean(lombrices$pH,na.rm =TRUE )
sd(lombrices$MO)
IQR(lombrices$DA)

###### GRAFICOS ######

####### Box plot 

boxplot1<-boxplot(lombrices$MO~lombrices$estacion,main="Materia organica según la estacion",xlab="Estacion",ylab="Materia organica",names=c("Lluvia","Seca"),col=c("pink","red"))

help("boxplot")

##### Dispersion
help("plot")
dispersion<-plot(lombrices$HS,lombrices$DA,main = "DA vs HS",xlab="HS",ylab="DA",col="green")

#### Histograma

histograma<-hist(lombrices$pH,main = "Frecuencia de pH",ylab="Frecuencia",xlab="pH",col="purple")

### Barplot 

tabla<-table(lombrices$estacion)
tabla

barplot1<-barplot(tabla,main="Frecuecia de temporada",xlab="Estacion",ylab="Frecuencia",col = c("green","blue"))

#1. Subir el set de datos
#2. Variables del set de datos
#3. Seleccionar los primeros 100 registros
#4. Grafico 

dim(datos_oscar)
tabla_oscar<-table(datos_oscar$Especie)
barplot(tabla_oscar,las=2,cex.names = 0.5)
help("barplot")
tabla_osc<-sort(tabla_oscar,decreasing = TRUE)
tabla_osc
barplot(tabla_osc,las=2,cex.names = 0.5,col=rainbow(18))                       
unique(datos_oscar$Especie)

###### Distribuciones

hist(datos_oscar$duration)

hist(rnorm(1:100,mean=50,sd=1))

shapiro.test(datos_oscar$duration)
shapiro.test(datos_oscar$disttomax)


hist(datos_oscar$disttomax)

help("leveneTest")
leveneTest(datos_oscar$disttomax~datos_oscar$Especie)
