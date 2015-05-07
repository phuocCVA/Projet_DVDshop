<%-- 
    Document   : security
    Created on : Nov 24, 2013, 11:13:32 PM
    Author     : ivy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <body>
        <% session = request.getSession(true);%>
        <% String user = (String) request.getParameter("username");
           String pass = (String) request.getParameter("password");
        if ( (user.equals("admin"))&&(pass.equals("admin")) ) { %>
            <% session.setAttribute("admin",request.getParameter("username")); %>
            <jsp:forward page = "acceuil_admin.jsp"/>
            <% } else { %>
            <jsp:forward page = "login.jsp">
                <jsp:param name = "sError" value = "Identifiant ou mot de passe incorrect"/>
            </jsp:forward>
    <% } %>
    </body>
</html>
