<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>LOGIN</h1> 
        <p>
             <a href="home?cambiar=inicio"> Regresar </a>
         </p>
         <form method="post" action="home?ini=iniciarSesion ">
             <input type="text" name="usuario" placeholder="introduce tu usuario">
             <input type="text" name="pass" placeholder="introduce tu contraseña">
             
             <input type="submit" value="Iniciar Sesión">
             
         </form>

         
         
         
    </body>
</html>
