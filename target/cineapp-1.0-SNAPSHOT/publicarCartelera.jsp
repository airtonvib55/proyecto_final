<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : publicarFuncion
    Created on : 22 jun de 2024, 10:35:55
    Author     : JAVIER APAZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="estilos.css">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
        <title>Publicar funcion</title>
    </head>
    <body>        
        <div class="divFondoI">
            <div class="divDegradado">
                <div class="divHeader">
                    <div class="divHI">
                        <a href="home.jsp">Logo</a>
                        <a href="home.jsp">cineStar</a>
                    </div>
                    <div class="divHD">
                        <a href="buscar.jsp">Buscar</a>
                        <a href="iniciarc.jsp">Iniciar sesion</a>
                    </div>
                </div>

                <!--<div class="divRelleno"></div>-->

                <div class="divCuerpo">
                    <div class="divForm">
                        <div class="divCajaForm">

                            <h2 id="tituloLogin">Añadir a <span>Cartelera</span></h2>

                            <form action="ControladorCartelera" method="post">

                                <label for="pelicula">Pelicula</label>
                                <select name="pelicula" id="pelicula">
                                    
                                    <c:forEach var="item" items="${lista}">
                                        <option value="${item.getId_pelicula()}">${item.getNombre_p()}</option>
                                    </c:forEach>

                                </select>

                                
                                <label for="tipo">Tipo</label>
                                <select name="tipo" id="tipo">
                                    <option value="cartelera">Cartelera</option>
                                    <option value="estreno">Estreno</option>
                                    <option value="proximamente">Proximamente</option>
                                </select>


                                <div class="divFormBotones">
                                    <input type="submit" id="btnLogin" class="btnRojo" value="Añadir">
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
