package com.emergentes.controlador;

import com.emergentes.modelo.AsientosR;
import com.emergentes.modelo.Funciones;
import com.emergentes.modelo.Peliculas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ControladorCompra", urlPatterns = {"/ControladorCompra"})
public class ControladorCompra extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:33065/bd_cine";
        String usuario = "root";
        String password = "";

        Connection conn = null;
        PreparedStatement ps;
        ArrayList<AsientosR> posicionA = new ArrayList<AsientosR>();

        String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";
        //int id = Integer.parseInt(request.getParameter("id"));
        switch (action) {
            case "add":
                //request.setAttribute("producto", pro);
                AsientosR asiento = new AsientosR();
                int filaP = Integer.parseInt(request.getParameter("filaP"));
                int columnaP = Integer.parseInt(request.getParameter("columnaP"));

                asiento.setFilaP(filaP);
                asiento.setColumnaP(columnaP);
                String sql = "insert into asientos_reserva (nombre_asiento, posicion_fila, posicion_columna, id_funcion) values ('', ?, ?, 1)";

                try {
                    //PreparedStatement ps;
                    Class.forName(driver);
                    conn = DriverManager.getConnection(url, usuario, password);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ControladorCompra.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(ControladorCompra.class.getName()).log(Level.SEVERE, null, ex);
                }

                try {
                    ps = conn.prepareStatement(sql);
                    ps.setInt(1, asiento.getFilaP());
                    ps.setInt(2, asiento.getColumnaP());
                    ps.executeUpdate();
                } catch (SQLException ex) {
                    Logger.getLogger(ControladorCompra.class.getName()).log(Level.SEVERE, null, ex);
                }

                request.getRequestDispatcher("ControladorCompra").forward(request, response);
                break;

            case "edit":
                //id = Integer.parseInt(request.getParameter("id"));
                //request.setAttribute("producto", pro);
                request.getRequestDispatcher("frmproducto.jsp").forward(request, response);
                break;
            case "delete":
                //id = Integer.parseInt(request.getParameter("id"));
                //dao.delete(id);
                response.sendRedirect("ProductoControlador");
                break;
            case "view":
                int id = Integer.parseInt(request.getParameter("id"));
                Peliculas peli = new Peliculas();
                System.out.println("ID: " + id);
                try {
                    Class.forName(driver);
                    conn = DriverManager.getConnection(url, usuario, password);
                    //español
                    Statement stmt = conn.createStatement();
                    stmt.execute("SET lc_time_names = 'es_ES'");

                    //hallar funciones
                    String sql0 = "select fecha_funcion, day(fecha_funcion) as fecha, upper(left(dayname(fecha_funcion),3)) as dia from funcion where id_pelicula = ? and fecha_funcion between curdate() and date_add(curdate(), interval 6 day) group by fecha_funcion";
                    PreparedStatement pr0;
                    pr0 = conn.prepareStatement(sql0);
                    pr0.setInt(1, id);
                    ResultSet rs0 = pr0.executeQuery();

                    ArrayList<Funciones> listaFunciones = new ArrayList<Funciones>();
                    int cprim = 0;

                    while (rs0.next()) {
                        Funciones funcion = new Funciones();
                        funcion.setId_pelicula(id);
                        funcion.setFecha_funcion(rs0.getDate("fecha_funcion"));

                        funcion.setHora_funcion("10:00"); //revisar

                        funcion.setDia_fecha(rs0.getInt("fecha"));
                        funcion.setDia_literal(rs0.getString("dia"));

                        if (cprim == 0) {
                            funcion.setSeleccionado(1);
                            cprim = 1;
                        } else {
                            funcion.setSeleccionado(0);
                        }

                        listaFunciones.add(funcion);
                    }
                    rs0.close();
                    pr0.close();
                    //conn.close();
                    request.setAttribute("listaFunciones", listaFunciones);
                    //hasta aca tengo una lista de 7 funciones

                    //listar horas segun el dia seleccionado                    
                    String sqld = "select * from funcion where id_pelicula = ? and fecha_funcion = ?";
                    //primer dia (actual)
                    Date fechaFun = listaFunciones.get(0).getFecha_funcion();
                    System.out.println("Fecha funcion: " + fechaFun);
                    //lista horas (parece innecesario)
                    ArrayList<Funciones> listaHoras = new ArrayList<Funciones>();
                    int chor = 0;
                    PreparedStatement prd;
                    prd = conn.prepareStatement(sqld);
                    prd.setInt(1, id);
                    prd.setDate(2, fechaFun);
                    //prd.setString(2, "2024-06-25");
                    ResultSet rsd = prd.executeQuery();

                    while (rsd.next()) {
                        Funciones fun = new Funciones();
                        fun.setId_pelicula(id);
                        fun.setTipo(rsd.getString("tipo"));
                        fun.setHora_funcion(rsd.getString("hora_funcion"));

                        fun.setFecha_funcion(fechaFun);

                        if (chor == 0) {
                            fun.setSeleccionado(1);
                            chor = 1;
                        } else {
                            fun.setSeleccionado(0);
                        }

                        listaHoras.add(fun);
                    }

                    request.setAttribute("listaHoras", listaHoras);

                    String horaFun = listaHoras.get(0).getHora_funcion();
                    System.out.println("Hora funcion: " + horaFun);
                    //id_funcion se elegira en base a la fecha y hora
                    //String sqls = "select * from asientos_reserva where id_funcion = 1 order by posicion_fila, posicion_columna";
                    String sqls = "select * from asientos_reserva where id_funcion = (select id_funcion from funcion where fecha_funcion = ? and hora_funcion = ?) order by posicion_fila, posicion_columna";
                    PreparedStatement pr;
                    pr = conn.prepareStatement(sqls);
                    pr.setDate(1, fechaFun);
                    pr.setString(2, horaFun);

                    ResultSet rs = pr.executeQuery();

                    while (rs.next()) {
                        AsientosR as = new AsientosR();
                        as.setId(rs.getInt("id_asiento"));
                        as.setFilaP(rs.getInt("posicion_fila"));
                        as.setColumnaP(rs.getInt("posicion_columna"));

                        posicionA.add(as);
                    }

                    rs.close();
                    pr.close();
//                    conn.close();

                    String sqlp = "select * from pelicula where id_pelicula = ?";
                    PreparedStatement pr2;
                    pr2 = conn.prepareStatement(sqlp);
                    pr2.setInt(1, id);
                    ResultSet rs2 = pr2.executeQuery();

                    while (rs2.next()) {
                        peli.setId_pelicula(rs2.getInt("id_pelicula"));
                        peli.setNombre_p(rs2.getString("nombre"));
                        peli.setSinopsis(rs2.getString("sinopsis"));
                        peli.setGenero(rs2.getString("genero"));
                        peli.setDuracion(rs2.getInt("duracion"));
                        peli.setCalificacion(rs2.getInt("calificacion_total")); //revisar
                        peli.setCant_vistas(rs2.getInt("cantidad_vistas"));
                        peli.setRuta_poster(rs2.getString("poster_ruta"));
                        peli.setRuta_portada(rs2.getString("portada_ruta"));
                    }
                    rs2.close();
                    pr2.close();
                    conn.close();

                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ControladorCompra.class.getName()).log(Level.SEVERE, null, ex);
                    System.out.println("Error no se que");
                } catch (SQLException ex) {
                    Logger.getLogger(ControladorCompra.class.getName()).log(Level.SEVERE, null, ex);
                    System.out.println("Error de la base de datos xdxd");
                }

                request.setAttribute("p", posicionA);
                request.setAttribute("pelicula", peli);

                request.getRequestDispatcher("compra.jsp").forward(request, response);

                break;

            case "dia":

                int id1 = Integer.parseInt(request.getParameter("id"));
                Peliculas pel = new Peliculas();
                try {
                    Class.forName(driver);
                    conn = DriverManager.getConnection(url, usuario, password);
                    //español
                    Statement stmt = conn.createStatement();
                    stmt.execute("SET lc_time_names = 'es_ES'");
                    Date fechaFun = convierteFecha(request.getParameter("fecha"));
                    String horaFun = request.getParameter("h");

                    //hallar funciones
                    String sql0 = "select fecha_funcion, day(fecha_funcion) as fecha, upper(left(dayname(fecha_funcion),3)) as dia from funcion where id_pelicula = ? and fecha_funcion between curdate() and date_add(curdate(), interval 6 day) group by fecha_funcion";
                    PreparedStatement pr0;
                    pr0 = conn.prepareStatement(sql0);
                    pr0.setInt(1, id1);
                    ResultSet rs0 = pr0.executeQuery();

                    ArrayList<Funciones> listaFunciones = new ArrayList<Funciones>();

                    while (rs0.next()) {
                        Funciones funcion = new Funciones();
                        funcion.setId_pelicula(id1);
                        funcion.setFecha_funcion(rs0.getDate("fecha_funcion"));

                        funcion.setHora_funcion(horaFun);

                        funcion.setDia_fecha(rs0.getInt("fecha"));
                        funcion.setDia_literal(rs0.getString("dia"));
                        //si la fecha es la seleccionada enviar 1 para poder pintar
                        if (rs0.getDate("fecha_funcion").equals(fechaFun)) {
                            funcion.setSeleccionado(1);
                        } else {
                            funcion.setSeleccionado(0);
                        }

                        listaFunciones.add(funcion);
                    }
                    rs0.close();
                    pr0.close();
                    //conn.close();
                    request.setAttribute("listaFunciones", listaFunciones);

                    //listar horas segun el dia seleccionado                    
                    String sqld = "select * from funcion where id_pelicula = ? and fecha_funcion = ?";
                    //primer dia (actual)

                    System.out.println("Fecha funcion recibida: " + fechaFun);
                    //lista horas (parece innecesario)
                    ArrayList<Funciones> listaHoras = new ArrayList<Funciones>();
                    //String horaFun = request.getParameter("h");
                    PreparedStatement prd;
                    prd = conn.prepareStatement(sqld);
                    prd.setInt(1, id1);
                    prd.setDate(2, fechaFun);
                    //prd.setString(2, "2024-06-25");
                    ResultSet rsd = prd.executeQuery();

                    while (rsd.next()) {
                        Funciones fun = new Funciones();
                        fun.setId_pelicula(id1);
                        fun.setTipo(rsd.getString("tipo"));
                        fun.setHora_funcion(rsd.getString("hora_funcion"));

                        fun.setFecha_funcion(rsd.getDate("fecha_funcion"));

                        if (rsd.getString("hora_funcion").equals(horaFun)) {
                            fun.setSeleccionado(1);
                        } else {
                            fun.setSeleccionado(0);
                        }

                        listaHoras.add(fun);
                    }

                    request.setAttribute("listaHoras", listaHoras);

                    System.out.println("Hora funcion: " + horaFun);
                    //String sqls = "select * from asientos_reserva where id_funcion = 1 order by posicion_fila, posicion_columna";
                    String sqls = "select * from asientos_reserva where id_funcion = (select id_funcion from funcion where fecha_funcion = ? and hora_funcion = ? and id_pelicula = ?) order by posicion_fila, posicion_columna";
                    PreparedStatement pr;
                    pr = conn.prepareStatement(sqls);
                    pr.setDate(1, fechaFun);
                    pr.setString(2, horaFun);
                    pr.setInt(3, id1);
                    ResultSet rs = pr.executeQuery();

                    while (rs.next()) {
                        AsientosR as = new AsientosR();
                        as.setId(rs.getInt("id_asiento"));
                        as.setFilaP(rs.getInt("posicion_fila"));
                        as.setColumnaP(rs.getInt("posicion_columna"));

                        posicionA.add(as);
                    }

                    rs.close();
                    pr.close();
//                    conn.close();

                    String sqlp = "select * from pelicula where id_pelicula = ?";
                    PreparedStatement pr2;
                    pr2 = conn.prepareStatement(sqlp);
                    pr2.setInt(1, id1);
                    ResultSet rs2 = pr2.executeQuery();

                    while (rs2.next()) {
                        pel.setId_pelicula(rs2.getInt("id_pelicula"));
                        pel.setNombre_p(rs2.getString("nombre"));
                        pel.setSinopsis(rs2.getString("sinopsis"));
                        pel.setGenero(rs2.getString("genero"));
                        pel.setDuracion(rs2.getInt("duracion"));
                        pel.setCalificacion(rs2.getInt("calificacion_total")); //revisar
                        pel.setCant_vistas(rs2.getInt("cantidad_vistas"));
                        pel.setRuta_poster(rs2.getString("poster_ruta"));
                        pel.setRuta_portada(rs2.getString("portada_ruta"));
                    }
                    rs2.close();
                    pr2.close();
                    conn.close();

                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ControladorCompra.class.getName()).log(Level.SEVERE, null, ex);
                    System.out.println("Error no se que");
                } catch (SQLException ex) {
                    Logger.getLogger(ControladorCompra.class.getName()).log(Level.SEVERE, null, ex);
                    System.out.println("Error de la base de datos xdxd");
                }

                request.setAttribute("p", posicionA);
                request.setAttribute("pelicula", pel);

                request.getRequestDispatcher("compra.jsp").forward(request, response);

                break;

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:33065/bd_cine";
        String usuario = "root";
        String password = "";

        Connection conn;
        PreparedStatement ps;

        int id = Integer.parseInt(request.getParameter("id"));
        Date fechaFun = convierteFecha(request.getParameter("fecha_fun"));
        String horaFun = request.getParameter("hora_fun");

        System.out.println("Datos: " + id + ", " + fechaFun + ", " + horaFun);

        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ControladorCompra.class.getName()).log(Level.SEVERE, null, ex);
        }

        ArrayList<AsientosR> listaConfirmados = new ArrayList<AsientosR>();
        AsientosR asiento = new AsientosR();
        int c = 0;
        String numeroString = "";

        String posicionConfirmados = request.getParameter("matrizConfirmados");
        System.out.println("Matriz Confirmados: " + posicionConfirmados);

        //-2,7--7,7--1,10--5,12--7,12-
        for (int i = 0; i < posicionConfirmados.length(); i++) {
            if (posicionConfirmados.charAt(i) == '-' && c != 1) {
                asiento = new AsientosR();//revisar doble guion
            } else if (posicionConfirmados.charAt(i) == ',' && c == 0) {
                asiento.setFilaP(Integer.parseInt(numeroString));
                numeroString = "";
                c = 1;
            } else if (c == 1 && posicionConfirmados.charAt(i) == '-') {
                asiento.setColumnaP(Integer.parseInt(numeroString));
                listaConfirmados.add(asiento);
                numeroString = "";
                c = 0;

                System.out.println("[" + asiento.getFilaP() + ", " + asiento.getColumnaP() + "]");
            } else {
                numeroString = numeroString + posicionConfirmados.charAt(i);
            }
        }

        String sql = "insert into asientos_reserva (nombre_asiento, posicion_fila, posicion_columna, id_funcion) values ('', ?, ?, (select id_funcion from funcion where fecha_funcion = ? and hora_funcion = ? and id_pelicula = ?))";

        for (AsientosR item : listaConfirmados) {
            System.out.println("[" + item.getFilaP() + ", " + item.getColumnaP() + "]");
            //hacer consulta
            try {
                conn = DriverManager.getConnection(url, usuario, password);
                ps = conn.prepareStatement(sql);
                ps.setInt(1, item.getFilaP());
                ps.setInt(2, item.getColumnaP());

                ps.setDate(3, fechaFun);
                ps.setString(4, horaFun);
                ps.setInt(5, id);

                ps.executeUpdate();
                System.out.println("Todo bien");
            } catch (SQLException ex) {
                Logger.getLogger(ControladorCompra.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println("ERROR en la base de datos tabla ASIENTOS");
            }

        }

        //request.setAttribute("id", id);

        //request.getRequestDispatcher("ControladorCompra").forward(request, response);
        System.out.println("###ID: "+id);
        response.sendRedirect("ControladorCompra?action=view&id="+id);

    }

    public Date convierteFecha(String fecha) {
        Date fechaBD = null;
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date fechaTMP;
        try {

            fechaTMP = formato.parse(fecha);
            fechaBD = new Date(fechaTMP.getTime());

        } catch (ParseException ex) {
            System.out.println("Error al convertir");
        }

        return fechaBD;
    }
}
