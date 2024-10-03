//EJERCICIO 1
//mayor de cinco numeros. Solicita tres numeros y determina cual es mayor de ellos.
Funcion mayorDeTresNumeros
	Escribir 'Algoritmo `Mostrar el mayor de tres n�meros`'
	definir num1, num2, num3 Como real
	escribir "Ingrese un n�mero:"
	leer num1
	escribir "Ingrese un n�mero:"
	leer num2
	escribir "Ingrese un n�mero:"
	leer num3
	mayor <- num1
	si num2 > mayor Entonces
		mayor <- num2
	FinSi
	si num3 > mayor Entonces
		mayor <- num3
	FinSi
	escribir "El mayor de los 3 es este n�mero: ", mayor
FinFuncion


//EJERCICIO 4
// Numero positivo , negativo o cero :pide al usuario que ingrese un numero y muestra s es positivo ,negativo o cero
Funcion numero_positivo_negativo_cero
	definir num como real
	Escribir 'Algoritmo `Mostrar si un n�mero es positivo, negativo o cero`'
	Escribir "Ingrese un n�mero con cualquiera de los siguientes signos (+) ; (-) : "
	leer num
	si num > 0 Entonces
		escribir "El n�mero ingresado es positivo"
	siNo
		si num < 0 Entonces 
			escribir "El n�mero ingresado es negativo"
		siNo
			escribir "El n�mero es cero"
		Fin Si
	Fin Si
	Fin Funcion

//EJERCICIO 7 
// solicita al usuario que ingrese un numero de dia del mes ( por ejemplo , del 1 al 31 ) y verifica si ese pertenece a la primera quincena ( dias 1-15) o a la segunnda quincena ( dias 16-31)
	Funcion quincena
		definir dia como entero 
		Escribir 'Algoritmo `Verificar la quincena del d�a`'
		Escribir "Por favor, ingresar un n�mero del 1 al 31 para saber su quincena: "
		leer dia 
		si dia >= 1 y dia <= 31 Entonces
			si dia >= 1 y dia <= 15 Entonces 
				escribir "Su pago es en la primera quincena"
			siNo
				escribir "Su pago es en la segunda quincena"
			FinSi
		FinSi
	Fin Funcion

// EJERCICIO 10
//calculadora de sueldo con aumento :pide al usuario que ingrese su salario actual y el porcentaje de aumento que recibira . calcula y muestra el nuevo salario  despues del aumento
	Funcion sueldo
		Escribir 'Algoritmo `Calculadora de sueldo con aumento`'
		definir salarioActual, salarioNuevo, aumento Como Real
		escribir "�Cu�l es su salario actual?"
		leer salarioActual
		escribir "�Cu�nto es su porcentaje de aumento?"
		leer aumento
		salarioNuevo = salarioActual + (salarioActual * aumento / 100)
		Escribir "Ahora su nuevo salario es de un total de: $", salarioNuevo
	Fin Funcion

//EJERCICIO 13
//Pregunta al  usuario cuantos a�os ha estado trabajando en una empresa ycalcula su bono de antiguedad . si ha trabajado mas de 5 a�os ,otorga un bono del 5% sobre su salario 
	Funcion antiguedad
		Escribir 'Algoritmo `Calcular bono por antig�edad`'
		definir anos, salario, bono, nuevoSueldo Como real 
		Escribir "�Cu�l es tu salario actual?"
		leer salario
		Escribir "�Cu�ntos a�os has trabajado en la empresa?"
		leer anos
		si anos >= 5 Entonces
			bono = salario * 0.05
			nuevoSueldo = bono + salario
			Escribir "Llevas trabajando m�s de 5 a�os, as� que tienes derecho a tu bono de antig�edad: $", bono
			Escribir "Tu nuevo sueldo con el total del bono es: $", nuevoSueldo
		siNo
			Escribir "No has trabajado m�s de 5 a�os, as� que no tienes derecho al bono de antig�edad. �Sigue trabajando que pronto te llegar�!"
			Escribir "Tu sueldo seguir� siendo el mismo: $", salario
		Fin Si
Fin Funcion

//EJERCICIO 16
// PERMITE AL USUARIO INGRESAR la cantidad de unidades de un producto que va a comprar y el producto unitario. Aplica descuentos por volumen de compra segun los siguientes reglas 
//20-40 unidades 15% de descuento 
// 41-90 unidades 20% de descuento
Funcion productos 
	Escribir 'Algoritmo `Descuentos por volumen de compra`'
	definir precioUnidad, totalSinDescuento, totalConDescuento, descuento Como Real
	definir unidades Como Entero
	escribir "�Cu�l es la cantidad de productos que vas a comprar?"
	leer unidades
	Escribir "Ponga el precio por unidad:"
	leer precioUnidad
	totalSinDescuento = unidades * precioUnidad 
	descuento = 0
	si unidades >= 20 y unidades <= 40 Entonces
		descuento = totalSinDescuento * 0.15
	siNo
		si unidades >= 41 y unidades <= 90 Entonces
			descuento = totalSinDescuento * 0.20
		FinSi
	Fin Si
	totalConDescuento = totalSinDescuento - descuento 
	escribir "El total sin descuento es: $", totalSinDescuento
	Escribir "El descuento aplicado es: $", descuento
	Escribir "El total a pagar con descuento es: $", totalConDescuento
Fin Funcion

// EJERCICIO 19 
//19.	La asociaci�n de vinicultores tiene como pol�tica fijar un  precio inicial al kilo de uva, la cual se clasifica en tipos A y B,  y adem�s en tama�os 1 y 2. Cuando se realiza la venta del  producto, �sta es de un solo tipo y tama�o, se requiere  determinar cu�nto recibir� un productor por la uva que  entrega en un embarque, considerando lo siguiente:
//Si es de tipo A, se le cargan $20 al precio inicial cuando es  de tama�o 1; y $30 si es de tama�o 2.
//Si es de tipo B, se rebajan $30 cuando es de tama�o 1, y  50 cuando es de tama�o 2.
//Realice un algoritmo para determinar la ganancia obtenida considerando un iva del 15%
Funcion vinicultores 
	Escribir 'Algoritmo `Asociaci�n de vinicultores`'
	Definir tipo Como Caracter
	Definir precioInicial, tamano, precioFinal, iva, ganancia Como real
	iva = 0.15
	Escribir "Ingrese el precio inicial por kilo de uva:"
	Leer precioInicial
	
	Escribir "Ingrese el tipo de uva (A o B):"
	Leer tipo
	Escribir "Ingrese el tama�o de la uva (1 o 2):"
	Leer tamano
	
	si tipo = "A" o tipo = 'a' Entonces
		si tamano = 1 Entonces
			precioFinal = precioInicial + 20
		siNo
			precioFinal = precioInicial + 30
		FinSi
	siNo
		si tipo = "B" o tipo = 'b' Entonces
			si tamano = 1 Entonces
				precioFinal = precioInicial - 30
			siNo
				precioFinal = precioInicial - 50
			FinSi
		Fin Si
		
		ganancia = precioFinal + (precioFinal * iva)
		Escribir "El precio final por kilo de uva es: $", precioFinal
		Escribir "La ganancia total incluyendo IVA es: $", ganancia
	fin si
	Fin Funcion

//EJERCICIO 21
//	Una compa��a de viajes cuenta con tres tipos de autobuses (A, B y C), cada uno tiene un precio por kil�metro recorrido por persona, los costos respectivos son $2.0, $2.5 y $3.0.
//Se requiere determinar el costo total y por persona del viaje considerando que cuando �ste se presupuesta debe haber un m�nimo de 20 personas, de lo contrario el cobro se realiza con base en este n�mero l�mite. Al final aplica el IVA del 15%.
FUNCION CalcularCostoViaje
	Escribir "Algoritmo `Compa��a de Viajes`"
	
	definir numeroPersonas, kilometrosRecorridos Como Entero
	definir costoPorKilometro, costoTotal, costoPorPersona, iva Como Real
	definir tipoAutobus Como Caracter
	
	Escribir "Elija el tipo de autob�s (A, B, C): "
	leer tipoAutobus
	
	si tipoAutobus = "A" o tipoAutobus = "a" entonces 
		costoPorKilometro = 2.0
	SiNo
		si tipoAutobus = "B" o tipoAutobus = "b" Entonces
			costoPorKilometro = 2.5
		SiNo
			si tipoAutobus = "C" o tipoAutobus = "c" Entonces
				costoPorKilometro = 3.0
			FinSi
		FinSi
	FinSi
	
	Escribir "�Cu�ntas personas viajar�n?"
	leer numeroPersonas
	
	si numeroPersonas < 20 Entonces
		numeroPersonas = 20
	FinSi
	
	Escribir "�Cu�ntos kil�metros recorrer�n?"
	leer kilometrosRecorridos 
	
	costoTotal = numeroPersonas * kilometrosRecorridos * costoPorKilometro
	iva = costoTotal * 0.15
	costoTotal = costoTotal + iva
	costoPorPersona = costoTotal / numeroPersonas
	
	Escribir "El costo del viaje incluyendo el IVA es de: $", costoTotal
	Escribir "El costo por persona es de: $", costoPorPersona
FinFuncion


//2.	Edad m�nima para votar: Pregunta la edad del usuario y verifica si es elegible para votar 
//(18 a�os o m�s).
//ENT:
//Definir (edad) como real
//edad=0
//Escribir "INGRESE SU EDAD PARA SUFRAGAR"
//LEER EDAD
//PRO:
//SI EDAD>=18 Entonces
//ESCRIBIR "USTED TIENE ", edad , "Puede sufragar"
//SiNo
//"usted no tiene la edad adecuada para sufragar"
//SAL:
//SI TIENE 18 O MAS EL USUARIO PUEDE SUFRAGAR, SEGUN LA CONDICION.
Funcion VOTAR
	Definir EDAD Como Real
	Escribir 'Algoritmo `Mostrar si tienes la edad requerida para sufragar`'
	Escribir "POR FAVOR INGRESAR SU EDAD PARA EL SUFRAGIO"
	Leer EDAD
	SI EDAD >= 18 Entonces
		Escribir "USTED TIENE: ", EDAD, " PUEDE SUFRAGAR"
	SiNo
		Escribir "USTED NO TIENE LA EDAD ADECUADA PARA SUFRAGAR"
	FinSi
FinFuncion

//5.	A�o bisiesto: Solicita al usuario un a�o y determina si es un a�o bisiesto o no. 
//Un a�o bisiesto es divisible por 4, pero no por 100, a menos que tambi�n sea divisible por 400.
//ENT:
//Definir a�o Como Entero
//Escribir "Ingrese el a�o:"
//Leer a�o
//PRO:
//Si (a�o % 4 = 0) Entonces
//Si (a�o % 100 = 0) Entonces
//Si (a�o % 400 = 0) Entonces
//Escribir "El a�o ", a�o, " es bisiesto."
//SiNo
//Escribir "El a�o ", a�o, " no es bisiesto."
//FinSi
//SiNo
//SAL:
//Escribir "El a�o ", a�o, " es bisiesto."
//FinSi
//SiNo
//Escribir "El a�o ", a�o, " no es bisiesto."
//FinSi
Funcion A�o_Bisiesto
	Definir a�o Como Entero
	Escribir 'Algoritmo `Mostrar que a�o es bisiesto`'
	Escribir "Ingrese el a�o:"
	Leer a�o
	SI (a�o % 4 = 0) Entonces
		SI (a�o % 100 = 0) Entonces
			SI (a�o % 400 = 0) Entonces
				Escribir "El a�o ", a�o, " es bisiesto."
			SiNo
				Escribir "El a�o ", a�o, " no es bisiesto."
			FinSi
		SiNo
			Escribir "El a�o ", a�o, " es bisiesto."
		FinSi
	SiNo
		Escribir "El a�o ", a�o, " no es bisiesto."
	FinSi
FinFuncion

//9.	Calculadora de precio con descuento: 
//Crea un programa que permita a un usuario ingresar el precio de un art�culo 
//y un porcentaje de descuento. El programa debe calcular y mostrar el precio final 
//despu�s del descuento aplicando el 15% del IVA
//ENT:
//Definir PRECIO_ORIGINAL , PRECIO_DESCUENTO , DESCUENTO , PORCENTAJE_DESCUENTO , IVA , PRECIO_FINAL Como Real
//PRECIO_ORIGINAL = 0
//PRECIO_DESCUENTO = 0
//DESCUENTO = 0
//PORCENTAJE_DESCUENTO = 0
//IVA = 0
//PRECIO_FINAL = 0
//Escribir "INGRESAR PRECIO ORIGINAL DEL ARTICULO EN ADQUIRIR"
//Leer PRECIO_ORIGINAL
//Escribir "INGRESAR EL PORCENTAJE DEL DESCUENTO SIN CARACTERES (%)"
//Leer PORCENTAJE_DESCUENTO
//PRO:
//DESCUENTO = PRECIO_ORIGINAL * PORCENTAJE_DESCUENTO / 100
//PRECIO_DESCUENTO = PRECIO_ORIGINAL - DESCUENTO
//IVA = PRECIO_DESCUENTO * 0.15
//PRECIO_FINAL = PRECIO_DESCUENTO + IVA
//SAL:
//Escribir "EL PRECIO CON EL DESCUENTO E IVA ES ", PRECIO_FINAL
Funcion CALCULADORA_DESCUENTO
	Definir PRECIO_ORIGINAL, PRECIO_DESCUENTO, DESCUENTO, PORCENTAJE_DESCUENTO, IVA, PRECIO_FINAL Como Real
	PRECIO_ORIGINAL = 0
	PRECIO_DESCUENTO = 0
	DESCUENTO = 0
	PORCENTAJE_DESCUENTO = 0
	IVA = 0
	PRECIO_FINAL = 0
	Escribir 'Algoritmo `Calculadora descuento`'
	Escribir "INGRESAR PRECIO ORIGINAL DEL ART�CULO A ADQUIRIR"
	Leer PRECIO_ORIGINAL
	Escribir "INGRESAR EL PORCENTAJE DEL DESCUENTO SIN CARACTERES (%)"
	Leer PORCENTAJE_DESCUENTO
	DESCUENTO = PRECIO_ORIGINAL * PORCENTAJE_DESCUENTO / 100
	PRECIO_DESCUENTO = PRECIO_ORIGINAL - DESCUENTO
	IVA = PRECIO_DESCUENTO * 0.15
	PRECIO_FINAL = PRECIO_DESCUENTO + IVA
	Escribir "EL PRECIO CON EL DESCUENTO E IVA ES ", PRECIO_FINAL
FinFuncion

//12: Calculadora de impuestos sobre el salario: Solicita al usuario que ingrese su salario anual y calcula el impuesto sobre la 
//renta seg�n las siguientes tasas: Hasta $10,000: 5% De $10,001 a $20,000: 10%;  m�s de $20,000: 15% 
//ENT:
//Definir SALARIO_ANUAL , IMPUESTOS Como Real
//SALARIO_ANUAL = 0
//Escribir "INGRESAR SU SALARIO ANUAL"
//LEER SALARIO_ANUAL
//PRO:
//SI SALARIO_ANUAL <= 10.000 Entonces
//IMPUESTO = SALARIO_ANUAL * 0.5
//SiNo
//Si salario_anual > 10000 Y salario_anual <= 20000 Entonces
//impuesto <- (10000 * 0.05) + ((salario_anual - 10000) * 0.10)
//SiNo
//Si el salario es mayor a 20000
//impuesto <- (10000 * 0.05) + (10000 * 0.10) + ((salario_anual - 20000) * 0.15)
//SAL:
//Escribir "El impuesto sobre su salario anual es: ", IMPUESTOS
Funcion CALCULADORA_IMPUESTO
	Definir SALARIO_ANUAL, IMPUESTO Como Real
	SALARIO_ANUAL = 0
	Escribir 'Algoritmo `Calculadora impuesto`'
	Escribir "INGRESAR SU SALARIO ANUAL"
	Leer SALARIO_ANUAL
	SI SALARIO_ANUAL <= 10000 Entonces
		IMPUESTO = SALARIO_ANUAL * 0.05
	SiNo
		SI SALARIO_ANUAL > 10000 Y SALARIO_ANUAL <= 20000 Entonces
			IMPUESTO = (10000 * 0.05) + ((SALARIO_ANUAL - 10000) * 0.10)
		SiNo
			IMPUESTO = (10000 * 0.05) + (10000 * 0.10) + ((SALARIO_ANUAL - 20000) * 0.15)
		FinSi
	FinSi
	Escribir "El impuesto sobre su salario anual es: ", IMPUESTO
FinFuncion

//15: pide al usuario que ingrese el total de sus compras mensuales durante un a�o. Si el total es superior a $500, aplica un descuento del 20%. Al final se debe aplicar el IVA del 15%. 
//ENT:
//Definir total_compras, compra_mensual, descuento, iva, total_final Como Real
//Definir i Como Entero
//total_compras <- 0
//descuento <- 0
//PRO:
//Para i <- 1 Hasta 12 Con Paso 1 Hacer
//	Escribir "Ingrese el total de sus compras del mes ", i, ": "
//	Leer compra_mensual
//	total_compras <- total_compras + compra_mensual
//FinPara
//Si total_compras > 500 Entonces
//	descuento <- total_compras * 0.20
//FinSi
//total_compras <- total_compras - descuento
//iva <- total_compras * 0.15
//total_final <- total_compras + iva
//SAL:
//Escribir "El total final despu�s de aplicar el descuento (si corresponde) y el IVA es: ", total_final
Funcion Compras_Mensuales
    Definir total_compras, compra_mensual, descuento, iva, total_final Como Real
    Definir i Como Entero
	Escribir 'Algoritmo `Compras mensuales`'
    total_compras = 0
    descuento = 0
    Para i <- 1 Hasta 12 Con Paso 1 Hacer
        Escribir "Ingrese el total de sus compras del mes ", i, ": "
        Leer compra_mensual
        total_compras = total_compras + compra_mensual
    FinPara
    Si total_compras > 500 Entonces
        descuento = total_compras * 0.20
    FinSi
    total_compras = total_compras - descuento
    iva = total_compras * 0.15
    total_final = total_compras + iva
    Escribir "El total final despu�s de aplicar el descuento (si corresponde) y el IVA es: ", total_final
FinFuncion


//23: determinar si un car�cter ingresado es una vocal, un d�gito, un s�mbolo de puntuaci�n o un espacio:
//ENT:
//Definir caracteress Como Caracter
//Escribir "Ingrese un car�cter: "
//Leer caracteress
//PRO:
//Si caracteress = 'a' o caracteress = 'e' o caracteress = 'i' o caracteress = 'o' o caracteress = 'u' o caracteress = 'A' O caracteress = 'E' O caracteress = 'I' O caracteress = 'O' O caracteress = 'U' Entonces
//Escribir "El car�cter es una vocal."
//Sino 
//Si caracteress >= '0' Y caracteress <= '9' Entonces
//Escribir "El car�cter es un d�gito."
//Sino 
//Si caracter = '.' O caracter = ',' O caracter = ';' O caracter = ':' Entonces
//Escribir "El car�cter es un s�mbolo de puntuaci�n."
//Sino 
//Si caracter = ' ' Entonces
//Escribir "El car�cter es un espacio."
//Sino
//SAL:
//Escribir "El car�cter no es ni una vocal, ni un d�gito, ni un s�mbolo de puntuaci�n, ni un espacio."
Funcion Tipo_De_Caracter
    Definir caracteress Como Caracter
	Escribir 'Algoritmo `Determinar tipo de car�cter`'
    Escribir "Ingrese un car�cter: "
    Leer caracteress
    Si caracteress = 'a' o caracteress = 'e' o caracteress = 'i' o caracteress = 'o' o caracteress = 'u' o caracteress = 'A' o caracteress = 'E' o caracteress = 'I' o caracteress = 'O' o caracteress = 'U' Entonces
        Escribir "El car�cter es una vocal."
    Sino 
		SI caracteress >= '0' Y caracteress <= '9' Entonces
			Escribir "El car�cter es un d�gito."
		Sino 
			SI caracteress = '.' o caracteress = ',' o caracteress = ';' o caracteress = ':' Entonces
				Escribir "El car�cter es un s�mbolo de puntuaci�n."
			Sino 
				SI caracteress = ' ' Entonces
					Escribir "El car�cter es un espacio."
				Sino
					Escribir "El car�cter no es ni una vocal, ni un d�gito, ni un s�mbolo de puntuaci�n, ni un espacio."
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

//24: comparar dos caracteres e indicar si son iguales, si el primero es menor o si el primero es mayor que el segundo:
//ENT:
//Definir caracter1, caracter2 Como Caracter
//Escribir "Ingrese el primer car�cter: "
//Leer caracter1
//Escribir "Ingrese el segundo car�cter: "
//Leer caracter2
//PRO:
//Si caracter1 = caracter2 Entonces
//Escribir "Los dos caracteres son iguales."
//Sino
//Si caracter1 < caracter2 Entonces
//Escribir "El primer car�cter es menor que el segundo."
//Sino
//SAL:
//Escribir "El primer car�cter es mayor que el segundo."

Funcion Comparar_Caracteres
    Definir caracter1, caracter2 Como Caracter
	Escribir 'Algoritmo `Comparar dos caracteres`'
    Escribir "Ingrese el primer car�cter: "
    Leer caracter1
	
    Escribir "Ingrese el segundo car�cter: "
    Leer caracter2
	
    Si caracter1 = caracter2 Entonces
        Escribir "Los dos caracteres son iguales."
    Sino
        Si caracter1 < caracter2 Entonces
            Escribir "El primer car�cter es menor que el segundo."
        Sino
            Escribir "El primer car�cter es mayor que el segundo."
        FinSi
    FinSi
FinFuncion

//25: comparar dos frases e indicar si son iguales, si la primera es menor o si la primera es mayor que la segunda:
//ENT:
//Definir frase1, frase2 Como Cadena
//Escribir "Ingrese la primera frase: "
//Leer frase1
//Escribir "Ingrese la segunda frase: "
//Leer frase2
//PRO:
//Si frase1 = frase2 Entonces
//Escribir "Las dos frases son iguales."
//Sino
//Si frase1 < frase2 Entonces
//Escribir "La primera frase es menor que la segunda."
//Sino
//SAL:
//Escribir "La primera frase es mayor que la segunda."

Funcion Comparar_Frases
	Escribir 'Algoritmo `Comparador de dos frases`'
    Definir frase1, frase2 Como Cadena
    Escribir "Ingrese la primera frase: "
    Leer frase1
    Escribir "Ingrese la segunda frase: "
    Leer frase2
    Si frase1 = frase2 Entonces
        Escribir "Las dos frases son iguales."
    Sino
        Si frase1 < frase2 Entonces
            Escribir "La primera frase es menor que la segunda."
        Sino
            Escribir "La primera frase es mayor que la segunda."
        FinSi
    FinSi
FinFuncion

Funcion Mostrar_si_el_primer_n�mero_es_m�ltiplo_del_segundo
	//  3.	Dado dos n�meros verificar si el primero es m�ltiplo del segundo.
	Definir n�meroos1,n�meroos2,n�meroos3 Como real
	Escribir 'Algoritmo `Mostrar si el primer n�mero es m�ltiplo del segundo`'
	Escribir 'Ingrese el primer n�mero:'
	Leer n�meroos1
	Escribir 'Ingrese el segundo n�mero:'
	Leer n�meroos2
	n�meroos3 = n�meroos1 mod n�meroos2
	si n�meroos1 mod n�meroos2 = 0 Entonces
		Escribir 'El n�mero ',n�meroos1,' es m�ltiplo de ',n�meroos2,' porque el residuo de ',n�meroos1,' dividido para ',n�meroos2,' es: ',n�meroos3
	SiNo
		Escribir 'El n�mero ',n�meroos1,' no es m�ltiplo de ',n�meroos2,' porque el residuo de ',n�meroos1,' dividido para ',n�meroos2,' es: ',n�meroos3
	FinSi 
	Escribir 'NOTA: Para saber si un numero es multiplo del otro, su residuo al dividir el primero al segundo debe ser 0'
FinFuncion

Funcion Mostrar_su_signo_zodiacal
//	6.	Pide al usuario que ingrese su mes y d�a de nacimiento, luego determina su signo zodiacal. 
	//      Puedes usar una serie de declaraciones if para comparar las fechas ingresadas 
	//      con las fechas l�mite de cada signo zodiacal.
	Definir MesNacimiento Como Caracter
	Definir DiaNacimiento Como Entero
	Escribir 'Algoritmo `Mostrar su signo zodiacal`'
	Escribir 'Ingrese su mes de nacimiento:'
	Leer MesNacimiento
	Escribir 'Ingrese su dia de nacimiento:'
	Leer DiaNacimiento
	si MesNacimiento = 'Enero' o MesNacimiento = 'ENERO' o MesNacimiento = 'enero' Entonces
		si DiaNacimiento >= 1 y DiaNacimiento <= 19 Entonces
			Escribir 'Tu signo zodiacal es: Capricornio '
		SiNo
			si DiaNacimiento >= 20 y DiaNacimiento <= 31 Entonces
				Escribir 'Tu signo zodiacal es: Acuario  '
			SiNo
				Escribir 'Su dia de nacimiento es incorrecro. Intentelo denuevo.'
			FinSi
		FinSi
    SiNo
		si MesNacimiento = 'Febrero' o MesNacimiento = 'FEBRERO' o MesNacimiento = 'febrero' Entonces
			si DiaNacimiento >= 1 y DiaNacimiento <= 18 Entonces
				Escribir 'Tu signo zodiacal es: Acuario  '
			SiNo
				si DiaNacimiento >= 19 y DiaNacimiento <= 29 Entonces
					Escribir 'Tu signo zodiacal es: Piscis   '
				SiNo
					Escribir 'Su dia de nacimiento es incorrecro. Intentelo denuevo.'
				FinSi
			FinSi
		SiNo
			si MesNacimiento = 'Marzo' o MesNacimiento = 'MARZO' o MesNacimiento = 'marzo' Entonces
				si DiaNacimiento >= 1 y DiaNacimiento <= 20 Entonces
					Escribir 'Tu signo zodiacal es: Piscis   '
				SiNo
					si DiaNacimiento >= 21 y DiaNacimiento <= 31 Entonces
						Escribir 'Tu signo zodiacal es: Aries    '
					SiNo
						Escribir 'Su dia de nacimiento es incorrecro. Intentelo denuevo.'
					FinSi
				FinSi
			SiNo
				si MesNacimiento = 'Abril' o MesNacimiento = 'ABRIL' o MesNacimiento = 'abril' Entonces
					si DiaNacimiento >= 1 y DiaNacimiento <= 19 Entonces
						Escribir 'Tu signo zodiacal es: Aries  '
					SiNo
						si DiaNacimiento >= 20 y DiaNacimiento <= 30 Entonces
							Escribir 'Tu signo zodiacal es: Tauro    '
						SiNo
							Escribir 'Su dia de nacimiento es incorrecro. Intentelo denuevo.'
						FinSi
					FinSi
				SiNo
					si MesNacimiento = 'Mayo' o MesNacimiento = 'MAYO' o MesNacimiento = 'mayo' Entonces
						si DiaNacimiento >= 1 y DiaNacimiento <= 20 Entonces
							Escribir 'Tu signo zodiacal es: Tauro   '
						SiNo
							si DiaNacimiento >= 21 y DiaNacimiento <= 31 Entonces
								Escribir 'Tu signo zodiacal es: G�minis   '
							SiNo
								Escribir 'Su dia de nacimiento es incorrecro. Intentelo denuevo.'
							FinSi
						FinSi
					SiNo
						si MesNacimiento = 'Junio' o MesNacimiento = 'JUNIO' o MesNacimiento = 'junio' Entonces
							si DiaNacimiento >= 1 y DiaNacimiento <= 20 Entonces
								Escribir 'Tu signo zodiacal es: G�minis  '
							SiNo
								si DiaNacimiento >= 21 y DiaNacimiento <= 30 Entonces
									Escribir 'Tu signo zodiacal es: C�ncer    '
								SiNo
									Escribir 'Su dia de nacimiento es incorrecro. Intentelo denuevo.'
								FinSi
							FinSi
						SiNo
							si MesNacimiento = 'Julio' o MesNacimiento = 'JULIO' o MesNacimiento = 'julio' Entonces
								si DiaNacimiento >= 1 y DiaNacimiento <= 22 Entonces
									Escribir 'Tu signo zodiacal es: C�ncer   '
								SiNo
									si DiaNacimiento >= 23 y DiaNacimiento <= 31 Entonces
										Escribir 'Tu signo zodiacal es: Leo    '
									SiNo
										Escribir 'Su dia de nacimiento es incorrecro. Intentelo denuevo.'
									FinSi
								FinSi
							SiNo
								si MesNacimiento = 'Agosto' o MesNacimiento = 'AGOSTO' o MesNacimiento = 'agosto' Entonces
									si DiaNacimiento >= 1 y DiaNacimiento <= 22 Entonces
										Escribir 'Tu signo zodiacal es: Leo   '
									SiNo
										si DiaNacimiento >= 23 y DiaNacimiento <= 31 Entonces
											Escribir 'Tu signo zodiacal es: Virgo    '
										SiNo
											Escribir 'Su dia de nacimiento es incorrecro. Intentelo denuevo.'
										FinSi
									FinSi
								SiNo
									si MesNacimiento = 'Septiembre' o MesNacimiento = 'SEPTIEMBRE' o MesNacimiento = 'septiembre' Entonces
										si DiaNacimiento >= 1 y DiaNacimiento <= 22 Entonces
											Escribir 'Tu signo zodiacal es: Virgo   '
										SiNo
											si DiaNacimiento >= 23 y DiaNacimiento <= 30 Entonces
												Escribir 'Tu signo zodiacal es: Libra    '
											SiNo
												Escribir 'Su dia de nacimiento es incorrecro. Intentelo denuevo.'
											FinSi
										FinSi
									SiNo
										si MesNacimiento = 'Octubre' o MesNacimiento = 'OCTUBRE' o MesNacimiento = 'octubre' Entonces
											si DiaNacimiento >= 1 y DiaNacimiento <= 22 Entonces
												Escribir 'Tu signo zodiacal es: Libra   '
											SiNo
												si DiaNacimiento >= 23 y DiaNacimiento <= 31 Entonces
													Escribir 'Tu signo zodiacal es: Escorpio    '
												SiNo
													Escribir 'Su dia de nacimiento es incorrecro. Intentelo denuevo.'
												FinSi
											FinSi
										SiNo
											si MesNacimiento = 'Noviembre' o MesNacimiento = 'NOVIEMBRE' o MesNacimiento = 'noviembre' Entonces
												si DiaNacimiento >= 1 y DiaNacimiento <= 21 Entonces
													Escribir 'Tu signo zodiacal es: Escorpio   '
												SiNo
													si DiaNacimiento >= 22 y DiaNacimiento <= 30 Entonces
														Escribir 'Tu signo zodiacal es: Sagitario    '
													SiNo
														Escribir 'Su dia de nacimiento es incorrecro. Intentelo denuevo.'
													FinSi
												FinSi
											SiNo
												si MesNacimiento = 'Diciembre' o MesNacimiento = 'DICIEMBRE' o MesNacimiento = 'diciembre' Entonces
													si DiaNacimiento >= 1 y DiaNacimiento <= 21 Entonces
														Escribir 'Tu signo zodiacal es: Sagitario   '
													SiNo
														si DiaNacimiento >= 22 y DiaNacimiento <= 31 Entonces
															Escribir 'Tu signo zodiacal es: Capricornio    '
														SiNo
															Escribir 'Su dia de nacimiento es incorrecro. Intentelo denuevo.'
														FinSi
													FinSi
												SiNo
													Escribir 'Su mes de nacimiento es incorrecto. Intentelo denuevo.'
												FinSi	
											FinSi	
										FinSi	
									FinSi	
								FinSi	
							FinSi	
						FinSi	
					FinSi	
				FinSi	
			FinSi	
		FinSi
	FinSi
FinFuncion

Funcion Mostrar_dia_de_la_semana_dependiendo_el_n�mero_ingresado
	//  8.	D�a de la semana: Pide al usuario que ingrese un n�mero del 1 al 7, 
	//      donde 1 representa el domingo, 2 el lunes, 3 el martes, y as� sucesivamente. 
	//      Mostrar el nombre del d�a de la semana correspondiente al n�mero ingresado.
	Definir NumeroSemana Como Entero
	Escribir 'Algoritmo `Mostrar dia de la semana dependiendo el n�mero ingresado`'
	Escribir 'Ingrese un n�mero del 1 al 7:'
	Leer NumeroSemana
	si NumeroSemana = 1 Entonces
		Escribir 'El dia de la semana correspondiente al ',NumeroSemana,' es: Domingo'
	SiNo
		si NumeroSemana = 2 Entonces
			Escribir 'El dia de la semana correspondiente al ',NumeroSemana,' es: Lunes'
		SiNo
			si NumeroSemana = 3 Entonces
				Escribir 'El dia de la semana correspondiente al ',NumeroSemana,' es: Martes'
			SiNo
				si NumeroSemana = 4 Entonces
					Escribir 'El dia de la semana correspondiente al ',NumeroSemana,' es: Miercoles'
				SiNo
					si NumeroSemana = 5 Entonces
						Escribir 'El dia de la semana correspondiente al ',NumeroSemana,' es: Jueves'
					SiNo
						si NumeroSemana = 6 Entonces
							Escribir 'El dia de la semana correspondiente al ',NumeroSemana,' es: Viernes'
						SiNo
							si NumeroSemana = 7 Entonces
								Escribir 'El dia de la semana correspondiente al ',NumeroSemana,' es: Sabado'
							SiNo
								Escribir 'El numero ingresado es incorrecto. intentelo denuevo.'
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion Calculadora_de_compra_con_m�ltiples_art�culos
	//  11.	Calculadora de compra con m�ltiples art�culos: Permite al usuario ingresar el precio y la cantidad de varios art�culos que est� comprando. 
	//      Calcula el total de la compra y aplica un descuento del 10% si el total es mayor a $100.
	Definir Cantidad Como Entero
	Definir Precio Como Real
	Escribir 'Algoritmo `Calculadora de compra con m�ltiples art�culos`'
	Precio = 1
	Cantidad = 1
	Escribir 'Cuantos producto va a calcular su precio y cantidad ?: '
	Leer CalculoProducto
	Para i<-1 Hasta CalculoProducto Con Paso 1 Hacer
		Escribir 'Ingrese el precio del producto n�mero ',i,':' Sin Saltar
		Leer Precio
		Escribir 'Ingrese la cantidad del producto n�mero ',i,':' Sin Saltar
		Leer Cantidad
		Escribir ''
		Total = Total + Precio * Cantidad
	Fin Para
	si CalculoProducto = 1 Entonces
		si Total > 100 Entonces
			Descuentoo = 10
			DESCUENTO = Descuentoo / 100
			TotalDescuento = -(Total * DESCUENTO) + Total
			Escribir 'El costo total de ',CalculoProducto,' producto calculado con descuento del ',Descuentoo,'% es: ',TotalDescuento,'$'
		SiNo
			Escribir 'El costo total de ',CalculoProducto,' producto calculado es: ',Total,'$'
		FinSi
	SiNo
		si Total > 100 Entonces
			Descuentoo = 10
			DESCUENTO = Descuentoo / 100
			TotalDescuento = -(Total * DESCUENTO) + Total
			Escribir 'El costo total de los ',CalculoProducto,' productos calculados con descuento del ',Descuentoo,'% es: ',TotalDescuento,'$'
		SiNo
			Escribir 'El costo total de los ',CalculoProducto,' productos calculados es: ',Total,'$'
		FinSi
	FinSi
FinFuncion

Funcion Mostrar_costo_dependiendo_la_distancia_de_envio
	//  14.	Crea un programa que permita al usuario ingresar la distancia de env�o y calcule el costo del env�o. 
	//      Si la distancia es inferior a 50 km, el costo es de $10. Si la distancia es de 50 km o m�s, el costo es de $20.
	Definir DistanciaEnvio, CostoEnvio Como Real
	Escribir 'Algoritmo `Mostrar costo dependiendo la distancia de envio`'
	Escribir 'Ingrese la distancia de env�o (evaluada en kilometro):'
	Leer DistanciaEnvio
	si DistanciaEnvio < 50 Entonces
		CostoEnvio = 10
	SiNo
		CostoEnvio = 20
	FinSi
	Escribir 'El costo de envio en una distancia de ',DistanciaEnvio,'km es: ',CostoEnvio,'$'
FinFuncion

Funcion Mostrar_el_calculo_de_horas_de_servicio
	//  17.	Pregunta al usuario cu�ntas horas de servicio necesita y calcula el costo total. 
	//      Si las horas son m�s de 10, aplica un descuento del 20%.
	Definir PrecioServicio, HorasServicio, Descuento Como Real
	Descuento = 20
	DESCUENTO = 20/100
	Escribir 'Algoritmo `Mostrar el calculo de horas de servicio`'
	Escribir 'Ingrese el precio del servicio:'
	Leer PrecioServicio
	Escribir 'Ingrese las horas del servicio usado:'
	Leer HorasServicio
	CalculoServicio = PrecioServicio * HorasServicio
	si HorasServicio > 10 Entonces
		DescuentoServicio = -(CalculoServicio * DESCUENTO) + CalculoServicio
		Escribir 'El costo total del servicio con descuento del ',Descuento,'% es: ',DescuentoServicio
	SiNo
		Escribir 'El costo total del servicio es: ',CalculoServicio
	FinSi
FinFuncion

Funcion empresa_dedicada_a_ofrecer_banquetes
	//  18.	"XYZ" es una empresa dedicada a ofrecer  banquetes; sus tarifas son las siguientes: 
	//      El costo de platillo por persona es de $95.00,  pero si el n�mero de personas es mayor a 200  pero menor o igual a 300, el costo es de $85.00.  
	//      Para m�s de 300 personas el costo por platillo es  de $75.00.
//		Se requiere un algoritmo que ayude a determinar el presupuesto que se debe presentar a los clientes 
	//      que deseen realizar un evento aplicando un descuento del 205% con un IVA final del 15%
	Definir CostoPlatilloCaracter Como Caracter
	Definir CostoPlatillo, Descuento, Iva, NumeroPersonas Como Real
	NumeroPersonas = 0
	CostoPlatillo = 0
	CostoPlatilloCaracter = ''
	DescuentoCaracter = '205%'
	Descuento = 0.205
	Iva = 0.15
	IvaCaracter = '15%'
	Escribir 'Algoritmo ``XYZ` una empresa dedicada a ofrecer banquetes`'
	Escribir 'Ingrese el n�mero de personas que desean el banquete:'
	Leer NumeroPersonas
	si NumeroPersonas > 200 y NumeroPersonas <= 300 Entonces
		CostoPlatillo = 85
		CostoPlatilloCaracter = '85'
	SiNo
		si NumeroPersonas > 300 Entonces
			CostoPlatillo = 75
			CostoPlatilloCaracter = '75'
		SiNo
			CostoPlatillo = 95
			CostoPlatilloCaracter = '95'
		FinSi
	FinSi
	PrecioPorPersona = NumeroPersonas * CostoPlatillo
	PrecioPorPersonaDescuento = PrecioPorPersona * Descuento
	PrecioPorPersonaDescuentoTotal = PrecioPorPersona - PrecioPorPersonaDescuento
	IvaDescuentoTotal = PrecioPorPersonaDescuentoTotal * Iva
	IvaDescuentoTotalFinal = IvaDescuentoTotal + PrecioPorPersonaDescuentoTotal 
	Escribir 'El precio del platillo de ',CostoPlatilloCaracter,'$ por persona es: ',PrecioPorPersona,'$'
	Escribir 'El descuento del ',DescuentoCaracter,' es: ',PrecioPorPersonaDescuento,'$'
	Escribir 'El precio total con descuento es :',PrecioPorPersonaDescuentoTotal,'$'
	Escribir 'El IVA del ',IvaCaracter,' al precio total con descuento es: ',IvaDescuentoTotal,'$'
	Escribir 'El precio total con IVA y DESCUENTO es: ',IvaDescuentoTotalFinal,'$'
FinFuncion

Funcion Viaje_de_estudio
	//  20.	El director de una escuela est� organizando un viaje de estudios, 
	//      y requiere determinar cu�nto debe cobrar a cada alumno y cu�nto debe pagar a la compa��a de viajes por el servicio. 
	//      La forma de cobrar es la siguiente: si son 200 alumnos o m�s, 
	//      el costo por cada alumno es de $20.00; de 100 a 199 alumnos, el costo es de $30.00, 
	//      de 50 a 99, de $40.00, 
	//      y si son menos de 50, el costo de la renta del autob�s es de $50 y si son menos de 20 el costo es $2000, sin importar el n�mero de alumnos.
//		Realice un algoritmo que permita determinar el pago a la compa��a de autobuses y lo que debe pagar cada alumno por el viaje 
	//      considerando un descuento del 10% adicional
	Definir NumeroAlumno,CostoPorAlumno, Compa�iaAutobusesPagar como real
	Descuento = 10
	DESCUENTOO = 10/100
	Escribir 'Algoritmo `Viaje de estudio`'
	Escribir 'Ingrese el n�mero de estudiantes que iran de viaje:'
	Leer NumeroAlumno
	si NumeroAlumno >= 200 Entonces
		CostoPorAlumno = 20
	SiNo
		si NumeroAlumno >= 100 y NumeroAlumno <= 199 Entonces
			CostoPorAlumno = 30
		SiNo
			si NumeroAlumno >= 50 y NumeroAlumno <= 99 Entonces
				CostoPorAlumno = 40
			SiNo
				si NumeroAlumno < 50 y NumeroAlumno > 20 Entonces
					CostoPorAlumno = 50
				SiNo
					CostoPorAlumno = 2000
				FinSi
			FinSi
		FinSi
	FinSi
	Compa�iaAutobusesPagar = CostoPorAlumno * NumeroAlumno
	PagarDescuento = -(Compa�iaAutobusesPagar * DESCUENTOO) + Compa�iaAutobusesPagar
	EstudiantePorPagar = PagarDescuento / NumeroAlumno 
	Escribir 'El precio de ',CostoPorAlumno,'$ por pagar a la compa�ia de viaje por alumno por el servicio es: ',Compa�iaAutobusesPagar,'$'
	Escribir 'El costo total con un descuento del ',Descuento,'% al precio por pagar a la compa�ia es: ',PagarDescuento,'$'
	Escribir 'El Costo que tiene que pagar cada alumno es: ',EstudiantePorPagar,'$'
FinFuncion

Funcion Mostrar_si_un_car�cter_es_una_letra_del_alfabeto
	//  22.	Dado un car�cter indicar si es una letra del alfabeto.
	Definir caracterr Como Caracter
	Escribir 'Algoritmo `Mostrar si un car�cter es una letra del alfabeto`'
	Escribir 'Ingrese un solo car�cter:'
	Leer caracterr
	Si (caracterr >= 'A' Y caracterr <= 'Z') O (caracterr >= 'a' Y caracterr <= 'z') Entonces
        Escribir "El car�cter `',caracterr,'` es una letra del alfabeto."
    Sino
        Escribir "El car�cter `',caracterr,'` no es una letra del alfabeto."
    FinSi
FinFuncion

Algoritmo TAREA_GRUPAL_ALGORITMO
	Definir opc Como Caracter
	Mientras opc <> '0' Hacer
	Limpiar Pantalla
	Escribir '---------------------- MEN� PSeInt ----------------------'
	Escribir ' 1)  Algoritmo `Mostrar el mayor de tres n�meros`'
	Escribir ' 2)  Algoritmo `Mostrar si tienes la edad requerida para sufragar`'
	Escribir ' 3)  Algoritmo `Mostrar si el primer n�mero es m�ltiplo del segundo`'
	Escribir ' 4)  Algoritmo `Mostrar si un n�mero es positivo, negativo o cero`'
	Escribir ' 5)  Algoritmo `Mostrar qu� a�o es bisiesto`'
	Escribir ' 6)  Algoritmo `Mostrar su signo zodiacal`'
	Escribir ' 7)  Algoritmo `Verificar si un d�a del mes pertenece a la primera o segunda quincena`'
	Escribir ' 8)  Algoritmo `Mostrar d�a de la semana dependiendo del n�mero ingresado`'
	Escribir ' 9)  Algoritmo `Calculadora de precio con descuento`'  // Cambio de nombre
	Escribir '10)  Algoritmo `Calculadora de sueldo con aumento`'
	Escribir '11)  Algoritmo `Calculadora de compra con m�ltiples art�culos`'
	Escribir '12)  Algoritmo `Calculadora de impuestos sobre el salario`' // Cambio de nombre
	Escribir '13)  Algoritmo `Calcular bono por antig�edad`'
	Escribir '14)  Algoritmo `Mostrar costo dependiendo la distancia de env�o`'
	Escribir '15)  Algoritmo `Compras mensuales`'
	Escribir '16)  Algoritmo `Ingresar la cantidad de unidades de un producto que va a comprar y el precio por unidad`.'
	Escribir '17)  Algoritmo `Mostrar el c�lculo de horas de servicio`'
	Escribir '18)  Algoritmo `XYZ: una empresa dedicada a ofrecer banquetes`'
	Escribir '19)  Algoritmo `Asociaci�n de vinicultores`'
	Escribir '20)  Algoritmo `Viaje de estudio`'
	Escribir '21)  Algoritmo `Compa��a de viajes`'
	Escribir '22)  Algoritmo `Mostrar si un car�cter es una letra del alfabeto`'
	Escribir '23)  Algoritmo `Mostrar si un car�cter ingresado es una vocal, un d�gito, un s�mbolo de puntuaci�n o un espacio`'
	Escribir '24)  Algoritmo `Mostrar si dos caracteres son iguales, si el primero es menor o si el primero es mayor que el segundo`'
	Escribir '25)  Algoritmo `Comparar si dos frases son iguales, si el primero es menor o si el primero es mayor que el segundo`'
	Escribir ' 0)  Finalizaci�n del algoritmo'
	Escribir ''
	Escribir 'Elije una opci�n (del 0 al 25).......' Sin Saltar 
	Leer opc
	
	//----------------------------------------------     OPCIONES     ----------------------------------------------//
		Segun opc Hacer
			'1':
				Limpiar Pantalla
				mayorDeTresNumeros
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'2':
				Limpiar Pantalla
				VOTAR
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'3':
				Limpiar Pantalla
				Mostrar_si_el_primer_n�mero_es_m�ltiplo_del_segundo
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'4':
				Limpiar Pantalla
				numero_positivo_negativo_cero
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'5':
				Limpiar Pantalla
				A�o_Bisiesto
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'6':
				Limpiar Pantalla
				Mostrar_su_signo_zodiacal
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'7':
				Limpiar Pantalla
				quincena
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'8':
				Limpiar Pantalla
				Mostrar_dia_de_la_semana_dependiendo_el_n�mero_ingresado
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'9':
				Limpiar Pantalla
				CALCULADORA_DESCUENTO
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'10':
				Limpiar Pantalla
				sueldo
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'11':
				Limpiar Pantalla
				Calculadora_de_compra_con_m�ltiples_art�culos
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'12':
				Limpiar Pantalla
				CALCULADORA_IMPUESTO
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'13':
				Limpiar Pantalla
				antiguedad
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'14':
				Limpiar Pantalla
				Mostrar_costo_dependiendo_la_distancia_de_envio
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'15':
				Limpiar Pantalla
				Compras_Mensuales
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'16':
				Limpiar Pantalla
				productos
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'17':
				Limpiar Pantalla
				Mostrar_el_calculo_de_horas_de_servicio
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'18':
				Limpiar Pantalla
				empresa_dedicada_a_ofrecer_banquetes
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'19':
				Limpiar Pantalla
				vinicultores
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'20':
				Limpiar Pantalla
				Viaje_de_estudio
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'21':
				Limpiar Pantalla
				CalcularCostoViaje
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'22':
				Limpiar Pantalla
				Mostrar_si_un_car�cter_es_una_letra_del_alfabeto
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'23':
				Limpiar Pantalla
				Tipo_De_Caracter
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'24':
				Limpiar Pantalla
				Comparar_Caracteres
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'25':
				Limpiar Pantalla
				Comparar_Frases
				Escribir 'Pulsa una tecla para regresar al men�....'
				Esperar Tecla
			'0':
		        Escribir ''
				Escribir '              ----------------------------------------!!ADI�S��----------------------------------------'
				Escribir 'Pulsa una tecla para finalizar el algoritmo....'
			De Otro Modo:
				Limpiar Pantalla
				Escribir '`',opc,'`', ' no es una opcion correcta. Intentalo de nuevo'
				Escribir 'Pulsa una tecla para continuar........'
				Esperar Tecla
		Fin Segun
	FinMientras
FinAlgoritmo
