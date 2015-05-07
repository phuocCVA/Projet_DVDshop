<%-- 
    Document   : Login
    Created on : Nov 24, 2013, 11:11:21 PM
    Author     : ivy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Login</title>
 </head>
<body>
<center>
    <div>
    <h1 align="center"> Merci de saisir vos identifiants</h1>
    <br>
    <form method = post action = "ctrler.jsp" align="center">
        <b> Identifiant: </b> <input type = "text" name = "username" >
        <b> Mot de pass: </b> <input type = "password" name = "password">
        <input type = "submit" value = "Login" name="login">
        <input type = "submit" value = "Retour" name="retour">
    </form>
    <br><br><br>
    <% String param = request.getParameter("sError");
       if (param!=null) { %>
            <div align="center"> 
                <% out.println ("<b>"+ param + "</b>");%> 
            </div>  
    <% } %>
    </div>   
</center>
</body>
</html>
