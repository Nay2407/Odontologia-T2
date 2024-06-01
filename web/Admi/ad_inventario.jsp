<%-- 
    Document   : ad_inventario
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

  <title>Inventario</title>
</head>

<body>
  <nav>
    <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion" aria-expanded="false"
      aria-controls="navegacion">
      <i class="fa-solid fa-bars" style="color: #ffffff;"></i>
    </button>
    <div style="min-height: 150px;">


      <div class="collapse collapse-horizontal" id="navegacion">

        <div class="enlaces" style="width: 250px;">
          <a href="ad_index.jsp">Inicio</a>
          <a href="ad_paciente.jsp">Paciente</a>
          <a href="ad_empleados.jsp">Empleados</a>
          <a href="ad_inventario.jsp">Equipo</a>
        </div>
        <div class="enlaces">
          <a href="../login.jsp">Salir</a>
        </div>

      </div>
    </div>
  </nav>
  <main class="container">
    <div class="position-relative"">
      <h1 style="padding: 40px; text-align: center;">Equipos</h1>
      <br>
      <div class="position-absolute bottom-0 end-0">
        <form class="d-flex " role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-secondary" style="margin-right: 80px;" type="submit">Buscar</button>
        </form>
      </div>

    </div>
    <div class="table-responsive-sm" style="padding: 0px 80px;">
      
      <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Nombre Equipo</th>
            <th scope="col">Proveedor</th>
            <th scope="col">Garantia</th>
            <th scope="col">Fecha</th>
            <th scope="col">Control</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Equipo 1</td>
            <td>Proveedor 1</td>
            <td>24/05/2025</td>
            <td>20/06/2024</td>
            <td>
              <div class="form-check form-switch">
                <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked="">
                <label class="form-check-label" for="flexSwitchCheckChecked">Activo</label>
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Equipo 2</td>
            <td>Proveedor 2</td>
            <td>08/02/2025</td>
            <td>02/01/2024</td>
            <td><div class="form-check form-switch">
              <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked="">
              <label class="form-check-label" for="flexSwitchCheckChecked">Activo</label>
            </div></td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Equipo 3</td>
            <td>Proveedor 3</td>
            <td>03/06/2026</td>
            <td>15/04/2024</td>
            <td><div class="form-check form-switch">
              <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked="">
              <label class="form-check-label" for="flexSwitchCheckChecked">Activo</label>
            </div></td>
          </tr>
        </tbody>
      </table>
      <!-- Button trigger modal -->
      <div class="position-absolute bottom-0 end-0 but">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#AgregarEquipo">
          Agregar Nuevo Equipo
        </button>
      </div>
      <!--------------------------------------  Modal Registrar Empleado -------------------------->
      <div class="modal fade" id="AgregarEquipo" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title fs-5" id="staticBackdropLabel">Agendar Nuevo Equipo</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="row g-3">
                    <div class="col-md-6">
                        <label for="inputName" class="form-label">Nombre de Equipo</label>
                        <input type="text" class="form-control" id="inputName">
        
                    </div>
                    <div class="col-md-6">
                      <label for="inputName" class="form-label">Proveedor</label>
                      <input type="text" class="form-control" id="inputName">
      
                  </div>
                    <div class="col-md-6">
                      <label for="inputName" class="form-label">Fecha de Garantia</label>
                      <input type="date" class="form-control" id="inputName">
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail" class="form-label">Fecha de Compra</label>
                        <input type="date" class="form-control" id="inputEmail">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
              <button type="button" class="btn btn-primary" style="background-color: #032A38;">Agregar</button>
            </div>
          </div>
        </div>
      </div>
    </div>
      

  </main>
</body>

</html>
