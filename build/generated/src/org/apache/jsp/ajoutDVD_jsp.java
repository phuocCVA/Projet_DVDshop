package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class ajoutDVD_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!--\n");
      out.write("To change this template, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<body>\n");
      out.write("    <div width=\"100%\">\n");
      out.write("        <div style=\"float:right; padding-right: 100px\"> \n");
      out.write("              ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "ListDVD.jsp", out, true);
      out.write(" \n");
      out.write("        </div> \n");
      out.write("        <div style=\"float:left\">\n");
      out.write("            <table style=\"padding-left: 70px\">\n");
      out.write("            <tr>\n");
      out.write("                <td width=\"350\">\n");
      out.write("                    <h1>Ajouter des DVD </h1>\n");
      out.write("                    <form name=\"form1\" action=\"erreur_ajout.jsp\">\n");
      out.write("                        <table >\n");
      out.write("                            <tr>\n");
      out.write("                                <td> Nom:</td>\n");
      out.write("                                <td> <input type=\"text\" name=\"lenom\" value=\"\" size=\"18\" /> </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td> Genre:</td>\n");
      out.write("                                <td> <input type=\"text\" name=\"genre\" value=\"\" size=\"18\" /> </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td> Anneé:</td>\n");
      out.write("                                <td> <input type=\"text\" name=\"annee\" value=\"\" size=\"18\" /> </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td> Prix:</td>\n");
      out.write("                                <td> <input type=\"text\" name=\"prix\" value=\"\" size=\"18\" /> </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td> Quantité:</td>\n");
      out.write("                                <td> <input type=\"text\" name=\"quantite\" value=\"\" size=\"18\" /> </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <br>\n");
      out.write("                                    <input type=\"submit\" value=\"OK\" name=\"button_ok\" />\n");
      out.write("                                    <input type=\"reset\" value=\"Effacer\" name=\"button_reset\" /> \n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </form>\n");
      out.write("                    <form name=\"retour\" action=\"index.jsp\">\n");
      out.write("                            <input type=\"submit\" value=\"Retour\" name=\"retour_index\"/>\n");
      out.write("                    </form>                   \n");
      out.write("                </td>             \n");
      out.write("            </tr>\n");
      out.write("            </table>\n");
      out.write("            <br><br>\n");
      out.write("            <center>\n");
      out.write("            ");
 String param = request.getParameter("Error");
              if (param!=null)
                    {out.println ("<b>"+ param + "</b>");}
              else { 
      out.write("  \n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "ajout.jsp", out, true);
      out.write(" \n");
      out.write("              ");
 } 
      out.write("\n");
      out.write("            </center>  \n");
      out.write("        </div>                   \n");
      out.write("    </div>\n");
      out.write("</body>    \n");
      out.write("</html>\n");
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
