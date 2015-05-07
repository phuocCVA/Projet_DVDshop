<%-- 
    Document   : form2
    Created on : Nov 6, 2013, 12:57:00 PM
    Author     : ivy
--%>

<%@page import="java.util.*"%>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Resultat</title>
 </head>
 <body>
    <jsp:useBean id="commande" scope="session" class="beans.CommandeBean" />
        <% String item = request.getParameter("item"); %>
        <% commande.removeCommande(item);%>;
    <jsp:forward page="Commande.jsp"/>
</body>
</html>
