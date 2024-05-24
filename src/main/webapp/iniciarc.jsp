<%-- 
    Document   : iniciarc
    Created on : 24 may de 2024, 11:17:28
    Author     : JAVIER APAZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos.css">
        <title>Iniciar sesion</title>
    </head>

    <body>
        <div class="divFondoI">
            <div class="divDegradado">
                
                <%@include file="header.jsp"%>

                <!-- <div class="divRelleno"></div> -->

                <div class="divCuerpo">
                    <div class="divForm">
                        <div class="divCajaForm">

                            <h2 id="tituloLogin">Iniciar <span>sesión</span></h2>

                            <form action="" method="post">

                                <label for="email">Email</label>
                                <input type="text" name="email" id="email">
                                <label for="contraseña">Contraseña</label>
                                <input type="password" name="contraseña" id="contraseña">

                                <div class="divFormBotones">
                                    <a href="crearc.jsp" class="aCuenta">No tengo una cuenta</a>
                                    <input type="submit" id="btnLogin" class="btnRojo" value="Ingresar">
                                </div>

                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </body>

</html>