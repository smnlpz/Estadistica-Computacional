# Con dump guardamos todas las variables que tenemos

> ls()
[1] "CuantasNecesita" "CuatroAses"      "datos"           "datos2"         
[5] "DistriAses"     
> dump(list=ls(), "Escritorio/EC/entregas/entrega_1/resultados/dumpdata.R")


# Con dput guardamos la definicion de una variable en un archivo
# Con dget la recuperamos

> dput(x=CuantasNecesita,file="Escritorio/EC/entregas/entrega_1/resultados/dput.R")
> CuantasNecesitaGet <- dget("Escritorio/EC/entregas/entrega_1/resultados/dput.R")
> CuantasNecesitaGet
function (n = 20) 
{
    cuantas = 0
    repeat {
        necesitadas = CuatroAses()$E
        cuantas = cuantas + 1
        if (necesitadas <= n) {
            break
        }
    }
    cat("He necesitado llamar a CuatroAses() ", cuantas, " veces para obtener un resultado menor a ", 
        n, "\n")
    cuantas
}
<environment: 0x2ee6c50>

