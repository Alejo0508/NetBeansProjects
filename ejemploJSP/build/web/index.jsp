<%-- 
    Document   : listausuarios
    Created on : 30-dic-2020, 16:05:45
    Author     : Principal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ include file = "conexion.jsp" %> <%-- incluye un archivo --%>

<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Usuarios</title>
      <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"  crossorigin="anonymous">
   </head>
   <body>

      <div class ="container">

         <h1>Lista de Usuarios</h1>

         <table class="table table-hover">

            <thead>
               <tr>
                  <th scope="col" colspan="7">
                     <a href="formularioAgregar.html" title="Crear usuario" class="btn btn-warning"> Agregar Usuario <i class="fa fa-user-plus"></i></a>
                  </th>
               <tr>
                  <th scope="col">Usuario</th>
                  <th scope="col">Nombre</th>
                  <th scope="col">Email</th>
                  <th scope="col" colspan="2">Acciones</th>
               </tr>
               
              

            </thead>

            <tbody>
               <%
                  /*
                   Recordar agregar la librería por Projects - Libraries
                   clic derecho en Libraries y agregar librería de MySql JDBC Driver
                   */
                  request.setCharacterEncoding("UTF-8");//acentos desde mysql
                  
                  try {
                     //Conexión a la base de datos de MySql
                     //Connection cnx = null;
                     Statement st = null;
                     ResultSet rs = null;
                     /*
                       String URL_SERVIDOR_BD = "jdbc:mysql://localhost:3306/bdjsp";
                       final String USUARIO_BD = "root";
                       final String PASSWORD_BD = "";
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection cnx = DriverManager.getConnection(URL_SERVIDOR_BD, USUARIO_BD, PASSWORD_BD);
                      */
                     st = cnx.createStatement();
                     rs = st.executeQuery("Select * From usuarios");
                     
                     while (rs.next()) {
                        
               %>
               
               <tr>

                  <th scope="row"><%= rs.getString(1)%></th>

                  <td><%= rs.getString(2)%></td>
                  <td><%= rs.getString(4)%></td>
                  

                  <td><a href="editarUsuario.jsp?usuario=<%= rs.getString("usuario")%>&nombre=<%= rs.getString("nombre")%>&clave=<%= rs.getString("clave")%>&correo=<%= rs.getString("correo")%>" class="btn btn-warning"><i class="fa fa-pencil"></i></a></td>
                  
                  <td><a href="borrarUsuario.jsp?usuario=<%= rs.getString(1)%> " class="btn btn-danger" onClick = "return confirm('¿Está seguro de que desea eliminar este usuario?');"><i class="fa fa-trash"></i></a></td>
               </tr>

               <%
                     }

                  } catch (Exception e) {
                     out.print("Error al conectar con la base de datos");
                  }
               %>    

            </tbody>
            
         </table>
               
             
               
      </div>
               
      <script src="https://kit.fontawesome.com/e4f0235d6c.js" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
   </body>
</html>