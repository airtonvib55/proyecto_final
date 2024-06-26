package com.emergentes.controlador;

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
import javax.servlet.http.HttpSession;

@WebServlet(name = "ControladorLogin", urlPatterns = {"/ControladorLogin"})
public class ControladorLogin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:33065/bd_cine";
            String usuario = "root";
            String password = "";

            Connection conn = null;
            PreparedStatement ps;

            Class.forName(driver);

            conn = DriverManager.getConnection(url, usuario, password);

            String email = request.getParameter("email");
            String contraseña = request.getParameter("contrasena");

            if (checkUser(conn, email, contraseña)) {
                System.out.println("Todo OK");
                HttpSession ses = request.getSession();
                ses.setAttribute("login", "ok");
                //response.sendRedirect("ClienteControlador");
                response.sendRedirect("index.jsp");
            } else {
                System.out.println("Incorrecto... no existe");
                System.out.println(email + ", " + contraseña);
                response.sendRedirect("iniciarc.jsp");
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ControladorLogin.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorLogin.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    

    public boolean checkUser(Connection conn, String email, String password) {
        boolean resultado = false;

        try {
            PreparedStatement pr;
            String sql = "select * from usuario where email=? and contraseña=?";
            pr = conn.prepareStatement(sql);
            pr.setString(1, email);
            pr.setString(2, password);

            ResultSet rs = pr.executeQuery();
            resultado = rs.next();

        } catch (SQLException ex) {
            System.out.println("Error al autenticar");
        }
        return resultado;
    }

}
