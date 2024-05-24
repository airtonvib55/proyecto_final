<%-- 
    Document   : compra
    Created on : 24 may de 2024, 12:12:12
    Author     : JAVIER APAZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos.css">
        <title>Comprar</title>
    </head>

    <body>

        <div class="divFondoDetalle">
            <div class="divDegradadoCompra">

                <%@include file="header.jsp"%>

                <!--<div class="divRelleno"></div>-->

                <div class="divCuerpo">
                    <div class="divCompraP">
                        <img class="imgCompra" src="recursos/captainP.jpg" alt="">
                    </div>

                    <div class="divCompraA">


                        <div id="divContenedorAsientos">
                            <div class="divRellenoCA"></div>

                            <div class="divPantalla">
                                <div class="divPantallaDiseño"></div>
                                <h1 class="h1TituloPantalla">P A N T A L L A</h1>
                            </div>

                            <div class="divAsientosCasillas">
                                <div class="divCajaCasillas" id="divCC">
                                    <div id="divFondoOscuro"></div>
                                    <div id="divAlerta">
                                        <p id="pAlerta">¿Reservar asiento?</p>
                                        <h2 id="h2Asiento"></h2>
                                        <div>
                                            <button class="btnRojo" id="btnCancelar">Cancelar</button>
                                            <button class="btnRojo" id="btnConfirmar">Confirmar</button>
                                        </div>

                                    </div>

                                    <script>
                                        let arrayLetras = ["A", "B", "C", "D", "E", "F", "G", "H"];

                                        let divFondoOscuro = document.getElementById("divFondoOscuro");
                                        let divAlerta = document.getElementById("divAlerta");
                                        let h2Asiento = document.getElementById("h2Asiento");
                                        let btnCancelar = document.getElementById("btnCancelar");
                                        let btnConfirmar = document.getElementById("btnConfirmar");

                                        let divAsientosCasillas = document.getElementById("divCC");
                                        let arrayCasillas = [];
                                        for (let i = 1; i <= 8; i++) {
                                            arrayCasillas[i] = [];
                                            for (let j = 1; j <= 22; j++) {

                                                if (j == 3 || j == 20 || ((i == 1 || i == 2 || i == 3) && (j == 1 || j == 2 || j == 21 || j == 22))) {
                                                    arrayCasillas[i][j] = document.createElement("div");
                                                    arrayCasillas[i][j].classList.add("divCasillaTransparente");
                                                    divAsientosCasillas.appendChild(arrayCasillas[i][j]);
                                                } else {
                                                    arrayCasillas[i][j] = document.createElement("div");
                                                    arrayCasillas[i][j].classList.add("divCasilla");
                                                    divAsientosCasillas.appendChild(arrayCasillas[i][j]);
                                                    arrayCasillas[i][j].onclick = function () {
                                                        divFondoOscuro.style.display = "block";
                                                        divAlerta.style.display = "flex";
                                                        divAlerta.style.flexDirection = "column";
                                                        divAlerta.style.justifyContent = "center";
                                                        divAlerta.style.alignItems = "center";

                                                        h2Asiento.textContent = arrayLetras[i - 1] + "-" + j;

                                                        btnCancelar.onclick = function () {
                                                            divFondoOscuro.style.display = "none";
                                                            divAlerta.style.display = "none";
                                                        }

                                                        btnConfirmar.onclick = function () {
                                                            console.log("r = " + i + "-" + j);
                                                            arrayCasillas[i][j].style.background = "#DEB112";
                                                            divFondoOscuro.style.display = "none";
                                                            divAlerta.style.display = "none";
                                                        }

                                                        divFondoOscuro.onclick = function () {
                                                            divFondoOscuro.style.display = "none";
                                                            divAlerta.style.display = "none";
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    </script>
                                </div>
                            </div>

                            <div class="divAsientosInfo">
                                <div class="divAIDOS">
                                    <div class="divCDisponible"></div>
                                    <p class="pText">Disponible</p>
                                    <div class="divCOcupado"></div>
                                    <p class="pText">Ocupado</p>
                                    <div class="divCSeleccionado"></div>
                                    <p class="pTextUltimo">Seleccionado</p>
                                </div>
                                <div class="divBtnContinuar">
                                    <a href="pago.jsp"><button class="btnRojo">Continuar</button></a>
                                </div>

                            </div>
                        </div>


                    </div>
                </div>

            </div>
        </div>
    </body>

</html>