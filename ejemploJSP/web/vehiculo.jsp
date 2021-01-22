<%-- 
    Document   : vehiculo
    Created on : 20 ene. 2021, 14:26:28
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="org.apache.catalina.util.ExtensionValidator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Ejemplo javaBeans</title>
   </head>
   <body>
      
      <form action="dvehiculos.jsp" method="post" >
         
         Nro placa: 
         <input type="text" id="nroplaca" name="nroplaca" placeholder="Nro placa" ><br>
         Modelo:
         <input type="text" id="modelo" name="modelo" placeholder="Modelo" ><br>
         Marca:
         <input type="text" id="marca" name="marca" placeholder="Marca" ><br>
         <input type="submit" id="enviar" name="enviar" value="Enviar">
        
         
      </form>
      
      
      
      
   </body>
</html>
