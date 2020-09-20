#############
#			#
#	3.5.6	#
#			#
#############

sumpot = function(x=1:10,potencias=1:5){
	L=length(potencias)
	resultado=vector("list",length=L)
	
	for (i in 1:L) resultado[[i]]=sum(x^potencias[i])
	
	return(resultado)
}



#############
#			#
#	3.5.7	#
#			#
#############

distancia.origen = function(x,y){
	puntos=matrix(-1,length(x),length(y))
	
	for (i in 1:length(x)){
		for (j in 1:length(y)){
			puntos[i,j]=sqrt(x[i]^2+y[j]^2)
		}
	}
	
	return(puntos)
}


distancia.origen.producto_exterior = function(x,y){
	outer(x,y,function(x,y) sqrt(x^2+y^2))
}



#############
#			#
#	3.5.8	#
#			#
#############

dong1=function(numero = 100){
	x = vector(mode = "numeric", length = numero)
	y = vector(mode = "numeric", length = numero)
	x[1] = 1
	y[1] = 1

	for(i in 2:numero){
		if(sample(2,1) == 2)
			{m = 1}
		else
			{m = -1}
		
		x[i] = 0.5 * x[i - 1] + 0.5 * y[i - 1] + m
		y[i] = -0.5 * x[i - 1] + 0.5 * y[i - 1] + m
	}

	return(list(x = x[2:numero], y = y[2:numero]))
}

dong2=function(numero = 100){
	x = vector(mode = "numeric", length = numero)
	y = vector(mode = "numeric", length = numero)
	x[1] = 1
	y[1] = 1

	for(i in 2:numero){
		a = sample(3,1)
		if(a == 1){
			m = 0
			n = 0
		}
		else{
			if(a == 2){
				m = 0.5
				n = 0
			}else{
				m = 0.25
				n = 0.5
			}
		}
	
		x[i] = 0.5 * x[i - 1] + m
		y[i] = 0.5 * y[i - 1] + n
	}
	
	return(list(x = x[2:numero], y = y[2:numero]))
}


dong3=function(numero = 100){
	x = vector(mode = "numeric", length = numero)
	y = vector(mode = "numeric", length = numero)
	x[1] = 1
	y[1] = 1
	
	for(i in 2:numero){
		a = sample(100,1)
		
		if(a == 1){
			x[i] = 0
			y[i] = 0.25 * y[i - 1]
		}else{
			if(a <= 86){
				x[i] = 0.85 * x[i - 1] + 0.04 * y[i - 1]
				y[i] = -0.04 * x[i - 1] + 0.85 * y[i - 1] + 1.6
			}else{
				if(a <= 93){
					x[i] = 0.2 * x[i - 1] - 0.26 * y[i - 1]
					y[i] = 0.26 * x[i - 1] + 0.22 * y[i - 1]
				}else{
					x[i] = -0.15 * x[i - 1] + 0.28 * y[i - 1]
					y[i] = 0.26 * x[i - 1] + 0.24 * y[i - 1] + 1
				}
			}
		}
	}
	
	return(list(x = x[2:numero], y = y[2:numero]))
}
