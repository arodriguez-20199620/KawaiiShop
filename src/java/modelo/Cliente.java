package modelo;

import java.io.InputStream;

public class Cliente {

    private int codigoCliente;
    private String DPICliente;
    private InputStream fotoPerfil;
    private String nombresCliente;
    private String direccionCliente;
    private String estado;
    private String usuario;
    private String correo;

    public Cliente() {
    }

    public Cliente(int codigoCliente, String DPICliente, InputStream fotoPerfil, String nombresCliente, String direccionCliente, String estado, String usuario, String correo) {
        this.codigoCliente = codigoCliente;
        this.DPICliente = DPICliente;
        this.fotoPerfil = fotoPerfil;
        this.nombresCliente = nombresCliente;
        this.direccionCliente = direccionCliente;
        this.estado = estado;
        this.usuario = usuario;
        this.correo = correo;
    }

    public int getCodigoCliente() {
        return codigoCliente;
    }

    public void setCodigoCliente(int codigoCliente) {
        this.codigoCliente = codigoCliente;
    }

    public String getDPICliente() {
        return DPICliente;
    }

    public void setDPICliente(String DPICliente) {
        this.DPICliente = DPICliente;
    }

    public InputStream getFotoPerfil() {
        return fotoPerfil;
    }

    public void setFotoPerfil(InputStream fotoPerfil) {
        this.fotoPerfil = fotoPerfil;
    }

    public String getNombresCliente() {
        return nombresCliente;
    }

    public void setNombresCliente(String nombresCliente) {
        this.nombresCliente = nombresCliente;
    }

    public String getDireccionCliente() {
        return direccionCliente;
    }

    public void setDireccionCliente(String direccionCliente) {
        this.direccionCliente = direccionCliente;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

}
