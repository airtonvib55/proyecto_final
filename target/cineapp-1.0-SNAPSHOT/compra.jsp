<%@page import="com.emergentes.modelo.Peliculas"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    /*
    if (session.getAttribute("login") != "ok") {
        response.sendRedirect("iniciarc.jsp");
     */

    //request.getAttribute("posicion");
    Peliculas peli = new Peliculas();
    peli = (Peliculas) request.getAttribute("pelicula");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos.css">
        <title>Comprar</title>
    </head>

    <body>
        <div class="divFondoDetalle" id="divFondoImagen">
            <div class="divDegradadoCompra">

                <%@include file="header.jsp"%>

                <!--<div class="divRelleno"></div>-->

                <div class="divCuerpo">
                    <div class="divCompraP">
                        <img class="imgCompra" src="recursos/<%=peli.getRuta_poster()%>" alt="">
                    </div>

                    <div class="divCompraA">


                        <div id="divContenedorAsientos">
                            <div class="divRellenoCA"></div>

                            <div class="divCompraH">
                                <div class="divCompraFecha">
                                    <h4 class="h4Fecha">Miercoles, 19 Jun</h4>
                                    <hr>
                                    <div id="div7Dias">
                                        <c:forEach var="item" items="${listaFunciones}">
                                            <a class="aFecha" href="ControladorCompra?action=dia&fecha=${item.getFecha_funcion()}&h=${item.getHora_funcion()}&id=${item.getId_pelicula()}">
                                                <div class="divDia">
                                                    <h5 class="h5Dia">${item.getDia_literal()}</h5>
                                                    
                                                    <c:if test="${item.getSeleccionado() == 1}">
                                                        <p class="pDiaHoraS" id="pFecha">${item.getDia_fecha()}</p>
                                                        <input type="hidden" id="inFechaFun" value=${item.getFecha_funcion()}>
                                                    </c:if>
                                                        
                                                    <c:if test="${item.getSeleccionado() != 1}">
                                                        <p class="pDia">${item.getDia_fecha()}</p>
                                                    </c:if>
                                                    
                                                </div>
                                            </a>
                                        </c:forEach>
                                        
                                    </div>
                                </div>
                                <div class="divCompraHora">
                                    <h4 class="h4Fecha">Horarios</h4>
                                    <hr>
                                    <div id="div5Horas">
                                        
                                        <c:forEach var="item" items="${listaHoras}">
                                            <a class="aFecha" href="ControladorCompra?action=dia&fecha=${item.getFecha_funcion()}&h=${item.getHora_funcion()}&id=${item.getId_pelicula()}">
                                            <div class="divDia">
                                                <h5 class="h5Dia">${item.getTipo()}</h5>
                                                
                                                <c:if test="${item.getSeleccionado() == 1}">
                                                    <p class="pDiaHoraS" id="pHora">${item.getHora_funcion()}</p>
                                                </c:if>       
                                                <c:if test="${item.getSeleccionado() != 1}">
                                                    <p class="pDia">${item.getHora_funcion()}</p>
                                                </c:if>                                                
                                            </div>
                                            </a>
                                        </c:forEach>

                                    </div>
                                </div>
                            </div>

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
                                        let fila = [];
                                        let columna = [];
                                        let arrayI = [];
                                        let arrayOcupados = [];
                                        let i = 0;
                                    </script>
                                    

                                    <c:forEach var="item" items="${p}">

                                        <script>

                                            console.log(${item.filaP} + ", " +${item.columnaP});
                                            arrayI[i] = [];

                                            arrayI[i].push(${item.filaP});
                                            arrayI[i].push(${item.columnaP});
                                            arrayOcupados.push(arrayI[i]);
                                            console.log(arrayOcupados);
                                            i++;

                                        </script>

                                    </c:forEach>


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


                                <form action="ControladorCompra" method="post">
                                    <input type="hidden" id="iMC" name="matrizConfirmados" value="">
                                    <input type="hidden" name="fecha_fun" id="iFecha">
                                    <input type="hidden" name="hora_fun" id="iHora">
                                    <input type="hidden" name="id" id="iId">
                                    
                                    <script>
                                        let pFecha = document.getElementById("pFecha");
                                        let pHora = document.getElementById("pHora");
                                        let inFechaFun = document.getElementById("inFechaFun");
                                        
                                        let iFecha = document.getElementById("iFecha");
                                        let iHora = document.getElementById("iHora");
                                        let iId = document.getElementById("iId");
                                        
                                        iFecha.value = inFechaFun.value;
                                        iHora.value = pHora.textContent;
                                        iId.value = <%=peli.getId_pelicula()%>
                                    </script>
                                    
                                    <div class="divBtnContinuar">
                                        <!-- <a href="ControladorCompra?action=add"><button class="btnRojo" id="btnContinuar">Continuar</button></a> -->
                                        <button type="submit" class="btnRojo" id="btnContinuar">Continuar</button>
                                    </div>
                                </form>
                            </div>


                        </div>


                    </div>
                </div>

            </div>
        </div>

        <script>
            //pruebas
            //
            let arrayEjemplo = [[1, 7], [1, 9], [1, 12], [4, 6], [4, 7], [8, 19]];
            let c = 0;
            function arrayIgual(array, i, j) {
                if(array && array.length > 0){
                    if (array[0] == i && array[1] == j) {
                        //console.log("son iguales");
                        return true;
                    } else {
                        console.log("no es igual o vacio");
                        return false;
                    }
                }else{
                    return false;
                }
                
            }
            ;
            //pruebas

            let arrayLetras = ["A", "B", "C", "D", "E", "F", "G", "H"];

            let divFondoOscuro = document.getElementById("divFondoOscuro");
            let divAlerta = document.getElementById("divAlerta");
            let h2Asiento = document.getElementById("h2Asiento");
            let btnCancelar = document.getElementById("btnCancelar");
            let btnConfirmar = document.getElementById("btnConfirmar");

            //let btnContinuar = document.getElementById("btnContinuar");

            let divAsientosCasillas = document.getElementById("divCC");
            let arrayCasillas = [];

            let matrizConfirmados = [];
            let matrizString = "";
            let ct = 0;
            let iMC = document.getElementById("iMC");

            for (let i = 1; i <= 8; i++) {
                arrayCasillas[i] = [];
                for (let j = 1; j <= 22; j++) {

                    if (j == 3 || j == 20 || ((i == 1 || i == 2 || i == 3) && (j == 1 || j == 2 || j == 21 || j == 22))) {
                        arrayCasillas[i][j] = document.createElement("div");
                        arrayCasillas[i][j].classList.add("divCasillaTransparente");
                        divAsientosCasillas.appendChild(arrayCasillas[i][j]);
                    } else {
                        if (arrayIgual(arrayOcupados[c], i, j)) {
                            //pintar como ocupado y no dar funcion de click
                            arrayCasillas[i][j] = document.createElement("div");
                            arrayCasillas[i][j].classList.add("divCOcupado");
                            divAsientosCasillas.appendChild(arrayCasillas[i][j]);
                            c++;
                            if (c == arrayOcupados.length) {
                                c = 0;
                            }
                        } else {
                            //seguir pintando de blanco
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

                                    //añadir la posicion de la casila a un array de casillas
                                    //añadir a un ArrayList<AsientoR> listaAsientosConf = new ArrayList<AsientoR>();
                                    matrizConfirmados.push([i, j]);
                                    console.log(matrizConfirmados);

                                    //if (ct == 0) {
                                    //matrizString = matrizString + i + "," + j;
                                    //console.log(matrizString);
                                    //ct++;
                                    //} else {
                                    matrizString = matrizString + "-" + i + "," + j + "-";
                                    console.log(matrizString);
                                    //}
                                    iMC.value = matrizString;
                                    console.log(iMC.value);

                                }

                                divFondoOscuro.onclick = function () {
                                    divFondoOscuro.style.display = "none";
                                    divAlerta.style.display = "none";
                                }
                            }
                        }
                    }
                }
            }
        </script>


        <script>
            let divFondoImagen = document.getElementById("divFondoImagen");
            divFondoImagen.style.backgroundImage = "url(recursos/<%=peli.getRuta_portada()%>)";
        </script>

    </body>

</html>