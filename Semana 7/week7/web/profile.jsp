<%-- 
    Document   : profile
    Created on : 3/03/2017, 07:46:27 PM
    Author     : Mate_16
--%>

<%
    if(session.getAttribute("username") == null)
        response.sendRedirect("login.jsp");
%>

<%
String color = "";
Cookie[] cookies = request.getCookies();
for(Cookie c : cookies) { 
  if(c.getName().equals("color")) { 
    color = c.getValue();
  }
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body style="background-color: <%= color %>; ">
        <form action="ProfileController" method="POST">
            <h1>Perfil</h1>
            <p>Usuario: <%= session.getAttribute("username") %> </p>
            <br/>
            <p>Nombre: <%= session.getAttribute("name") %> </p>
            <br/>
            <p>Apellido: <%= session.getAttribute("lastName") %> </p>
            <br/>
            <select name="color">
                <option value="Select">Select..</option>
                <option value="red">Rojo</option>
                <option value="rgb(58, 170, 149)">Aqua</option>
                <option value="yellow">Amarillo</option>
            </select>
            <input type="submit" value="Guardar"/>
            <br/>
            <a href="LogoutController">Cerrar sesion</a>
        </form>    
    </body>
</html>
