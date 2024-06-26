package com.emergentes.controlador;

import com.emergentes.modelo.Peliculas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JAVIER APAZA
 */
@WebServlet(name = "ControladorCartelera", urlPatterns = {"/ControladorCartelera"})
public class ControladorCartelera extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //conectar a base de datos
        System.out.println("GET");
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:33065/bd_cine";
        String usuario = "root";
        String password = "";

        String sql = "select f.id_pelicula, p.nombre from funcion f, pelicula p  where f.id_pelicula = p.id_pelicula group by id_pelicula";
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
            System.out.println("ERROR DRIVER");
        } catch (SQLException ex) {
            System.out.println("ERROR SELECT");
        }

        request.setAttribute("lista", listaP);
        request.getRequestDispatcher("publicarCartelera.jsp").forward(request, response);

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

        String sql = "insert into estado(tipo, id_pelicula) values(?,?)";
        int id = Integer.parseInt(request.getParameter("pelicula"));
        String tipo = request.getParameter("tipo");

        Connection conn;
        PreparedStatement ps;

        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, usuario, password);

            ps = conn.prepareStatement(sql);
            ps.setString(1, tipo);
            ps.setInt(2, id);

            ps.executeUpdate();
            conn.close();
            ps.close();
        } catch (ClassNotFoundException ex) {
            System.out.println("ERROR DRIVER");
        } catch (SQLException ex) {
            System.out.println("ERROR CONSULTA");
        }
        System.out.println("GUARDADO");
        response.sendRedirect("ControladorHome");
    }

}
