<%-- 
    Document   : inicio
    Created on : 20 may. 2024, 13:51:50
    Author     : JUAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1 class="mt-5">Bienvenido</h1>
            <%
                if (session != null && session.getAttribute("usuario") != null) {
                    String usuario = (String) session.getAttribute("usuario");
            %>
            <p class="lead">Hola, <strong><%= usuario %></strong>! Has iniciado sesión correctamente.</p>
            <%
                } else {
                    response.sendRedirect("Login.jsp");
                }
            %>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

