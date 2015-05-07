<%-- 
    Document   : acceuil
    Created on : Nov 26, 2013, 11:30:16 PM
    Author     : ivy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acceuil</title>
    </head>
    <body>
        <jsp:useBean id="panier" scope="session" class="beans.PanierBean" />    
        <% session = request.getSession(true);%>
        <% session.setAttribute("user",request.getParameter("username"));%>
        <% panier.clearPanier();%>
    <center>
        <h2> Bienvenu Monsier/Madame: <%= session.getAttribute("user") %> </h2>
        <br>
        <b> Votre choix </b>
        <br>  <br>
        <form action="ctrler.jsp">
            <input type="submit" name="continue" value="Continuer" />
            <input type="submit" name="deconnecter" value="Déconnecter" /> 
        </form>
    </body>
</html>
