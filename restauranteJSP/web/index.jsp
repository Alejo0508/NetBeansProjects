<%-- 
    Document   : index
    Created on : 20 ene. 2021, 11:37:57
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ include file = "conexion.jsp" %>
<!DOCTYPE html>
<html>
   <head>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
      <link rel="stylesheet" href="estilos.css"/>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

      <title>Restaurante</title>
      <link rel="shortcut icon" href="img/tienda.png" type="image/x-icon">
   </head>
   <body style="background-color: #546e7a;">

      <header>

         <!-- Image and text -->
         <nav class="navbar navbar-dark bg-dark">
            <div class="container-fluid">
               <a class="navbar-brand" href="#">
                  <img src="img/tienda.png" width="30" height="24" class="d-inline-block align-top" id="imagennav">
                  Restaurante
               </a>
            </div>
         </nav>



      </header>

      <main>

         <div class="container margenformulario">
            <div class="row">

               <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                  <div class="carousel-inner tamañocarrusel">
                     <div class="carousel-item active">
                        <img src="img/food2.jpg" class="d-block w-100" alt="..." style="border-radius: 10px;">
                     </div>
                  </div>
               </div>

            </div>
         </div>



         <div class="container margentabla">
            <div class="row">

               <table class="table textotabla2">
                  <thead class="table-dark">

                     <tr class="tamtabla">
                        <th scope="col">Codigo</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Disponible</th>
                        <th scope="col" colspan="2" style="width: 2px;">Acciones </th>

                     </tr>
                  </thead>
                  <tbody>

                     <%                        request.setCharacterEncoding("UTF-8");//acentos desde mysql

                        try {

                           Statement st = null;
                           ResultSet rs = null;

                           st = cnx.createStatement();
                           rs = st.executeQuery("Select * From plato");

                           while (rs.next()) {

                     %>


                     <tr>
                        <th scope="row" style="color: whitesmoke;" ><%= rs.getString(1)%></th>
                        <td style="color: whitesmoke;"><%= rs.getString(2)%></td>
                        <td style="color: whitesmoke;"><%= rs.getString(3)%></td>
                        <td style="color: whitesmoke; width: 180px;"><%= rs.getString(4)%></td>

                        <td><a href="editarplato.jsp?nombre=<%= rs.getString("nombre")%>&precio=<%= rs.getString("precio")%>&activo=<%= rs.getString("activo")%>&codigo=<%= rs.getString("codigo")%>" class="btn btn-transparent"><i class="fa fa-pencil"></i></a></td>


                        <td style="width: 180px;" ><a href="borrarplato.jsp?codigo=<%= rs.getString("codigo")%> " class="btn btn-transparent" onClick = "return confirm('¿Está seguro de que desea eliminar este usuario?');"><i class="fa fa-trash"></i></a></td>


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
         </div>


         <div class="container">
            <div class="row col-3" >
               <a href="agregarPlato.html" title="Crear usuario" class="btn btn-dark" style="margin-left: 150%;margin-top: 20px; "> Agregar Plato <i class="fa fa-user-plus"></i></a>
            </div>
         </div>






      </main>



      <footer style="margin-top: 50px; background-color: #263238; text-align: center; width: 100%;">

         <div class="container" style="background-color: #263238; text-align: center; width: 100%;">
            <div class="row" style="background-color: #263238; text-align: center; width: 100%;">
               <div class="col-12 col-md-6">
                  <p style="color: #e0e0e0; text-align: center; font-family: 'Montserrat', sans-serif; margin-top: 20px;" >Alejandro Montoya Gaviria</p>
                  <p style="color: #e0e0e0; text-align: center; font-family: 'Montserrat', sans-serif; margin-top: 20px;">Estudiante en tecnologia en desarrollo de software y tecnica en programacion
                     full stack</p>
               </div>

               <div class="col-12 col-md-6">
                  <a href="https://www.instagram.com/alejo_montoyag/">
                     <i class="fab fa-instagram fa-5x " style=" margin-top: 20px; color: whitesmoke;"></i>
                  </a>
                  <a href="https://github.com/Alejo0508">
                     <i class="fab fa-github fa-5x" style=" margin-top: 20px; color: whitesmoke; margin-left: 50px;"  ></i>
                  </a>
               </div>
            </div>
         </div>

      </footer>

      <script src="https://kit.fontawesome.com/e4f0235d6c.js" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>  
   </body>
</html>
