# Las funciones para los dados son exactamente iguales que para
# las monedas, pero en vez de con dos valores posibles, con 6
# y eligiendo el valor que queremos que se repita.

ObtenerNSeisEnDado = function(mostrar=F,N=5,tiradas=20){
	nSeises=0
	obtenidos=array()
	
	for(i in 1:tiradas){
		obtenidos[i]=sample(6, 1)
		if(obtenidos[i]==6)	{nSeises=nSeises+1}
		if(nSeises==N){
			if(mostrar){
				cat("He obtenido", N ," seis en ", i ," lanzamientos del dado.\n")
				return(list(necesitadas=i, resultado=obtenidos))
			}else{
				return(i)
			}
		}
	}
	
	if(mostrar){
		cat("No he conseguido obtener ", N ," seis en ", tiradas, " lanzamientos del dado.\n")
		return(list(necesitadas=tiradas, resultado=obtenidos))
	}else{
		return(tiradas)
	}
}

DistriDado = function(intentos=5,seises=5,Maximo=1000) {
	Saco = vector(length=intentos)
	for(i in 1:intentos)
		Saco[i] = ObtenerNSeisEnDado(F,seises,Maximo)
	Saco
}



# Cuenta cuántas veces hay que llamar a ObtenerNCaras() para que
# consiga N caras en menos de n lanzamientos
CuantasLlamadasNecesitaDado = function(nseises=5,tiradas=10) {
	cuantas=0
	repeat{
		necesitadas = ObtenerNSeisEnDado(F,nseises,1000)
		cuantas=cuantas+1
		if(necesitadas<=tiradas){
			break
		}
	}
	cat("He necesitado llamar a ObtenerNSeisEnDado() ", cuantas, " veces para obtener ", nseises, " seis en menos (o igual) de ", tiradas, " tiradas del dado.\n")
}
