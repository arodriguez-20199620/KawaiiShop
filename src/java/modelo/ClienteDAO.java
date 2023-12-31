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

public class ClienteDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public List listar() {
        String sql = "Select * from Cliente";
        List<Cliente> listaCliente = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cliente cl = new Cliente();
                cl.setCodigoCliente(rs.getInt(1));
                cl.setDPICliente(rs.getString(2));
                cl.setFotoPerfil(rs.getBinaryStream(3));
                cl.setNombresCliente(rs.getString(4));
                cl.setDireccionCliente(rs.getString(5));
                cl.setEstado(rs.getString(6));
                cl.setUsuario(rs.getString(7));
                cl.setCorreo(rs.getString(8));
                listaCliente.add(cl);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaCliente;
    }

    public int agregar(Cliente cl) {
        String sql = "insert into Cliente (DPICliente, fotoPerfil, nombresCliente, direccionCliente, estado, usuario, correo) values (?,?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, cl.getDPICliente());
            ps.setBlob(2, cl.getFotoPerfil());
            ps.setString(3, cl.getNombresCliente());
            ps.setString(4, cl.getDireccionCliente());
            ps.setString(5, cl.getEstado());
            ps.setString(6, cl.getUsuario());
            ps.setString(7, cl.getCorreo());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("No se pudo agregar el registro");
        }
        return resp;
    }

    public Cliente buscar(String dpi) {
        Cliente cl = new Cliente();
        String sql = "Select * from Cliente where DPICliente = " + dpi;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery(sql);
            while (rs.next()) {
                cl.setCodigoCliente(rs.getInt(1));
                cl.setDPICliente(rs.getString(2));
                cl.setFotoPerfil(rs.getBinaryStream(3));
                cl.setNombresCliente(rs.getString(4));
                cl.setDireccionCliente(rs.getString(5));
                cl.setEstado(rs.getString(6));
                cl.setUsuario(rs.getString(7));
                cl.setCorreo(rs.getString(8));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cl;
    }

    public Cliente listarCodigoCliente(int id) {
        Cliente cl = new Cliente();
        String sql = "Select * from Cliente where codigoCliente = " + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery(sql);
            while (rs.next()) {
                cl.setCodigoCliente(rs.getInt(1));
                cl.setDPICliente(rs.getString(2));
                cl.setFotoPerfil(rs.getBinaryStream(3));
                cl.setNombresCliente(rs.getString(4));
                cl.setDireccionCliente(rs.getString(5));
                cl.setEstado(rs.getString(6));
                cl.setUsuario(rs.getString(7));
                cl.setCorreo(rs.getString(8));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cl;
    }

    public int actualizar(Cliente cl) {
        String sql = "update Cliente set DPICliente = ?, fotoPerfil = ?, nombresCliente = ?, direccionCliente = ?, estado = ?, usuario = ?, correo = ? where codigoCliente = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, cl.getDPICliente());
            ps.setBlob(2, cl.getFotoPerfil());
            ps.setString(3, cl.getNombresCliente());
            ps.setString(4, cl.getDireccionCliente());
            ps.setString(5, cl.getEstado());
            ps.setString(6, cl.getUsuario());
            ps.setString(7, cl.getCorreo());
            ps.setInt(8, cl.getCodigoCliente());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return resp;
    }

    public void eliminar(int id) {
        String sql = "delete from Cliente where codigoCliente =" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Cliente validar(String correo, String DPICliente) {
        Cliente cliente = new Cliente();
        String sql = "select * from Cliente where correo = ? and DPICliente = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, DPICliente);
            rs = ps.executeQuery();
            while (rs.next()) {
                cliente.setCodigoCliente(rs.getInt("codigoCliente"));
                cliente.setDPICliente(rs.getString("DPICliente"));
                cliente.setNombresCliente(rs.getString("nombresCliente"));
                cliente.setDireccionCliente("direccionCliente");
                cliente.setEstado("estado");
                cliente.setUsuario(rs.getString("usuario"));
                cliente.setCorreo(rs.getString("correo"));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cliente;
    }

    public void listarImg(int codCliente, HttpServletResponse response) {
        String sql = "Select * from Cliente where codigoCliente =" + codCliente;
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
                inputStream = rs.getBinaryStream("fotoPerfil");
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
