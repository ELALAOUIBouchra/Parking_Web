package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <title>PARKING</title>\n");
      out.write("    <!-- plugins:css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print( request.getContextPath() );
      out.write("/template/vendors/mdi/css/materialdesignicons.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print( request.getContextPath() );
      out.write("/template/vendors/css/vendor.bundle.base.css\">\n");
      out.write("    <!-- endinject -->\n");
      out.write("    <!-- Plugin css for this page -->\n");
      out.write("    <!-- End plugin css for this page -->\n");
      out.write("    <!-- inject:css -->\n");
      out.write("    <!-- endinject -->\n");
      out.write("    <!-- Layout styles -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print( request.getContextPath() );
      out.write("/template/css/style.css\">\n");
      out.write("    <!-- End layout styles -->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"");
      out.print( request.getContextPath() );
      out.write("/template/images/favicon.png\" />\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <div class=\"container-scroller\">\n");
      out.write("      <div class=\"container-fluid page-body-wrapper full-page-wrapper\">\n");
      out.write("        <div class=\"row w-100 m-0\">\n");
      out.write("          <div class=\"content-wrapper full-page-wrapper d-flex align-items-center auth login-bg\">\n");
      out.write("            <div class=\"card col-lg-4 mx-auto\">\n");
      out.write("              <div class=\"card-body px-5 py-5\">\n");
      out.write("                <h3 class=\"card-title text-left mb-3\">Login</h3>\n");
      out.write("                \n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                    <label>Username  *</label>\n");
      out.write("                    <input id=\"user\" type=\"text\" class=\"form-control p_input\">\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                    <label>Password *</label>\n");
      out.write("                    <input id=\"pass\" type=\"password\" class=\"form-control p_input\">\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"form-group d-flex align-items-center justify-content-between\">\n");
      out.write("                    <div class=\"form-check\">\n");
      out.write("                      <label class=\"form-check-label\">\n");
      out.write("                        <input type=\"checkbox\" class=\"form-check-input\"> Remember me </label>\n");
      out.write("                    </div>\n");
      out.write("                    <a href=\"#\" class=\"forgot-pass\">Forgot password</a>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"text-center\">\n");
      out.write("                    <button id=\"login\" class=\"btn btn-primary btn-block enter-btn\">Login</button>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"d-flex\">\n");
      out.write("                    <button class=\"btn btn-facebook mr-2 col\">\n");
      out.write("                      <i class=\"mdi mdi-facebook\"></i> Facebook </button>\n");
      out.write("                    <button class=\"btn btn-google col\">\n");
      out.write("                      <i class=\"mdi mdi-google-plus\"></i> Google plus </button>\n");
      out.write("                  </div>\n");
      out.write("                  <p class=\"sign-up\">Don't have an Account?<a href=\"#\"> Sign Up</a></p>\n");
      out.write("                \n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <!-- content-wrapper ends -->\n");
      out.write("        </div>\n");
      out.write("        <!-- row ends -->\n");
      out.write("      </div>\n");
      out.write("      <!-- page-body-wrapper ends -->\n");
      out.write("    </div>\n");
      out.write("    <!-- container-scroller -->\n");
      out.write("    <!-- plugins:js -->\n");
      out.write("    <script src=\"");
      out.print( request.getContextPath() );
      out.write("/template/vendors/js/vendor.bundle.base.js\"></script>\n");
      out.write("    <!-- endinject -->\n");
      out.write("    <!-- Plugin js for this page -->\n");
      out.write("    <!-- End plugin js for this page -->\n");
      out.write("    <!-- inject:js -->\n");
      out.write("    <script src=\"");
      out.print( request.getContextPath() );
      out.write("/template/js/off-canvas.js\"></script>\n");
      out.write("    <script src=\"");
      out.print( request.getContextPath() );
      out.write("/template/js/hoverable-collapse.js\"></script>\n");
      out.write("    <script src=\"");
      out.print( request.getContextPath() );
      out.write("/template/js/misc.js\"></script>\n");
      out.write("    <script src=\"");
      out.print( request.getContextPath() );
      out.write("/template/js/settings.js\"></script>\n");
      out.write("    <script src=\"");
      out.print( request.getContextPath() );
      out.write("/template/js/todolist.js\"></script>\n");
      out.write("    <script src=\"scripts/login.js\" type=\"text/javascript\"></script>\n");
      out.write("    <!-- endinject -->\n");
      out.write("  </body>\n");
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
