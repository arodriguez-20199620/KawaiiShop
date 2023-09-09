/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import modelo.Cliente;
import modelo.ClienteDAO;
import modelo.Compra;
import modelo.CompraDAO;
import modelo.Empleado;
import modelo.EmpleadoDAO;
import modelo.Producto;
import modelo.ProductoDAO;
import modelo.Venta;
import modelo.VentaDAO;

@MultipartConfig
public class Controlador extends HttpServlet {

    Empleado empleado = new Empleado();
    EmpleadoDAO empleadoDAO = new EmpleadoDAO();
    Producto producto = new Producto();
    ProductoDAO productoDAO = new ProductoDAO();
    Cliente cliente = new Cliente();
    ClienteDAO clienteDAO = new ClienteDAO();
    Compra compra = new Compra();
    CompraDAO compraDAO = new CompraDAO();
    Venta venta = new Venta();
    List<Venta> lista = new ArrayList<>();
    List<Compra> listaCompras = new ArrayList<>();
    int item = 0;
    VentaDAO ventaDAO = new VentaDAO();
    DecimalFormat dosDecimales = new DecimalFormat("#.##");
    String numeroSerie;
    int codPro, canti;
    String descripcion;
    Double precio, subTotal;
    Double totalPagar;
    int codProducto;
    int codCliente;
    Part part;
    InputStream foto;
    int cantidad = 1;
    public static String user = controlador.Controlador.user;
    public static String pass = controlador.Controlador.pass;
    static int codEmpleado;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        } else if (menu.equals("PrincipalCliente")) {
            request.getRequestDispatcher("PrincipalCliente.jsp").forward(request, response);
        } else if (menu.equals("Empleado")) {
            switch (accion) {
                case "listar":
                    List listaEmpleado = empleadoDAO.listar();
                    request.setAttribute("empleados", listaEmpleado);
                    request.getRequestDispatcher("Empleado.jsp").forward(request, response);
                    break;
                case "Agregar":
                    String DPI = request.getParameter("txtDPIEmpleado");
                    String nombres = request.getParameter("txtNombreEmpleado");
                    String telefono = request.getParameter("txtTelefono");
                    String est = request.getParameter("txtEstado");
                    String user = request.getParameter("txtUsuario");
                    String correo = request.getParameter("txtCorreo");
                    String rol = request.getParameter("cbRoles");
                    part = request.getPart("foto");
                    foto = part.getInputStream();
                    empleado.setDPIEmpleado(DPI);
                    empleado.setFotoPerfil(foto);
                    empleado.setNombresEmpleado(nombres);
                    empleado.setTelefonoEmpleado(telefono);
                    empleado.setEstado(est);
                    empleado.setUsuario(user);
                    empleado.setCorreo(correo);
                    empleado.setRol(rol);
                    empleadoDAO.agregar(empleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=listar").forward(request, response);
                    break;
                case "Actualizar":
                    part = request.getPart("foto");
                    foto = part.getInputStream();
                    empleado.setCodigoEmpleado(Integer.parseInt(request.getParameter("codigoEmpleado")));
                    empleado.setFotoPerfil(foto);
                    empleado.setDPIEmpleado(request.getParameter("txtDPIEmpleado"));
                    empleado.setNombresEmpleado(request.getParameter("txtNombreEmpleado"));
                    empleado.setTelefonoEmpleado(request.getParameter("txtTelefono"));
                    empleado.setEstado(request.getParameter("txtEstado"));
                    empleado.setUsuario(request.getParameter("txtUsuario"));
                    empleado.setCorreo(request.getParameter("txtCorreo"));
                    empleado.setRol(request.getParameter("cbRoles"));
                    empleadoDAO.actualizar(empleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=listar").forward(request, response);
                    break;
                case "Eliminar":
                    codEmpleado = Integer.parseInt(request.getParameter("codigoEmpleado"));
                    empleadoDAO.eliminar(codEmpleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=listar").forward(request, response);
                    break;

            }

        } else if (menu.equals("Producto")) {
            switch (accion) {
                case "listar":
                    List listaProducto = productoDAO.listar();
                    request.setAttribute("productos", listaProducto);
                    request.getRequestDispatcher("Producto.jsp").forward(request, response);
                    break;
                case "Agregar":
                    String nombreProducto = request.getParameter("txtNombreProducto");
                    String descripcion = request.getParameter("txtDescripcion");
                    Double precio = Double.parseDouble(request.getParameter("txtPrecio"));
                    int stock = Integer.parseInt(request.getParameter("txtStock"));
                    String estado = request.getParameter("txtEstado");
                    part = request.getPart("foto");
                    foto = part.getInputStream();
                    producto.setFotoProducto(foto);
                    producto.setNombreProducto(nombreProducto);
                    producto.setDescripcion(descripcion);
                    producto.setPrecio(precio);
                    producto.setStock(stock);
                    producto.setEstado(estado);
                    productoDAO.agregar(producto);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=listar").forward(request, response);
                    break;
                case "Actualizar":
                    producto.setCodigoProducto(Integer.parseInt(request.getParameter("codigoProducto")));
                    part = request.getPart("foto");
                    foto = part.getInputStream();
                    producto.setFotoProducto(foto);
                    producto.setNombreProducto(request.getParameter("txtNombreProducto"));
                    producto.setDescripcion(request.getParameter("txtDescripcion"));
                    producto.setPrecio(Double.parseDouble(request.getParameter("txtPrecio")));
                    producto.setStock(Integer.parseInt(request.getParameter("txtStock")));
                    producto.setEstado(request.getParameter("txtEstado"));
                    productoDAO.actualizar(producto);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=listar").forward(request, response);
                    break;

                case "Eliminar":
                    codProducto = Integer.parseInt(request.getParameter("codigoProducto"));
                    productoDAO.eliminar(codProducto);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=listar").forward(request, response);
                    break;
            }
        } else if (menu.equals("Cliente")) {
            switch (accion) {
                case "listar":
                    List listaCliente = clienteDAO.listar();
                    request.setAttribute("clientes", listaCliente);
                    request.getRequestDispatcher("Clientes.jsp").forward(request, response);
                    break;
                case "Agregar":
                    String DPI = request.getParameter("txtDPICliente");
                    part = request.getPart("foto");
                    foto = part.getInputStream();
                    String nombres = request.getParameter("txtNombreCliente");
                    String direccion = request.getParameter("txtDireccionCliente");
                    String estado = request.getParameter("txtEstado");
                    String usuario = request.getParameter("txtUsuario");
                    String correo = request.getParameter("txtCorreo");
                    cliente.setDPICliente(DPI);
                    cliente.setFotoPerfil(foto);
                    cliente.setNombresCliente(nombres);
                    cliente.setDireccionCliente(direccion);
                    cliente.setEstado(estado);
                    cliente.setUsuario(usuario);
                    cliente.setCorreo(correo);
                    clienteDAO.agregar(cliente);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=listar").forward(request, response);
                    break;
                case "Actualizar":
                    cliente.setCodigoCliente(Integer.parseInt(request.getParameter("codigoCliente")));
                    cliente.setDPICliente(request.getParameter("txtDPICliente"));
                    part = request.getPart("foto");
                    foto = part.getInputStream();
                    cliente.setFotoPerfil(foto);
                    cliente.setNombresCliente(request.getParameter("txtNombreCliente"));
                    cliente.setDireccionCliente(request.getParameter("txtDireccionCliente"));
                    cliente.setEstado(request.getParameter("txtEstado"));
                    cliente.setUsuario(request.getParameter("txtUsuario"));
                    cliente.setCorreo(request.getParameter("txtCorreo"));
                    clienteDAO.actualizar(cliente);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=listar").forward(request, response);
                    break;
                case "Eliminar":
                    codCliente = Integer.parseInt(request.getParameter("codigoCliente"));
                    clienteDAO.eliminar(codCliente);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=listar").forward(request, response);
                    break;
            }
        } else if (menu.equals("RegistrarVenta")) {
            switch (accion) {
                case "BuscarCliente":
                    String dpi = request.getParameter("txtCodigoCliente");
                    cliente.setDPICliente(dpi);
                    cliente = clienteDAO.buscar(dpi);
                    request.setAttribute("cliente", cliente);
                    break;

                case "BuscarProducto":
                    int id = Integer.parseInt(request.getParameter("txtCodigoProducto"));
                    producto.setCodigoProducto(id);
                    producto = productoDAO.listarCodigoProducto(id);
                    request.setAttribute("cliente", cliente);
                    request.setAttribute("producto", producto);
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("lista", lista);
                    break;

                case "Eliminar":
                    codPro = Integer.parseInt(request.getParameter("codigoProducto"));
                    for (Venta venta : lista) {
                        if (venta.getCodigoProducto() == codPro) {
                            lista.remove(venta);
                            break;
                        }
                    }
                    request.setAttribute("lista", lista);
                    break;

                case "AgregarVenta":
                    request.setAttribute("cliente", cliente);
                    totalPagar = 0.0;
                    item = item + 1;
                    codPro = producto.getCodigoProducto();
                    descripcion = request.getParameter("txtNombreProducto");
                    precio = Double.parseDouble(request.getParameter("txtPrecio"));
                    canti = Integer.parseInt(request.getParameter("txtCantidad"));
                    subTotal = precio * canti;
                    venta = new Venta();
                    venta.setItem(item);
                    venta.setCodigoProducto(codPro);
                    venta.setDescripcionProd(descripcion);
                    venta.setPrecio(precio);
                    venta.setCantidad(canti);
                    venta.setSubTotal(subTotal);
                    lista.add(venta);
                    for (int i = 0; i < lista.size(); i++) {
                        totalPagar = totalPagar + lista.get(i).getSubTotal();
                    }
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("lista", lista);
                    request.setAttribute("numeroSerie", numeroSerie);

                    break;

                case "GenerarVenta":
                    venta.setCodigoCliente(cliente.getCodigoCliente());
                    venta.setCodigoEmpleado(1);
                    numeroSerie = ventaDAO.generarSerie();
                    venta.setNumeroSerie(numeroSerie);
                    venta.setFecha("2023-09-12");
                    venta.setMonto(totalPagar);
                    venta.setEstado("1");
                    ventaDAO.guardarVenta(venta);
                    int idv = ventaDAO.idVenta();
                    //Guardar Detalle Venta
                    for (int i = 0; i < lista.size(); i++) {
                        venta = new Venta();
                        venta.setCodigoVenta(idv);
                        venta.setCodigoProducto(lista.get(i).getCodigoProducto());
                        venta.setCantidad(lista.get(i).getCantidad());
                        venta.setPrecio(lista.get(i).getPrecio());
                        ventaDAO.guardarDetalleVenta(venta);
                    }
                    numeroSerie = ventaDAO.generarSerie();
                    request.setAttribute("numeroSerie", numeroSerie);
                    lista.clear();
                    break;

                default:
                    numeroSerie = ventaDAO.generarSerie();
                    if (numeroSerie == null) {
                        numeroSerie = "00000001";
                        request.setAttribute("numeroSerie", numeroSerie);
                    } else {
                        request.setAttribute("numeroSerie", numeroSerie);
                    }

            }
            request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);

        } else if (menu.equals(
                "Home")) {
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        } else if (menu.equals(
                "Catalogo")) {
            switch (accion) {
                case "listar":
                    List listaProducto = productoDAO.listar();
                    request.setAttribute("productos", listaProducto);
                    request.getRequestDispatcher("Catalogo.jsp").forward(request, response);
                    break;
                case "carrito":
                    int id = clienteDAO.validar(user, pass).getCodigoCliente();
                    producto = productoDAO.listarCodigoProducto(Integer.parseInt(request.getParameter("codigoProducto")));
                    compra.setCodigoProducto(producto.getCodigoProducto());
                    compra.setNombreProducto(producto.getNombreProducto());
                    compra.setCodigoCliente(id);
                    compra.setCantidadProductos(cantidad);
                    compra.setFechaCompra(LocalDate.now().toString());
                    compra.setTotalPagar(cantidad * producto.getPrecio());
                    listaCompras.add(compra);
                    request.getRequestDispatcher("Controlador?menu=Catalogo&accion=listar").forward(request, response);
                    break;
            }

        } else if (menu.equals(
                "Carrito")) {
            switch (accion) {
                case "listar":
                    request.setAttribute("carrito", listaCompras);
                    request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                    break;
            }
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
