package holamundojava;

import java.util.Scanner;

public class ejercicioSeccion3 {

    public static void main(String args[]) {

        String nombre;
        String id = null;
        double precio;
        boolean envioGratuito = true;

        Scanner entrada = new Scanner(System.in);

        System.out.print("Ingrese el nombre: ");
        nombre = entrada.nextLine();

        System.out.print("Ingrese el Id: ");
        id = entrada.nextLine();

        System.out.print("Ingrese el precio: ");
        precio = Double.parseDouble(entrada.nextLine());

        System.out.println(nombre + "#" + id);
        System.out.println("$" + precio);
        if (envioGratuito) {
            System.out.println("Envio gratuito: " + envioGratuito);
        } else {
            System.out.println("Paga el envio");
        }

    }

}
