# Prueba Binomial

# Numero de evento fijo
# Probabilidad de exito es igual en cada ensayo 
# Independencia

# Calcular probabilidad

help(dbinom)

# X = Numero de exitos
# n = numero de eventos
# Prob = probabilidad de exito

# Flores

#Poblacion = de 27 flores
# Probabilidad de tener el pistilo a la derecha = 0.25 

# ¿Que tan probable es sacar 6 flores y que tengan el pistilo a la derecha?

dbinom(6,27,0.25)

# Test binomial exacto 

# 10 preguntas, 5 opciones, 4 de 10 preguntas. ¿Respondio al azar?
help("binom.test")
binom.test()

#X = Numero de exitos
#N = numero de ensayos
# P= probabilidad de exito bajo la h nula


binom.test(4,10,0.2,alternative = "greater",conf.level = 0.95)


# Araña depreda abejas

# 33 flores
# 24 tenían araña
# Probabilidad = 0.5

binom.test(24,33,p=0.5,alternative = "two.sided",conf.level = 0.95)

#### Chi cuadrado


### No hay esperados menores a 1
### Aleatorio e independiente
## 20% o más esperados menores a 5 

### Chi cuadrado proporcional

#### 200 arvejas en total

## 100 que son amarillas y lisas
### 37 amarillas y rugosas
### 45 verdes y lisas
### 18 verdes y rugosas

#### Amarillo dominante y el liso es dominante

### 9/16 amarillas y lisas
## 3/16 amarillas y rugosas
## 3/16 verdes y lisas
### 1/ 16 verde y rugosa

frecuencia_obs<-c(100,37,45,18)
probabilidas_nula<-c(9/16,3/16,3/16,1/16)
chisq.test(frecuencia_obs,p=probabilidas_nula,correct = FALSE)

frecuencia_obs<-c(100,37,45,18)
probabilidades_nula<-c(9/16,3/16,3/16,1/16)
chisq.test(frecuencia_obs,p=probabilidades_nula,correct = FALSE)

## Poisson

### Tiempo o el espacio 

## H0 = aleatoria en tiempo y en espacio

### Tiene preferencia los murcis?

# 120 arboles = 0 murcis
## 82 arboles = 1 murcis
##49 arboles = 2 murcis
##74 arboles = 3 murcis
## 21 = 4 murcis
## 15 = 5 murcis 
# 7 = 6 murcis

murcis<-rep((0:6),c(120,82,49,74,21,15,7))


murcis

chisq.test(0:6,p=dpois(0:6,mean(murcis)),rescale.p = TRUE,simulate.p.value = TRUE)

## Contigencia

### Si el sexo del estudiante está relacionado con la nota

datos_estudiantes<-matrix(c(15,30,40,26),nrow = 2,ncol = 2,byrow = TRUE,dimnames = list("sexo"=c("Hombre","Mujeres"),"nota"=c("Aprobado","Reprobado")))
datos_estudiantes

chisq.test(datos_estudiantes,correct = FALSE)


