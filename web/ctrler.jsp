<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>JSP Page</title>
 </head>
 <body>
 <% if ((request.getParameter("admin"))!=null){
        request.getRequestDispatcher("login.jsp").forward(request, response);
    } else if ((request.getParameter("login"))!=null){
        request.getRequestDispatcher("security.jsp").forward(request, response);
    } else if ((request.getParameter("ajre"))!=null){
        request.getRequestDispatcher("ajoutDVD.jsp").forward(request, response);
    }else if ((request.getParameter("gescommande"))!=null){
        request.getRequestDispatcher("Commande.jsp").forward(request, response);
    } else if ((request.getParameter("client"))!=null){
        request.getRequestDispatcher("client.jsp").forward(request, response);    
    }else if ((request.getParameter("continue"))!=null){
        request.getRequestDispatcher("ListDVD_client.jsp").forward(request, response);
    }else if ((request.getParameter("deconnecter"))!=null){%>
        <% request.getRequestDispatcher("index.jsp").forward(request, response);
    } else if ((request.getParameter("submit"))!=null){
        request.getRequestDispatcher("acceuil_client.jsp").forward(request, response);
    } else if ((request.getParameter("retour"))!=null){
        request.getRequestDispatcher("index.jsp").forward(request, response);
 }
 %>
 </body>
</html>