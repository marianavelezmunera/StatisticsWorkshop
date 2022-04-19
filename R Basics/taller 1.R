# Working directory

getwd()
setwd("C:\\Users\\Maria\\OneDrive\\Documents\\Otras cosas\\Otras cosas\\Talleres Estadística en R\\Sesión 1 R Básico")
setwd("C:/Users/Maria/OneDrive/Documents/Otras cosas/Otras cosas/Talleres Estadística en R/Sesión 1 R Básico")
getwd()

#Packages

install.packages("car")
library(car)

leveneTest()

#Vectors

p<-c("perro","gato","pajaro") #Character vector
x<-c("mariana","velez")
y<-c(2,3,5,6,7) #Numeric vector
y1<-c("2","3","5","6","7")
y1*4

p
f<-y*4 #operation vector
f

y*4

#Matrix

Y<-c(1,2,3)
Y
X

matriz_intento<-matrix(c(1,2,3,4),nrow = 2,ncol = 2,byrow = FALSE) #Matrix by numbers
matriz_intento

V1<-c(1,5)
V2<-c(4,6)

matriz2<-matrix(c(V1,V2),nrow = 2,ncol = 2,byrow = TRUE)
matriz2 #Matrix composed by vectors

matriz3<-matrix(c(V1,V2),nrow = 2,ncol = 2,byrow = FALSE)
matriz3 

# Data frame

edad<-c(14,21,45,23)
sexo<-c("Hombre","Mujer","Mujer","Hombre")

df1<-data.frame(edad,sexo)

matrizcarolina<-matrix(c(1,2,3,4),nrow = 2,ncol= 2)
matrizcarolina

View(df1)

# List

lista<-list(a=df1,b=matrizcarolina,c=V1)
lista

# Import
getwd()
archivo1<-read.table("Limia caymanensis.txt",header = TRUE )
archivo2<-read.table(file.choose(),header = TRUE)

archivo3<-read.table("Pamphorichthys scalpridens.txt",header=TRUE)
archivo3<-read.delim("Pamphorichthys scalpridens.txt",header = TRUE)
archivo4<-read.csv("Trafico.csv",header = TRUE)

archivo5<-read.delim("Pamphorichthys scalpridens.txt",header = TRUE)

archivo3

# Asking for help

help("data.frame")
help.search("correlation")
help("apropos")

archivo6<-read.delim("Pamphorichthys scalpridens 2.txt",header = TRUE,dec = ",")
