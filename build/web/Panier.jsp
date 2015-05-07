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
 <title>Panier</title>
 </head>
 <body>
     <table>
         <tr>
             <td>
                 <jsp:useBean id="panier" scope="session" class="beans.PanierBean" />                
                 <h1 align="center"> Votre panier </h1>
                 <table border="1">
                    <th> Nom </th> <th> Genre </th> <th> Annee </th> <th> Prix </th> <th> Quantite </th> <th> Remove </th>
                        <% Enumeration elements = panier.showPanier(); %>
                        <% while(elements.hasMoreElements()) { %>
                            <% DVDBean p = (DVDBean)elements.nextElement(); %>
                            <tr>
                            <form action="remove_panier.jsp">
                                <td width="60"> <%= p.getNom()%> </td>                         
                                <td width="60"> <%= p.getGenre()%> </td> 
                                <td width="60"> <%= p.getAnnee()%> </td> 
                                <td width="60"> <%= p.getPrix()%> </td>    
                                <td width="60"> <%= p.getQuantite()%> </td>    
                                <td>                                     
                                    <input type="hidden" name= "item" value="<%= p.getNom() %>"> 
                                    <input type="submit" value="Supprimer"/>                                    
                                </td>
                            </form>
                            </tr>
                    <% } %> 
                </table> 
                <br>
                <center>
                    <form action="rechercherDVD.jsp">
                        <input type="submit" value="Rechercher"/> 
                    </form>
                    <br>
                    <form action="validerPanier.jsp">
                        <input type="submit" value="Valider"/> 
                    </form>
                </center>    
             </td>
         </tr>
     </table>
          
 
 </body>
</html>
