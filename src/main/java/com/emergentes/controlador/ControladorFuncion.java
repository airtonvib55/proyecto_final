package com.emergentes.controlador;

import com.emergentes.modelo.Peliculas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ControladorFuncion", urlPatterns = {"/ControladorFuncion"})
public class ControladorFuncion extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //conectar a base de datos
        System.out.println("GET");
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:33065/bd_cine";
        String usuario = "root";
        String password = "";

        String sql = "select id_pelicula, nombre from pelicula";
        //Peliculas peli = new Peliculas();
        ArrayList<Peliculas> listaP = new ArrayList<Peliculas>();
        Connection conn;
        PreparedStatement ps;

        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, usuario, password);
            ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Peliculas peli = new Peliculas();
                peli.setId_pelicula(rs.getInt("id_pelicula"));
                peli.setNombre_p(rs.getString("nombre"));
                System.out.println(peli.getNombre_p());

                listaP.add(peli);
            }

            conn.close();
            ps.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ControladorFuncion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorFuncion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        request.setAttribute("lista", listaP);
        request.getRequestDispatcher("publicarFuncion.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //conectar a base de datos
        System.out.println("POST");
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:33065/bd_cine";
        String usuario = "root";
        String password = "";

        String sql = "insert into funcion (id_pelicula, id_sala, fecha_funcion, hora_funcion) values (?,?,?,?)";
        int id_peli = Integer.parseInt(request.getParameter("pelicula"));
        int id_sala = Integer.parseInt(request.getParameter("sala"));
        Date fechaF = convierteFecha(request.getParameter("fefuncion"));
        String horaF = request.getParameter("horaF");
        
        Connection conn;
        PreparedStatement ps;

        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, usuario, password);

            ps = conn.prepareStatement(sql);
            ps.setInt(1, id_peli);
            ps.setInt(2, id_sala);
            ps.setDate(3, fechaF);
            ps.setString(4, horaF);

            ps.executeUpdate();
            conn.close();
            ps.close();
        } catch (ClassNotFoundException ex) {
            System.out.println("ERROR DRIVER");
        } catch (SQLException ex) {
            System.out.println("ERROR CONSULTA");
        }
        System.out.println("GUARDADO");
        response.sendRedirect("home.jsp");

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
