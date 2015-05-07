<%-- 
    Document   : form2
    Created on : Nov 6, 2013, 12:57:00 PM
    Author     : ivy
--%>

<%@page import="beans.DVDBean"%>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Resultat</title>
 </head>
 <body>
    <jsp:useBean id="liste" scope="session" class="beans.AnnuaireBean" />
    <% DVDBean q = liste.findDVD(request.getParameter("nom")); %>
    <br>
    <% if(q!=null) { %>
        <table border="1">
            <th> Nom </th> <th> Genre </th> <th> Annee </th> <th> Prix </th> <th> Quantite </th> <th> Ajouter au panier </th>
            <tr>
            <form action="ajoutPanier.jsp">
                <td width="60"> <%= q.getNom()%> </td>                         
                <td width="60"> <%= q.getGenre()%> </td> 
                <td width="60"> <%= q.getAnnee()%> </td> 
                <td width="60"> <%= q.getPrix()%> </td>  
                <td><input type = text name="quantite" value="" size="5" /></td>
                <td align="center">
                      <input type="hidden" name= "lenom" value="<%= q.getNom() %>">
                      <input type="hidden" name= "genre" value="<%= q.getGenre() %>">
                      <input type="hidden" name= "annee" value="<%= q.getAnnee() %>">
                      <input type="hidden" name= "prix" value="<%= q.getPrix() %>"> 
                      <input type="hidden" name= "quantite" value="">
                      <input type="submit" value="Ajouter" name="ajoute2">   
                 </td>
            </form>
            </tr>
        </table> 
    <% } else { %>
        <table border="1" >
             <th> Nom </th> <th> Genre </th> <th> Annee </th> <th> Prix </th> <th> Quantite </th> <th> Ajouter au panier </th>             
                 <tr>
                     <td style="padding:5px; width:60px"> </td>                         
                     <td style="padding:5px; width:60px"> </td> 
                     <td style="padding:5px; width:60px"> </td> 
                     <td style="padding:5px; width:60px"> </td> 
                     <td style="padding:5px; width:60px"> </td>
                     <td style="padding:5px; width:60px"> </td>
                 </tr>
        </table>
    <% } %>
 </br>
 
 </body>
</html>
