<%-- 
    Document   : form1
    Created on : Nov 6, 2013, 12:00:10 PM
    Author     : ivy
--%>

<%@page import="java.util.*" %>
<%@page import="beans.DVDBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>JSP Page</title>
 </head>
 <body>
    <jsp:useBean id="liste" scope="application" class="beans.AnnuaireBean" />  
        <% liste.addDVD(request.getParameter("lenom"), request.getParameter("genre"), request.getParameter("annee"),
            Double.parseDouble(request.getParameter("prix")),Integer.parseInt(request.getParameter("quantite")) ); %>    
    <jsp:forward page = "ajoutDVD.jsp"/>
 </body>
</html>
