<%-- 
    Document   : confirmer
    Created on : Nov 27, 2013, 12:16:02 AM
    Author     : ivy
--%>

<%@page import="java.util.*" %>
<%@page import="beans.DVDBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmer</title>
    </head>
    <body>
    <center>
        <jsp:useBean id="panier" scope="session" class="beans.PanierBean"/>
        <h2> Votre demande a été confirmé </h2> <br>
        <b> Votre Panier </b> 
        <br><br>
        <table border="1">
             <th> Nom </th> <th> Genre </th> <th> Annee </th> <th> Prix </th> <th> Quantite </th>
             <% Enumeration elements = panier.showPanier(); %>
             <% while(elements.hasMoreElements()) { %>
             <% DVDBean p = (DVDBean)elements.nextElement(); %>
             <tr>                            
               <td width="60"> <%= p.getNom()%> </td>                         
               <td width="60"> <%= p.getGenre()%> </td> 
               <td width="60"> <%= p.getAnnee()%> </td> 
               <td width="60"> <%= p.getPrix()%> </td>    
               <td width="60"> <%= p.getQuantite()%> </td>             
             </tr>  
             <% } %>
        </table> 
        <br>
        <%=" Le prix total: "%> 
        <% out.println(panier.TotalPrice());%>
        <hr>
        <h2> Merci de saisir votre information pour livraison</h2>

        <form name="form1" action="confirmer.jsp">
            <table >
                            <tr>
                                <td> Nom:</td>
                                <td> <input type="text" name="lenom" value="" size="18" /> </td>
                            </tr>
                            <tr>
                                <td> Prénom:</td>
                                <td> <input type="text" name="prenom" value="" size="18" /> </td>
                            </tr>
                            <tr>
                                <td> Adresse:</td>
                                <td> <input type="text" name="adresse" value="" size="18" /> </td>
                            </tr>
                            <tr>
                                <td> Telephone:</td>
                                <td> <input type="text" name="telephone" value="" size="18" /> </td>
                            </tr>
                            <tr>
                                <td> Email:</td>
                                <td> <input type="text" name="email" value="" size="18" /> </td>
                            </tr>
            </table>
            <br>
            <input type="submit" value="Confirmer"/>        
        </form>
     </center>
    </body>
</html>
