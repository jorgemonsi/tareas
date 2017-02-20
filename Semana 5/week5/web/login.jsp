<%-- 
    Document   : login
    Created on : 19/02/2017, 11:14:41 AM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
        <h1>Bienvenido</h1>
        <form action="LoginController" method="POST">
            <label>Usuario</label>
            <input type="txt" name="txt-usuario" value=""/>
            <br />
            <label>Contraseña</label>
            <input type="password" name="password" value=""/>
            <br/>
            <input type="submit" value="Iniciar sesion"/>
        </form>
    </body>
</html>