array2_sin_sexo <-
c(23, 23, 26, 23, 26, 26, 22, 23, 26, 24, 28, 42, 25, 26, 77, 
58, 89, 55, 47, 60, 54, 58, 75, 65, 82, 85, 75, 65, 163, 163, 
185, 162, 160, 163, 170, 165, 178, 170, 177, 183, 174, 165)
array_sin_sexo <-
c(21L, 22L, 22L, 21L, 24L, 22L, 21L, 22L, 23L, 22L, 21L, 23L, 
22L, 24L, 22L, 21L, 24L, 22L, 21L, 21L, 22L, 24L, 25L, 23L, 22L, 
23L, 21L, 21L, 22L, 22L, 21L, 22L, 21L, 24L, 21L, 22L, 75L, 81L, 
56L, 68L, 79L, 89L, 62L, 59L, 83L, 55L, 72L, 56L, 84L, 64L, 76L, 
68L, 58L, 78L, 62L, 77L, 71L, 55L, 78L, 77L, 81L, 75L, 60L, 68L, 
68L, 89L, 82L, 59L, 63L, 75L, 62L, 81L, 175L, 178L, 162L, 180L, 
182L, 185L, 157L, 165L, 180L, 160L, 174L, 161L, 182L, 163L, 172L, 
169L, 162L, 178L, 157L, 165L, 182L, 163L, 174L, 181L, 181L, 174L, 
167L, 178L, 182L, 185L, 190L, 155L, 173L, 177L, 174L, 183L)
datos <-
structure(list(Peso = c(75L, 81L, 56L, 68L, 79L, 89L, 62L, 59L, 
83L, 55L, 72L, 56L, 84L, 64L, 76L, 68L, 58L, 78L, 62L, 77L, 71L, 
55L, 78L, 77L, 81L, 75L, 60L, 68L, 68L, 89L, 82L, 59L, 63L, 75L, 
62L, 81L), Altura = c(175L, 178L, 162L, 180L, 182L, 185L, 157L, 
165L, 180L, 160L, 174L, 161L, 182L, 163L, 172L, 169L, 162L, 178L, 
157L, 165L, 182L, 163L, 174L, 181L, 181L, 174L, 167L, 178L, 182L, 
185L, 190L, 155L, 173L, 177L, 174L, 183L), Edad = c(21L, 22L, 
22L, 21L, 24L, 22L, 21L, 22L, 23L, 22L, 21L, 23L, 22L, 24L, 22L, 
21L, 24L, 22L, 21L, 21L, 22L, 24L, 25L, 23L, 22L, 23L, 21L, 21L, 
22L, 22L, 21L, 22L, 21L, 24L, 21L, 22L), Sexo = structure(c(1L, 
1L, 2L, 2L, 1L, 1L, 2L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 
1L, 2L, 1L, 2L, 2L, 1L, 1L, 1L, 1L, 2L, 1L, 2L, 1L, 1L, 2L, 2L, 
1L, 2L, 1L), .Label = c("Hombre", "Mujer"), class = "factor")), class = "data.frame", row.names = c(NA, 
-36L))
datos2 <-
structure(list(Nombre = structure(c(5L, 13L, 3L, 8L, 1L, 14L, 
9L, 2L, 11L, 4L, 7L, 6L, 12L, 10L), .Label = c("Adela", "Alberto Garcia", 
"Andres Garces", "Diego Moreno", "Juana Garcia", "Juan Trucha", 
"Julio Angulo", "Laura Perez", "Lola Martinez", "Monica Sanchez", 
"Pedro Vera", "Rafael Perez", "Silvia Lopez", "Yolanda Lopez"
), class = "factor"), Peso = c(77L, 58L, 89L, 55L, 47L, 60L, 
54L, 58L, 75L, 65L, 82L, 85L, 75L, 65L), Altura = c(163, 163, 
185, 162, 160, 163, 170, 165, 178, 170, 177, 183, 174, 165), 
    Edad = c(23L, 23L, 26L, 23L, 26L, 26L, 22L, 23L, 26L, 24L, 
    28L, 42L, 25L, 26L), Sexo = structure(c(2L, 2L, 1L, 2L, 2L, 
    2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 2L), .Label = c("H", "M"), class = "factor")), row.names = c(NA, 
-14L), class = "data.frame")
datos2_sin_sexo <-
structure(c(23, 23, 26, 23, 26, 26, 22, 23, 26, 24, 28, 42, 25, 
26, 77, 58, 89, 55, 47, 60, 54, 58, 75, 65, 82, 85, 75, 65, 163, 
163, 185, 162, 160, 163, 170, 165, 178, 170, 177, 183, 174, 165
), .Dim = c(14L, 3L))
datos_sin_sexo <-
structure(c(21L, 22L, 22L, 21L, 24L, 22L, 21L, 22L, 23L, 22L, 
21L, 23L, 22L, 24L, 22L, 21L, 24L, 22L, 21L, 21L, 22L, 24L, 25L, 
23L, 22L, 23L, 21L, 21L, 22L, 22L, 21L, 22L, 21L, 24L, 21L, 22L, 
75L, 81L, 56L, 68L, 79L, 89L, 62L, 59L, 83L, 55L, 72L, 56L, 84L, 
64L, 76L, 68L, 58L, 78L, 62L, 77L, 71L, 55L, 78L, 77L, 81L, 75L, 
60L, 68L, 68L, 89L, 82L, 59L, 63L, 75L, 62L, 81L, 175L, 178L, 
162L, 180L, 182L, 185L, 157L, 165L, 180L, 160L, 174L, 161L, 182L, 
163L, 172L, 169L, 162L, 178L, 157L, 165L, 182L, 163L, 174L, 181L, 
181L, 174L, 167L, 178L, 182L, 185L, 190L, 155L, 173L, 177L, 174L, 
183L), .Dim = c(36L, 3L))
