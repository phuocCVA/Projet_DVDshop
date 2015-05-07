<%-- 
    Document   : form1
    Created on : Nov 6, 2013, 12:00:10 PM
    Author     : ivy
--%>

<%@page import="java.util.*" %>
<%@page import="beans.DVDBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>List DVD Client</title>
 </head>
 <body>
     <div width="100%">  
        <div style="float:right;padding-right:160px;" >          
            <jsp:include page="Panier.jsp" flush="true"/>       
        </div>
             
        <div style="float:left;">
        <table style="padding-left: 70px">
         <tr>
             <td>
                 <jsp:useBean id="liste" scope="session" class="beans.AnnuaireBean" />                
                 <h1 align="center"> Liste de DVD </h1>
                 <table border="1">
                    <th> Nom </th> <th> Genre </th> <th> Annee </th> <th> Prix </th> <th> Quantite </th> <th> Ajouter au panier </th>
                        <% Enumeration names = liste.liste_DVD(); %>
                        <% while(names.hasMoreElements()) { %>
                            <% DVDBean p = (DVDBean)names.nextElement(); %>
                            <tr>
                            <form action="ajoutPanier.jsp">
                                <td width="60"> <%= p.getNom()%> </td>                         
                                <td width="60"> <%= p.getGenre()%> </td> 
                                <td width="60"> <%= p.getAnnee()%> </td> 
                                <td width="60"> <%= p.getPrix()%> </td>  
                                <td><input type = text name="quantite" value="" size="5" /></td>
                                <td align="center">
                                    <input type="hidden" name= "lenom" value="<%= p.getNom() %>">
                                    <input type="hidden" name= "genre" value="<%= p.getGenre() %>">
                                    <input type="hidden" name= "annee" value="<%= p.getAnnee() %>">
                                    <input type="hidden" name= "prix" value="<%= p.getPrix() %>"> 
                                    <input type="hidden" name= "quantite" value="">
                                    <input type="submit" value="Ajouter" name="ajoute1">   
                                </td>
                            </form>
                            </tr>
                    <% } %> 
                </table> 
                <br><br>
                <center>
                    <% String param = request.getParameter("Error");
                    if (param!=null)
                            {out.println ("<b>"+ param + "</b>");}
                    %>                       
                </center>  
             </td>
         </tr>
        </table>
        </div>
        
     </div>
                

 
 </body>
</html>
