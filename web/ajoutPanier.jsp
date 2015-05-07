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
 <title>Ajout Panier</title>
 </head>
 <body>
    <jsp:useBean id="panier" scope="session" class="beans.PanierBean" /> 
    <% try{
            int nb = (Integer.parseInt(request.getParameter("quantite")));   
       } catch(Exception e){%>
            <jsp:forward page = "ListDVD_client.jsp">
                <jsp:param name = "Error" value = "il faut saisir la quantite correct"/>
            </jsp:forward>
       <% } %>
          
    <% panier.addPanier(request.getParameter("lenom"), request.getParameter("genre"), request.getParameter("annee"),
            Double.parseDouble(request.getParameter("prix")),Integer.parseInt(request.getParameter("quantite")) ); %>    
    <jsp:forward page = "ListDVD_client.jsp"/>
    
 </body>
</html>
