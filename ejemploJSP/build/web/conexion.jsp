<%-- 
    Document   : conexion
    Created on : 14 ene. 2021, 15:41:13
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
   <body><br><br>

<%
     String user = "root";
     String password = "";
     String url = "jdbc:mysql://localhost:3310/usuariojsp";
     

    Class.forName("com.mysql.jdbc.Driver");
    Connection cnx = DriverManager.getConnection(url, user, password);
%>

   </body>
</html>