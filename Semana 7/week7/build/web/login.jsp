<%-- 
    Document   : login
    Created on : 24/02/2017, 07:33:06 PM
    Author     : Mate_16
--%>
<%
    if(session.getAttribute("username") != null)
        response.sendRedirect("profile.jsp");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Inicio sesion </title>
    </head>
    <body>
        
        <h1> Bienvenidos </h1>
            <form action="LoginController" method="POST">
                <label> Usuario </label>
                <input type="text" name="txt-usuario" value="">
                <br />
                <label> Contraseña </label>
                <input type="password" name="password" value="">
                <br/>
                <input type="submit" value="Iniciar Sesion">
                <br/>
            </form>
                               
    </body>
</html>
