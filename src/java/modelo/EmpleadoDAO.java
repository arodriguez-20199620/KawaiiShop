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

public class EmpleadoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    // Metodo para validar
    public Empleado validar(String correo, String DPIEmpleado) {
        // Instanciar un objeto de tipo empleado
        Empleado empleado = new Empleado();
        // Agregar una variable de tipo String para la consulta
        String sql = "select * from Empleado where correo = ? and DPIEmpleado = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, DPIEmpleado);
            rs = ps.executeQuery();
            while (rs.next()) {
                empleado.setCodigoEmpleado(rs.getInt("codigoEmpleado"));
                empleado.setDPIEmpleado(rs.getString("DPIEmpleado"));
                empleado.setNombresEmpleado(rs.getString("nombresEmpleado"));
                empleado.setUsuario(rs.getString("usuario"));
                empleado.setCorreo(rs.getString("correo"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return empleado; // empleado encontrado
    }

    // Operaciones del CRUD
    // Metodo listar
    public List listar() {
        String sql = "Select * from empleado";
        List<Empleado> listaEmpleado = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Empleado em = new Empleado();
                em.setCodigoEmpleado(rs.getInt(1));
                em.setDPIEmpleado(rs.getString(2));
                em.setFotoPerfil(rs.getBinaryStream(3));
                em.setNombresEmpleado(rs.getString(4));
                em.setTelefonoEmpleado(rs.getString(5));
                em.setEstado(rs.getString(6));
                em.setUsuario(rs.getString(7));
                em.setCorreo(rs.getString(8));
                em.setRol(rs.getString(9));
                listaEmpleado.add(em);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaEmpleado;
    }

    // Metodo AGREGAR
    public int agregar(Empleado emp) {
        String sql = "insert into Empleado(DPIEmpleado, fotoPerfil, nombresEmpleado, telefonoEmpleado, estado, usuario, correo, rol) values(?,?,?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, emp.getDPIEmpleado());
            ps.setBlob(2, emp.getFotoPerfil());
            ps.setString(3, emp.getNombresEmpleado());
            ps.setString(4, emp.getTelefonoEmpleado());
            ps.setString(5, emp.getEstado());
            ps.setString(6, emp.getUsuario());
            ps.setString(7, emp.getCorreo());
            ps.setString(8, emp.getRol());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("No se pudo agregar el registro");
        }

        return resp;
    }

    // Buscar por código
    public Empleado listarCodigoEmpleado(int id) {
        // Instanciar el objeto a devolver    
        Empleado emp = new Empleado();
        String sql = "select * from empleado where codigoEmpleado = " + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery(sql);
            while (rs.next()) {

                emp.setDPIEmpleado(rs.getString(2));
                emp.setNombresEmpleado(rs.getString(3));
                emp.setTelefonoEmpleado(rs.getString(4));
                emp.setEstado(rs.getString(5));
                emp.setUsuario(rs.getString(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return emp;
    }

    // Metodo EDITAR
    public int actualizar(Empleado emp) {
        String sql = "update empleado set DPIEmpleado = ?, nombresEmpleado = ?, telefonoEmpleado = ?, estado = ?, usuario = ? where codigoEmpleado = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, emp.getDPIEmpleado());
            ps.setString(2, emp.getNombresEmpleado());
            ps.setString(3, emp.getTelefonoEmpleado());
            ps.setString(4, emp.getEstado());
            ps.setString(5, emp.getUsuario());
            ps.setInt(6, emp.getCodigoEmpleado());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    // Metodo ELIMINAR
    public void eliminar(int id) {
        String sql = "delete from Empleado where codigoEmpleado =" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void listarImg(int id, HttpServletResponse response) {
        String sql = "Select * from Empleado where codigoEmpleado=" + id;
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
