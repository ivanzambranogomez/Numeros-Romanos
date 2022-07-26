Funcion uni<-Unidad(u)//Función para las unidades
	Dimension unidades[10];
		unidades[0]<-"";
		unidades[1]<-"I";
		unidades[2]<-"II";
		unidades[3]<-"III";
		unidades[4]<-"IV";
		unidades[5]<-"V";
		unidades[6]<-"VI";
		unidades[7]<-"VII";
		unidades[8]<-"VIII";
		unidades[9]<-"IX";
		uni<-unidades[u];
FinFuncion

Funcion dec<-Decena(d)//Función para los múltiplos de 10 hasta 90
	Dimension decenas[10];
		decenas[0]<-"";
		decenas[1]<-"X";
		decenas[2]<-"XX";
		decenas[3]<-"XXX";
		decenas[4]<-"XL";
		decenas[5]<-"L";
		decenas[6]<-"LX";
		decenas[7]<-"LXX";
		decenas[8]<-"LXXX";
		decenas[9]<-"XC";
		dec<-decenas[d];
FinFuncion

Funcion cen<-Centena(c)//Función para los múltiplos de 100 hasta 900
	Dimension centenas[10];
		centenas[0]<-"";
		centenas[1]<-"C";
		centenas[2]<-"CC";
		centenas[3]<-"CCC";
		centenas[4]<-"CD";
		centenas[5]<-"D";
		centenas[6]<-"DC";
		centenas[7]<-"DCC";
		centenas[8]<-"DCCC";
		centenas[9]<-"CM";
		cen<-centenas[c];
FinFuncion

Funcion millar<-Mil(m)//Función para los múltiplos de 1000 hasta 3000
	dimension multiplosmil[4]; 
		multiplosmil[0]<-"";
		multiplosmil[1]<-"M";
		multiplosmil[2]<-"MM";
		multiplosmil[3]<-"MMM";
		millar<-multiplosmil[m];
FinFuncion

Algoritmo Numeros_Romanos_Version_3
		//Algoritmo para convertir números naturales a números romanos desde el 1 hasta el 3.999(Tres mil novecientos noventa y nueve)
		definir num Como real;
		Definir copy, unidades, decenas, centenas, mmil Como Entero;
		Escribir "Convertir a Número Romano";
		Escribir "Digite un Número: ";
		Leer num;
		copy<-trunc(num);
		si (num<1) o (num-copy>0) Entonces//Condicional para validar los números menores que 1 y los números decimales
			Escribir num," no se puede convertir a número romano por que esto solo aplica para números mayores que cero y números naturales.";
		SiNo
			mmil<-trunc(copy/1000);
			centenas<-trunc((copy mod 1000)/100);
			decenas<-trunc((copy mod 100)/10);
			unidades<-trunc(copy mod 10);
			Escribir num," en número romano se escribe así: ",Mil(mmil),Centena(centenas),Decena(decenas),Unidad(unidades);
		FinSi
FinAlgoritmo