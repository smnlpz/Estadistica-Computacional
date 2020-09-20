# Las funciones read.csv y read.csv2 hacen exactamente
# lo mismo, solo que una de ellas está diseñada para
# los países que utilizan la coma como punto decimal.
# Aparte, el separado es distinto (coma o punto y coma).


#################
#	Datos.txt	#
#################
> datos <- read.csv("Escritorio/EC/entregas/entrega_1/data/datos.txt")
> summary(datos)
      Peso           Altura           Edad           Sexo   
 Min.   :55.00   Min.   :155.0   Min.   :21.00   Hombre:20  
 1st Qu.:62.00   1st Qu.:164.5   1st Qu.:21.00   Mujer :16  
 Median :71.50   Median :174.0   Median :22.00              
 Mean   :70.72   Mean   :172.9   Mean   :22.14              
 3rd Qu.:78.25   3rd Qu.:181.0   3rd Qu.:23.00              
 Max.   :89.00   Max.   :190.0   Max.   :25.00  
 
> hist(datos$Altura)
> hist(datos$Peso)
> hist(datos$Edad)
> boxplot(datos, col=c("red","blue","yellow","green"))


> array_sin_sexo=c(datos$Edad, datos$Peso, datos$Altura)
> datos_sin_sexo=matrix(data=array_sin_sexo, ncol=3, byrow=FALSE)
> heatmap(datos_sin_sexo, scale="column", Colv=NA, Rowv=NA)


#################
#	Datos2.txt	#
#################
> datos2 <- read.csv("Escritorio/EC/entregas/entrega_1/data/datos_2.txt", header=TRUE, sep=" ")
> summary(datos2)
            Nombre       Peso          Altura           Edad       Sexo 
 Adela         :1   Min.   :47.0   Min.   :1.600   Min.   :22.00   H:7  
 Alberto Garcia:1   1st Qu.:58.0   1st Qu.:1.630   1st Qu.:23.00   M:7  
 Andres Garces :1   Median :65.0   Median :1.675   Median :25.50        
 Diego Moreno  :1   Mean   :67.5   Mean   :1.699   Mean   :25.93        
 Juana Garcia  :1   3rd Qu.:76.5   3rd Qu.:1.762   3rd Qu.:26.00        
 Juan Trucha   :1   Max.   :89.0   Max.   :1.850   Max.   :42.00        
 (Other)       :8                                                       

> hist(datos2$Peso)
> hist(datos2$Altura, col=c("red","blue","yellow","green","pink"),density=30) # Por probar
> hist(datos2$Edad)
> boxplot(datos2)

