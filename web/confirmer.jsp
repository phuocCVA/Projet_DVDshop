<%-- 
    Document   : confirmer
    Created on : Nov 27, 2013, 12:49:15 AM
    Author     : ivy
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="beans.DVDBean"%>
<%@page import="java.util.Hashtable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmer</title>
    </head>
    <body>
    <center>
        <h2> Merci beaucoup de votre choix</h2>
        <b> Votre informations </b>
        <br><br>
        <table border="1">
            <th> Nom </th> <th> Prenom </th> <th> Adresse </th> <th> Telephone </th> <th> Email </th>
            <tr>
                <td width="120"> <%= request.getParameter("lenom") %> </td>
                <td width="120"> <%= request.getParameter("prenom") %> </td>
                <td width="120"> <%= request.getParameter("adresse") %> </td>
                <td width="120"> <%= request.getParameter("telephone") %> </td>
                <td width="120"> <%= request.getParameter("email") %> </td>
            </tr>
        </table>
            <br>
            <b> Votre commande sera expédiée dans 1 jour </b>
            <br><br>
            <jsp:useBean id="panier" scope="session" class="beans.PanierBean" /> 
                 <% Hashtable panier_client=panier.getPanier(); %>                
            <jsp:useBean id="commande" scope="session" class="beans.CommandeBean" />                
                 <% commande.addCommande(request.getParameter("lenom"), request.getParameter("prenom"), 
                         request.getParameter("adresse"),request.getParameter("telephone"),request.getParameter("email"),panier_client) ; %>                                    
            <% session.removeAttribute("user"); %>
            
            <form action="index.jsp">
                        <input type="submit" value="Déconnecter"/>
                        
            </form>
    </center>
    </body>
</html>
