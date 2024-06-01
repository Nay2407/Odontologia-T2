<%-- 
    Document   : login
    Created on : 29 may 2024, 1:42:35
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<%@include file="referencias.jsp" %>
<link rel="stylesheet" href="estilos/estiloslogin.css">
    <title>Login</title>
</head>

<body class="row" style="display: flex;">
    <div class="inicio col-md-12">
            <img style="height:105px;  display: inline-block; text-align: center" src="imagenes/logo.png" />
        </div>
    <div class="inicio col-md-12">
        
       
            <h1>Toothless</h1>
            
    </div>
    <div class=" container-fluid col-md-12">
        <form action="valida.jsp" class="login">
            <div >
                <label for="exampleInputEmail1" class="form-label">Documento de Identidad</label>
                <input type="text" name="usuario"class="form-control" id="usuario" required>
                <div id="text" class="form-text"></div>
            </div>
            <div >
                <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                <input type="password" name="password" class="form-control" id="password" required>
            </div>
            <center>
                <button type="submit" class="btn text-light boton"><a>Iniciar Sesion</a></button>
            </center>
            <div >
                <label>¿Aun no tienes cuenta en Toothess?</label>
            </div>
            <center>
                <button type="submit" class="btn border-dark boton1"
                        ><a href="Usuario/usu_registrarcuenta.jsp" style="color:black">Registrar cuenta</a></button>
            </center>
        </form>
    </div>

</body>

</html>
