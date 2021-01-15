<%-- 
    Document   : borrarusuario
    Created on : 06-ene-2021, 9:28:32
    Author     : Principal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ include file = "conexion.jsp" %> <%-- incluye un archivo --%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrando Usuario</title>
    </head>
    <body>
        <%            
            Statement st = null;
            ResultSet rs = null;
            
            String usuario = request.getParameter("usuario");
            //if (confirm("Está seguro de eliminar este usuario?")) {
    
            
            try {
                st = cnx.createStatement();
                st.executeUpdate("delete from usuarios where usuario = '" + usuario + "';");
                //redireccionarl al archivo index.html
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } catch (Exception e) {
                out.print("Error: " + e);
            }
            //    }
        %>
    </body>
</html>