<%-- 
    Document   : form2
    Created on : Nov 6, 2013, 12:57:00 PM
    Author     : ivy
--%>

<%@page import="java.util.*"%>
<%@page import="beans.DVDBean"%>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Resultat</title>
 </head>
 <body>
    <jsp:useBean id="panier" scope="session" class="beans.PanierBean" />
    <% String item = request.getParameter("item"); %>
    <% panier.removePanier(item);%>;
    <jsp:forward page="ListDVD_client.jsp"/>
</body>
</html>
