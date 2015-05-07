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
    <jsp:useBean id="liste" scope="session" class="beans.AnnuaireBean" />
        <% String item = request.getParameter("item"); %>
        <% liste.removeItem(item);%>;
    <jsp:forward page="ajoutDVD.jsp"/>
</body>
</html>
