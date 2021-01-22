<%-- 
    Document   : agregarPlatoFormulario
    Created on : 21 ene. 2021, 19:14:10
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ include file = "conexion.jsp" %>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title></title>
   </head>
   <body>

      <%                
         try {

            String nombre = request.getParameter("nombre");
            String precio = request.getParameter("precio");
            String activo = request.getParameter("activo");

            Statement st = null;
            
            st = cnx.createStatement();
            st.executeUpdate("insert into plato (nombre, precio, activo)"
                    + "values ('" + nombre + "','" + precio + "','" + activo + "');");

           response.sendRedirect("index.jsp");

         } catch (Exception e) {
            out.print(e);
         }

      %>


   </body>
</html>
