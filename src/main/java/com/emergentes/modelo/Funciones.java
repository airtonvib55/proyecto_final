package com.emergentes.modelo;

import java.sql.Date;


public class Funciones {
    
    private int id_funcion;
    private int id_pelicula;
    private int id_sala;
    private Date fecha_funcion;
    private String hora_funcion;
    private int dia_fecha;
    private String dia_literal;
    private String tipo;
    private int seleccionado;
    
    public Funciones(){
        this.id_funcion = 0;
        this.id_pelicula = 0;
        this.id_sala = 0;
        this.fecha_funcion = null;
        this.hora_funcion = "";
        this.dia_fecha = 0;
        this.dia_literal = "";
        this.tipo = "";
        this.seleccionado = 0;
        
    }

    public int getId_funcion() {
        return id_funcion;
    }

    public int getId_pelicula() {
        return id_pelicula;
    }

    public int getId_sala() {
        return id_sala;
    }

    public Date getFecha_funcion() {
        return fecha_funcion;
    }

    public String getHora_funcion() {
        return hora_funcion;
    }

    public int getDia_fecha() {
        return dia_fecha;
    }

    public String getDia_literal() {
        return dia_literal;
    }

    public String getTipo() {
        return tipo;
    }

    public int getSeleccionado() {
        return seleccionado;
    }
    
    

    public void setId_funcion(int id_funcion) {
        this.id_funcion = id_funcion;
    }

    public void setId_pelicula(int id_pelicula) {
        this.id_pelicula = id_pelicula;
    }

    public void setId_sala(int id_sala) {
        this.id_sala = id_sala;
    }

    public void setFecha_funcion(Date fecha_funcion) {
        this.fecha_funcion = fecha_funcion;
    }

    public void setHora_funcion(String hora_funcion) {
        this.hora_funcion = hora_funcion;
    }

    public void setDia_fecha(int dia_fecha) {
        this.dia_fecha = dia_fecha;
    }

    public void setDia_literal(String dia_literal) {
        this.dia_literal = dia_literal;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setSeleccionado(int seleccioando) {
        this.seleccionado = seleccioando;
    }
    
    
    
    
    
}
