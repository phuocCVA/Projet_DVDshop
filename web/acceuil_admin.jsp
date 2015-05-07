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
        <% session = request.getSession(true);%>
        <% session.setAttribute("user",request.getParameter("username"));%>
    <center>
        <h2> Bienvenu Administrateurs: NGUYEN Huu Phuoc - NDAGIJIMANA Emile - LAZRAK Zakaria </h2>
        <br>
        <b> Votre choix </b>
        <br>  <br>
        <form action="ctrler.jsp">
            <input type="submit" name="ajre" value="Gestion des DVD" />
            <input type="submit" name="gescommande" value="Gestion des Commandes" />
            <input type="submit" name="deconnecter" value="Déconnecter" /> 
        </form>
    </body>
</html>
