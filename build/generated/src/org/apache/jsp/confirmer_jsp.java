package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Hashtable;

public final class confirmer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Confirmer</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <h2> Merci beaucoup de votre choix</h2>\n");
      out.write("        <b> Votre informations </b>\n");
      out.write("        <br><br>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <th> Nom </th> <th> Prenom </th> <th> Adresse </th> <th> Telephone </th> <th> Email </th>\n");
      out.write("            <tr>\n");
      out.write("                <td width=\"120\"> ");
      out.print( request.getParameter("lenom") );
      out.write(" </td>\n");
      out.write("                <td width=\"120\"> ");
      out.print( request.getParameter("prenom") );
      out.write(" </td>\n");
      out.write("                <td width=\"120\"> ");
      out.print( request.getParameter("adresse") );
      out.write(" </td>\n");
      out.write("                <td width=\"120\"> ");
      out.print( request.getParameter("telephone") );
      out.write(" </td>\n");
      out.write("                <td width=\"120\"> ");
      out.print( request.getParameter("email") );
      out.write(" </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("            <br>\n");
      out.write("            <b> Votre commande sera expédiée dans 1 jour </b>\n");
      out.write("            <br><br>\n");
      out.write("            ");
      beans.PanierBean panier = null;
      synchronized (session) {
        panier = (beans.PanierBean) _jspx_page_context.getAttribute("panier", PageContext.SESSION_SCOPE);
        if (panier == null){
          panier = new beans.PanierBean();
          _jspx_page_context.setAttribute("panier", panier, PageContext.SESSION_SCOPE);
        }
      }
      out.write(" \n");
      out.write("                 ");
 Hashtable panier_client=panier.getPanier(); 
      out.write("\n");
      out.write("            ");
      beans.CommandeBean commande = null;
      synchronized (session) {
        commande = (beans.CommandeBean) _jspx_page_context.getAttribute("commande", PageContext.SESSION_SCOPE);
        if (commande == null){
          commande = new beans.CommandeBean();
          _jspx_page_context.setAttribute("commande", commande, PageContext.SESSION_SCOPE);
        }
      }
      out.write("                \n");
      out.write("                 ");
 commande.addCommande(request.getParameter("lenom"), request.getParameter("prenom"), 
                         request.getParameter("adresse"),request.getParameter("telephone"),request.getParameter("email"),panier) ; 
      out.write(" \n");
      out.write("                         \n");
      out.write("            ");
 panier.clearPanier();
      out.write("\n");
      out.write("            ");
 session.removeAttribute("user"); 
      out.write("\n");
      out.write("            <form action=\"index.jsp\">\n");
      out.write("                        <input type=\"submit\" value=\"Déconnecter\"/>\n");
      out.write("                        \n");
      out.write("            </form>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
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
