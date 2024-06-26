<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
                        <a href="index.jsp">Logo</a>
                        <a href="index.jsp">cineStar</a>
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

                            <h2 id="tituloLogin">Nueva <span>funcion</span></h2>

                            <form action="ControladorFuncion" method="post">

                                <label for="pelicula">Pelicula</label>
                                <select name="pelicula" id="pelicula">                                 
                                    <c:forEach var="item" items="${lista}">
                                        <option value="${item.getId_pelicula()}">${item.getNombre_p()}</option>
                                    </c:forEach>
                                </select>

                                <div class="divApellidos">             
                                    <div class="divCajaApellidos" id="cajaFF">
                                        <label for="fefuncion">Fecha funcion</label>
                                        <input type="date" class="iAp" name="fefuncion" id="fefuncion">
                                    </div>

                                    <div class="divCajaApellidos">
                                        <label for="horaF">Hora</label>
                                        <select name="horaF" id="horaF">
                                            <option value="10:00">10:00</option>
                                            <option value="12:30">12:30</option>
                                            <option value="14:30">14:30</option>
                                            <option value="16:30">16:30</option>
                                            <option value="18:00">18:00</option>
                                        </select>
                                    </div>
                                </div>


                                <label for="sala">Sala</label>
                                <select name="sala" id="sala">
                                    <option value="1">Sala A</option>
                                    <option value="2">Sala B</option>
                                    <option value="3">Sala C</option>
                                </select>
                                

                                <div class="divFormBotones">
                                    <input type="submit" id="btnLogin" class="btnRojo" value="Publicar">
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
