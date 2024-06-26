package com.emergentes.controlador;

import com.emergentes.modelo.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ControladorUsuario", urlPatterns = {"/ControladorUsuario"})
public class ControladorUsuario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:33065/bd_cine";
        String usuario = "root";
        String password = "";
        try {

            Connection conn = null;
            PreparedStatement ps;

            Class.forName(driver);

            conn = DriverManager.getConnection(url, usuario, password);

            String sql = "insert into usuario (nombre, paterno, materno, celular, email, contraseña) values (?,?,?,?,?,?)";
            int id;

            if (request.getParameter("id") == "") {
                id = 0;
            } else {
                id = Integer.parseInt(request.getParameter("id"));
            }
            System.out.println("xdxdxdxd");
            String nombre = request.getParameter("nombre");
            String paterno = request.getParameter("paterno");
            String materno = request.getParameter("materno");
            int celular = Integer.parseInt(request.getParameter("celular"));
            String email = request.getParameter("email");
            String contraseña = request.getParameter("contrasena");

            //if (id == 0) {
            ps = conn.prepareStatement(sql);
            ps.setString(1, nombre);
            ps.setString(2, paterno);
            ps.setString(3, materno);
            ps.setInt(4, celular);
            ps.setString(5, email);
            ps.setString(6, contraseña);
            ps.executeUpdate();
            HttpSession ses = request.getSession();
            ses.setAttribute("login", "ok");
            //}
            conn.close();
            response.sendRedirect("index.jsp");

        } catch (ClassNotFoundException ex) {
            System.out.println("ERROR NO SE QUE " + ex.getMessage());
        } catch (SQLException ex) {
            System.out.println("ERROR BASE DE DATOS " + ex.getMessage());
        }

    }

}
