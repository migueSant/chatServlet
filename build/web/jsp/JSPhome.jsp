<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String s = "Este mensaje no es muy dinámico";
            out.print(s);
         %>
         <p>Este mensaje no es muy dinámico</p>
         
         <%
         out.println("Este mensaje ya es dinámico "+request.getHeader("USER-AGENT"));
         %>
         
         <h1> JSPhome.jsp -</h1>
         <p>
             <a href="home?cambiar=login"> iniciar sesión </a> 
         </p>
        
        
    </body>
</html>
