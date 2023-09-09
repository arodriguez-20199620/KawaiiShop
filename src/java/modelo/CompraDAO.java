/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Kaled Rodriguez
 */
public class CompraDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public List listar() {
        String sql = "Select c.codigoCompra, p.fotoProducto, p.nombreProducto, p.precio, cl.nombresCliente, c.cantidadProductos, c.fechaCompra, c.totalPagar, numeroSerie from Compra c"
                + " inner join Cliente cl on c.codigoCliente = cl.codigoCliente"
                + " inner join Producto p on c.codigoProducto = p.codigoProducto;";
        List<Compra> listadoCompra = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Compra c = new Compra();
                c.setCodigoCompra(rs.getInt(1));
                c.setFotoProducto(rs.getBinaryStream(2));
                c.setNombreProducto(rs.getString(3));
                c.setPrecio(rs.getDouble(4));
                c.setNombresCliente(rs.getString(5));
                c.setCantidadProductos(rs.getInt(6));
                c.setFechaCompra(rs.getString(7));
                c.setTotalPagar(rs.getDouble(8));
                c.setNumeroSerie(rs.getLong(9));
                listadoCompra.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listadoCompra;
    }

    public List listar(int codigoCliente) {
        String sql = "Select c.codigoCompra, p.fotoProducto, p.nombreProducto, cl.nombresCliente, c.cantidadProductos, c.fechaCompra, c.totalPagar, numeroSerie from Compra c"
                + " inner join Cliente cl on c.codigoCliente = cl.codigoCliente"
                + " inner join Producto p on c.codigoProducto = p.codigoProducto"
                + " where c.codigoCliente = " + codigoCliente + " order by c.codigoCliente, c.numeroSerie;";
        List<Compra> listadoCompra = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Compra c = new Compra();
                c.setCodigoCompra(rs.getInt(1));
                c.setFotoProducto(rs.getBinaryStream(2));
                c.setNombreProducto(rs.getString(3));
                c.setNombresCliente(rs.getString(4));
                c.setCantidadProductos(rs.getInt(5));
                c.setFechaCompra(rs.getString(6));
                c.setTotalPagar(rs.getDouble(7));
                listadoCompra.add(c);
                listadoCompra.removeAll(listadoCompra);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listadoCompra;
    }

    public int agregar(Compra c) {
        String sql = "insert into Compra(codigoProducto, codigoCliente, cantidadProductos, fechaCompra, totalPagar, numeroSerie) value(?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, c.getCodigoProducto());
            ps.setInt(2, c.getCodigoCliente());
            ps.setInt(3, c.getCantidadProductos());
            ps.setString(4, c.getFechaCompra());
            ps.setDouble(5, c.getTotalPagar());
            ps.setLong(6, c.getNumeroSerie());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("No se pudo agregar por puto");
        }
        return resp;
    }

}
