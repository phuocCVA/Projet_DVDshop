<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<body>
    <div width="100%">
        <div style="float:right; padding-right: 100px"> 
              <jsp:include page="ListDVD.jsp" flush="true" /> 
        </div> 
        <div style="float:left">
            <table style="padding-left: 70px">
            <tr>
                <td width="350">
                    <h1>Ajouter des DVD </h1>
                    <form name="form1" action="erreur_ajout.jsp">
                        <table >
                            <tr>
                                <td> Nom:</td>
                                <td> <input type="text" name="lenom" value="" size="18" /> </td>
                            </tr>
                            <tr>
                                <td> Genre:</td>
                                <td> <input type="text" name="genre" value="" size="18" /> </td>
                            </tr>
                            <tr>
                                <td> Anneé:</td>
                                <td> <input type="text" name="annee" value="" size="18" /> </td>
                            </tr>
                            <tr>
                                <td> Prix:</td>
                                <td> <input type="text" name="prix" value="" size="18" /> </td>
                            </tr>
                            <tr>
                                <td> Quantité:</td>
                                <td> <input type="text" name="quantite" value="" size="18" /> </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                    <input type="submit" value="OK" name="button_ok" />
                                    <input type="reset" value="Effacer" name="button_reset" /> 
                                </td>
                            </tr>
                        </table>
                    </form>
                    <form name="retour" action="acceuil_admin.jsp">
                            <input type="submit" value="Retour" name="retour_index"/>
                    </form>                   
                </td>             
            </tr>
            </table>
            <br><br>
            <center>
            <% String param = request.getParameter("Error");
              if (param!=null)
                    {out.println ("<b>"+ param + "</b>");}
              else { %>  
                <jsp:include page="ajout.jsp" flush="true" /> 
              <% } %>
            </center>  
        </div>                   
    </div>
</body>    
</html>
