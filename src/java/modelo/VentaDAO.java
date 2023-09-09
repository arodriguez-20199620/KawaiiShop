package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class VentaDAO {

    Conexion con = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    Connection cn;
    String numeroSerie;

    int codigoVenta,k;
    
    public String generarSerie() {
        String sql = "Select LPAD(IFNULL(MAX(numeroSerie)+1,1),10,0) from Venta";
        try {
            cn = con.Conexion();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                numeroSerie = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println("No se puede generar");
            e.printStackTrace();
        }
        return numeroSerie;
    }

    public int idVenta() {
        String sql = "Select max(codigoVenta) from Venta";
        try {
            cn = con.Conexion();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                codigoVenta = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("No se puede generar");
            e.printStackTrace();
        }
        return codigoVenta;
    }

    public int guardarVenta(Venta v) {
        String sql = "insert into Venta (numeroSerie, fechaVenta, monto, estado, codigoCliente, codigoEmpleado) values (?,?,?,?,?,?)";
        try {
            cn = con.Conexion();
            ps = cn.prepareStatement(sql);
            ps.setString(1, v.getNumeroSerie());
            ps.setString(2, v.getFecha());
            ps.setDouble(3, v.getMonto());
            ps.setString(4, v.getEstado());
            ps.setInt(5, v.getCodigoCliente());
            ps.setInt(6, v.getCodigoEmpleado());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("No se puede agregar");
            e.printStackTrace();
        }
        return k;
    }

    public int guardarDetalleVenta(Venta v) {
        String sql = "insert into DetalleVenta (cantidad, precioVenta, codigoProducto, codigoVenta) values(?,?,?,?)";
        try {
            cn = con.Conexion();
            ps = cn.prepareStatement(sql);
            ps.setInt(1, v.getCantidad());
            ps.setDouble(2, v.getPrecio());
            ps.setInt(3, v.getCodigoProducto());
            ps.setInt(4, v.getCodigoVenta());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("No se puede guardar Detalle");
            e.printStackTrace();
        }
        return k;
    }

}
