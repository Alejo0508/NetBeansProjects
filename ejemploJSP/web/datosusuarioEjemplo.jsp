<%-- 
    Document   : datosusuario
    Created on : 14 ene. 2021, 14:48:26
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>JSP Page</title>
   </head>
   <body>
      <h1>Datos de Usuario Ingresados</h1>
      
      <p>
         
         <%
            
            //mostrar usuario
            out.print(request.getParameter("usuario"));
                       
         %>       
         
      </p>
      
               
      <form action="action">
         
         <label for ="name" class="form-label"> nombre </label>
         
         <input type="text" class="form-control" id="name" name ="name" value = "<%=request.getParameter("usuario") %>" >
            
      </form>
         
         
         
      
   </body>
</html>
