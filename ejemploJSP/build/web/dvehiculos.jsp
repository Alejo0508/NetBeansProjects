<%-- 
    Document   : dvehiculos
    Created on : 20 ene. 2021, 14:44:41
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Informacion del Vehiculo</title>
   </head>
   <body>
      <h1>Informacion del Vehiculo</h1>
      
      <!-- utilizacion del javabenas-->
      
      <jsp:useBean id="bvehiculo" class="vehiculoBeans.vehiculo">  <!-- se instancia la clase vehiculo por medio del id-->
      
            <!--esto es igual a usar un set-->
          <jsp:setProperty name = "bvehiculo" property="nroplaca"/> <!--toma el valor de la clase vehiculo-->
          <jsp:setProperty name = "bvehiculo" property="marca"/>
          <jsp:setProperty name = "bvehiculo" property="modelo"/>
      </jsp:useBean>

      <br>
      Nro placa: <jsp:getProperty name="bvehiculo" property="nroplaca"/><br> <!--esto es igual a usar un get que tomara los datos instanciados del usebeans-->
      Marca: <jsp:getProperty name="bvehiculo" property="marca"/><br>
      Modelo: <jsp:getProperty name="bvehiculo" property="modelo"/><br>
      <input type="text" value="<jsp:getProperty name="bvehiculo" property="modelo"/>"><br>
      
      <%  
      
         String placa = request.getParameter("nroplaca"); %>
         esta es la placa:
         <%= placa%>

      
   </body>
</html>
