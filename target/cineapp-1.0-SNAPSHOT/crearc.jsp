<%-- 
    Document   : crearc
    Created on : 24 may de 2024, 12:07:50
    Author     : JAVIER APAZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos.css">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">

        <title>Crear cuenta</title>
    </head>
    <body>

        <div class="divFondoI">
            <div class="divDegradado">
                
                <%@include file="header.jsp"%>

                <!-- <div class="divRelleno"></div> -->

                <div class="divCuerpo">
                    <div class="divForm">
                        <div class="divCajaForm">

                            <h2 id="tituloLogin">Crear <span>cuenta</span></h2>

                            <form action="" method="post">
                                <label for="nombre">Nombre</label>
                                <input type="text" name="nombre" id="nombre">

                                <div class="divApellidos">
                                    <div class="divCajaApellidos">
                                        <label for="paterno" class="iAp">Paterno</label>
                                        <input type="text" class="iAp" name="paterno" id="paterno">
                                    </div>
                                    <div class="divCajaApellidos" id="cajaAM">
                                        <label for="materno">Materno</label>
                                        <input type="text" class="iAp" name="materno" id="materno">
                                    </div>

                                </div>

                                <label for="celular">Celular</label>
                                <input type="text" name="celular" id="celular">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email">
                                <label for="contraseña">Contraseña</label>
                                <input type="password" name="contraseña" id="contraseña">

                                <div class="divFormBotones">
                                    <a href="iniciarc.jsp" class="aCuenta" id="aIiniciarC">Ya tengo una cuenta</a>
                                    <input type="submit" id="btnLogin" class="btnRojo" value="Crear">
                                </div>

                            </form>
                        </div>

                    </div>
                </div>
            </div>

        </div>


    </body>
</html>