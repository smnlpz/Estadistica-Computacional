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
