package com.emergentes.controlador;

import com.emergentes.modelo.Peliculas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ControladorDetalles", urlPatterns = {"/ControladorDetalles"})
public class ControladorDetalles extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "view":

                String driver = "com.mysql.cj.jdbc.Driver";
                String url = "jdbc:mysql://localhost:33065/bd_cine";
                String usuario = "root";
                String password = "";
                

                //consulta detalles de pelicula en base al id
                String sql = "select * from pelicula where id_pelicula = ?";
                //int id = Integer.parseInt(request.getParameter("id_pelicula"));
                int id = Integer.parseInt(request.getParameter("id"));
                
                Peliculas pelicula = new Peliculas();

                Peliculas peli = new Peliculas();
                
                Connection conn;
                PreparedStatement ps;
                ResultSet rs;

                try {
                    Class.forName(driver);
                    conn = DriverManager.getConnection(url, usuario, password);
                    ps = conn.prepareStatement(sql);

                    ps.setInt(1, id);

                    rs = ps.executeQuery();
                    

                    while (rs.next()) {
                        peli.setId_pelicula(rs.getInt("id_pelicula"));
                        peli.setNombre_p(rs.getString("nombre"));
                        peli.setSinopsis(rs.getString("sinopsis"));
                        peli.setGenero(rs.getString("genero"));
                        peli.setDuracion(rs.getInt("duracion"));
                        peli.setCalificacion(rs.getInt("calificacion_total")); //revisar
                        peli.setCant_vistas(rs.getInt("cantidad_vistas"));
                        peli.setRuta_poster(rs.getString("poster_ruta"));
                        peli.setRuta_portada(rs.getString("portada_ruta"));
                    }

                    rs.close();
                    ps.close();
                    conn.close();

                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ControladorDetalles.class.getName()).log(Level.SEVERE, null, ex);
                    System.out.println("Error no se de que o que");
                } catch (SQLException ex) {
                    Logger.getLogger(ControladorDetalles.class.getName()).log(Level.SEVERE, null, ex);
                    System.out.println("Error de ");
                }
                
                System.out.println("id: "+id);
                System.out.println("Detalles peli"+peli.getNombre_p()+peli.getDuracion());
                
                request.setAttribute("pelicula", peli);
                request.getRequestDispatcher("detalles.jsp").forward(request, response);
                
                break;

            case "compra":
                int idP = Integer.parseInt(request.getParameter("id"));
                
                request.setAttribute("id_pelicula", idP);
                request.getRequestDispatcher("compra.jsp").forward(request, response);
                
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
