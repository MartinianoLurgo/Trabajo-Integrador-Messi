Algoritmo adivinarElNumero
	// DELCLARACI�N DE VARIABLES
	Definir generarMaximo,generarNumero,adivinar,nuevoJuego,intentos Como Entero
	generarMaximo <- 0
	generarNumero <- 0
	adivinar <- 0
	nuevoJuego <- 0
	intentos <- 0
	// REGLAS DEL JUEGO
	Escribir ('BIENVENIDO AL JUEGO ADIVINA EL N�MERO')
	Escribir ('')
	Escribir ('1� Primero, digite un valor m�ximo para generar un n�mero para avinar correspondido entre (0 y el maximo)')
	Escribir ('2� Segundo, empiece a adivinar el n�mero ATENCI�N! Tiene intentos ilimitados')
	Escribir ('3� Tercero, el juego te ira dando pistas para hallar el n�mero')
	Escribir ('Cuando adivines el n�mero el juego finalizara')
	Escribir ('')
	// LEER N�MERO M�XIMO
	Escribir 'Introduce un valor m�ximo(Entero y Positivo)'
	Leer generarMaximo
	Borrar Pantalla
	Mientras (generarMaximo)=(CARACTER) Hacer
		Escribir 'Introduce un valor m�ximo(Entero y Positivo)'
		Leer generarMaximo
	FinMientras
	// GENERAR N�MERO ALEATORIO
	generarNumero <- azar(generarMaximo)
	Escribir 'Digite su 1� adivinanza'
	Leer adivinar
	// COMPROBACI�N DE NO CARACTER
	Mientras (adivinar)=(CARACTER) Hacer
		Escribir 'Debe ser un numero(Entero y Positivo)'
		Leer adivinar
	FinMientras
	intentos <- 1
	Mientras adivinar<>generarNumero Hacer
		intentos <- intentos+1
		Si adivinar>generarNumero Entonces
			Escribir 'El n�mero es menor, intenta de vuelta'
			Leer adivinar
			// COMPROBACI�N DE NO CARACTER
			Mientras (adivinar)=(CARACTER) Hacer
				Escribir 'Debe ser un numero(Entero y Positivo)'
				Leer adivinar
			FinMientras
		SiNo
			Escribir 'El n�mero es mayor, intenta de vuelta'
			Leer adivinar
			// COMPROBACI�N DE NO CARACTER
			Mientras (adivinar)=(CARACTER) Hacer
				Escribir 'Debe ser un numero(Entero y Positivo)'
				Leer adivinar
			FinMientras
		FinSi
	FinMientras
	Borrar Pantalla
	Escribir 'Felicitaciones!! Adivinaste el n�mero ',generarNumero,' en ',intentos,' intentos'
FinAlgoritmo
