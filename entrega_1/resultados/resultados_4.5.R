# Vamos a probar el paquete dplyr (aparecen los primeros en esta
# página https://www.computerworld.com/article/2921176/great-r-packages-for-data-import-wrangling-visualization.html)

# Primero instalaremos tidyverse, que es un conjunto de librerías para
# datascience, que podremos usar en el futuro (tarda un rato).

> install.packages("tidyverse")

# Una vez hayamos instalado el paquete, podemos acceder a las librerias
# de la siguiente manera.

> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union



# Vamos a seleccionar las columnas numéricas de Datos2.txt para hacer un heatmap
> datos2
           Nombre Peso Altura Edad Sexo
1    Juana Garcia   77   1.63   23    M
2    Silvia Lopez   58   1.63   23    M
3   Andres Garces   89   1.85   26    H
4     Laura Perez   55   1.62   23    M
5           Adela   47   1.60   26    M
6   Yolanda Lopez   60   1.63   26    M
7   Lola Martinez   54   1.70   22    M
8  Alberto Garcia   58   1.65   23    H
9      Pedro Vera   75   1.78   26    H
10   Diego Moreno   65   1.70   24    H
11   Julio Angulo   82   1.77   28    H
12    Juan Trucha   85   1.83   42    H
13   Rafael Perez   75   1.74   25    H
14 Monica Sanchez   65   1.65   26    M

> datos2.numeric <- select(datos2, title=c("Peso","Altura", "Edad"))
> datos2.numeric
   title1 title2 title3
1      77   1.63     23
2      58   1.63     23
3      89   1.85     26
4      55   1.62     23
5      47   1.60     26
6      60   1.63     26
7      54   1.70     22
8      58   1.65     23
9      75   1.78     26
10     65   1.70     24
11     82   1.77     28
12     85   1.83     42
13     75   1.74     25
14     65   1.65     26

# Para hacer el heatmap:
> heatmap(data.matrix(datos2.numeric), scale="column", Colv=NA, Rowv=NA)

# Ya podemos quitar la libreria, pues no la vamos a usar más. Podemos comprobar que se
# ha quitado bien ejecutando las líneas anteriores.
> detach()
> datos2.numeric <- select(datos2, title=c("Peso","Altura", "Edad"))
Error in select(datos2, title = c("Peso", "Altura", "Edad")) : 
  no se pudo encontrar la función "select"


