<%-- 
    Document   : form1
    Created on : Nov 6, 2013, 12:00:10 PM
    Author     : ivy
--%>

<%@page import="beans.DVDBean"%>
<%@page import="beans.PanierBean"%>
<%@page import="java.util.*" %>
<%@page import="beans.Commande"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Gestion des commandes</title>
 </head>
 <body>
 <center>
     <table>
         <tr>
             <td>
                 <jsp:useBean id="panier" scope="session" class="beans.PanierBean" /> 
                 <jsp:useBean id="commande" scope="session" class="beans.CommandeBean" />
                 <h1 align="center"> Les Commandes </h1>
                 <table border="1">
                    <th> Nom </th> <th> Prenom </th> <th> Adresse </th> <th> Telephone </th> <th> Email </th> <th> Commande </th> <th> Supprimer </th>                                  
                        <% Enumeration coms = commande.liste_Commande(); %>
                        <% while(coms.hasMoreElements()) { %>
                            <%  Commande p = (Commande)coms.nextElement(); %>
                            <%  Hashtable q = p.getPanier(); %>
                            <tr>
                                <td width="60"> <%= p.getNom()%> </td>                         
                                <td width="60"> <%= p.getPrenom()%> </td> 
                                <td width="60"> <%= p.getAdresse()%> </td> 
                                <td width="60"> <%= p.getTelephone()%> </td>    
                                <td width="60"> <%= p.getEmail()%> </td>
                                <td style="padding: 10px"> 
                                    <table border="1">
                                        <th> Nom </th> <th> Genre </th> <th> Annee </th> <th> Prix </th> <th> Quantite </th>                                 
                                        <% Enumeration elements = q.elements(); %>
                                        <% while(elements.hasMoreElements()) { %>
                                            <% DVDBean s = (DVDBean)elements.nextElement(); %>
                                            <tr>                                       
                                                <td width="60"> <%= s.getNom()%> </td>                         
                                                <td width="60"> <%= s.getGenre()%> </td> 
                                                <td width="60"> <%= s.getAnnee()%> </td> 
                                                <td width="60"> <%= s.getPrix()%> </td>    
                                                <td width="60"> <%= s.getQuantite()%> </td>  
                                            </tr>
                                        <% } %>                                                            
                                    </table>
                                </td>
                                <td>
                                    <form action="remove_commande.jsp">
                                        <input type="hidden" name= "item" value="<%= p.getNom() %>"> 
                                        <input type="submit" value="Supprimer"/>
                                    </form>
                                </td>
                            <% } %> 
                </table> 
                <br>
                <center>
                    <form action="acceuil_admin.jsp">
                        <input type="submit" value="Retour"/> 
                    </form>
                </center>  
             </td>
         </tr>
     </table>
          
 </center>
 </body>
</html>
