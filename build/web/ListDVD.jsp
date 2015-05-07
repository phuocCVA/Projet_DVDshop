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
 <title>List DVD </title>
 </head>
 <body>
     <table>
         <tr>
             <td>
                 <jsp:useBean id="liste" scope="session" class="beans.AnnuaireBean" />                
                 <h1 align="center"> Liste de DVD </h1>
                 <table border="2">
                    <th> Nom </th> <th> Genre </th> <th> Annee </th> <th> Prix </th> <th> Quantite </th>
                        <% Enumeration names = liste.liste_DVD(); %>
                        <% while(names.hasMoreElements()) { %>
                            <% DVDBean p = (DVDBean)names.nextElement(); %>
                            <tr>
                                <td width="100"> <%= p.getNom()%> </td>                         
                                <td width="100"> <%= p.getGenre()%> </td> 
                                <td width="100"> <%= p.getAnnee()%> </td> 
                                <td width="100"> <%= p.getPrix()%> </td> 
                                <td width="100"> <%= p.getQuantite()%> </td>
                                <td width="100"> 
                                    <form action="remove_list.jsp">
                                        <input type="hidden" name= "item" value="<%= p.getNom() %>"> 
                                        <input type="submit" value="Supprimer"> 
                                    </form>
                                </td>
                            </tr>
                    <% } %> 
                </table> 
             </td>
         </tr>
     </table>
 
 <br><br>               
 </body>
</html>
