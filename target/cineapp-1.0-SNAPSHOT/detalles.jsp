<%@page import="com.emergentes.modelo.Peliculas"%>
<%
    /*
    if (session.getAttribute("login") != "ok") {
        response.sendRedirect("iniciarc.jsp");
    }*/

    Peliculas peli = new Peliculas();
    peli = (Peliculas) request.getAttribute("pelicula");

%>
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

        <div class="divFondoDetalle" id="divFondoImagen">
            <div class="divDegradadoDetalle">

                <%@include file="header.jsp"%>
                <div class="divCuerpo">
                    <div class="divCI">

                        <div class="divTituloPeli">
                            <h1 id="h1TituloPeli"><%=peli.getNombre_p()%></h1>
                        </div>


                        <div class="divContenedorD">
                            <div class="divDetalle">
                                <h4 id="h4DetallesP"><%=peli.getGenero()%> | Edad | <%=peli.getDuracion()%> min.</h4>
                                <div class="divDPS">
                                    <img class="imgPortada" src="recursos/<%=peli.getRuta_poster()%>" alt="">
                                    <div class="divDPSB">
                                        <div id="divSinopsis">
                                            <p id="pSinopsis"><%=peli.getSinopsis()%></p>
                                        </div>

                                        <a href="ControladorCompra?action=view&id=<%=peli.getId_pelicula()%>" class="aImagen">
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
        <script>
            let divFondoImagen = document.getElementById("divFondoImagen");
            divFondoImagen.style.backgroundImage = "url(recursos/<%=peli.getRuta_portada()%>)";
        </script>
    </body>

</html>