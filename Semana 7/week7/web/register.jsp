<%-- 
    Document   : register
    Created on : 17/03/2017, 12:25:56 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
    </head>
    <body>
        <h1>Registro</h1>
        <form action="RegisterController" method="POST">
            <label>Nombre</label>
            <input type="text" name="txt-nombre" value="">
            <br/>
            <label>Apellido</label>
            <input type="text" name="txt-apellido" value="">
            <br/>
            <label>Usuario</label>
            <input type="text" name="txt-username" value="">
            <br/>
            <label> Contraseña </label>
            <input type="password" name="txt-password" value="">
            <br/>
            <label> Repetir Contraseña </label>
            <input type="password" name="txt-repassword" value="">
            <br/>
            <input type="submit" value="Registrar"/>
        </form>
    </body>
</html>
