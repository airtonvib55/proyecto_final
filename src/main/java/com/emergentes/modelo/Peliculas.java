package com.emergentes.modelo;

import java.sql.Date;

public class Peliculas {
    private int id_pelicula;
    private String nombre_p;
    private String sinopsis;
    private int duracion;
    private String genero;
    private Date fecha_estreno;
    private double calificacion;
    private int cant_vistas;
    private String ruta_poster;
    private String ruta_portada;
    
    public Peliculas(){
        this.id_pelicula = 0;
        this.nombre_p = "";
        this.sinopsis = "";
        this.duracion = 0;
        this.genero = "";
        this.fecha_estreno = null;
        this.calificacion = 0;
        this.cant_vistas = 0;
        this.ruta_poster = "";
        this.ruta_portada = "";
    }

    public int getId_pelicula() {
        return id_pelicula;
    }

    public String getNombre_p() {
        return nombre_p;
    }

    public String getSinopsis() {
        return sinopsis;
    }

    public int getDuracion() {
        return duracion;
    }

    public String getGenero() {
        return genero;
    }

    public Date getFecha_estreno() {
        return fecha_estreno;
    }

    public double getCalificacion() {
        return calificacion;
    }

    public int getCant_vistas() {
        return cant_vistas;
    }

    public String getRuta_poster() {
        return ruta_poster;
    }

    public String getRuta_portada() {
        return ruta_portada;
    }

    public void setId_pelicula(int id_pelicula) {
        this.id_pelicula = id_pelicula;
    }

    public void setNombre_p(String nombre_p) {
        this.nombre_p = nombre_p;
    }

    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public void setFecha_estreno(Date fecha_estreno) {
        this.fecha_estreno = fecha_estreno;
    }

    public void setCalificacion(double calificacion) {
        this.calificacion = calificacion;
    }

    public void setCant_vistas(int cant_vistas) {
        this.cant_vistas = cant_vistas;
    }

    public void setRuta_poster(String ruta_poster) {
        this.ruta_poster = ruta_poster;
    }

    public void setRuta_portada(String ruta_portada) {
        this.ruta_portada = ruta_portada;
    }
    
    
    
}
