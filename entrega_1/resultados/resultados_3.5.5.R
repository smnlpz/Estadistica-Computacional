#########################################
#										#
#	PRUEBAS REALIZADAS CON LOS ASES		#
#										#
#########################################

> CuantasNecesita(10)
He necesitado llamar a CuatroAses()  33  veces para extraer 4 ases en menos de  10  extracciones.
> CuantasNecesita(10)
He necesitado llamar a CuatroAses()  1247  veces para extraer 4 ases en menos de  10  extracciones.
> CuantasNecesita(9)
He necesitado llamar a CuatroAses()  2093  veces para extraer 4 ases en menos de  9  extracciones.
> CuantasNecesita(8)
He necesitado llamar a CuatroAses()  2201  veces para extraer 4 ases en menos de  8  extracciones.
> CuantasNecesita(7)
He necesitado llamar a CuatroAses()  658  veces para extraer 4 ases en menos de  7  extracciones.
> CuantasNecesita(6)
He necesitado llamar a CuatroAses()  9415  veces para extraer 4 ases en menos de  6  extracciones.
> CuantasNecesita(5)
He necesitado llamar a CuatroAses()  32069  veces para extraer 4 ases en menos de  5  extracciones.
> CuantasNecesita(4)
He necesitado llamar a CuatroAses()  436115  veces para extraer 4 ases en menos de  4  extracciones.

> Distribucion.Ases=DistriAses(500)
> summary(Distribucion.Ases)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   10.0    70.0    98.5   107.2   137.2   346.0 

> Distribucion.Ases.Sin=DistriAses.Sin(500)
> summary(Distribucion.Ases.Sin)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  11.00   37.00   45.00   42.24   49.00   52.00 



#########################################
#										#
#	PRUEBAS REALIZADAS CON LAS MONEDAS	#
#										#
#########################################


> Distribucion.Monedas.5caras=DistriCaras(500)
> summary(Distribucion.Monedas.5caras)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   5.00    8.00   10.00   10.05   12.00   22.00 

> Distribucion.Monedas.20caras=DistriCaras(500,20)
> summary(Distribucion.Monedas.20caras)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  24.00   36.00   40.00   40.12   45.00   62.00 



> CuantasLlamadasNecesitaMonedas(10,15)
He necesitado llamar a ObtenerNCaras()  5  veces para obtener  10  caras en menos (o igual) de  15  tiradas.
> CuantasLlamadasNecesitaMonedas(10,14)
He necesitado llamar a ObtenerNCaras()  4  veces para obtener  10  caras en menos (o igual) de  14  tiradas.
> CuantasLlamadasNecesitaMonedas(10,13)
He necesitado llamar a ObtenerNCaras()  106  veces para obtener  10  caras en menos (o igual) de  13  tiradas.
> CuantasLlamadasNecesitaMonedas(10,12)
He necesitado llamar a ObtenerNCaras()  18  veces para obtener  10  caras en menos (o igual) de  12  tiradas.
> CuantasLlamadasNecesitaMonedas(10,11)
He necesitado llamar a ObtenerNCaras()  27  veces para obtener  10  caras en menos (o igual) de  11  tiradas.
> CuantasLlamadasNecesitaMonedas(10,10)
He necesitado llamar a ObtenerNCaras()  1941  veces para obtener  10  caras en menos (o igual) de  10  tiradas.


#########################################
#										#
#	PRUEBAS REALIZADAS CON LOS DADOS	#
#										#
#########################################

# Las funciones para los dados son exactamente iguales que para las monedas pero cambiando los valores posibles a samplear.

> Distribucion.Dado=DistriDado(500)
> summary(Distribucion.Dado)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   5.00   21.75   28.00   29.98   36.00   74.00 






