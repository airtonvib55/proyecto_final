package com.emergentes.controlador;

import com.emergentes.modelo.Peliculas;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet(name = "ControladorPublicar", urlPatterns = {"/ControladorPublicar"})
public class ControladorPublicar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Estamos dentro del POST");

        //CODIGO PARA OBTENER LA RUTA
        String rutaRaiz = request.getServletContext().getRealPath(""); //ruta del proyecto

        // Navegar al directorio padre para encontrar "recursos"        
        File directorioRaiz = new File(rutaRaiz).getParentFile().getParentFile();
        File srcDir = new File(directorioRaiz, "src");
        File mainDir = new File(srcDir, "main");
        File webappDir = new File(mainDir, "webapp");
        File recursosDir = new File(webappDir, "recursos");
        //posters
        File postersDir = new File(recursosDir, "posters");
        String rutaPoster = postersDir.getAbsolutePath();

        //portadas
        File portadasDir = new File(recursosDir, "portadas");
        String rutaPortada = portadasDir.getAbsolutePath();

        System.out.println("Ruta Poster: " + rutaPoster);

        String nombrePoster = request.getParameter("posterNombre"); //nombre del archivo
        String posterRuta = rutaPoster + File.separator + nombrePoster;
        System.out.println("Ruta del archivo: " + posterRuta);

        String nombrePortada = request.getParameter("portadaNombre");
        String portadaRutaFinal = rutaPortada + File.separator + nombrePortada;

        //CODIGO PARA GUARDAR LA IMAGEN POSTER
        Part poster = request.getPart("iPoster");
        try (FileOutputStream fos = new FileOutputStream(posterRuta); InputStream is = poster.getInputStream()) {
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = is.read(buffer)) != -1) {
                fos.write(buffer, 0, bytesRead);
            }
        }
        //CODIGO PARA GUARDAR LA IMAGEN PORTADA
        Part portada = request.getPart("iPortada");
        try (FileOutputStream fos2 = new FileOutputStream(portadaRutaFinal); InputStream is2 = portada.getInputStream()) {
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = is2.read(buffer)) != -1) {
                fos2.write(buffer, 0, bytesRead);
            }
        }

        //conectar a base de datos
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:33065/bd_cine";
        String usuario = "root";
        String password = "";
        
        String sql = "insert into pelicula (nombre, sinopsis, duracion, genero, fecha_estreno, poster_ruta, portada_ruta) values(?,?,?,?,?,?,?)";

        String nombre = request.getParameter("nombre");
        String sinopsis = request.getParameter("sinopsis");
        int duracion = Integer.parseInt(request.getParameter("duracion"));
        Date fecha_estreno = convierteFecha(request.getParameter("festreno"));
        String genero = request.getParameter("genero");
        String poster_ruta = "posters/"+ nombrePoster;
        String portada_ruta = "portadas/"+ nombrePortada;
        
        System.out.println("Datos: "+nombre+", "+sinopsis+", "+duracion+", "+fecha_estreno+", "+genero+", "+poster_ruta+", "+portada_ruta);
        

        try {
            Connection conn = null;
            PreparedStatement ps;
            Class.forName(driver);
            conn = DriverManager.getConnection(url, usuario, password);
            
            ps = conn.prepareStatement(sql);
            ps.setString(1, nombre);
            ps.setString(2, sinopsis);
            ps.setInt(3, duracion);
            ps.setString(4, genero);
            ps.setDate(5, fecha_estreno);
            ps.setString(6, poster_ruta);
            ps.setString(7, portada_ruta);
            ps.executeUpdate();
            conn.close();
            ps.close();
        } catch (ClassNotFoundException ex) {
            System.out.println("Error Driver");
            Logger.getLogger(ControladorPublicar.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            System.out.println("Error conectar o insertar");
            Logger.getLogger(ControladorPublicar.class.getName()).log(Level.SEVERE, null, ex);
        }

        
        response.sendRedirect("publicar.jsp");

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
