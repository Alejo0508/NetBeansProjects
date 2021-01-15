<%-- 
    Document   : index
    Created on : 13 ene. 2021, 15:43:50
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Primera pagina con JSP</title>
   </head>

   <body>

      <header>

         <h1>Hola mundo desde JSP</h1>

         <%
            out.print("Impresion 1 desde JSP");
            out.print("<br> Otro Parrafo");

            for (int i = 1; i <= 10; i++) {

               out.print("<br>" + i);

            }
         %>

         <table border ="1" >

            <%
   for (int j = 1; j <= 10; j++) {%>

            <td> <%=j%>  </td>

            <%}

            %>

         </table><br>


         <%!
            String nombre = "cesde";

            public int suma(int valor1, int valor2) {
               return valor1 + valor2;
            }

            public int resta(int valor1, int valor2) {
               return valor1 - valor2;
            }

            public int multi(int valor1, int valor2) {
               return valor1 * valor2;
            }

            public int div(int valor1, int valor2) {
               int mvalor = 0;

               if (valor2 != 0) {
                  mvalor = valor1 / valor2;
               }
               return mvalor;
            }
         %>

         <div style = "background: gray; color: yellow">

            <%                                          out.print(suma(9, 4));
               out.print("<br>");
               out.print(resta(12, 5));
               out.print("<br>");
               out.print(multi(5, 3));
               out.print("<br>");
               out.print(div(12, 6));
               out.print("<br>");
               out.print(div(23, 0));
               out.print("<br>");

               if (div(24, 6) == 0) {
                  out.print("No se puede dividir por 0");
                  out.print("<br>");
               } else {
                  out.println(div(24, 6));
               }

            %>

         </div>

      </header>

      <main>

      </main>

      <footer>

      </footer>



   </body>
</html>
