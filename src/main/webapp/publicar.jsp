<%-- 
    Document   : publicar
    Created on : 28 may de 2024, 19:49:31
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

        <title>Publicar</title>
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

                            <h2 id="tituloLogin">Nueva <span>pelicula</span></h2>

                            <form action="ControladorPublicar" method="post" enctype="multipart/form-data">
                                <label for="nombre">Nombre</label>
                                <input type="text" name="nombre" id="nombre">

                                <label for="sinopsis">Sinopsis</label>
                                <textarea name="sinopsis" id="sinopsis" maxlength="250"></textarea>
                                <div class="divApellidos">
                                    <div class="divCajaApellidos">
                                        <label for="duracion" class="iAp">Duracion</label>
                                        <input type="number" class="iAp" name="duracion" id="duracion">
                                    </div>
                                    <div class="divCajaApellidos" id="cajaAM">
                                        <label for="festreno">Fecha estreno</label>
                                        <input type="date" class="iAp" name="festreno" id="festreno">
                                    </div>

                                </div>

                                <label for="genero">Genero</label>
                                <select name="genero" id="genero">
                                    <option value="Accion">Accion</option>
                                    <option value="Romance">Romance</option>
                                    <option value="Comedia">Comedia</option>
                                    <option value="Terror">Terror</option>
                                    <option value="Aventura">Aventura</option>
                                    <option value="Documental">Documental</option>
                                    <option value="Musical">Musical</option>
                                    <option value="Fantasia">Fantasia</option>
                                    <option value="Cienciafic">Ciencia Ficcion</option>
                                    <option value="Triller">Triller</option>
                                </select>

                                <div class="divApellidos">
                                    <div class="divCajaApellidos">
                                        <label for="poster">Poster</label>
                                        <div class="iFileImagen">
                                            <p id="pInput">Subir imagen</p>
                                            <input type="file" name="iPoster" class="iImagenes" id="poster" required>

                                            <input type="hidden" name="posterNombre" id="posterN" value="">

                                            <span id="sInput">Ningún archivo</span>
                                        </div>
                                    </div>

                                    <div class="divCajaApellidos" id="cajaAI">
                                        <label for="portada">Portada</label>
                                        <div class="iFileImagen">
                                            <p id="pInputP">Subir imagen</p>
                                            <input type="file" name="iPortada" class="iImagenes" id="portada" required>

                                            <input type="hidden" name="portadaNombre" id="portadaN" value="">

                                            <span id="sInputP">Ningún archivo</span>
                                        </div>    
                                    </div>

                                </div>

                                <div class="divFormBotones">
                                    <input type="submit" id="btnLogin" class="btnRojo" value="Publicar">
                                </div>

                            </form>

                            <script>
                                let iPoster = document.getElementById("poster");
                                let pInput = document.getElementById("pInput");
                                let sInput = document.getElementById("sInput");

                                let posterN = document.getElementById("posterN");

                                let iPortada = document.getElementById("portada")
                                let pInputP = document.getElementById("pInputP");
                                let sInputP = document.getElementById("sInputP");

                                let portadaN = document.getElementById("portadaN");

                                iPoster.addEventListener("change", function () {
                                    if (iPoster.files.length > 0) {
                                        pInput.textContent = "Seleccionado";
                                        sInput.textContent = iPoster.files[0].name;
                                        posterN.value = sInput.textContent;
                                        console.log(posterN.value);
                                        console.log(typeof posterN.value);
                                    } else {
                                        sInput.textContent = "Ningún archivo";
                                    }
                                });

                                iPortada.addEventListener("change", function () {
                                    if (iPortada.files.length > 0) {
                                        pInputP.textContent = "Seleccionado";
                                        sInputP.textContent = iPortada.files[0].name;
                                        portadaN.value = sInputP.textContent;
                                    } else {
                                        sInputP.textContent = "Ningún archivo";
                                    }
                                });
                            </script>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </body>

</html>