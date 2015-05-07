package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import beans.DVDBean;

public final class ListDVD_005fclient_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write(" <head>\n");
      out.write(" <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write(" <title>List DVD Client</title>\n");
      out.write(" </head>\n");
      out.write(" <body>\n");
      out.write("     <div width=\"100%\">  \n");
      out.write("        <div style=\"float:right;padding-right:160px;\" >          \n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Panier.jsp", out, true);
      out.write("       \n");
      out.write("        </div>\n");
      out.write("             \n");
      out.write("        <div style=\"float:left;\">\n");
      out.write("        <table style=\"padding-left: 70px\">\n");
      out.write("         <tr>\n");
      out.write("             <td>\n");
      out.write("                 ");
      beans.AnnuaireBean liste = null;
      synchronized (session) {
        liste = (beans.AnnuaireBean) _jspx_page_context.getAttribute("liste", PageContext.SESSION_SCOPE);
        if (liste == null){
          liste = new beans.AnnuaireBean();
          _jspx_page_context.setAttribute("liste", liste, PageContext.SESSION_SCOPE);
        }
      }
      out.write("                \n");
      out.write("                 <h1 align=\"center\"> Liste de DVD </h1>\n");
      out.write("                 <table border=\"1\">\n");
      out.write("                    <th> Nom </th> <th> Genre </th> <th> Annee </th> <th> Prix </th> <th> Quantite </th> <th> Ajouter au panier </th>\n");
      out.write("                        ");
 Enumeration names = liste.liste_DVD(); 
      out.write("\n");
      out.write("                        ");
 while(names.hasMoreElements()) { 
      out.write("\n");
      out.write("                            ");
 DVDBean p = (DVDBean)names.nextElement(); 
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                            <form action=\"ajoutPanier.jsp\">\n");
      out.write("                                <td width=\"60\"> ");
      out.print( p.getNom());
      out.write(" </td>                         \n");
      out.write("                                <td width=\"60\"> ");
      out.print( p.getGenre());
      out.write(" </td> \n");
      out.write("                                <td width=\"60\"> ");
      out.print( p.getAnnee());
      out.write(" </td> \n");
      out.write("                                <td width=\"60\"> ");
      out.print( p.getPrix());
      out.write(" </td>  \n");
      out.write("                                <td><input type = text name=\"quantite\" value=\"\" size=\"5\" /></td>\n");
      out.write("                                <td align=\"center\">\n");
      out.write("                                    <input type=\"hidden\" name= \"lenom\" value=\"");
      out.print( p.getNom() );
      out.write("\">\n");
      out.write("                                    <input type=\"hidden\" name= \"genre\" value=\"");
      out.print( p.getGenre() );
      out.write("\">\n");
      out.write("                                    <input type=\"hidden\" name= \"annee\" value=\"");
      out.print( p.getAnnee() );
      out.write("\">\n");
      out.write("                                    <input type=\"hidden\" name= \"prix\" value=\"");
      out.print( p.getPrix() );
      out.write("\"> \n");
      out.write("                                    <input type=\"hidden\" name= \"quantite\" value=\"\">\n");
      out.write("                                    <input type=\"submit\" value=\"Ajouter\" name=\"ajoute1\">   \n");
      out.write("                                </td>\n");
      out.write("                            </form>\n");
      out.write("                            </tr>\n");
      out.write("                    ");
 } 
      out.write(" \n");
      out.write("                </table> \n");
      out.write("             </td>\n");
      out.write("         </tr>\n");
      out.write("        </table>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("     </div>\n");
      out.write("                \n");
      out.write("\n");
      out.write(" \n");
      out.write(" </body>\n");
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
