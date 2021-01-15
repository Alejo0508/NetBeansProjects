package holamundojava;

import java.util.Scanner;

public class HolaMundo {

    public static void main(String args[]) {

        // SECCION 1 y 2 /////////////////////////////////////////////////

        /*  int miVariableEntera = 10;
        System.out.println(miVariableEntera);
                
        miVariableEntera = 5;
        System.out.println(miVariableEntera);
        
        String miVariableCadena = "Saludos";
        System.out.println(miVariableCadena);
        
        miVariableCadena = "Adios";
        System.out.println(miVariableCadena);
        
        // var hace inferencia de tipos en java
        var miVariableEntera2 = 15;
        System.out.println(miVariableEntera2);
        
        var miVaiableCadena2 = "nueva cadena";
        System.out.println("miVaiableCadena2 = " + miVaiableCadena2); 
        
        var usuario = "alejo";
        var titulo = "programador";
        var union = titulo + " " + usuario;
        System.out.println("union = " + union);
        
        var i = 3;
        var j = 4;
        
        System.out.println(i + j); //suma de numeros
        System.out.println(i + j + " " + usuario);
        
        
        var nombre = "karla";
        System.out.println("nueva linea: \n" + nombre);
        System.out.println("tabulador: \t" + nombre);
        System.out.println("retroceso: \b" + nombre); 
        
        
        System.out.print("Ingrese el titulo: ");
        
        Scanner entrada = new Scanner (System.in);
        var titulo = entrada.nextLine();
        System.out.print("Ingrese el autor: ");
        var autor = entrada.nextLine();
        
        System.out.println( titulo + " fue escrito por: " + autor); */ 
        
        
        /// SECCION 3 ///////////////////////////////////////////////
        
        /* byte numeroByte = (byte) 129;

        System.out.println("Valor Byte: " + numeroByte);
        System.out.println("Valor Minimo Byte: " + Byte.MIN_VALUE);
        System.out.println("Valor maximo Byte: " + Byte.MAX_VALUE);

        short numeroShort = 10;

        System.out.println(" ");
        System.out.println("Valor Short: " + numeroShort);
        System.out.println("Valor Minimo Short: " + Short.MIN_VALUE);
        System.out.println("Valor maximo Short: " + Short.MAX_VALUE);

        int numeroint = 200;

        System.out.println(" ");
        System.out.println("Valor int: " + numeroint);
        System.out.println("Valor Minimo int: " + Integer.MIN_VALUE);
        System.out.println("Valor maximo int: " + Integer.MAX_VALUE);

        long numeroLong = 500;

        System.out.println(" ");
        System.out.println("Valor Long: " + numeroLong);
        System.out.println("Valor Minimo Long: " + Long.MIN_VALUE);
        System.out.println("Valor maximo Long: " + Long.MAX_VALUE); 
       
       
       
       var numeroEntero = 10;
        System.out.println("numeroEntero = " + numeroEntero);
        
        var numeroDouble = 10.5;
        System.out.println("numeroDouble = " + numeroDouble);
       
        var numeroFlorat = 10.0F;
        System.out.println("numeroFlorat = " + numeroFlorat);  
       
       
       var miCaracter = 'a';
        System.out.println("miCaracter = " + miCaracter);
        
        var varChar = '\u0021';
        System.out.println("varChar = " + varChar);
        
        char varCharDeciman = 33;
        System.out.println("varCharDeciman = " + varCharDeciman);
        
        int variableEnteraSimbolo = '!';
        System.out.println("variableEnteraSimbolo = " + variableEnteraSimbolo);  
       
        
        boolean varBoolean = false;

        if (varBoolean) {
            System.out.println("La bandera es verdadera");
        } else {
            System.out.println("la bandera es falsa");
            System.out.println("");
        }

        var edad = 28;
        var esAdulto = edad >= 18;
        
        if (esAdulto){
            System.out.println("eres adulto");
        }
        else{
            System.out.println("eres menor de edad");  
        } 
        
        var edad = 28;
        
        var consola = new Scanner (System.in);
        System.out.print("Proporciona tu edad: ");
        
        ////
        
        edad = Integer.parseInt(consola.nextLine());
        System.out.println("edad = " + edad);
        
        System.out.println("");  
        
        var consola = new Scanner (System.in);
        
        var edadTexto = String.valueOf(10);
        System.out.println("edadTexto = " + edadTexto);
        
        var caracter = "hola".charAt(3);
        System.out.println("caracter = " + caracter);
        
        System.out.print("Propociona un caracter: ");
        
        caracter = consola.nextLine().charAt(0);
        System.out.println("caracter = " + caracter);
        
        
        /// SECCION 4 ///////////////////////////////////////////////////////
        
        int a = 3, b = 2;
        var resultado = a + b ;
        
        System.out.println("resultado de la suma = " + resultado);
        
        resultado = a - b;
        System.out.println("resultado de la resta = " + resultado);
        
        resultado = a * b;
        System.out.println("resultado de la multiplicacion = " + resultado);
        
        var resultado2 =  (double) a / b;
        System.out.println("resultado de la division = " + resultado2);
        
        
        // operador de modulo que es la division y se pone el residuo 
        
        resultado = a % b;
        System.out.println("resultado modulo= " + resultado);
        
        
        if (a % 2 == 0)
        {
            System.out.println("es un numero par");
        }
        else
        {
            System.out.println("es in numero impar");
        }
        
        
        int alto, ancho;
        
        Scanner entrada = new Scanner (System.in);
        
        System.out.println("");
        System.out.print("Ingrese el alto: ");
        alto = entrada.nextInt();
        
        System.out.print("Ingrese el ancho: ");
        ancho = entrada.nextInt();
        
        
        var area = alto * ancho;
        var perimetro = (alto + ancho) * 2;
        
        System.out.println("perimetro = " + perimetro);
        System.out.println("area = " + area); 
        
        
        int a = 3, b = 2;
        int c = a + 5 - b;
        
        System.out.println("c = " + c);
        
        a += 1;
        System.out.println("a = " + a); 
        
        
        var a = 3;
        var b = -a;
        
        System.out.println("a = " + a);
        System.out.println("b = " + b);

        var c = true;
        var d = !c;
        
        System.out.println("c = " + c);
        System.out.println("d = " + d);
        
        // incremento
        
        // preincremento (sibolo antes de la variable)
        
        var e = 3;
        var f = ++ e; // primero incrementa la variable y depsues se usa el vañlor
        
        System.out.println("e = " + e);
        System.out.println("f = " + f);
        
        // posincremento (el simbolo va despues de la variagle
        
        var g = 5;
        var h = g++; // primero se usa el valor de la variable y despues se incrementa
        
        System.out.println("g = " + g);
        System.out.println("h = " + h);
        
        // decremento
        // predecremento
        
        var i = 2;
        var j = -- i;
        
        System.out.println("i = " + i);
        System.out.println("j = " + j);
        
        // posdecremento
        
        var k = 2;
        var l = k--;
        
        System.out.println("k = " + k);
        System.out.println("l = " + l); 
        
        
        var a = 3;
        var b = 2;
        
        var c = (a == b);
        System.out.println("c = " + c);
        
        
        var d = (a != b);
        System.out.println("d = " + d);
        
        var cadena = "hola";
        var cadena2 = "hola";
        
        var e = cadena == cadena2;
        System.out.println("e = " + e);
        
        var f = cadena.equals(cadena2);
        System.out.println("f = " + f);
        
        var g = a >= b;
        System.out.println("g = " + g);
        
        if (a % 2 == 0)
        {
            System.out.println("numero par");
        }
        else
        {
            System.out.println("numero impar");
        }
        
        
        var edad = 10;
        var adulto = 18;
        
        if (edad >= adulto)
        {
            System.out.println("es adulto");
        }
        else
        {
            System.out.println("es menor de edad");
        } 
        
        
        //operador ternario
        
        var resultado = (1 > 2) ? "verdadero" : "falso";
        System.out.println("resultado = " + resultado);
        
        
        var edad = 30;
        var adulto = 18;
        
        var resultado2 = (edad >= adulto) ? "es adulto" : "es menor";
        System.out.println("resultado2 = " + resultado2); 
        
        
        int numero1, numero2;
        
        Scanner entrada = new Scanner (System.in);
        
        System.out.print("Digite el numero 1: ");
        numero1 = entrada.nextInt();
        
        System.out.print("Digite el numero 2: ");
        numero2 = entrada.nextInt();
        
        var resultado = (numero1 > numero2) ? "numero 1 mayor" : "numero 2 mayor";
        System.out.println("resultado = " + resultado);  
        
        
        /// seccion 5 ////////////////////////////////////////////////////////////
        
        
        var estacion = "estacion desconocida";
        
        Scanner entrada = new Scanner (System.in);
        
        System.out.print("Ingrese el mes: ");
        var mes = entrada.nextInt();
        
        if (mes == 1 || mes == 2 || mes == 12)
        {
            estacion = "invierno";
        }
        else if (mes == 3 || mes == 4 || mes == 5)
        {
            estacion = "primavera";
        }
        else if (mes == 6 || mes == 7 || mes == 8)
        {
            estacion = "verano";
        }    
        else if (mes == 9 || mes == 10 || mes == 11)
        {
            estacion = "otono";
        }
        System.out.println("estacion = " + estacion); 
        
        
        /// switch ///
        
        var numero = 2;
        var numeroTexto = "Valor Desconocido";
        
        switch (numero)
        {
            case 1:
                numeroTexto = "Numero uno";
                break;
            case 2:
                numeroTexto = "Numero Dos";
                break;
            case 3:
                numeroTexto = "Numero Tres";
                break;
            case 4:
                numeroTexto = "Numero Cuatro";
                break;
            default:
                numeroTexto = "Caso no encontrado";
        }
        System.out.println("numeroTexto = " + numeroTexto);
        
        var mes = 1;
        var estacion = "estacion desconocida";
        
        switch (mes)
        {
            case 1: case 2: case 12:
                estacion = "invierno";
                break;
            case 3: case 4: case 5:
                estacion = "primavetra";
                break;  
            case 6: case 7: case 8:
                estacion = "verano";
                break; 
            case 9: case 10: case 11:
                estacion = "otono";
                break;                
        }
        System.out.println("estacion = " + estacion); 
        
        
       // EJERCICIO SECCION 5 //
        var nota = "sin nota";
        
        Scanner entrada = new Scanner (System.in);
        
        System.out.print("Ingrese la calificacion: ");
         var calificacion = entrada.nextDouble();
        
        if (calificacion >= 9 || calificacion == 10)
        {
            nota = "A";
        }
        else if (calificacion <9 && calificacion >= 8)
        {
            nota = "B";
        }
        else if (calificacion <8 && calificacion >= 7)
        {
            nota = "C";
        }
        else if (calificacion <7 && calificacion >= 6)
        {
            nota = "D";
        }
        else if (calificacion <6 || calificacion == 0)
        {
            nota = "F";
        }
        System.out.println("nota = " + nota);  
        
        
        // SECCION 6 //////////////////////////////////////////////////////////
        
        var contador = 0;
        
        while (contador < 3)
        {
            System.out.println("contador = " + contador);
            contador++;
        
        }
        
        for (var contador1 = 0; contador1 < 3; contador1++)
        {
            if (contador1 % 2 == 0)
            {
                System.out.println("contador1 = " + contador1);
                break;
            }
        }  */
                
        inicio:
        for (var contador2 = 0; contador2 < 3; contador2++)
        {
            if (contador2 % 2 != 0)
                continue inicio;
            {
                System.out.println("contador2 = " + contador2);

            }
        }
        
        
        
        
        
        
    }

}
