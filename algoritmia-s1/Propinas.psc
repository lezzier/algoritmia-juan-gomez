Algoritmo Propinas
	definir cuenta, porcPropina, propina, total, cadaUno Como Real
	
	Escribir "Cuenta: "
    Leer cuenta
	
    Escribir "% de propina: "
    Leer porcPropina
	
    Escribir"Personas: "
    Leer personas
	
	propina <- cuenta * porcPropina / 100
	total <- cuenta + propina 
	cadaUno <- total / personas
	
	Escribir "Total: " total ", Propina: " propina ", Cada uno paga: " cadaUno
	
FinAlgoritmo
