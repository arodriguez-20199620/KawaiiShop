/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.InputStream;

public class Producto {

    private int codigoProducto;
    private InputStream fotoProducto;
    private String nombreProducto;
    private String descripcion;
    private Double precio;
    private int stock;
    private String estado;

    public Producto() {
    }

    public Producto(int codigoProducto, InputStream fotoProducto, String nombreProducto, String descripcion, Double precio, int stock, String estado) {
        this.codigoProducto = codigoProducto;
        this.fotoProducto = fotoProducto;
        this.nombreProducto = nombreProducto;
        this.descripcion = descripcion;
        this.precio = precio;
        this.stock = stock;
        this.estado = estado;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }

    public InputStream getFotoProducto() {
        return fotoProducto;
    }

    public void setFotoProducto(InputStream fotoProducto) {
        this.fotoProducto = fotoProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

}
