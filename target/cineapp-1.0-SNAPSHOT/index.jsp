<%-- 
    Document   : index
    Created on : 24 may de 2024, 11:13:56
    Author     : JAVIER APAZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos.css">
        <title>Inicio</title>
    </head>

    <body>

        <div class="divFondoIndex">
            <div class="divDegradadoIndex">
                
                <%@include file="header.jsp"%>

                <div class="divCP">
                </div>
            </div>


        </div>

        <div class="divCuerpoIndex">

            <div class="divCartelera">
                <h2 class="h2TituloCartelera">Cartelera</h2>
                <div class="divCPortadas">
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/captainP.jpg" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/garfield.png" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/interestlarP.jpg" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/kunfupanda.png" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/spiderman3.jpg" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/dumboposter.png" alt="">
                    </a>
                </div>

            </div>
            <div class="divEstreno">
                <h2 class="h2TituloCartelera">Estreno</h2>
                <div class="divCPortadas">
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/captainP.jpg" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/garfield.png" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/interestlarP.jpg" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/kunfupanda.png" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/spiderman3.jpg" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/dumboposter.png" alt="">
                    </a>
                </div>
            </div>
            <div class="divProximamente">
                <h2 class="h2TituloCartelera">Proximamente</h2>
                <div class="divCPortadas">
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/captainP.jpg" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/garfield.png" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/interestlarP.jpg" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/kunfupanda.png" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/spiderman3.jpg" alt="">
                    </a>
                    <a href="detalles.jsp" class="aImagen">
                        <img class="imgPortadaI" src="recursos/dumboposter.png" alt="">
                    </a>
                </div>
            </div>

        </div>

        <div class="divFooter"></div>
    </body>

</html>