package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import beans.DVDBean;

public final class validerPanier_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Confirmer</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        ");
      beans.PanierBean panier = null;
      synchronized (session) {
        panier = (beans.PanierBean) _jspx_page_context.getAttribute("panier", PageContext.SESSION_SCOPE);
        if (panier == null){
          panier = new beans.PanierBean();
          _jspx_page_context.setAttribute("panier", panier, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("        <h2> Votre demande a été confirmé </h2> <br>\n");
      out.write("        <b> Votre Panier </b> \n");
      out.write("        <br><br>\n");
      out.write("        <table border=\"1\">\n");
      out.write("             <th> Nom </th> <th> Genre </th> <th> Annee </th> <th> Prix </th> <th> Quantite </th>\n");
      out.write("             ");
 Enumeration elements = panier.showPanier(); 
      out.write("\n");
      out.write("             ");
 while(elements.hasMoreElements()) { 
      out.write("\n");
      out.write("             ");
 DVDBean p = (DVDBean)elements.nextElement(); 
      out.write("\n");
      out.write("             <tr>                            \n");
      out.write("               <td width=\"60\"> ");
      out.print( p.getNom());
      out.write(" </td>                         \n");
      out.write("               <td width=\"60\"> ");
      out.print( p.getGenre());
      out.write(" </td> \n");
      out.write("               <td width=\"60\"> ");
      out.print( p.getAnnee());
      out.write(" </td> \n");
      out.write("               <td width=\"60\"> ");
      out.print( p.getPrix());
      out.write(" </td>    \n");
      out.write("               <td width=\"60\"> ");
      out.print( p.getQuantite());
      out.write(" </td>             \n");
      out.write("             </tr>  \n");
      out.write("             ");
 } 
      out.write("\n");
      out.write("        </table> \n");
      out.write("        <br>\n");
      out.write("        ");
      out.print(" Le prix total: ");
      out.write(" \n");
      out.write("        ");
 out.println(panier.TotalPrice());
      out.write("\n");
      out.write("        <hr>\n");
      out.write("        <h2> Merci de saisir votre information pour livraison</h2>\n");
      out.write("\n");
      out.write("        <form name=\"form1\" action=\"confirmer.jsp\">\n");
      out.write("            <table >\n");
      out.write("                            <tr>\n");
      out.write("                                <td> Nom:</td>\n");
      out.write("                                <td> <input type=\"text\" name=\"lenom\" value=\"\" size=\"18\" /> </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td> Prénom:</td>\n");
      out.write("                                <td> <input type=\"text\" name=\"prenom\" value=\"\" size=\"18\" /> </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td> Adresse:</td>\n");
      out.write("                                <td> <input type=\"text\" name=\"adresse\" value=\"\" size=\"18\" /> </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td> Telephone:</td>\n");
      out.write("                                <td> <input type=\"text\" name=\"telephone\" value=\"\" size=\"18\" /> </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td> Email:</td>\n");
      out.write("                                <td> <input type=\"text\" name=\"email\" value=\"\" size=\"18\" /> </td>\n");
      out.write("                            </tr>\n");
      out.write("            </table>\n");
      out.write("            <br>\n");
      out.write("            <input type=\"submit\" value=\"Confirmer\"/>        \n");
      out.write("        </form>\n");
      out.write("     </center>\n");
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
