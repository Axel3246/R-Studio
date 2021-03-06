---
title: "Básicos R Sesión 2"
author: "Axel Hdz"
date: "25 de marzo de 2021"
output: pdf_document
---

##Matrices  
Las matrices y *arrays* pueden ser descritas como vectores multidimensionales. Pueden contener datos de un solo tipo, tienen más dimensiones.  
**Cuatro columnas y tres columnas**  
```{r}
mat <- matrix(1:12, nrow = 4, ncol = 3)
mat
```

##Data Frames  
Los data frames son estructuras de datos de dos dimensiones (rectangulares) que pueden contener datos de diferentes tipos. Se puede llamar a la columna con el signo *$*.
```{r}
miDF <- data.frame(
  "entero" = 1:4, 
  "factor" = c("a", "b", "c", "d"), 
  "numero" = c(1.2, 3.4, 4.5, 5.6),
  "cadena" = as.character(c("a", "b", "c", "d"))
)
miDF
miDF$entero
miDF$cadena
```

##Listas
Las listas, al igual que los vectores, son estructuras de datos unidimensionales, solo tienen largo, pero a diferencia de los vectores cada uno de sus elementos puede ser de diferente tipo o incluso de diferente clase.
```{r}
miVector <- 1:10
miMatriz <- matrix(1:4, nrow = 2)
miDf     <- data.frame("num" = 1:3, "let" = c("a", "b", "c"))
mi_lista <- list("un_vector" = miVector, "una_matriz" = miMatriz, "un_df" = miDf)
mi_lista
mi_lista[[3]]
mi_lista$un_df
```

##Funciones
La instalación base de R tiene suficientes funciones para que realicemos todas las tareas básicas de análisis de datos, pero también puedes crear tus propias funciones.
```{r}
suma<-function(x,y){
      # suma de los elementos "x" e "y”
      x+y
}
suma(4,5)
```

##Estructuras de Control
if - else
```{r}
promedio <- function(calificaciones){
  media <- mean(calificaciones)
  if(media >= 6) {
    print("Aprobado")
  } else {
    print("Reprobado")
  }
}
promedio(c(6, 7, 8, 9, 8))
```

for
```{r}
dado <- 1:6
for(cara in dado) {
  print(cara ^ 2)
}

for(numero in 1:10) {
  print(numero)
}
```

while
```{r}
umbral <- 5
valor <- 0
while(valor < umbral) {
  print( paste( "Siguiente: " , valor, " ", umbral  ))
  valor <- valor + 1
}
```

