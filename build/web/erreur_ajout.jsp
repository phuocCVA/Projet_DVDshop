<%-- 
    Document   : erreur
    Created on : Nov 24, 2013, 11:50:39 PM
    Author     : ivy
--%>

<%@page import="beans.DVDBean"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <jsp:useBean id="liste" scope="session" class="beans.AnnuaireBean" />  
       <% String user = (String) request.getParameter("lenom");
          String genre = (String) request.getParameter("genre");
          String annee = (String) request.getParameter("annee");
          String prix = (String) request.getParameter("prix");
          String quantite = (String) request.getParameter("quantite");
        if ( (user.equals(""))||(genre.equals(""))||(annee.equals(""))||(prix.equals(""))||(quantite.equals("")) ) { %>
             <jsp:forward page = "ajoutDVD.jsp">
                <jsp:param name = "Error" value = "il faut rempir tous les champs"/>
             </jsp:forward>
        <% } %>
        
        <% Enumeration names = liste.liste_DVD(); %>
        <% Boolean existe=false; %>
        <% while(names.hasMoreElements()) { %>
              <% DVDBean p = (DVDBean)names.nextElement(); %> 
                 <% if( user.equals( p.getNom()) ) existe=true; %>
        <% } %>                 
         
        <% if (existe==true){ %>
                <jsp:forward page = "ajoutDVD.jsp"> 
                    <jsp:param name = "Error" value = "Le DVD déjà existe dans le magasin"/>
                </jsp:forward>
        <% } else {%> 
                <jsp:forward page = "ajout.jsp"/>
         <% } %>   
           
    </body>
</html>
