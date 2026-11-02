Algoritmo Semaforo
	Definir unidades Como Entero
	
    Escribir Sin Saltar "Unidades disponibles: "
    Leer unidades
	
    Si unidades < 0 Entonces
        Escribir "ERROR: valor inválido"
    SiNo
        Si unidades = 0 Entonces
            Escribir "ROJO: agotado"
        SiNo
            Si unidades <= 10 Entonces
                Escribir "AMARILLO: pedir"
            SiNo
                Escribir "VERDE: todo bien"
            FinSi
        FinSi
    FinSi
FinAlgoritmo
