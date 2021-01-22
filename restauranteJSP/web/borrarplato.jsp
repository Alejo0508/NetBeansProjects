<%-- 
    Document   : borrarplato
    Created on : 20 ene. 2021, 22:18:11
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
         Statement st = null;
         ResultSet rs = null;

         String codigo = request.getParameter("codigo");
        

         try {
            st = cnx.createStatement();
            st.executeUpdate("delete from plato where codigo = '" + codigo + "';");
            
            response.sendRedirect("index.jsp");
         } catch (Exception e) {
            out.print("Error: " + e);
         }
        
      %>



   </body>
</html>
