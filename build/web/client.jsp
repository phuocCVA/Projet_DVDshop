<%-- 
    Document   : client
    Created on : Nov 26, 2013, 4:17:30 PM
    Author     : ivy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Client</title>
    </head>
    <body>
    <center>
        <div style="padding-top: 100px; width:650px">
        <h1> Merci de saisir vos identifiants</h1>
        <br>
        <form method = post action = "ctrler.jsp" align="center">
            <b> Identifiant: </b> <input type = "text" name = "username">
            <input type = "submit" value = "Submit" name="submit">
            <input type = "submit" value = "Retour" name="retour">
        </form>
    </center>
    </body>
</html>
