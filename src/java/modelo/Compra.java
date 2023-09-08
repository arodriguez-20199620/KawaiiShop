/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.InputStream;

/**
 *
 * @author Kaled Rodriguez
 */
public class Compra {

    private int codigoCompra;
    private int codigoProducto;
    private int codigoCliente;
    private int cantidadProductos;
    private String fechaCompra;
    private double totalPagar;
    private long numeroSerie;

    // inner join
    private InputStream fotoProducto;
    private String nombreProducto;
    private String nombresCliente;

    public Compra() {
    }

    public Compra(int codigoCompra, int codigoProducto, int codigoCliente, int cantidadProductos, String fechaCompra, double totalPagar, long numeroSerie, InputStream fotoProducto, String nombreProducto, String nombresCliente) {
        this.codigoCompra = codigoCompra;
        this.codigoProducto = codigoProducto;
        this.codigoCliente = codigoCliente;
        this.cantidadProductos = cantidadProductos;
        this.fechaCompra = fechaCompra;
        this.totalPagar = totalPagar;
        this.numeroSerie = numeroSerie;
        this.fotoProducto = fotoProducto;
        this.nombreProducto = nombreProducto;
        this.nombresCliente = nombresCliente;
    }

    public int getCodigoCompra() {
        return codigoCompra;
    }

    public void setCodigoCompra(int codigoCompra) {
        this.codigoCompra = codigoCompra;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }

    public int getCodigoCliente() {
        return codigoCliente;
    }

    public void setCodigoCliente(int codigoCliente) {
        this.codigoCliente = codigoCliente;
    }

    public int getCantidadProductos() {
        return cantidadProductos;
    }

    public void setCantidadProductos(int cantidadProductos) {
        this.cantidadProductos = cantidadProductos;
    }

    public String getFechaCompra() {
        return fechaCompra;
    }

    public void setFechaCompra(String fechaCompra) {
        this.fechaCompra = fechaCompra;
    }

    public double getTotalPagar() {
        return totalPagar;
    }

    public void setTotalPagar(double totalPagar) {
        this.totalPagar = totalPagar;
    }

    public long getNumeroSerie() {
        return numeroSerie;
    }

    public void setNumeroSerie(long numeroSerie) {
        this.numeroSerie = numeroSerie;
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

    public String getNombresCliente() {
        return nombresCliente;
    }

    public void setNombresCliente(String nombresCliente) {
        this.nombresCliente = nombresCliente;
    }

}
