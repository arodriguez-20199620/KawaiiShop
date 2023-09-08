/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import modelo.Cliente;
import modelo.ClienteDAO;
import modelo.Empleado;
import modelo.EmpleadoDAO;

@MultipartConfig
public class Validar extends HttpServlet {

    Empleado empleado = new Empleado();
    EmpleadoDAO empleadoDAO = new EmpleadoDAO();
    Cliente cliente = new Cliente();
    ClienteDAO clienteDAO = new ClienteDAO();
    public static String user, pass;

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Validar</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Validar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String accion = request.getParameter("accion");
        if (accion.equals("register")) {
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        }
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

        //Captura la peticion del usuario
        String accion = request.getParameter("accion");
        if (accion.equalsIgnoreCase("Ingresar")) {
            // capturar el usuario y la contraseña
            user = request.getParameter("txtUser");
            pass = request.getParameter("txtPass");

            if (user.contains("@kinal.edu.gt")) {
                cliente = clienteDAO.validar(user, pass);
                if (cliente.getCorreo() != null) {
                    request.setAttribute("usuario", cliente);
                    request.getRequestDispatcher("Controlador?menu=PrincipalCliente").forward(request, response);
                } else {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } else if (user.contains("@kinal.org.gt")) {
                empleado = empleadoDAO.validar(user, pass);
                if (empleado.getCorreo() != null) {
                    request.setAttribute("usuario", empleado);
                    request.getRequestDispatcher("Controlador?menu=Principal").forward(request, response);
                } else {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            }
        } else if (accion.equalsIgnoreCase("Crear")) {
            String DPI = request.getParameter("txtDPI");
            Part part = request.getPart("foto");
            InputStream inputStream = part.getInputStream();
            String nombres = request.getParameter("txtNombres");
            String direccion = request.getParameter("txtDireccion");
            String estado = request.getParameter("txtEstado");
            String usuario = request.getParameter("txtUsuario");
            String correo = request.getParameter("txtCorreo");
            cliente.setDPICliente(DPI);
            cliente.setFotoPerfil(inputStream);
            cliente.setNombresCliente(nombres);
            cliente.setDireccionCliente(direccion);
            cliente.setEstado(estado);
            cliente.setUsuario(usuario);
            cliente.setCorreo(correo);
            clienteDAO.agregar(cliente);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
