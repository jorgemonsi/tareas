<%-- 
    Document   : profile
    Created on : 3/03/2017, 07:46:27 PM
    Author     : Mate_16
--%>

<%
    if(session.getAttribute("username") == null)
        response.sendRedirect("login.jsp");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <h1>Bienvenidos, <%= session.getAttribute("fullname") %></h1>
        <h2>Su usuario es <%= session.getAttribute("username") %> </h2>
        <a href="LogoutController">Cerrar sesion</a>
    </body>
</html>
