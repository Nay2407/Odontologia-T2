<%-- 
    Document   : ad_index
    Created on : 29 may 2024, 1:42:59
    Author     : Franzuá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="ad_referencias.jsp" %>
    <link rel="stylesheet" href="css/ad_index.css">

    <title>Pagina Principal</title>
</head>

<body>
    <nav>
        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion"
            aria-expanded="false" aria-controls="navegacion">
            <i class="fa-solid fa-bars" style="color: #ffffff;"></i>
        </button>
        <div style="min-height: 150px;">


            <div class="collapse collapse-horizontal" id="navegacion">

                <div class="enlaces" style="width: 250px;">
                    <a href="ad_index.jsp">Inicio</a>
                    <a href="ad_paciente.jsp">Paciente</a>
                    <a href="ad_empleados.jsp">Empleados</a>
                    <a href="ad_inventario.jsp">Inventario</a>
                </div>
                <div class="enlaces">
                    <a href="../login.jsp">Salir</a>
                </div>

            </div>
        </div>
    </nav>

    <main class="container">
        <center>
            <h1>Bienvenido(a)</h1>
            <br>
        </center>
        <div class="row dash">
            <div class="toast fade show ctn" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="toast-body">
                    <h1>24</h1>
                    <div class="mt-2 pt-2 border-top">
                        <h3>Pacientes</h3>
                    </div>
                </div>
            </div>
            <div class="toast fade show ctn" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="toast-body">
                    <h1>5</h1>
                    <div class="mt-2 pt-2 border-top">
                        <h3>Doctores</h3>
                    </div>
                </div>
            </div>
            <div class="toast fade show ctn" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="toast-body">
                    <h1>15</h1>
                    <div class="mt-2 pt-2 border-top">
                        <h3>Citas Totales</h3>
                    </div>
                </div>
            </div>
            <canvas id="monthlyUserChart" style="display: block; box-sizing: border-box; height: 395px; width: 633px;" width="633" height="395"></canvas>
        </div>

    </main>
</body>

</html>
