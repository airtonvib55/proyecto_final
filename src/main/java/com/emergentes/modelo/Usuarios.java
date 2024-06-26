package com.emergentes.modelo;

public class Usuarios {
    private int id_usuario;
    private String nombre;
    private String paterno;
    private String materno;
    private int celular;
    private String email;
    private String contraseña;
    private String fecha_registro;
    
    public Usuarios(){
        this.id_usuario = 0;
        this.nombre = "";
        this.paterno = "";
        this.materno = "";
        this.celular = 0;
        this.email = "";
        this.fecha_registro = "";
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public String getPaterno() {
        return paterno;
    }

    public String getMaterno() {
        return materno;
    }

    public int getCelular() {
        return celular;
    }

    public String getEmail() {
        return email;
    }

    public String getContraseña() {
        return contraseña;
    }

    public String getFecha_registro() {
        return fecha_registro;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }

    public void setMaterno(String materno) {
        this.materno = materno;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public void setFecha_registro(String fecha_registro) {
        this.fecha_registro = fecha_registro;
    }

    
    
}
