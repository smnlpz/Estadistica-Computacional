CuatroAses = function(Mostrar = F,Maximo=1000){
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





DistriAses = function(n = 5,Maximo=1000) {
	Saco = vector(length=n)
	for(i in 1:n)
		Saco[i] = CuatroAses(F,Maximo)$E
	Saco
}





# Cuenta cuántas veces hay que llamar a CuatroAses() para que
# consiga 4 ases en menos de n extacciones
CuantasLlamadasNecesitaAses = function(n=20) {
	cuantas=0
	repeat{
		necesitadas = CuatroAses()$E
		cuantas=cuantas+1
		if(necesitadas<=n){
			break
		}
	}
	cat("He necesitado llamar a CuatroAses() ", cuantas, " veces para extraer 4 ases en menos de ", n, " extracciones.\n")
}




CuatroAses.Sin =function(Mostrar = F){
	#############################################################
	# Pone el contador de ases en 0 							#
	# Obtiene una permutaci´on de las cartas de la baraja 		#
	# Si no es un as (1) pasa a la siguiente carta 				#
	# Suma 1 al contador de ases 								#
	# Si hay cuatro ases termina el ciclo 						#
	#############################################################
	Ases = 0
	Resultado = sample(52)
	
	for (i in 1:52){
		if(Resultado[i] %% 13 != 1) {next}	# %% es el módulo
		
		Ases = Ases+1
		
		if(Ases==4) {break}
	}
	
	if(Mostrar){
		cat("He necesitado", i, "extracciones para obtener cuatro ases\n")
	}
	
	return(list(E = i,R = Resultado[1:i]))
}



DistriAses.Sin = function(n = 5){
	Saco = vector(length=n)
	for(i in 1:n)
		Saco[i] = CuatroAses.Sin()$E
	Saco
}






CuatroAses.Nombres = function(Mostrar = F,Maximo=1000){
	#############################################################
	# Pone los cuatro ases en 0									#
	# Saca una carta de la baraja (52) 							#
	# Suma uno al contador 										#
	# Si no es un as (1) vuelve al principio del ciclo 			#
	# El as correspondiente se pone en 1 						#
	# Si los cuatro ases son 1 termina el ciclo 				#
	#############################################################
	Palos = c("Oros","Copas","Espadas","Bastos")
	Cartas = c("As","Dos","Tres","Cuatro","Cinco","Seis","Siete","Ocho","Nueve","Diez","Sota","Caballo","Rey")

	Extracciones = 0
	Resultado = 1:Maximo
	Ases = c(0,0,0,0)
	Nombres<-array()
	
	repeat{
		Extracciones = Extracciones + 1
		if (Maximo <= Extracciones){
			if(Mostrar){
				cat("No he podido obtener cuatro ases en ",Extracciones," extracciones. \n")
			}
			return(list(E = NA, R = Resultado,N=Nombres, Conseguido=F))
		}
	
		SacoUna = sample(52, 1)
		Resultado[Extracciones] = SacoUna

		Palo = ((SacoUna-1) %/% 13)+1
		Carta = ((SacoUna-1) %% 13)+1
		Nombres[Extracciones] =paste(Cartas[Carta]," de ", Palos[Palo])
		
		if(SacoUna %% 13 != 1) {next}		# %% es el módulo
		Ases[(SacoUna -1) %/% 13 + 1] = 1	# %/% es la división entera
	
		if(sum(Ases)==4) {break}
	}
	
	length(Resultado)=Extracciones
	
	if(Mostrar){
		cat("He necesitado ", Extracciones," extracciones para obtener cuatro ases.\n")
	}
	
	return(list(E = NA, R = Resultado, N=Nombres, Conseguido=T))
}










