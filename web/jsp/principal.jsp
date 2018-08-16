<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Principal!! </h1>
        
         <%
        out.println("Bienvenido: "+request.getParameter("usuario"));
        %>
        <hr>
       <%="Tu contraseña es:"+request.getParameter("pass")%>
       <hr><hr>
       <h2>REQUEST</h2>
       <%="usuario "+request.getAttribute("usuario")+"\ncontraseña "+request.getParameter("pass")%>
        <h2>SESSION</h2>
       <%="usuario "+session.getAttribute("usuario")+"\ncontraseña "+session.getAttribute("pass")%>
        <h2>CONTEXT</h2>
       <%="usuario "+application.getAttribute("usuario")+"\ncontraseña "+application.getAttribute("pass")%>
    </body>
</html>
