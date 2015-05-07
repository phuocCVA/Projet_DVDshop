<%-- 
    Document   : index2
    Created on : Nov 6, 2013, 12:56:17 PM
    Author     : ivy
--%>

<%@page import="beans.DVDBean"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Rechercher DVD</title>
 </head>
 <body>
 <center>
     <table>
     <tr>
        <td width="350">
            <h1>Recherche </h1>
                <form name="form2" action="rechercherDVD.jsp">
                     Nom <input type="text" name="nom" value="" size="25" /> <br><br>
                    <input type="submit" value="OK" name="bouton_ok" />
                    <input type="reset" value="Effacer" name="bouton_reset" />
                </form>
                <form action="ListDVD_client.jsp">
                    <input type="submit" value="Retour" />
                </form>
        </td>
     </tr>
     </table>  
     
     <br><br>  
     <jsp:include page="resultat_rechercher.jsp" flush="true" />  
 </center>    
 </body>
</html>
