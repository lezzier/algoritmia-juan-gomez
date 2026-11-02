Algoritmo Bisiesto
	Definir anio Como Entero
	
    Escribir "Ingresa un año: "
    Leer anio
	
	si anio <= 0 Entonces
		Escribir "Numero invalido"
	SiNo
		Si (anio MOD 4 = 0 Y anio MOD 100 <> 0) O (anio MOD 400 = 0) Entonces
			Escribir anio, " es bisiesto"
		SiNo
			Escribir anio, " no es bisiesto"
		FinSi
    FinSi
	
FinAlgoritmo
