Algoritmo CajeroParqueadero
	Definir valor, total, carros Como Entero
	
	total <- 0
	carros <- 0
	
	Leer valor
	Mientras valor <> 0 Hacer
		total <- total + valor
		carros <- carros + 1
		Leer valor
	FinMientras
	
	Escribir "Carros atendidos: ", carros
	Escribir "Total recaudado: ", total
FinAlgoritmo
