ObtenerNCaras = function(mostrar=F,N=5,tiradas=20){
	nCaras=0
	nombres_resultados=c("Cara","Cruz")
	obtenidos=array()
	
	for(i in 1:tiradas){
		lanzo = sample(2, 1)
		obtenidos[i]=nombres_resultados[lanzo]
		if(lanzo==1)	{nCaras=nCaras+1}
		if(nCaras==N){
			if(mostrar){
				cat("He obtenido", N ," caras en ", i ," lanzamientos.\n")
				return(list(necesitadas=i, resultado=obtenidos))
			}else{
				return(i)
			}
		}
	}
	
	if(mostrar){
		cat("No he conseguido obtener ", N ," caras en ", tiradas, " lanzamientos.\n")
		return(list(necesitadas=tiradas, resultado=obtenidos))
	}else{
		return(tiradas)
	}
}



DistriCaras = function(intentos=5,caras=5,Maximo=1000) {
	Saco = vector(length=intentos)
	for(i in 1:intentos)
		Saco[i] = ObtenerNCaras(F,caras,Maximo)
	Saco
}



# Cuenta cuántas veces hay que llamar a ObtenerNCaras() para que
# consiga N caras en menos de n lanzamientos
CuantasLlamadasNecesitaMonedas = function(ncaras=5,tiradas=10) {
	cuantas=0
	repeat{
		necesitadas = ObtenerNCaras(F,ncaras,1000)
		cuantas=cuantas+1
		if(necesitadas<=tiradas){
			break
		}
	}
	cat("He necesitado llamar a ObtenerNCaras() ", cuantas, " veces para obtener ", ncaras, " caras en menos (o igual) de ", tiradas, " tiradas.\n")
}

