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
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"  crossorigin="anonymous">
      <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
      <title>Editar Usuario</title>
   </head>
   <body>
      <%   

         String nombre = request.getParameter("nombre");
         String usuario = request.getParameter("usuario");
         String clave = request.getParameter("clave");
         String correo = request.getParameter("correo");


      %>
      <div class = "container">
         <h3>Edición de Usuario</h3>
         <form action="editarUsuario.jsp" method="post">
            <div class="mb-3">
               <label for="nombre" class="form-label">Nombre</label>
               <input type="text" class="form-control" value="<%= nombre%>" id="nombre" name="nombre" placeholder="Nombre completo" required>

            </div>
            <div class="mb-3">
               <label for="usuario" class="form-label">Usuario</label>
               <input type="text" class="form-control" value="<%= usuario%>" id="usuario" name="usuario" placeholder="Usuario" readonly>

            </div>
            <div class="mb-3">
               <label for="email" class="form-label">Correo Electrónico</label>
               <input type="email" class="form-control" value="<%= correo%>" id="correo" name="correo" placeholder="Correo Electrónico" required>

            </div>
            <div class="mb-3">
               <label for="exampleInputPassword1" class="form-label">Contraseña</label>
               <input type="password" class="form-control" value="<%= clave%>" id="clave" name="clave" required>
            </div>
           
            <br>
            <button type="submit" name="btnguardar" class="btn btn-success" title="Guardar Usuario">Guardar <i class="fa fa-save"></i></button>

            <a href="index.jsp" class="btn btn-danger">Cancelar <i class="fa fa-ban"></i></a>
            <input type="hidden" name="usuario" value="<%= usuario%>">
         </form>
      </div>  
      <%
         if (request.getParameter("btnguardar") != null) {
            try {
               //Conexión a la base de datos de MySql
               //Connection cnx = null;
               /*rol = request.getParameter("rol");
                  sexo = request.getParameter("sexo");*/
               Statement st = null;
               //ResultSet rs = null;
               st = cnx.createStatement();
               
               st.executeUpdate("update usuarios set nombre = '" + nombre + "', usuario = '" + usuario + "', clave = '" + clave + "', correo = '" + correo + "'"
                       + " where usuario = '" + usuario + "';");
               
               //redireccionarl al archivo agregarusuario.html
               request.getRequestDispatcher("index.jsp").forward(request, response);
            } catch (Exception e) {
               out.print("Error: " + e + " usuario " + usuario);
            }
         }
      %>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
   </body>
</html>