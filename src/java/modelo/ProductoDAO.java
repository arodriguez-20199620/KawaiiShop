package modelo;

import config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

public class ProductoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public List listar() {
        String sql = "Select * from Producto";
        List<Producto> listaProducto = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto pr = new Producto();
                pr.setCodigoProducto(rs.getInt(1));
                pr.setFotoProducto(rs.getBinaryStream(2));
                pr.setNombreProducto(rs.getString(3));
                pr.setDescripcion(rs.getString(4));
                pr.setPrecio(rs.getDouble(5));
                pr.setStock(rs.getInt(6));
                pr.setEstado(rs.getString(7));
                listaProducto.add(pr);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaProducto;
    }

    public int agregar(Producto pro) {
        String sql = "insert into Producto (fotoProducto, nombreProducto, descripcion, precio, stock, estado) values(?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setBlob(1, pro.getFotoProducto());
            ps.setString(2, pro.getNombreProducto());
            ps.setString(3, pro.getDescripcion());
            ps.setDouble(4, pro.getPrecio());
            ps.setInt(5, pro.getStock());
            ps.setString(6, pro.getEstado());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("No se pudo agregar el registro");
        }
        return resp;
    }

    public Producto listarCodigoProducto(int id) {
        Producto pro = new Producto();
        String sql = "select * from producto where codigoProducto = " + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery(sql);
            while (rs.next()) {
                pro.setCodigoProducto(rs.getInt(1));
                pro.setNombreProducto(rs.getString(2));
                pro.setPrecio(rs.getDouble(3));
                pro.setStock(rs.getInt(4));
                pro.setEstado(rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pro;
    }

    public int actualizar(Producto pro) {
        String sql = "update producto set fotoProducto = ?, nombreProducto = ?, descripcion = ?, precio = ?, stock = ?, estado = ? where codigoProducto = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setBlob(1, pro.getFotoProducto());
            ps.setString(2, pro.getNombreProducto());
            ps.setString(3, pro.getDescripcion());
            ps.setDouble(4, pro.getPrecio());
            ps.setInt(5, pro.getStock());
            ps.setString(6, pro.getEstado());
            ps.setInt(7, pro.getCodigoProducto());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    public void eliminar(int id) {
        try {
            String sql = "delete from Producto where codigoProducto =" + id;
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void listarImg(int id, HttpServletResponse response) {
        String sql = "Select * from Producto where codigoProducto =" + id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");
        try {

            outputStream = response.getOutputStream();
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            if (rs.next()) {
                inputStream = rs.getBinaryStream("fotoProducto");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            while ((i = bufferedInputStream.read()) != -1) {
                bufferedOutputStream.write(i);
            }
        } catch (Exception e) {
        }
    }
}
