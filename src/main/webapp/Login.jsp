<%-- 
    Document   : Login
    Created on : 20 may. 2024, 13:37:07
    Author     : JUAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <<link rel="stylesheet" href="estiloLogin.css"/>
    </head>
    <body>
        <div class="container">
            <div class="login-container mx-auto">
                <h1 class="login-header text-center">Iniciar Sesión</h1>
                <form action="LoginServlet" method="post">
                    <div class="form-group">
                        <label for="usuario">Usuario:</label>
                        <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Ingrese su usuario" required>
                    </div>
                    <div class="form-group">
                        <label for="contra">Contraseña:</label>
                        <input type="password" class="form-control" id="contra" name="contra" placeholder="Ingrese su contraseña" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Enviar</button>
                </form>
                <div class="text-center mt-3">
                    <a href="#" class="text-secondary">¿Olvidaste tu contraseña?</a>
                </div>
                <div class="text-center mt-2">
                    <p class="text-secondary">¿No tienes una cuenta? <a href="#">Regístrate aquí</a></p>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
