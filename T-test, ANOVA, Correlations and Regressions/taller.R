# Pruebas T

# Comparar medias de dos grupos

# Supuestos
# Normalidad (violable)
# Homocedasticidad 
# Muestreo aleatorio

# Prueba T 1 muestra, pareada, 2 muestras

# Prueba T de 1 muestra

# T corporal de poblacion de cangrejos t ambiuente?

# H nula = No
# H al = Sí

t_ambiente
t_ambiente<-23
t_cangrejos<-c(25.3,25.3,25.3,26,26,24,24,24,24.3,24.2)

t.test(t_cangrejos,mu=t_ambiente,conf.level = 0.95)


# Prueba T pareada

# numero de especies es igual en ríos restaurados que en rios que no?

rest<-c(12,23,45,10,27)
no_res<-c(50,38,60,67,100)

t.test(rest,no_res,paired = TRUE)

# T de muestras independientes

# Numero de bichos en cultivos de lechuga 
# Lechugas resistentes vs las no resistentes

resistentes<-c(8,11,10,10,10,7,6,9)
no_resistentes<-c(16,15,15,17,18,17,11,16)

var.test(resistentes,no_resistentes)

t.test(resistentes,no_resistentes,var.equal = TRUE)

# ANOVA 

# 1 variable categorica de entrada y 1 numerica de salida

# Normalidad 
# Homocedasticidad 
# Balance

tratA<-subset(arañas,Tratamiento=="A")
tratB<-subset(arañas,Tratamiento=="B")
tratC<-subset(arañas,Tratamiento=="C")
shapiro.test(tratA$Supervivencia)
shapiro.test(tratB$Supervivencia)
shapiro.test(tratC$Supervivencia)

anova<-aov(Supervivencia~Tratamiento,data=arañas)
summary(anova)

help(aov)

##### Correlaciones

# Var numer entrada vs numerica salida 
## Correlacion NO ES causalidad

# Pearson, Kendall, Spearmann

cor.test()
cor()

#pesos de murcis esta relacionado con su largo 

peso<-c(5,3,10,8,6,7)
largo<-c(10,7,18,15,10,15)

shapiro.test(peso)
shapiro.test(largo)

cor.test(largo,peso,method = "spearman")
cor(largo,peso)

# Regresiones (simple)

# Sí causalidad

# Establecer causalidad
# Intrapolar

# Normalidad (violable)
# Homocedasticidad (más o menos violables) 
# Linealidad (SÍ ES IMPORTANTE)
# Independencia y aletorio

# Si la riqueza cambia segun la temperatura 

modelo1<-lm(riqueza~temperatura,data = datos_sitios)
summary(modelo1)

modelo2<-lm(riqueza~temperatura+precipitacion,data = datos_sitios)
summary(modelo2)

modelo3<-lm(riqueza~temperatura+precipitacion+altitud,data = datos_sitios)

summary(modelo3)

AIC(modelo1)
AIC(modelo2)
AIC(modelo3)

