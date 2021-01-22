<%-- 
    Document   : conexion
    Created on : 20 ene. 2021, 18:43:30
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title></title>
   </head>
   <body>

      <%
         
     String user = "root";
     String password = "";
     String url = "jdbc:mysql://localhost:3310/restaurante";
     

    Class.forName("com.mysql.jdbc.Driver");
    Connection cnx = DriverManager.getConnection(url, user, password);

      %>




   </body>
</html>
