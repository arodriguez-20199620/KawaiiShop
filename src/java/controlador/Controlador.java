/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelo.Cliente;
import modelo.ClienteDAO;
import modelo.Empleado;
import modelo.EmpleadoDAO;
import modelo.Producto;
import modelo.ProductoDAO;

public class Controlador extends HttpServlet {

    Empleado empleado = new Empleado();
    EmpleadoDAO empleadoDAO = new EmpleadoDAO();
    Producto producto = new Producto();
    ProductoDAO productoDAO = new ProductoDAO();
    Cliente cliente = new Cliente();
    ClienteDAO clienteDAO = new ClienteDAO();

    int codEmpleado;
    int codProducto;
    int codCliente;

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
                    empleado.setDPIEmpleado(DPI);
                    empleado.setNombresEmpleado(nombres);
                    empleado.setTelefonoEmpleado(telefono);
                    empleado.setEstado(est);
                    empleado.setUsuario(user);
                    empleadoDAO.agregar(empleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=listar").forward(request, response);
                    break;
                case "Actualizar":
                    empleado.setCodigoEmpleado(Integer.parseInt(request.getParameter("codigoEmpleado")));
                    empleado.setDPIEmpleado(request.getParameter("txtDPIEmpleado"));
                    empleado.setNombresEmpleado(request.getParameter("txtNombreEmpleado"));
                    empleado.setTelefonoEmpleado(request.getParameter("txtTelefono"));
                    empleado.setEstado(request.getParameter("txtEstado"));
                    empleado.setUsuario(request.getParameter("txtUsuario"));
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
                    Double precio = Double.parseDouble(request.getParameter("txtPrecio"));
                    int stock = Integer.parseInt(request.getParameter("txtStock"));
                    String estado = request.getParameter("txtEstado");
                    producto.setNombreProducto(nombreProducto);
                    producto.setPrecio(precio);
                    producto.setStock(stock);
                    producto.setEstado(estado);
                    productoDAO.agregar(producto);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=listar").forward(request, response);
                    break;
                case "Actualizar":
                    producto.setCodigoProducto(Integer.parseInt(request.getParameter("codigoProducto")));
                    producto.setNombreProducto(request.getParameter("txtNombreProducto"));
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
                    cliente.setDPICliente(request.getParameter("txtDPICliente"));
                    cliente.setNombresCliente(request.getParameter("txtNombreCliente"));
                    cliente.setDireccionCliente(request.getParameter("txtDireccionCliente"));
                    cliente.setEstado(request.getParameter("txtEstado"));
                    clienteDAO.agregar(cliente);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=listar").forward(request, response);
                    break;
                case "Actualizar":
                    cliente.setCodigoCliente(Integer.parseInt(request.getParameter("codigoCliente")));
                    cliente.setDPICliente(request.getParameter("txtDPICliente"));
                    cliente.setNombresCliente(request.getParameter("txtNombreCliente"));
                    cliente.setDireccionCliente(request.getParameter("txtDireccionCliente"));
                    cliente.setEstado(request.getParameter("txtEstado"));
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
            request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
        } else if (menu.equals("Home")) {
            request.getRequestDispatcher("Home.jsp").forward(request, response);
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
