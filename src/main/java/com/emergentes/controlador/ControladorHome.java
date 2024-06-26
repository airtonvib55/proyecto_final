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
@WebServlet(name = "ControladorHome", urlPatterns = {"/ControladorHome"})
public class ControladorHome extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //conectar a base de datos
        System.out.println("GET");
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:33065/bd_cine";
        String usuario = "root";
        String password = "";

        String sql = "select e.id_pelicula, p.poster_ruta from estado e, pelicula p where e.id_pelicula = p.id_pelicula and e.tipo = 'cartelera' group by e.id_pelicula;";

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
                peli.setRuta_poster(rs.getString("poster_ruta"));

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
        request.getRequestDispatcher("home.jsp").forward(request, response);
        
        
        
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
