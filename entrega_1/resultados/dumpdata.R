CuantasNecesita <-
function(n=20) {
	cuantas=0
	repeat{
		necesitadas = CuatroAses()$E
		cuantas=cuantas+1
		if(necesitadas<=n){
			break
		}
	}
	cat("He necesitado llamar a CuatroAses() ", cuantas, " veces para obtener un resultado menor a ", n, "\n")
	cuantas
}
CuatroAses <-
function(Mostrar = F,Maximo=1000){
	#############################################################
	# Pone los cuatro ases en 0									#
	# Saca una carta de la baraja (52) 							#
	# Suma uno al contador 										#
	# Si no es un as (1) vuelve al principio del ciclo 			#
	# El as correspondiente se pone en 1 						#
	# Si los cuatro ases son 1 termina el ciclo 				#
	#############################################################
	Extracciones = 0
	Resultado = 1:Maximo
	Ases = c(0,0,0,0)
	
	repeat{
		if (Maximo <= Extracciones){
			if(Mostrar){
				cat("No he podido obtener cuatro ases en ",Extracciones,"extracciones. \n")
			}
			return(list(E = NA, R = Resultado, Conseguido=F))
		}
		Extracciones = Extracciones + 1
		SacoUna = sample(52, 1)
		Resultado[Extracciones] = SacoUna
		
		if(SacoUna %% 13 != 1)	{next} 		# %% es el módulo
		Ases[(SacoUna -1) %/% 13 + 1] = 1	# %/% es la división entera
		
		if(sum(Ases)==4)	{break}
	}
	
	length(Resultado)=Extracciones
	
	if(Mostrar){
		cat("He necesitado", Extracciones,"extracciones para obtener cuatro ases.\n")
	}
	
	return(list(E = Extracciones, R = Resultado, Conseguido=T))
}
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
54L, 58L, 75L, 65L, 82L, 85L, 75L, 65L), Altura = c(1.63, 1.63, 
1.85, 1.62, 1.6, 1.63, 1.7, 1.65, 1.78, 1.7, 1.77, 1.83, 1.74, 
1.65), Edad = c(23L, 23L, 26L, 23L, 26L, 26L, 22L, 23L, 26L, 
24L, 28L, 42L, 25L, 26L), Sexo = structure(c(2L, 2L, 1L, 2L, 
2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 2L), .Label = c("H", "M"), class = "factor")), class = "data.frame", row.names = c(NA, 
-14L))
DistriAses <-
function(n = 5,Maximo=1000) {
	Saco = vector(length=n)
	for(i in 1:n)
		Saco[i] = CuatroAses(T,Maximo)$E
	Saco
}
