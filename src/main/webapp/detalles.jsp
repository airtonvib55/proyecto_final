<%-- 
    Document   : detalles
    Created on : 24 may de 2024, 11:25:47
    Author     : JAVIER APAZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos.css">
        <title>Detalle de Pelicula</title>
    </head>

    <body>

        <div class="divFondoDetalle">
            <div class="divDegradadoDetalle">
                
                <%@include file="header.jsp"%>
                <!-- <div class="divRelleno"></div> -->

                <div class="divCuerpo">
                    <div class="divCI">
                        <div class="divContenedorD">
                            <div class="divDetalle">
                                <h1 id="h1TituloP">Pokemon Detective Pikachu</h1>
                                <h4 id="h4DetallesP">Genero | Edad | Duracion</h4>
                                <div class="divDPS">
                                    <img class="imgPortada" src="recursos/captainP.jpg" alt="">
                                    <div class="divDPSB">
                                        <div id="divSinopsis">
                                            <p id="pSinopsis">Un joven une fuerzas con el detective Pikachu
                                                para desentrañar el misterio detrás de la
                                                desaparición de su padre. El dúo dinámico
                                                descubre una trama tortuosa que representa
                                                una amenaza para el universo Pokémon.</p>
                                        </div>

                                        <a href="compra.jsp" class="aImagen">
                                            <button class="btnRojo">Ver horarios</button>
                                        </a>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="divCD">
                        <div class="divContenedorP">
                            <a href="detalles.jsp" class="aImagen">
                                <img class="imgR" src="recursos/captainP.jpg" alt="">
                            </a>
                            <a href="detalles.jsp" class="aImagen">
                                <img class="imgR" src="recursos/garfield.png" alt="">
                            </a>
                            <a href="detalles.jsp" class="aImagen">
                                <img class="imgR" src="recursos/interestlarP.jpg" alt="">
                            </a>
                            <a href="detalles.jsp" class="aImagen">
                                <img class="imgR" src="recursos/kunfupanda.png" alt="">
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </body>

</html>