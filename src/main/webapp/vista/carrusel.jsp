<%-- 
    Document   : carrusel
    Created on : 5 feb. 2021, 20:55:37
    Author     : User
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<String> imagenes = (ArrayList<String>)request.getAttribute("imagenes");
        %>
        <div class="container">
            <div id="demo" class="carousel slide" data-ride="carousel">

             <!-- Indicators -->
             <ul class="carousel-indicators">
               <li data-target="#demo" data-slide-to="0" class="active"></li>
               <li data-target="#demo" data-slide-to="1"></li>
               <li data-target="#demo" data-slide-to="2"></li>
             </ul>

             <!-- The slideshow -->
             <div class="carousel-inner">
                 <% for(int i = 0; i<imagenes.size(); i++) {
                 String cadenaActiva = "";
                 if ( i == 0) { cadenaActiva = "active";} %>
               <div class="carousel-item <%=cadenaActiva%>">
                   <img class="w-100" src="<%= imagenes.get(i) %>" alt="Los Angeles">
               </div>
                <% } %>
             </div>

             <!-- Left and right controls -->
             <a class="carousel-control-prev" href="#demo" data-slide="prev">
               <span class="carousel-control-prev-icon"><</span>
             </a>
             <a class="carousel-control-next" href="#demo" data-slide="next">
               <span class="carousel-control-next-icon">></span>
             </a>

           </div>
        </div>
                 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
             <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
             <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </body>
</html>
