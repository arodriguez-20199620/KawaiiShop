package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"author\" content=\"Muhamad Nauval Azhar\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"This is a login page template based on Bootstrap 5\">\n");
      out.write("        <title>Kawwai Shop</title>\n");
      out.write("        <link href=\"img/LogoVentas.png\" rel=\"shortcut icon\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <section class=\"h-100\">\n");
      out.write("            <div class=\"container h-100\">\n");
      out.write("                <div class=\"row justify-content-sm-center h-100\">\n");
      out.write("                    <div class=\"col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9\">\n");
      out.write("                        <div class=\"card shadow-lg my-5 rounded\">\n");
      out.write("                            <div class=\"card-body p-5 \">\n");
      out.write("                                <div class=\"\">\n");
      out.write("                                    <h1 class=\"card-title fw-bold mb-4 text-dark\">Kawaii Shop <img src=\"img/LogoVentas.png\" alt=\"logo\" width=\"100\"> </h1>\n");
      out.write("                                </div>\n");
      out.write("                                <h3 class=\"fs-4 fw-bold mb-4\">Login</h3>\n");
      out.write("                                <form method=\"POST\" class=\"needs-validation\" action=\"Validar\" autocomplete=\"off\">\n");
      out.write("                                    <div class=\"mb-3\">\n");
      out.write("                                        <label class=\"mb-2 text-muted\" for=\"email\">Usuario</label>\n");
      out.write("                                        <input id=\"email\" class=\"form-control\" type=\"text\" name=\"txtUser\" required>\n");
      out.write("                                        <div class=\"invalid-feedback\">\n");
      out.write("                                            Email is invalid\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"mb-3\">\n");
      out.write("                                        <div class=\"mb-2 w-100\">\n");
      out.write("                                            <label class=\"text-muted\" for=\"password\">Contraseña</label>\n");
      out.write("                                            <a href=\"forgot.html\" class=\"float-end\">\n");
      out.write("                                                ¿Olvidaste tu contraseña?\n");
      out.write("                                            </a>\n");
      out.write("                                        </div>\n");
      out.write("                                        <input id=\"password\" type=\"password\" class=\"form-control\" name=\"txtPass\" required>\n");
      out.write("                                        <div class=\"invalid-feedback\">\n");
      out.write("                                            Password is required\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"d-grid gap-2 py-3\">\n");
      out.write("                                        <button class=\"btn btn-primary\" type=\"submit\" name=\"accion\" value=\"Ingresar\">\n");
      out.write("                                            Login\n");
      out.write("                                        </button>\n");
      out.write("                                    </div> \n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"card-footer\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    ¿No tienes una cuenta? <a href=\"register.html\" >Crea una</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
