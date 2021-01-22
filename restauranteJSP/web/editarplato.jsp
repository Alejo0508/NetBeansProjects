<%-- 
    Document   : editarplato
    Created on : 20 ene. 2021, 19:44:19
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>
<%@page import="java.sql.*"%>
<%@ include file = "conexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
      <link rel="stylesheet" href="estilos.css"/>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Editar Plato</title>
      <link rel="shortcut icon" href="img/tienda.png" type="image/x-icon">
   </head>
   <body style="background-color: #546e7a;">

      <header>

         <nav class="navbar navbar-dark bg-dark">
            <div class="container-fluid">
               <a class="navbar-brand" href="index.jsp">
                  <img src="img/tienda.png" width="30" height="24" class="d-inline-block align-top" id="imagennav">
                  Restaurante
               </a>
            </div>
         </nav>


      </header>


      <main>

         <div class="container">
            <div class="row">

               <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                  <div class="carousel-inner tamañocarrusel">
                     <div class="carousel-item active">
                        <img src="img/food4.1.jpg" class="d-block w-100" alt="..." style="border-radius: 10px;">
                     </div>
                  </div>
               </div>

            </div>
         </div>


         <%            
            String nombre = request.getParameter("nombre");
            String precio = request.getParameter("precio");
            String activo = request.getParameter("activo");
            String codigo = request.getParameter("codigo");
         %>
         
         <div class="container" style="margin-top: 30px;" >
            <div class="row">
               <h3 style="margin-left: 560px; color: whitesmoke;" >Editar Plato</h3>

            </div>
         </div>

         <div class="container" style="margin-top: 30px;">

            <form action="editarplato.jsp" method="post">

               <div class="row justificado">

                  <div class="col-8">
                     <label for="inputEmail4" class="form-label" style="color: whitesmoke;">Nombre del Plato</label>
                     <input type="text" class="form-control" placeholder="Nombre" aria-label="Nombre" value="<%= nombre%>" id="nombre" name="nombre">
                  </div>

                  <div class="row justificado">

                     <div class="col-4">
                        <label for="inputEmail4" class="form-label margelprecio" style="color: whitesmoke;">Precio</label>
                        <input type="text" class="form-control " placeholder="Precio" aria-label="Precio" value="<%= precio%>" id="precio" name="precio">
                     </div>

                     <div class="col-4">
                        <label for="inputState" style="color:#ffffff; margin-top: 30px; margin-left: 30px;">Disponibilidad</label>

                        <div class="form-check">
                           <input class="form-check-input" type="radio" name="activo" id="activo" value="si" style="margin-left: 5px;">
                           <label class="form-check-label" for="flexRadioDefault1" style="color: whitesmoke; margin-left: 30px;">
                              Si
                           </label>
                        </div>
                        <div class="form-check">
                           <input class="form-check-input" type="radio" name="activo" id="activo" value="no" style="margin-left: 5px;">
                           <label class="form-check-label" for="flexRadioDefault2" style="color: whitesmoke; margin-left: 30px;">
                              No
                           </label>
                        </div>




                     </div>

                  </div>

                  <div class="col-6 justificado">
                     <br>
                     <button type="submit" name="btnguardar" class="btn btn-dark" title="Guardar Usuario" style="color: green; margin-left: 150px; margin-right: 40px; width: 150px;" >Guardar <i class="fa fa-save justificado"></i></button>

                     <a href="index.jsp" class="btn btn-dark" style="color: red; width: 150px;" >Cancelar <i class="fa fa-ban justificado"></i></a>
                     <input type="hidden" name="codigo" value="<%= codigo%>">

                  </div>

            </form>
         </div>   


         <%
            if (request.getParameter("btnguardar") != null) {
               try {

                  Statement st = null;

                  st = cnx.createStatement();

                  st.executeUpdate("update plato set nombre = '" + nombre + "', precio = '" + precio + "', activo = '" + activo + "'" + " where codigo = '" + codigo + "';");

                  response.sendRedirect("index.jsp");
               } catch (Exception e) {
                  out.print("Error: " + e + " codigo " + codigo);
               }
            }
         %>








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
