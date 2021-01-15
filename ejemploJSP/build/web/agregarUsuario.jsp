<%-- 
    Document   : dusuario
    Created on : 30-dic-2020, 13:59:34
    Author     : Principal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ include file = "conexion.jsp" %> <%-- incluye un archivo --%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Usuario</title>
    </head>
    <body>
       
        <%
            
            try {
               
                //Conexión a la base de datos de MySql
                //Connection cnx = null;
                String nombre = request.getParameter("nombre");
                String usuario = request.getParameter("usuario");
                String clave = request.getParameter("clave");
                String correo = request.getParameter("correo");

                Statement st = null;
                //ResultSet rs = null;
                st = cnx.createStatement();
                st.executeUpdate("insert into usuarios (nombre, usuario, clave,correo)"
                        + "values ('" + nombre + "','" + usuario + "','" + clave + "','" + correo + "');");
                
                //redireccionarl al archivo index.jsp
                request.getRequestDispatcher("index.jsp").forward(request, response);
                
            } catch (Exception e) {
                out.print(e);
            }
            
        %>
        
    </body>
</html>